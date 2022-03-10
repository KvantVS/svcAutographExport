unit unit_Service_AutographExport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  ExtCtrls, Registry, IdHTTP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdMessage, activeX,
  AutoGRAPH_TLB, DB, ADODB, DateUtils, comObj, Variants;

type
  TService_Autograph_Export = class(TService)
    Timer1: TTimer;
    IdSMTP1: TIdSMTP;
    q1: TADOQuery;
    ADOCommand1: TADOCommand;
    ADOConnection1: TADOConnection;
    procedure ServiceExecute(Sender: TService);
    procedure ServiceAfterInstall(Sender: TService);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    procedure _Run;
    procedure _SendEMail(text: string);
    procedure WriteToLog(s: string);
    procedure OnEndComputing2(Sender: TObject);
    procedure GetLastDateForCar(autographID: integer; var LastDate: TDateTime; var LastSmena:integer; var bRes: boolean);
    procedure CloseAutoGRAPH;
    function DecodeDoubleToTimeString(d: double): string;
    { Public declarations }
  end;

var
  Service_Autograph_Export: TService_Autograph_Export;

  sDownloadLink:  string;
  b:  boolean;

  sTable: string = 'dbo.GPS_AG_Motohours';  //Online_report_imported
  sLogFileName: string = 'C:\AutoGRAPH_export_service.log';

  sUnitName:  string;   // для передачи в функцию записи лога
  iCarsWithoutLastDate: word = 0; // кол-во машин без даты посл.изм.
  iCarsProcessed: word = 0;  // кол-во обработанных машин (НЕ пропущенных)
  iCarsCount: word = 0;
  bBusy:  boolean = false;  // Сервис занят.

  slCars:  TStringList;


  bConfig_Smena:  boolean = true;  // Импортировать по сменам (не по суткам, как раньше)
  // пока не используется. Если надо будет сделать по СУТКАМ - то придется сделать конфиг-файл,
  // в котором надо будет указать, что расчет производится по суткам, не по сменам

  AG_obj: TAutoGraphAutomation;

implementation

{$R *.DFM}


procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service_Autograph_Export.Controller(CtrlCode);
end;


function TService_Autograph_Export.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;


procedure TService_Autograph_Export.ServiceExecute(Sender: TService);
begin
  bBusy:=false;
  _Run;
  if not Timer1.Enabled then Timer1.Enabled:=true;
  While not Terminated do
    ServiceThread.ProcessRequests(True);
end;


procedure TService_Autograph_Export.ServiceAfterInstall(Sender: TService);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\SYSTEM\CurrentControlSet\Services\' + Name, false) then
    begin
      Reg.WriteString('Description', 'Служба вытаскивает данные по моточасам по всем машинам из ПО АвтоГРАФ и импортирует их в базу.');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;


procedure TService_Autograph_Export.CloseAutoGRAPH;
begin
  if ag_obj <> nil then begin
    writeToLog('Закрываем АвтоГРАФ');
    ag_obj.Disconnect;
    ag_obj.Free;
    ag_obj:=nil;
  end;
end;


function TService_Autograph_Export.DecodeDoubleToTimeString(d: double): string;
var
  rm,rsec: real;
  ih,im,isec: integer;
begin
  ih:=trunc(d);
  rm:=(d - ih) * 60;
  im:=trunc(rm);
  rsec:=(rm - im) * 60;
  isec:=trunc(rsec);
  result:=Format('%.2d:%.2d:%.2d', [ih, im, isec]);
end;


procedure TService_Autograph_Export.GetLastDateForCar(autographID: integer;
  var LastDate: TDateTime; var LastSmena: integer; var bRes:  boolean);
var
  bGood:  boolean;
  i:  integer;
