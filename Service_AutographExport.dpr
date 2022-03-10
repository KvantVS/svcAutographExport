program Service_AutographExport;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  SvcMgr,
  unit_Service_AutographExport in 'unit_Service_AutographExport.pas' {Service_Autograph_Export: TService};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'AutoGRAPH_Export_service';
  Application.CreateForm(TService_Autograph_Export, Service_Autograph_Export);
  Application.Run;
end.