begin
(*  bGood:=false;

  for i:=0 to high(aCarsLastDate) do begin
    if aCarsLastDate[i].autographID = autographID then
    begin
      bGood:=true;
      LastDate:=aCarsLastDate[i].LastDate;
      LastSmena:=aCarsLastDate[i].LastSmena;

      if lastSmena=1 then
        lastdate:=incHour(trunc(lastdate), 20)
      else {lastSmena=2}
        lastdate:=incHour(IncDay(trunc(lastdate), 1), 8);

      break;
    end;
  end;

  if not bGood then
  begin
    LastSmena:=2;
    LastDate:=IncDay(Now, -2);
    lastdate:=trunc(lastdate);
    lastdate:=incHour(lastdate, 8);
  end;

  bRes:=bGood;
*)
end;


procedure TService_Autograph_Export._Run;
var
  i,j:  integer;
  s1,s2 :  string;
  iTripsCount:  integer;
  sMotorhour, sMotorhourMove, sMotorhourPark:  string;

  s:  string;
  dtStartDate, dtFinishDate: TDateTime;

  fmt:  TFormatSettings;
  iSmena: integer;
  {dtProcessingDate, }dtSmenaStart, dtDateActual, dtSmenaFinish: TDateTime;
  bgood:  boolean;

begin
if not bBusy then
TRY
  CoInitialize(Nil);  // Initializes the COM library
  bConfig_Smena:=true;
  Timer1.Enabled:=false;
  bBusy:=true;
  sUnitName:='';
  iCarsCount:=0;

  // --- 1. Initialize Autograph -----------------------------------------------
  AG_obj:=TAutoGRAPHAutomation.Create(Owner);
  AG_obj.WaitForInitializing;
  ag_obj.HIDEApplication;
//  ag_obj.OnEndComputing:=OnEndComputing2;
  ag_obj.SetGroupIndexByFileName('KSP Steel.ini');

  WriteToLog('Стартуем АвтоГРАФ v' + ag_obj.CurrentVersion + ' ('+ag_obj.WorkDirectory+')');

  // --- 2. Receiving online data for each cars --------------------------------
  Try
  for j:=1 to ag_obj.GroupCarsNum do
  begin
    ag_obj.CarIndex:=j;
    ag_obj.WaitForOnlineData(ag_obj.CarDevice);
    writetolog(format('Получены данные для %d - %s (%s)', [ag_obj.CarDevice, ag_obj.CarModel, ag_obj.CarNumber]));
  end;
  except
    on e:Exception do begin
      writeToLog('Error on receiving data from AutoGRAPH server: ' + e.Message);
      _SendEMail('Error on receiving data from AutoGRAPH server: ' + e.Message);
  end;      end;

  // --- 3. looking for last date in DB ----------------------------------------
  slCars:=TStringList.Create;
  slCars.NameValueSeparator:='=';
  q1.Close;
  q1.SQL.Text:='SELECT MAX(EndTime) AS MaxEndTime, autographID'#$D#$A
             + 'FROM ' + sTable + #$D#$A
             + 'GROUP BY autographID';
  q1.Open;
  q1.First;

  while not q1.Eof do begin
    slCars.Add(q1.FieldByName('autographID').AsString + '=' + q1.FieldByName('MaxEndTime').asString);
    q1.Next;
  end;

  for i:=0 to slCars.Count-1 do
    writeToLog(slCars[i]);

  // 4. --- SQL Query parameters for insert data about engine hours into DB ----
  s:='INSERT INTO ' + sTable + ' (EngineHours, EngineHoursMove, EngineHoursPark, Distance, DateActual, Smena, StartTime, EndTime, RealStartTime, RealEndTime, AutographId, GosNomer)'#$D#$A
  + 'VALUES (:engineHours, :EngineHoursMove, :EngineHoursPark, :distance, :dateactual, :smena, :StartTime, :EndTime, :RealStartTime, :RealEndTime, :autographID, :GosNomer)';
  ADOCommand1.CommandText:=s;
  ADOCommand1.Parameters.FindParam('engineHours').DataType:=ftString;
  ADOCommand1.Parameters.FindParam('EngineHoursMove').DataType:=ftString;
  ADOCommand1.Parameters.FindParam('EngineHoursPark').DataType:=ftString;
  ADOCommand1.Parameters.FindParam('distance').DataType:=ftFloat;
  ADOCommand1.Parameters.FindParam('dateactual').DataType:=ftDate;
  ADOCommand1.Parameters.FindParam('smena').DataType:=ftSmallint;
  ADOCommand1.Parameters.FindParam('StartTime').DataType:=ftDateTime;
  ADOCommand1.Parameters.FindParam('EndTime').DataType:=ftDateTime;
  ADOCommand1.Parameters.FindParam('RealStartTime').DataType:=ftDateTime;
  ADOCommand1.Parameters.FindParam('RealEndTime').DataType:=ftDateTime;
  ADOCommand1.Parameters.FindParam('autographID').DataType:=ftInteger;
  ADOCommand1.Parameters.FindParam('GosNomer').DataType:=ftString;

  // ---------------------------------------------------------------------------
  // -------------------------- 5. MAIN LOOP -----------------------------------
  for j:=1 to ag_obj.GroupCarsNum do
  begin
    ag_obj.CarIndex:=j;
    //ag_obj.SetCarIndexByDevice(198891);

    WriteTolog(Format('%.3d) %s (%s) -- %d -- "%s"', [j, ag_obj.CarModel, ag_obj.CarNumber, ag_obj.CarDevice, ag_obj.CarAlias]));

    // --- берем последнюю дату, имеющуюся в базе для данной машины ------------
    // --- если не найдена в базе, то со вчерашнего дня 8:00
    // --- по сегодня 8:00 (в любом случае)

    //    GetLastDateForCar(ag_obj.CarDevice, dtStartDate, iLastSmena, bGood);
    s:=slCars.Values[inttostr(ag_obj.CarDevice)];
    if s='' then WriteToLog('LastEndTime = <в базе не найдено>')
    else         WriteToLog('LastEndTime = ' + s);

    if s='' then
      dtStartDate:=incHour(IncDay(trunc(now), -1), 8)
    else
      dtStartDate:=strToDateTime(s);

    dtFinishDate:=incHour(Trunc(today), 8);
    //    dtFinishDate:=IncSecond(dtFinishDate, -1);
    if dtFinishDate > Now then
    repeat
      dtFinishDate:=incHour(dtFinishDate, -12);
    until (dtFinishDate < Now) OR (dtFinishDate = dtStartDate);
    if dtFinishDate <= dtStartDate then continue;



    // ----------- <debug> ЕСЛИ НАДО ИМПОРТИРОВАТЬ МОТОЧАСЫ ВРУЧНУЮ ------------
//    dtStartDate:=StrToDateTime('01.12.2014 08:00:00');
//    dtFinishDate:=IncHour(Trunc(Yesterday), 8);
//    dtFinishDate:=IncHour(Trunc(Now), 8);
//    dtFinishDate:=StrToDateTime('21.12.2014 08:00:00');



    GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, fmt);
    s1:=DateTimeToStr(dtStartDate, fmt);
    s2:=DateTimeToStr(dtFinishDate, fmt);

    writeToLog('Берем данные за период: ' + s1 + ' - ' + s2);

    // --- стартуем расчет в автоГРАФе -----------------------------------------
    ag_obj.WaitForComputing(ag_obj.GroupFileName, ag_obj.CarDevice, s1, s2,'GSM', 1);

    iTripsCount:=ag_obj.TripsNum;
//    dtProcessingDate:=dtStartDate;
    WriteToLog('кол-во рейсов: ' + inttostr(iTripsCount));
//    writetolog(datetimetostr(dtProcessingDate));

    // --- ЦИКЛ по рейсам (рейс = смена) ---------------------------------------
    for i:=1 to iTripsCount do
    begin
      ag_obj.TripIndex:=i;
      if (ag_obj.TripStartRealTime = ag_obj.TripEndRealTime)
      then begin
        writetolog('!!! Пропускаем рейс '+inttostr(ag_obj.TripIndex)+' (StartTime=EndTime)');
//        dtProcessingDate:=IncHour(dtProcessingDate, 12);
        dtSmenaFinish:=IncHour(dtSmenaStart, 12);
        Continue;
      end;
//      writetolog(format('Рейс: %d', [i]));


      // --- ГЕОЗОНЫ -----------------------------------------------------------
      
{      ag_obj.TripEntriesListTypeName:='geozones';
      ag_obj.TripEntriesListKindName:='zones';
      Write_To_Log(ag_obj.TripEntriesListTypeName +'\'+ ag_obj.TripEntriesListKindName+' : ' + inttostr(ag_obj.TripEntriesNum));

      for k:=1 to ag_obj.TripEntriesNum do
      begin
        ag_obj.EntryIndex:=k;
//        ag_obj.EntryRealCont;
        write_to_log(inttostr(k) + ') ' + ag_obj.EntryStartName +' - ' + ag_obj.EntryRealCont);
    //    write_To_Log('Остановок: ' + inttostr(ag_obj.EntryParkCntr));
        //Write_To_Log('крд записей: ' + inttostr(ag_obj.TripCrdEntriesNum));
      end;
}

      // --- УЗнаем начало смены (потому что в автографе нет такого значения)
      dtSmenaStart:=strToDateTime(ag_obj.TripStartRealTime);
      if (HourOf(dtSmenaStart)>=8) and (HourOf(dtSmenaStart)<20) then
          dtSmenaStart:=incHour(trunc(dtSmenaStart), 8)
      else if (HourOf(dtSmenaStart)>=20) or (HourOf(dtSmenaStart)<8) then
          dtSmenaStart:=incHour(trunc(dtSmenaStart), 20);

      dtSmenaStart:=IncSecond(dtSmenaStart, -SecondOf(dtSmenaStart));

      dtSmenaFinish:=IncHour(dtSmenaStart, 12);

      dtDateActual:=trunc(dtSmenaStart);

      // --- Вычисляем номер смены ---------------------------------------------
      if HourOf(dtSmenaStart) = 8 then
        iSmena:=1
      else if HourOf(dtSmenaStart) = 20
        then iSmena:=2
      else
        WriteToLog('Непонаятно какая смена!..');

      // --- Обрабатыавем моточасы ---------------------------------------------
      sMotorhour:=    DecodeDoubleToTimeString(ag_obj.TripMotor1Hours);
      sMotorhourMove:=DecodeDoubleToTimeString(ag_obj.TripMotor1MoveHours);
      sMotorhourPark:=DecodeDoubleToTimeString(ag_obj.TripMotor1ParkHours);
{     writeToLog(Format('Моточасы всего: %.3g (%s)', [ag_obj.TripMotor1Hours, sMotorhour]));
      writeToLog(Format('Моточасы в движении: %.3g (%s)', [ag_obj.TripMotor1MoveHours, sMotorhourMove]));
      writeToLog(Format('Моточасы на остановках: %.3g (%s)', [ag_obj.TripMotor1ParkHours, sMotorhourPark]));

      writeToLog('Пробег: ' + vartostr(ag_obj.TripDistance));
      writeToLog('Время фактическое (RealTime): '#09#09 + ag_obj.TripStartRealTime + ' - ' + ag_obj.TripEndRealTime);
      writeToLog('Время регистрации координат (RegTime):'#09 + ag_obj.TripStartRegTime + ' - ' + ag_obj.TripEndRegTime);
      writeToLog('Расход топлива: ' + FloatToStr(ag_obj.TripMotor1Fuel));}

      // --- Готовим параметры в запрос ----------------------------------------
      ADOCommand1.Parameters.FindParam('engineHours').Value:=sMotorhour;
      ADOCommand1.Parameters.FindParam('EngineHoursMove').Value:=sMotorhourMove;
      ADOCommand1.Parameters.FindParam('EngineHoursPark').Value:=sMotorhourPark;
      ADOCommand1.Parameters.FindParam('distance').Value:=ag_obj.TripDistance;
      ADOCommand1.Parameters.FindParam('dateactual').Value:=dtDateActual;
      ADOCommand1.Parameters.FindParam('smena').Value:=iSmena;
      ADOCommand1.Parameters.FindParam('StartTime').Value:=dtSmenaStart;
      ADOCommand1.Parameters.FindParam('EndTime').Value:=dtSmenaFinish;
      ADOCommand1.Parameters.FindParam('RealStartTime').Value:=StrToDateTime(ag_obj.TripStartRealTime);
      ADOCommand1.Parameters.FindParam('RealEndTime').Value:=StrToDateTime(ag_obj.TripEndRealTime);
      ADOCommand1.Parameters.FindParam('autographID').Value:=ag_obj.CarDevice;
      ADOCommand1.Parameters.FindParam('GosNomer').Value:=ag_obj.CarNumber;
      //writeToLog(s);
      ADOCommand1.Execute;
    end; //for Trips

    writeToLog('-----------------------------');
  end; //for Cars

  bBusy:=false;
  Timer1.Interval:=86400000; // 24 часа
  Timer1.Enabled:=true;
  CloseAutoGRAPH;

  except
    on E: Exception do
    begin
      Timer1.Enabled:=false;
      Timer1.Interval:=600000;  // если была ошибка, ставим таймер на 10 минут
      WriteToLog('Error: "' + e.Message + '" | Повторим попытку через 10 минут');
      bBusy:=false;
      Timer1.Enabled:=true;
      _SendEMail(e.Message);
    end;
  end;
  WriteTolog('Завершили импорт данных');
  WriteTolog('================================================');

end;


procedure TService_Autograph_Export._SendEMail(text: string);
var
  M:  TIdMessage;
begin
  Try
    M:=TIdMessage.Create(Service_Autograph_Export);
    M.From.Text:='"AutoGRAPH Exporter" <...@....kz>';
    M.ContentType:='text/plain; charset="windows-1251"';
    M.Recipients.Add;
    M.Recipients[0].Text:='"" <sidorchuk_vv@...>';
    M.Body.Text:=text;
    M.Subject := ''; // Тема письма задается в ExtraHeaders
    M.ExtraHeaders.Add('Subject: Служба АвтоГРАФ Экспортер - Ошибка');
    if not IdSMTP1.Connected then idSMTP1.Connect();
    if idSMTP1.Connected then
    try
      IdSMTP1.Send(M);
    except
      on e:exception do writeToLog('Не могу отправить письмо.'+#$D#$A+'Текст ошибки: ' + e.message);
    end
    else begin
      idSMTP1.Disconnect;
      writeToLog('Не могу отправить письмо.'+#$D#$A+'Не могу подключиться к SMTP-серверу');
    end;
    M.Free;
  except
    writeToLog('Не могу отправить письмо.'+#$D#$A+'Не могу подключиться к SMTP-серверу');
    M.Free;
  end;  
end;


procedure TService_Autograph_Export.WriteToLog(s: string);
var
  f:  textFile;
  ss: string;
begin
  assignFile(f, sLogFileName);
  if fileExists(sLogFileName) then append(f) else Rewrite(f);
  ss:=datetimetostr(now) + #09' ' + s;
  WriteLN(f, ss);
  closeFile(f);
end;


procedure TService_Autograph_Export.Timer1Timer(Sender: TObject);
begin
  _Run;
end;


procedure TService_Autograph_Export.OnEndComputing2(Sender: TObject);
begin
  writetolog('EndComputing');
end;

end.
