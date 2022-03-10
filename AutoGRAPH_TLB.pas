unit AutoGRAPH_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 12.12.2014 17:13:31 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\AutoGRAPH\AutoGRAPH.exe (1)
// LIBID: {12BAD3AB-261B-4C71-81EA-3CEA13EFE1B5}
// LCID: 0
// Helpfile: 
// HelpString: AutoGRAPH Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Parameter 'Type' of IAutoGRAPHAutomation.StartFieldsComputingEx changed to 'Type_'
//   Hint: Parameter 'Type' of IAutoGRAPHAutomation.WaitForFieldsComputingEx changed to 'Type_'
//   Error creating palette bitmap of (TAutoGRAPHAutomation) : Server C:\AutoGRAPH\AutoGRAPH.exe /Automation contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AutoGRAPHMajorVersion = 1;
  AutoGRAPHMinorVersion = 0;

  LIBID_AutoGRAPH: TGUID = '{12BAD3AB-261B-4C71-81EA-3CEA13EFE1B5}';

  IID_IAutoGRAPHAutomation: TGUID = '{F5EF148F-5059-43D0-9F70-71DBAE21EAB3}';
  DIID_IAutoGRAPHAutomationEvents: TGUID = '{590E3923-C635-4464-B7A5-70A1C3CA652F}';
  CLASS_AutoGRAPHAutomation: TGUID = '{D8625B15-227D-4927-B466-E80DCACEEBC2}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAutoGRAPHAutomation = interface;
  IAutoGRAPHAutomationDisp = dispinterface;
  IAutoGRAPHAutomationEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  AutoGRAPHAutomation = IAutoGRAPHAutomation;


// *********************************************************************//
// Interface: IAutoGRAPHAutomation
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5EF148F-5059-43D0-9F70-71DBAE21EAB3}
// *********************************************************************//
  IAutoGRAPHAutomation = interface(IDispatch)
    ['{F5EF148F-5059-43D0-9F70-71DBAE21EAB3}']
    function Get_CurrentVersion: WideString; safecall;
    function Get_GroupsNum: Integer; safecall;
    function Get_GroupIndex: Integer; safecall;
    procedure Set_GroupIndex(Value: Integer); safecall;
    function Get_GroupCarsNum: Integer; safecall;
    function Get_CarIndex: Integer; safecall;
    procedure Set_CarIndex(Value: Integer); safecall;
    function Get_GroupName: WideString; safecall;
    function Get_GroupAddress: WideString; safecall;
    function Get_GroupContacts: WideString; safecall;
    function Get_CarDevice: Integer; safecall;
    function Get_CarModel: WideString; safecall;
    function Get_CarNumber: WideString; safecall;
    function Get_CarAlias: WideString; safecall;
    function Get_CarTelNum: WideString; safecall;
    function Get_CarLatitude: Double; safecall;
    function Get_CarLongitude: Double; safecall;
    function Get_CarCourse: Double; safecall;
    function Get_CarSpeed: Double; safecall;
    function Get_CarParkTime: WideString; safecall;
    function Get_CarLastTime: WideString; safecall;
    function Get_CarLastATime: WideString; safecall;
    function Get_CarFlags: Integer; safecall;
    function Get_CarCheckPointsFile: WideString; safecall;
    procedure ShowApplication; safecall;
    procedure HideApplication; safecall;
    procedure GoToCarLastPosition(const GroupFileName: WideString; CarDevice: Integer); safecall;
    procedure GoToCarLastTrack(const GroupFileName: WideString; CarDevice: Integer); safecall;
    function Get_CheckPointsNum: Integer; safecall;
    function Get_CheckPointIndex: Integer; safecall;
    procedure Set_CheckPointIndex(Value: Integer); safecall;
    function Get_CheckPointName: WideString; safecall;
    procedure Set_CheckPointName(const Value: WideString); safecall;
    function Get_CheckPointAddress: WideString; safecall;
    procedure Set_CheckPointAddress(const Value: WideString); safecall;
    function Get_CheckPointID: WideString; safecall;
    procedure Set_CheckPointID(const Value: WideString); safecall;
    function Get_CheckPointLatitude: Double; safecall;
    procedure Set_CheckPointLatitude(Value: Double); safecall;
    function Get_CheckPointLongitude: Double; safecall;
    procedure Set_CheckPointLongitude(Value: Double); safecall;
    function Get_CheckPointRadius: Integer; safecall;
    procedure Set_CheckPointRadius(Value: Integer); safecall;
    function Get_CheckPointFixTime: Integer; safecall;
    procedure Set_CheckPointFixTime(Value: Integer); safecall;
    function Get_CheckPointWeekDays: Integer; safecall;
    procedure Set_CheckPointWeekDays(Value: Integer); safecall;
    procedure LoadChPFromFile(const FileName: WideString); safecall;
    procedure SaveChPToFile(const FileName: WideString); safecall;
    procedure ClearCheckPoints; safecall;
    procedure AddCheckPoint(const Name: WideString; const Address: WideString; 
                            const ID: WideString; Latitude: Double; Longitude: Double; 
                            Radius: Integer); safecall;
    procedure AddCheckPointEx(const Name: WideString; const Address: WideString; 
                              const ID: WideString; Latitude: Double; Longitude: Double; 
                              Radius: Integer; FixTime: Integer; WeekDays: Integer); safecall;
    function Get_WorkDirectory: WideString; safecall;
    procedure DeleteCheckPoint; safecall;
    function Get_GroupFileName: WideString; safecall;
    procedure SetCarChPParameters(const GroupFileName: WideString; CarDevice: Integer; 
                                  CarDefault: Integer; const CarCheckPointsFile: WideString; 
                                  CarCallPointsByPark: Integer; CarCallPointsByParkTime: Integer; 
                                  CarCallPointsBySens: Integer; CarCallPointsBySensIndex: Integer; 
                                  CarCallPointsBySensTime: Integer; 
                                  const CarGeoZonesFile: WideString); safecall;
    procedure SetGroupIndexByFileName(const GroupFileName: WideString); safecall;
    procedure StartComputing(const GroupFileName: WideString; CarDevice: Integer; 
                             const FirstTime: WideString; const LastTime: WideString; 
                             const DataSource: WideString; TakeTripsSetup: Integer); safecall;
    function Get_ComputingBusy: Integer; safecall;
    function Get_ComputingPercents: Integer; safecall;
    function Get_ComputingCheck: Integer; safecall;
    function Get_TripsNum: Integer; safecall;
    function Get_TripIndex: Integer; safecall;
    procedure Set_TripIndex(Value: Integer); safecall;
    function Get_TripCase: Integer; safecall;
    function Get_TripStartName: WideString; safecall;
    function Get_TripStartAddress: WideString; safecall;
    function Get_TripStartIDP: WideString; safecall;
    function Get_TripStartLongitude: Double; safecall;
    function Get_TripStartLatitude: Double; safecall;
    function Get_TripStartRealTime: WideString; safecall;
    function Get_TripStartRegTime: WideString; safecall;
    function Get_TripEndName: WideString; safecall;
    function Get_TripEndAddress: WideString; safecall;
    function Get_TripEndIDP: WideString; safecall;
    function Get_TripEndLongitude: Double; safecall;
    function Get_TripEndLatitude: Double; safecall;
    function Get_TripEndRealTime: WideString; safecall;
    function Get_TripEndRegTime: WideString; safecall;
    function Get_TripDistance: Double; safecall;
    function Get_TripRealCont: WideString; safecall;
    function Get_TripRegCont: WideString; safecall;
    function Get_TripMoveCont: WideString; safecall;
    function Get_TripParkCont: WideString; safecall;
    function Get_TripMaxSpeed: Double; safecall;
    function Get_TripAverSpeed: Double; safecall;
    function Get_TripMotor1Hours: Double; safecall;
    function Get_TripMotor1MoveHours: Double; safecall;
    function Get_TripMotor1ParkHours: Double; safecall;
    function Get_TripMotor1Fuel: Double; safecall;
    function Get_TripMotor2Hours: Double; safecall;
    function Get_TripMotor2MoveHours: Double; safecall;
    function Get_TripMotor2ParkHours: Double; safecall;
    function Get_TripMotor2Fuel: Double; safecall;
    function Get_TripEntriesNum: Integer; safecall;
    function Get_EntryIndex: Integer; safecall;
    procedure Set_EntryIndex(Value: Integer); safecall;
    function Get_EntryID: Integer; safecall;
    function Get_EntryStartName: WideString; safecall;
    function Get_EntryStartAddress: WideString; safecall;
    function Get_EntryStartIDP: WideString; safecall;
    function Get_EntryStartLongitude: Double; safecall;
    function Get_EntryStartLatitude: Double; safecall;
    function Get_EntryStartRealTime: WideString; safecall;
    function Get_EntryEndName: WideString; safecall;
    function Get_EntryEndAddress: WideString; safecall;
    function Get_EntryEndIDP: WideString; safecall;
    function Get_EntryEndLongitude: Double; safecall;
    function Get_EntryEndLatitude: Double; safecall;
    function Get_EntryEndRealTime: WideString; safecall;
    function Get_EntryDistance: Double; safecall;
    function Get_EntryParkCntr: Integer; safecall;
    function Get_EntryRealCont: WideString; safecall;
    function Get_EntryMoveCont: WideString; safecall;
    function Get_EntryParkCont: WideString; safecall;
    function Get_EntryMaxSpeed: Double; safecall;
    function Get_EntryAverSpeed: Double; safecall;
    function Get_EntryMotor1Hours: Double; safecall;
    function Get_EntryMotor1MoveHours: Double; safecall;
    function Get_EntryMotor1ParkHours: Double; safecall;
    function Get_EntryMotor1Fuel: Double; safecall;
    function Get_EntryMotor2Hours: Double; safecall;
    function Get_EntryMotor2MoveHours: Double; safecall;
    function Get_EntryMotor2ParkHours: Double; safecall;
    function Get_EntryMotor2Fuel: Double; safecall;
    procedure WaitForComputing(const GroupFileName: WideString; CarDevice: Integer; 
                               const FirstTime: WideString; const LastTime: WideString; 
                               const DataSource: WideString; TakeTripsSetup: Integer); safecall;
    function Get_ComputingTimeout: Integer; safecall;
    procedure Set_ComputingTimeout(Value: Integer); safecall;
    procedure EnterPassword(const Password: WideString); safecall;
    procedure ExportTrackToFile(const FileName: WideString; PropDefault: Integer; 
                                const Comment: WideString; const Placemark: WideString; 
                                TrackThick: Integer; TrackColorIndex: Integer; IconTypes: Integer; 
                                TimeOffset: Integer; CreateAlways: Integer; 
                                WaitForCompleted: Integer); safecall;
    function Get_TripCrdEntriesNum: Integer; safecall;
    function Get_CrdEntryIndex: Integer; safecall;
    procedure Set_CrdEntryIndex(Value: Integer); safecall;
    function Get_CrdEntryTime: WideString; safecall;
    function Get_CrdEntryLatitude: Double; safecall;
    function Get_CrdEntryLongitude: Double; safecall;
    function Get_CrdEntryDistance: Double; safecall;
    function Get_CrdEntrySpeed: Double; safecall;
    function Get_CrdEntrySensor1: Integer; safecall;
    function Get_CrdEntrySensor2: Integer; safecall;
    function Get_CrdEntrySensor3: Integer; safecall;
    function Get_CrdEntrySensor4: Integer; safecall;
    function Get_CrdEntrySensor5: Integer; safecall;
    function Get_CrdEntrySensor6: Integer; safecall;
    procedure SetCrdEntryIndexByTime(const Time: WideString); safecall;
    function Get_CarHandle: WideString; safecall;
    function Get_TrackCrdsStr: WideString; safecall;
    function Get_CarRoute: WideString; safecall;
    function Get_CarDrivers: WideString; safecall;
    procedure ExportListToFile(const FileName: WideString; const ListType: WideString; 
                               const ListKind: WideString; Add: Integer; CreateAlways: Integer); safecall;
    function Get_CrdEntryFlags: Integer; safecall;
    function Get_CarSensor1: Integer; safecall;
    function Get_CarSensor2: Integer; safecall;
    function Get_CarSensor3: Integer; safecall;
    function Get_CarSensor4: Integer; safecall;
    function Get_CarSensor5: Integer; safecall;
    function Get_CarSensor6: Integer; safecall;
    function Get_TripSensor1Cntr: Integer; safecall;
    function Get_TripSensor1Distance: Double; safecall;
    function Get_TripSensor1Cont: WideString; safecall;
    function Get_TripSensor2Cntr: Integer; safecall;
    function Get_TripSensor2Distance: Double; safecall;
    function Get_TripSensor2Cont: WideString; safecall;
    function Get_TripSensor3Cntr: Integer; safecall;
    function Get_TripSensor3Distance: Double; safecall;
    function Get_TripSensor3Cont: WideString; safecall;
    function Get_TripSensor4Cntr: Integer; safecall;
    function Get_TripSensor4Distance: Double; safecall;
    function Get_TripSensor4Cont: WideString; safecall;
    function Get_TripSensor5Cntr: Integer; safecall;
    function Get_TripSensor5Distance: Double; safecall;
    function Get_TripSensor5Cont: WideString; safecall;
    function Get_TripSensor6Cntr: Integer; safecall;
    function Get_TripSensor6Distance: Double; safecall;
    function Get_TripSensor6Cont: WideString; safecall;
    function Get_PropertyName: WideString; safecall;
    procedure Set_PropertyName(const Value: WideString); safecall;
    function Get_PropertyValue: WideString; safecall;
    procedure Set_PropertyValue(const Value: WideString); safecall;
    procedure WaitForInitializing; safecall;
    procedure SetCarIndexByDevice(CarDevice: Integer); safecall;
    procedure ExportDataToFile(const FileName: WideString; DataTypes: Integer; CreateAlways: Integer); safecall;
    function Get_TripEntriesListTypeName: WideString; safecall;
    procedure Set_TripEntriesListTypeName(const Value: WideString); safecall;
    function Get_TripEntriesListKindName: WideString; safecall;
    procedure Set_TripEntriesListKindName(const Value: WideString); safecall;
    function Get_PropertyCheck: Integer; safecall;
    function Get_CrdEntryDriverID: WideString; safecall;
    function Get_TrackCrdsArray: OleVariant; safecall;
    function Get_CurrentGroupFileName: WideString; safecall;
    function Get_CurrentCarDevice: Integer; safecall;
    function Get_CurrentTripIndex: Integer; safecall;
    procedure Sleep(Milliseconds: Integer); safecall;
    function Get_EntryStartType: WideString; safecall;
    function Get_EntryStartChannel: WideString; safecall;
    function Get_EntryStartPlanTime: WideString; safecall;
    function Get_EntryEndType: WideString; safecall;
    function Get_EntryEndChannel: WideString; safecall;
    function Get_EntryEndPlanTime: WideString; safecall;
    function Get_EntryPlanCont: WideString; safecall;
    function Get_TripTank1StartLevel: Double; safecall;
    function Get_TripTank1EndLevel: Double; safecall;
    function Get_TripTank2StartLevel: Double; safecall;
    function Get_TripTank2EndLevel: Double; safecall;
    function Get_EntryTank1StartLevel: Double; safecall;
    function Get_EntryTank1EndLevel: Double; safecall;
    function Get_EntryTank2StartLevel: Double; safecall;
    function Get_EntryTank2EndLevel: Double; safecall;
    function Get_CrdEntryLLS1: Integer; safecall;
    function Get_CrdEntryLLS2: Integer; safecall;
    function Get_CrdEntryLLS3: Integer; safecall;
    function Get_CrdEntryLLS4: Integer; safecall;
    function Get_CrdEntryLLS5: Integer; safecall;
    function Get_CrdEntryLLS6: Integer; safecall;
    function Get_CrdEntryLLS7: Integer; safecall;
    function Get_CrdEntryLLS8: Integer; safecall;
    function Get_TripCntr12EntriesNum: Integer; safecall;
    function Get_TripCntr34EntriesNum: Integer; safecall;
    function Get_Counters12Array: OleVariant; safecall;
    function Get_Counters34Array: OleVariant; safecall;
    function Get_TripRouteName: WideString; safecall;
    procedure ExportCarsToFile(const FileName: WideString; const CarDevices: WideString; 
                               PropDefault: Integer; const Comment: WideString; 
                               const Placemark: WideString; TimeOffset: Integer; 
                               CreateAlways: Integer; WaitForCompleted: Integer); safecall;
    function Get_CrdEntrySensor7: Integer; safecall;
    function Get_CrdEntrySensor8: Integer; safecall;
    function Get_CrdEntryChPName: WideString; safecall;
    function Get_CrdEntryChPAddress: WideString; safecall;
    function Get_CrdEntryChPID: WideString; safecall;
    procedure SetCurrentCoords(Latitude: Double; Longitude: Double); safecall;
    function Get_CurrentCheckPointIndex: Integer; safecall;
    function Get_CarSensor7: Integer; safecall;
    function Get_CarSensor8: Integer; safecall;
    function Get_TripTank3StartLevel: Double; safecall;
    function Get_TripTank3EndLevel: Double; safecall;
    function Get_TripTank4StartLevel: Double; safecall;
    function Get_TripTank4EndLevel: Double; safecall;
    function Get_TripSensor7Cntr: Integer; safecall;
    function Get_TripSensor7Distance: Double; safecall;
    function Get_TripSensor7Cont: WideString; safecall;
    function Get_TripSensor8Cntr: Integer; safecall;
    function Get_TripSensor8Distance: Double; safecall;
    function Get_TripSensor8Cont: WideString; safecall;
    function Get_TripCntr56EntriesNum: Integer; safecall;
    function Get_TripCntr78EntriesNum: Integer; safecall;
    function Get_EntryTank3StartLevel: Double; safecall;
    function Get_EntryTank3EndLevel: Double; safecall;
    function Get_EntryTank4StartLevel: Double; safecall;
    function Get_EntryTank4EndLevel: Double; safecall;
    function Get_Counters56Array: OleVariant; safecall;
    function Get_Counters78Array: OleVariant; safecall;
    function Get_CarGeoZonesFile: WideString; safecall;
    function Get_CrdEntryGeoZName: WideString; safecall;
    function Get_CrdEntryGeoZAddress: WideString; safecall;
    function Get_CrdEntryGeoZID: WideString; safecall;
    function Get_CrdEntryDriverName: WideString; safecall;
    function Get_TripDriverName: WideString; safecall;
    function Get_TripDriverID: WideString; safecall;
    procedure CmnExPropertySet(const PropertyName: WideString); safecall;
    procedure CarExPropertySet(const PropertyName: WideString; SerNum: Integer); safecall;
    function Get_CmnExPropertyValue: WideString; safecall;
    procedure Set_CmnExPropertyValue(const Value: WideString); safecall;
    function Get_CarExPropertyValue: WideString; safecall;
    procedure Set_CarExPropertyValue(const Value: WideString); safecall;
    procedure StartFieldsComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                   const FirstTime: WideString; const LastTime: WideString; 
                                   const DataSource: WideString; WorkWidth: Double; 
                                   WorkSensor: Integer); safecall;
    procedure WaitForFieldsComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                     const FirstTime: WideString; const LastTime: WideString; 
                                     const DataSource: WideString; WorkWidth: Double; 
                                     WorkSensor: Integer); safecall;
    function Get_FieldsComputingTimeout: Integer; safecall;
    procedure Set_FieldsComputingTimeout(Value: Integer); safecall;
    function Get_FieldsComputingBusy: Integer; safecall;
    function Get_FieldsComputingPercents: Integer; safecall;
    function Get_FieldsComputingCheck: Integer; safecall;
    function Get_CurrentLatitude: Double; safecall;
    function Get_CurrentLongitude: Double; safecall;
    function Get_CurrentAltitude: Double; safecall;
    function Get_CarPlacement: WideString; safecall;
    procedure ShowAddress(const City: WideString; const Street: WideString; const House: WideString); safecall;
    procedure FindNearestAddress(Latitude: Double; Longitude: Double; MaxDistance: Integer); safecall;
    function Get_CurrentTime: WideString; safecall;
    procedure ReceiveOnlineData(CarDevice: Integer); safecall;
    function Get_TripImplementNames: WideString; safecall;
    function Get_TripImplementIDs: WideString; safecall;
    function Get_FieldsList: WideString; safecall;
    procedure Set_FieldsList(const Value: WideString); safecall;
    procedure StartFieldsComputingEx(Type_: Integer; const DevicesList: WideString; 
                                     const FirstTime: WideString; const LastTime: WideString; 
                                     const DataSource: WideString; const WorkWidths: WideString; 
                                     const WorkOffsets: WideString; const WorkSensors: WideString); safecall;
    procedure WaitForFieldsComputingEx(Type_: Integer; const DevicesList: WideString; 
                                       const FirstTime: WideString; const LastTime: WideString; 
                                       const DataSource: WideString; const WorkWidths: WideString; 
                                       const WorkOffsets: WideString; const WorkSensors: WideString); safecall;
    function Get_FieldsComputingTotalPercents: Integer; safecall;
    procedure WaitForOnlineData(CarDevice: Integer); safecall;
    function Get_OnlineComputingBusy: Integer; safecall;
    property CurrentVersion: WideString read Get_CurrentVersion;
    property GroupsNum: Integer read Get_GroupsNum;
    property GroupIndex: Integer read Get_GroupIndex write Set_GroupIndex;
    property GroupCarsNum: Integer read Get_GroupCarsNum;
    property CarIndex: Integer read Get_CarIndex write Set_CarIndex;
    property GroupName: WideString read Get_GroupName;
    property GroupAddress: WideString read Get_GroupAddress;
    property GroupContacts: WideString read Get_GroupContacts;
    property CarDevice: Integer read Get_CarDevice;
    property CarModel: WideString read Get_CarModel;
    property CarNumber: WideString read Get_CarNumber;
    property CarAlias: WideString read Get_CarAlias;
    property CarTelNum: WideString read Get_CarTelNum;
    property CarLatitude: Double read Get_CarLatitude;
    property CarLongitude: Double read Get_CarLongitude;
    property CarCourse: Double read Get_CarCourse;
    property CarSpeed: Double read Get_CarSpeed;
    property CarParkTime: WideString read Get_CarParkTime;
    property CarLastTime: WideString read Get_CarLastTime;
    property CarLastATime: WideString read Get_CarLastATime;
    property CarFlags: Integer read Get_CarFlags;
    property CarCheckPointsFile: WideString read Get_CarCheckPointsFile;
    property CheckPointsNum: Integer read Get_CheckPointsNum;
    property CheckPointIndex: Integer read Get_CheckPointIndex write Set_CheckPointIndex;
    property CheckPointName: WideString read Get_CheckPointName write Set_CheckPointName;
    property CheckPointAddress: WideString read Get_CheckPointAddress write Set_CheckPointAddress;
    property CheckPointID: WideString read Get_CheckPointID write Set_CheckPointID;
    property CheckPointLatitude: Double read Get_CheckPointLatitude write Set_CheckPointLatitude;
    property CheckPointLongitude: Double read Get_CheckPointLongitude write Set_CheckPointLongitude;
    property CheckPointRadius: Integer read Get_CheckPointRadius write Set_CheckPointRadius;
    property CheckPointFixTime: Integer read Get_CheckPointFixTime write Set_CheckPointFixTime;
    property CheckPointWeekDays: Integer read Get_CheckPointWeekDays write Set_CheckPointWeekDays;
    property WorkDirectory: WideString read Get_WorkDirectory;
    property GroupFileName: WideString read Get_GroupFileName;
    property ComputingBusy: Integer read Get_ComputingBusy;
    property ComputingPercents: Integer read Get_ComputingPercents;
    property ComputingCheck: Integer read Get_ComputingCheck;
    property TripsNum: Integer read Get_TripsNum;
    property TripIndex: Integer read Get_TripIndex write Set_TripIndex;
    property TripCase: Integer read Get_TripCase;
    property TripStartName: WideString read Get_TripStartName;
    property TripStartAddress: WideString read Get_TripStartAddress;
    property TripStartIDP: WideString read Get_TripStartIDP;
    property TripStartLongitude: Double read Get_TripStartLongitude;
    property TripStartLatitude: Double read Get_TripStartLatitude;
    property TripStartRealTime: WideString read Get_TripStartRealTime;
    property TripStartRegTime: WideString read Get_TripStartRegTime;
    property TripEndName: WideString read Get_TripEndName;
    property TripEndAddress: WideString read Get_TripEndAddress;
    property TripEndIDP: WideString read Get_TripEndIDP;
    property TripEndLongitude: Double read Get_TripEndLongitude;
    property TripEndLatitude: Double read Get_TripEndLatitude;
    property TripEndRealTime: WideString read Get_TripEndRealTime;
    property TripEndRegTime: WideString read Get_TripEndRegTime;
    property TripDistance: Double read Get_TripDistance;
    property TripRealCont: WideString read Get_TripRealCont;
    property TripRegCont: WideString read Get_TripRegCont;
    property TripMoveCont: WideString read Get_TripMoveCont;
    property TripParkCont: WideString read Get_TripParkCont;
    property TripMaxSpeed: Double read Get_TripMaxSpeed;
    property TripAverSpeed: Double read Get_TripAverSpeed;
    property TripMotor1Hours: Double read Get_TripMotor1Hours;
    property TripMotor1MoveHours: Double read Get_TripMotor1MoveHours;
    property TripMotor1ParkHours: Double read Get_TripMotor1ParkHours;
    property TripMotor1Fuel: Double read Get_TripMotor1Fuel;
    property TripMotor2Hours: Double read Get_TripMotor2Hours;
    property TripMotor2MoveHours: Double read Get_TripMotor2MoveHours;
    property TripMotor2ParkHours: Double read Get_TripMotor2ParkHours;
    property TripMotor2Fuel: Double read Get_TripMotor2Fuel;
    property TripEntriesNum: Integer read Get_TripEntriesNum;
    property EntryIndex: Integer read Get_EntryIndex write Set_EntryIndex;
    property EntryID: Integer read Get_EntryID;
    property EntryStartName: WideString read Get_EntryStartName;
    property EntryStartAddress: WideString read Get_EntryStartAddress;
    property EntryStartIDP: WideString read Get_EntryStartIDP;
    property EntryStartLongitude: Double read Get_EntryStartLongitude;
    property EntryStartLatitude: Double read Get_EntryStartLatitude;
    property EntryStartRealTime: WideString read Get_EntryStartRealTime;
    property EntryEndName: WideString read Get_EntryEndName;
    property EntryEndAddress: WideString read Get_EntryEndAddress;
    property EntryEndIDP: WideString read Get_EntryEndIDP;
    property EntryEndLongitude: Double read Get_EntryEndLongitude;
    property EntryEndLatitude: Double read Get_EntryEndLatitude;
    property EntryEndRealTime: WideString read Get_EntryEndRealTime;
    property EntryDistance: Double read Get_EntryDistance;
    property EntryParkCntr: Integer read Get_EntryParkCntr;
    property EntryRealCont: WideString read Get_EntryRealCont;
    property EntryMoveCont: WideString read Get_EntryMoveCont;
    property EntryParkCont: WideString read Get_EntryParkCont;
    property EntryMaxSpeed: Double read Get_EntryMaxSpeed;
    property EntryAverSpeed: Double read Get_EntryAverSpeed;
    property EntryMotor1Hours: Double read Get_EntryMotor1Hours;
    property EntryMotor1MoveHours: Double read Get_EntryMotor1MoveHours;
    property EntryMotor1ParkHours: Double read Get_EntryMotor1ParkHours;
    property EntryMotor1Fuel: Double read Get_EntryMotor1Fuel;
    property EntryMotor2Hours: Double read Get_EntryMotor2Hours;
    property EntryMotor2MoveHours: Double read Get_EntryMotor2MoveHours;
    property EntryMotor2ParkHours: Double read Get_EntryMotor2ParkHours;
    property EntryMotor2Fuel: Double read Get_EntryMotor2Fuel;
    property ComputingTimeout: Integer read Get_ComputingTimeout write Set_ComputingTimeout;
    property TripCrdEntriesNum: Integer read Get_TripCrdEntriesNum;
    property CrdEntryIndex: Integer read Get_CrdEntryIndex write Set_CrdEntryIndex;
    property CrdEntryTime: WideString read Get_CrdEntryTime;
    property CrdEntryLatitude: Double read Get_CrdEntryLatitude;
    property CrdEntryLongitude: Double read Get_CrdEntryLongitude;
    property CrdEntryDistance: Double read Get_CrdEntryDistance;
    property CrdEntrySpeed: Double read Get_CrdEntrySpeed;
    property CrdEntrySensor1: Integer read Get_CrdEntrySensor1;
    property CrdEntrySensor2: Integer read Get_CrdEntrySensor2;
    property CrdEntrySensor3: Integer read Get_CrdEntrySensor3;
    property CrdEntrySensor4: Integer read Get_CrdEntrySensor4;
    property CrdEntrySensor5: Integer read Get_CrdEntrySensor5;
    property CrdEntrySensor6: Integer read Get_CrdEntrySensor6;
    property CarHandle: WideString read Get_CarHandle;
    property TrackCrdsStr: WideString read Get_TrackCrdsStr;
    property CarRoute: WideString read Get_CarRoute;
    property CarDrivers: WideString read Get_CarDrivers;
    property CrdEntryFlags: Integer read Get_CrdEntryFlags;
    property CarSensor1: Integer read Get_CarSensor1;
    property CarSensor2: Integer read Get_CarSensor2;
    property CarSensor3: Integer read Get_CarSensor3;
    property CarSensor4: Integer read Get_CarSensor4;
    property CarSensor5: Integer read Get_CarSensor5;
    property CarSensor6: Integer read Get_CarSensor6;
    property TripSensor1Cntr: Integer read Get_TripSensor1Cntr;
    property TripSensor1Distance: Double read Get_TripSensor1Distance;
    property TripSensor1Cont: WideString read Get_TripSensor1Cont;
    property TripSensor2Cntr: Integer read Get_TripSensor2Cntr;
    property TripSensor2Distance: Double read Get_TripSensor2Distance;
    property TripSensor2Cont: WideString read Get_TripSensor2Cont;
    property TripSensor3Cntr: Integer read Get_TripSensor3Cntr;
    property TripSensor3Distance: Double read Get_TripSensor3Distance;
    property TripSensor3Cont: WideString read Get_TripSensor3Cont;
    property TripSensor4Cntr: Integer read Get_TripSensor4Cntr;
    property TripSensor4Distance: Double read Get_TripSensor4Distance;
    property TripSensor4Cont: WideString read Get_TripSensor4Cont;
    property TripSensor5Cntr: Integer read Get_TripSensor5Cntr;
    property TripSensor5Distance: Double read Get_TripSensor5Distance;
    property TripSensor5Cont: WideString read Get_TripSensor5Cont;
    property TripSensor6Cntr: Integer read Get_TripSensor6Cntr;
    property TripSensor6Distance: Double read Get_TripSensor6Distance;
    property TripSensor6Cont: WideString read Get_TripSensor6Cont;
    property PropertyName: WideString read Get_PropertyName write Set_PropertyName;
    property PropertyValue: WideString read Get_PropertyValue write Set_PropertyValue;
    property TripEntriesListTypeName: WideString read Get_TripEntriesListTypeName write Set_TripEntriesListTypeName;
    property TripEntriesListKindName: WideString read Get_TripEntriesListKindName write Set_TripEntriesListKindName;
    property PropertyCheck: Integer read Get_PropertyCheck;
    property CrdEntryDriverID: WideString read Get_CrdEntryDriverID;
    property TrackCrdsArray: OleVariant read Get_TrackCrdsArray;
    property CurrentGroupFileName: WideString read Get_CurrentGroupFileName;
    property CurrentCarDevice: Integer read Get_CurrentCarDevice;
    property CurrentTripIndex: Integer read Get_CurrentTripIndex;
    property EntryStartType: WideString read Get_EntryStartType;
    property EntryStartChannel: WideString read Get_EntryStartChannel;
    property EntryStartPlanTime: WideString read Get_EntryStartPlanTime;
    property EntryEndType: WideString read Get_EntryEndType;
    property EntryEndChannel: WideString read Get_EntryEndChannel;
    property EntryEndPlanTime: WideString read Get_EntryEndPlanTime;
    property EntryPlanCont: WideString read Get_EntryPlanCont;
    property TripTank1StartLevel: Double read Get_TripTank1StartLevel;
    property TripTank1EndLevel: Double read Get_TripTank1EndLevel;
    property TripTank2StartLevel: Double read Get_TripTank2StartLevel;
    property TripTank2EndLevel: Double read Get_TripTank2EndLevel;
    property EntryTank1StartLevel: Double read Get_EntryTank1StartLevel;
    property EntryTank1EndLevel: Double read Get_EntryTank1EndLevel;
    property EntryTank2StartLevel: Double read Get_EntryTank2StartLevel;
    property EntryTank2EndLevel: Double read Get_EntryTank2EndLevel;
    property CrdEntryLLS1: Integer read Get_CrdEntryLLS1;
    property CrdEntryLLS2: Integer read Get_CrdEntryLLS2;
    property CrdEntryLLS3: Integer read Get_CrdEntryLLS3;
    property CrdEntryLLS4: Integer read Get_CrdEntryLLS4;
    property CrdEntryLLS5: Integer read Get_CrdEntryLLS5;
    property CrdEntryLLS6: Integer read Get_CrdEntryLLS6;
    property CrdEntryLLS7: Integer read Get_CrdEntryLLS7;
    property CrdEntryLLS8: Integer read Get_CrdEntryLLS8;
    property TripCntr12EntriesNum: Integer read Get_TripCntr12EntriesNum;
    property TripCntr34EntriesNum: Integer read Get_TripCntr34EntriesNum;
    property Counters12Array: OleVariant read Get_Counters12Array;
    property Counters34Array: OleVariant read Get_Counters34Array;
    property TripRouteName: WideString read Get_TripRouteName;
    property CrdEntrySensor7: Integer read Get_CrdEntrySensor7;
    property CrdEntrySensor8: Integer read Get_CrdEntrySensor8;
    property CrdEntryChPName: WideString read Get_CrdEntryChPName;
    property CrdEntryChPAddress: WideString read Get_CrdEntryChPAddress;
    property CrdEntryChPID: WideString read Get_CrdEntryChPID;
    property CurrentCheckPointIndex: Integer read Get_CurrentCheckPointIndex;
    property CarSensor7: Integer read Get_CarSensor7;
    property CarSensor8: Integer read Get_CarSensor8;
    property TripTank3StartLevel: Double read Get_TripTank3StartLevel;
    property TripTank3EndLevel: Double read Get_TripTank3EndLevel;
    property TripTank4StartLevel: Double read Get_TripTank4StartLevel;
    property TripTank4EndLevel: Double read Get_TripTank4EndLevel;
    property TripSensor7Cntr: Integer read Get_TripSensor7Cntr;
    property TripSensor7Distance: Double read Get_TripSensor7Distance;
    property TripSensor7Cont: WideString read Get_TripSensor7Cont;
    property TripSensor8Cntr: Integer read Get_TripSensor8Cntr;
    property TripSensor8Distance: Double read Get_TripSensor8Distance;
    property TripSensor8Cont: WideString read Get_TripSensor8Cont;
    property TripCntr56EntriesNum: Integer read Get_TripCntr56EntriesNum;
    property TripCntr78EntriesNum: Integer read Get_TripCntr78EntriesNum;
    property EntryTank3StartLevel: Double read Get_EntryTank3StartLevel;
    property EntryTank3EndLevel: Double read Get_EntryTank3EndLevel;
    property EntryTank4StartLevel: Double read Get_EntryTank4StartLevel;
    property EntryTank4EndLevel: Double read Get_EntryTank4EndLevel;
    property Counters56Array: OleVariant read Get_Counters56Array;
    property Counters78Array: OleVariant read Get_Counters78Array;
    property CarGeoZonesFile: WideString read Get_CarGeoZonesFile;
    property CrdEntryGeoZName: WideString read Get_CrdEntryGeoZName;
    property CrdEntryGeoZAddress: WideString read Get_CrdEntryGeoZAddress;
    property CrdEntryGeoZID: WideString read Get_CrdEntryGeoZID;
    property CrdEntryDriverName: WideString read Get_CrdEntryDriverName;
    property TripDriverName: WideString read Get_TripDriverName;
    property TripDriverID: WideString read Get_TripDriverID;
    property CmnExPropertyValue: WideString read Get_CmnExPropertyValue write Set_CmnExPropertyValue;
    property CarExPropertyValue: WideString read Get_CarExPropertyValue write Set_CarExPropertyValue;
    property FieldsComputingTimeout: Integer read Get_FieldsComputingTimeout write Set_FieldsComputingTimeout;
    property FieldsComputingBusy: Integer read Get_FieldsComputingBusy;
    property FieldsComputingPercents: Integer read Get_FieldsComputingPercents;
    property FieldsComputingCheck: Integer read Get_FieldsComputingCheck;
    property CurrentLatitude: Double read Get_CurrentLatitude;
    property CurrentLongitude: Double read Get_CurrentLongitude;
    property CurrentAltitude: Double read Get_CurrentAltitude;
    property CarPlacement: WideString read Get_CarPlacement;
    property CurrentTime: WideString read Get_CurrentTime;
    property TripImplementNames: WideString read Get_TripImplementNames;
    property TripImplementIDs: WideString read Get_TripImplementIDs;
    property FieldsList: WideString read Get_FieldsList write Set_FieldsList;
    property FieldsComputingTotalPercents: Integer read Get_FieldsComputingTotalPercents;
    property OnlineComputingBusy: Integer read Get_OnlineComputingBusy;
  end;

// *********************************************************************//
// DispIntf:  IAutoGRAPHAutomationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5EF148F-5059-43D0-9F70-71DBAE21EAB3}
// *********************************************************************//
  IAutoGRAPHAutomationDisp = dispinterface
    ['{F5EF148F-5059-43D0-9F70-71DBAE21EAB3}']
    property CurrentVersion: WideString readonly dispid 101;
    property GroupsNum: Integer readonly dispid 103;
    property GroupIndex: Integer dispid 201;
    property GroupCarsNum: Integer readonly dispid 205;
    property CarIndex: Integer dispid 301;
    property GroupName: WideString readonly dispid 202;
    property GroupAddress: WideString readonly dispid 203;
    property GroupContacts: WideString readonly dispid 204;
    property CarDevice: Integer readonly dispid 302;
    property CarModel: WideString readonly dispid 303;
    property CarNumber: WideString readonly dispid 304;
    property CarAlias: WideString readonly dispid 305;
    property CarTelNum: WideString readonly dispid 306;
    property CarLatitude: Double readonly dispid 401;
    property CarLongitude: Double readonly dispid 402;
    property CarCourse: Double readonly dispid 403;
    property CarSpeed: Double readonly dispid 404;
    property CarParkTime: WideString readonly dispid 405;
    property CarLastTime: WideString readonly dispid 406;
    property CarLastATime: WideString readonly dispid 407;
    property CarFlags: Integer readonly dispid 408;
    property CarCheckPointsFile: WideString readonly dispid 307;
    procedure ShowApplication; dispid 206;
    procedure HideApplication; dispid 207;
    procedure GoToCarLastPosition(const GroupFileName: WideString; CarDevice: Integer); dispid 208;
    procedure GoToCarLastTrack(const GroupFileName: WideString; CarDevice: Integer); dispid 209;
    property CheckPointsNum: Integer readonly dispid 210;
    property CheckPointIndex: Integer dispid 211;
    property CheckPointName: WideString dispid 212;
    property CheckPointAddress: WideString dispid 213;
    property CheckPointID: WideString dispid 214;
    property CheckPointLatitude: Double dispid 215;
    property CheckPointLongitude: Double dispid 216;
    property CheckPointRadius: Integer dispid 217;
    property CheckPointFixTime: Integer dispid 218;
    property CheckPointWeekDays: Integer dispid 219;
    procedure LoadChPFromFile(const FileName: WideString); dispid 220;
    procedure SaveChPToFile(const FileName: WideString); dispid 221;
    procedure ClearCheckPoints; dispid 222;
    procedure AddCheckPoint(const Name: WideString; const Address: WideString; 
                            const ID: WideString; Latitude: Double; Longitude: Double; 
                            Radius: Integer); dispid 223;
    procedure AddCheckPointEx(const Name: WideString; const Address: WideString; 
                              const ID: WideString; Latitude: Double; Longitude: Double; 
                              Radius: Integer; FixTime: Integer; WeekDays: Integer); dispid 224;
    property WorkDirectory: WideString readonly dispid 102;
    procedure DeleteCheckPoint; dispid 225;
    property GroupFileName: WideString readonly dispid 226;
    procedure SetCarChPParameters(const GroupFileName: WideString; CarDevice: Integer; 
                                  CarDefault: Integer; const CarCheckPointsFile: WideString; 
                                  CarCallPointsByPark: Integer; CarCallPointsByParkTime: Integer; 
                                  CarCallPointsBySens: Integer; CarCallPointsBySensIndex: Integer; 
                                  CarCallPointsBySensTime: Integer; 
                                  const CarGeoZonesFile: WideString); dispid 227;
    procedure SetGroupIndexByFileName(const GroupFileName: WideString); dispid 228;
    procedure StartComputing(const GroupFileName: WideString; CarDevice: Integer; 
                             const FirstTime: WideString; const LastTime: WideString; 
                             const DataSource: WideString; TakeTripsSetup: Integer); dispid 229;
    property ComputingBusy: Integer readonly dispid 230;
    property ComputingPercents: Integer readonly dispid 231;
    property ComputingCheck: Integer readonly dispid 232;
    property TripsNum: Integer readonly dispid 233;
    property TripIndex: Integer dispid 234;
    property TripCase: Integer readonly dispid 235;
    property TripStartName: WideString readonly dispid 236;
    property TripStartAddress: WideString readonly dispid 237;
    property TripStartIDP: WideString readonly dispid 238;
    property TripStartLongitude: Double readonly dispid 239;
    property TripStartLatitude: Double readonly dispid 240;
    property TripStartRealTime: WideString readonly dispid 241;
    property TripStartRegTime: WideString readonly dispid 242;
    property TripEndName: WideString readonly dispid 243;
    property TripEndAddress: WideString readonly dispid 244;
    property TripEndIDP: WideString readonly dispid 245;
    property TripEndLongitude: Double readonly dispid 246;
    property TripEndLatitude: Double readonly dispid 247;
    property TripEndRealTime: WideString readonly dispid 248;
    property TripEndRegTime: WideString readonly dispid 249;
    property TripDistance: Double readonly dispid 250;
    property TripRealCont: WideString readonly dispid 251;
    property TripRegCont: WideString readonly dispid 252;
    property TripMoveCont: WideString readonly dispid 253;
    property TripParkCont: WideString readonly dispid 254;
    property TripMaxSpeed: Double readonly dispid 255;
    property TripAverSpeed: Double readonly dispid 256;
    property TripMotor1Hours: Double readonly dispid 257;
    property TripMotor1MoveHours: Double readonly dispid 258;
    property TripMotor1ParkHours: Double readonly dispid 259;
    property TripMotor1Fuel: Double readonly dispid 260;
    property TripMotor2Hours: Double readonly dispid 261;
    property TripMotor2MoveHours: Double readonly dispid 262;
    property TripMotor2ParkHours: Double readonly dispid 263;
    property TripMotor2Fuel: Double readonly dispid 264;
    property TripEntriesNum: Integer readonly dispid 266;
    property EntryIndex: Integer dispid 297;
    property EntryID: Integer readonly dispid 298;
    property EntryStartName: WideString readonly dispid 299;
    property EntryStartAddress: WideString readonly dispid 300;
    property EntryStartIDP: WideString readonly dispid 308;
    property EntryStartLongitude: Double readonly dispid 309;
    property EntryStartLatitude: Double readonly dispid 310;
    property EntryStartRealTime: WideString readonly dispid 311;
    property EntryEndName: WideString readonly dispid 312;
    property EntryEndAddress: WideString readonly dispid 313;
    property EntryEndIDP: WideString readonly dispid 314;
    property EntryEndLongitude: Double readonly dispid 315;
    property EntryEndLatitude: Double readonly dispid 316;
    property EntryEndRealTime: WideString readonly dispid 317;
    property EntryDistance: Double readonly dispid 318;
    property EntryParkCntr: Integer readonly dispid 319;
    property EntryRealCont: WideString readonly dispid 320;
    property EntryMoveCont: WideString readonly dispid 321;
    property EntryParkCont: WideString readonly dispid 322;
    property EntryMaxSpeed: Double readonly dispid 323;
    property EntryAverSpeed: Double readonly dispid 324;
    property EntryMotor1Hours: Double readonly dispid 325;
    property EntryMotor1MoveHours: Double readonly dispid 326;
    property EntryMotor1ParkHours: Double readonly dispid 327;
    property EntryMotor1Fuel: Double readonly dispid 328;
    property EntryMotor2Hours: Double readonly dispid 329;
    property EntryMotor2MoveHours: Double readonly dispid 330;
    property EntryMotor2ParkHours: Double readonly dispid 331;
    property EntryMotor2Fuel: Double readonly dispid 332;
    procedure WaitForComputing(const GroupFileName: WideString; CarDevice: Integer; 
                               const FirstTime: WideString; const LastTime: WideString; 
                               const DataSource: WideString; TakeTripsSetup: Integer); dispid 348;
    property ComputingTimeout: Integer dispid 349;
    procedure EnterPassword(const Password: WideString); dispid 352;
    procedure ExportTrackToFile(const FileName: WideString; PropDefault: Integer; 
                                const Comment: WideString; const Placemark: WideString; 
                                TrackThick: Integer; TrackColorIndex: Integer; IconTypes: Integer; 
                                TimeOffset: Integer; CreateAlways: Integer; 
                                WaitForCompleted: Integer); dispid 350;
    property TripCrdEntriesNum: Integer readonly dispid 351;
    property CrdEntryIndex: Integer dispid 353;
    property CrdEntryTime: WideString readonly dispid 354;
    property CrdEntryLatitude: Double readonly dispid 355;
    property CrdEntryLongitude: Double readonly dispid 356;
    property CrdEntryDistance: Double readonly dispid 357;
    property CrdEntrySpeed: Double readonly dispid 358;
    property CrdEntrySensor1: Integer readonly dispid 359;
    property CrdEntrySensor2: Integer readonly dispid 360;
    property CrdEntrySensor3: Integer readonly dispid 361;
    property CrdEntrySensor4: Integer readonly dispid 362;
    property CrdEntrySensor5: Integer readonly dispid 363;
    property CrdEntrySensor6: Integer readonly dispid 364;
    procedure SetCrdEntryIndexByTime(const Time: WideString); dispid 365;
    property CarHandle: WideString readonly dispid 366;
    property TrackCrdsStr: WideString readonly dispid 367;
    property CarRoute: WideString readonly dispid 368;
    property CarDrivers: WideString readonly dispid 369;
    procedure ExportListToFile(const FileName: WideString; const ListType: WideString; 
                               const ListKind: WideString; Add: Integer; CreateAlways: Integer); dispid 370;
    property CrdEntryFlags: Integer readonly dispid 371;
    property CarSensor1: Integer readonly dispid 372;
    property CarSensor2: Integer readonly dispid 373;
    property CarSensor3: Integer readonly dispid 374;
    property CarSensor4: Integer readonly dispid 375;
    property CarSensor5: Integer readonly dispid 376;
    property CarSensor6: Integer readonly dispid 377;
    property TripSensor1Cntr: Integer readonly dispid 378;
    property TripSensor1Distance: Double readonly dispid 379;
    property TripSensor1Cont: WideString readonly dispid 380;
    property TripSensor2Cntr: Integer readonly dispid 381;
    property TripSensor2Distance: Double readonly dispid 382;
    property TripSensor2Cont: WideString readonly dispid 383;
    property TripSensor3Cntr: Integer readonly dispid 384;
    property TripSensor3Distance: Double readonly dispid 385;
    property TripSensor3Cont: WideString readonly dispid 386;
    property TripSensor4Cntr: Integer readonly dispid 387;
    property TripSensor4Distance: Double readonly dispid 388;
    property TripSensor4Cont: WideString readonly dispid 389;
    property TripSensor5Cntr: Integer readonly dispid 390;
    property TripSensor5Distance: Double readonly dispid 391;
    property TripSensor5Cont: WideString readonly dispid 392;
    property TripSensor6Cntr: Integer readonly dispid 393;
    property TripSensor6Distance: Double readonly dispid 394;
    property TripSensor6Cont: WideString readonly dispid 395;
    property PropertyName: WideString dispid 396;
    property PropertyValue: WideString dispid 397;
    procedure WaitForInitializing; dispid 398;
    procedure SetCarIndexByDevice(CarDevice: Integer); dispid 399;
    procedure ExportDataToFile(const FileName: WideString; DataTypes: Integer; CreateAlways: Integer); dispid 400;
    property TripEntriesListTypeName: WideString dispid 267;
    property TripEntriesListKindName: WideString dispid 409;
    property PropertyCheck: Integer readonly dispid 333;
    property CrdEntryDriverID: WideString readonly dispid 334;
    property TrackCrdsArray: OleVariant readonly dispid 336;
    property CurrentGroupFileName: WideString readonly dispid 335;
    property CurrentCarDevice: Integer readonly dispid 337;
    property CurrentTripIndex: Integer readonly dispid 338;
    procedure Sleep(Milliseconds: Integer); dispid 339;
    property EntryStartType: WideString readonly dispid 265;
    property EntryStartChannel: WideString readonly dispid 268;
    property EntryStartPlanTime: WideString readonly dispid 269;
    property EntryEndType: WideString readonly dispid 270;
    property EntryEndChannel: WideString readonly dispid 271;
    property EntryEndPlanTime: WideString readonly dispid 272;
    property EntryPlanCont: WideString readonly dispid 273;
    property TripTank1StartLevel: Double readonly dispid 274;
    property TripTank1EndLevel: Double readonly dispid 275;
    property TripTank2StartLevel: Double readonly dispid 276;
    property TripTank2EndLevel: Double readonly dispid 277;
    property EntryTank1StartLevel: Double readonly dispid 278;
    property EntryTank1EndLevel: Double readonly dispid 279;
    property EntryTank2StartLevel: Double readonly dispid 280;
    property EntryTank2EndLevel: Double readonly dispid 281;
    property CrdEntryLLS1: Integer readonly dispid 282;
    property CrdEntryLLS2: Integer readonly dispid 283;
    property CrdEntryLLS3: Integer readonly dispid 284;
    property CrdEntryLLS4: Integer readonly dispid 285;
    property CrdEntryLLS5: Integer readonly dispid 286;
    property CrdEntryLLS6: Integer readonly dispid 287;
    property CrdEntryLLS7: Integer readonly dispid 288;
    property CrdEntryLLS8: Integer readonly dispid 289;
    property TripCntr12EntriesNum: Integer readonly dispid 290;
    property TripCntr34EntriesNum: Integer readonly dispid 291;
    property Counters12Array: OleVariant readonly dispid 292;
    property Counters34Array: OleVariant readonly dispid 293;
    property TripRouteName: WideString readonly dispid 294;
    procedure ExportCarsToFile(const FileName: WideString; const CarDevices: WideString; 
                               PropDefault: Integer; const Comment: WideString; 
                               const Placemark: WideString; TimeOffset: Integer; 
                               CreateAlways: Integer; WaitForCompleted: Integer); dispid 295;
    property CrdEntrySensor7: Integer readonly dispid 296;
    property CrdEntrySensor8: Integer readonly dispid 340;
    property CrdEntryChPName: WideString readonly dispid 341;
    property CrdEntryChPAddress: WideString readonly dispid 342;
    property CrdEntryChPID: WideString readonly dispid 343;
    procedure SetCurrentCoords(Latitude: Double; Longitude: Double); dispid 344;
    property CurrentCheckPointIndex: Integer readonly dispid 345;
    property CarSensor7: Integer readonly dispid 346;
    property CarSensor8: Integer readonly dispid 347;
    property TripTank3StartLevel: Double readonly dispid 410;
    property TripTank3EndLevel: Double readonly dispid 411;
    property TripTank4StartLevel: Double readonly dispid 412;
    property TripTank4EndLevel: Double readonly dispid 413;
    property TripSensor7Cntr: Integer readonly dispid 414;
    property TripSensor7Distance: Double readonly dispid 415;
    property TripSensor7Cont: WideString readonly dispid 416;
    property TripSensor8Cntr: Integer readonly dispid 417;
    property TripSensor8Distance: Double readonly dispid 418;
    property TripSensor8Cont: WideString readonly dispid 419;
    property TripCntr56EntriesNum: Integer readonly dispid 420;
    property TripCntr78EntriesNum: Integer readonly dispid 421;
    property EntryTank3StartLevel: Double readonly dispid 422;
    property EntryTank3EndLevel: Double readonly dispid 423;
    property EntryTank4StartLevel: Double readonly dispid 424;
    property EntryTank4EndLevel: Double readonly dispid 425;
    property Counters56Array: OleVariant readonly dispid 426;
    property Counters78Array: OleVariant readonly dispid 427;
    property CarGeoZonesFile: WideString readonly dispid 428;
    property CrdEntryGeoZName: WideString readonly dispid 429;
    property CrdEntryGeoZAddress: WideString readonly dispid 430;
    property CrdEntryGeoZID: WideString readonly dispid 431;
    property CrdEntryDriverName: WideString readonly dispid 432;
    property TripDriverName: WideString readonly dispid 433;
    property TripDriverID: WideString readonly dispid 434;
    procedure CmnExPropertySet(const PropertyName: WideString); dispid 435;
    procedure CarExPropertySet(const PropertyName: WideString; SerNum: Integer); dispid 436;
    property CmnExPropertyValue: WideString dispid 437;
    property CarExPropertyValue: WideString dispid 438;
    procedure StartFieldsComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                   const FirstTime: WideString; const LastTime: WideString; 
                                   const DataSource: WideString; WorkWidth: Double; 
                                   WorkSensor: Integer); dispid 439;
    procedure WaitForFieldsComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                     const FirstTime: WideString; const LastTime: WideString; 
                                     const DataSource: WideString; WorkWidth: Double; 
                                     WorkSensor: Integer); dispid 440;
    property FieldsComputingTimeout: Integer dispid 441;
    property FieldsComputingBusy: Integer readonly dispid 442;
    property FieldsComputingPercents: Integer readonly dispid 443;
    property FieldsComputingCheck: Integer readonly dispid 444;
    property CurrentLatitude: Double readonly dispid 445;
    property CurrentLongitude: Double readonly dispid 446;
    property CurrentAltitude: Double readonly dispid 447;
    property CarPlacement: WideString readonly dispid 448;
    procedure ShowAddress(const City: WideString; const Street: WideString; const House: WideString); dispid 449;
    procedure FindNearestAddress(Latitude: Double; Longitude: Double; MaxDistance: Integer); dispid 450;
    property CurrentTime: WideString readonly dispid 451;
    procedure ReceiveOnlineData(CarDevice: Integer); dispid 452;
    property TripImplementNames: WideString readonly dispid 453;
    property TripImplementIDs: WideString readonly dispid 454;
    property FieldsList: WideString dispid 455;
    procedure StartFieldsComputingEx(Type_: Integer; const DevicesList: WideString; 
                                     const FirstTime: WideString; const LastTime: WideString; 
                                     const DataSource: WideString; const WorkWidths: WideString; 
                                     const WorkOffsets: WideString; const WorkSensors: WideString); dispid 456;
    procedure WaitForFieldsComputingEx(Type_: Integer; const DevicesList: WideString; 
                                       const FirstTime: WideString; const LastTime: WideString; 
                                       const DataSource: WideString; const WorkWidths: WideString; 
                                       const WorkOffsets: WideString; const WorkSensors: WideString); dispid 457;
    property FieldsComputingTotalPercents: Integer readonly dispid 458;
    procedure WaitForOnlineData(CarDevice: Integer); dispid 459;
    property OnlineComputingBusy: Integer readonly dispid 460;
  end;

// *********************************************************************//
// DispIntf:  IAutoGRAPHAutomationEvents
// Flags:     (4096) Dispatchable
// GUID:      {590E3923-C635-4464-B7A5-70A1C3CA652F}
// *********************************************************************//
  IAutoGRAPHAutomationEvents = dispinterface
    ['{590E3923-C635-4464-B7A5-70A1C3CA652F}']
    procedure OnChangeCarsLists; dispid 201;
    procedure OnReceiveOnlineData; dispid 202;
    procedure OnCloseServer; dispid 203;
    procedure OnChangeParameters; dispid 204;
    procedure OnEndComputing; dispid 205;
    procedure OnEndFieldsComputing; dispid 206;
  end;

// *********************************************************************//
// The Class CoAutoGRAPHAutomation provides a Create and CreateRemote method to          
// create instances of the default interface IAutoGRAPHAutomation exposed by              
// the CoClass AutoGRAPHAutomation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAutoGRAPHAutomation = class
    class function Create: IAutoGRAPHAutomation;
    class function CreateRemote(const MachineName: string): IAutoGRAPHAutomation;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAutoGRAPHAutomation
// Help String      : AutoGRAPHAutomation Object
// Default Interface: IAutoGRAPHAutomation
// Def. Intf. DISP? : No
// Event   Interface: IAutoGRAPHAutomationEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAutoGRAPHAutomationProperties= class;
{$ENDIF}
  TAutoGRAPHAutomation = class(TOleServer)
  private
    FOnChangeCarsLists: TNotifyEvent;
    FOnReceiveOnlineData: TNotifyEvent;
    FOnCloseServer: TNotifyEvent;
    FOnChangeParameters: TNotifyEvent;
    FOnEndComputing: TNotifyEvent;
    FOnEndFieldsComputing: TNotifyEvent;
    FIntf:        IAutoGRAPHAutomation;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAutoGRAPHAutomationProperties;
    function      GetServerProperties: TAutoGRAPHAutomationProperties;
{$ENDIF}
    function      GetDefaultInterface: IAutoGRAPHAutomation;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_CurrentVersion: WideString;
    function Get_GroupsNum: Integer;
    function Get_GroupIndex: Integer;
    procedure Set_GroupIndex(Value: Integer);
    function Get_GroupCarsNum: Integer;
    function Get_CarIndex: Integer;
    procedure Set_CarIndex(Value: Integer);
    function Get_GroupName: WideString;
    function Get_GroupAddress: WideString;
    function Get_GroupContacts: WideString;
    function Get_CarDevice: Integer;
    function Get_CarModel: WideString;
    function Get_CarNumber: WideString;
    function Get_CarAlias: WideString;
    function Get_CarTelNum: WideString;
    function Get_CarLatitude: Double;
    function Get_CarLongitude: Double;
    function Get_CarCourse: Double;
    function Get_CarSpeed: Double;
    function Get_CarParkTime: WideString;
    function Get_CarLastTime: WideString;
    function Get_CarLastATime: WideString;
    function Get_CarFlags: Integer;
    function Get_CarCheckPointsFile: WideString;
    function Get_CheckPointsNum: Integer;
    function Get_CheckPointIndex: Integer;
    procedure Set_CheckPointIndex(Value: Integer);
    function Get_CheckPointName: WideString;
    procedure Set_CheckPointName(const Value: WideString);
    function Get_CheckPointAddress: WideString;
    procedure Set_CheckPointAddress(const Value: WideString);
    function Get_CheckPointID: WideString;
    procedure Set_CheckPointID(const Value: WideString);
    function Get_CheckPointLatitude: Double;
    procedure Set_CheckPointLatitude(Value: Double);
    function Get_CheckPointLongitude: Double;
    procedure Set_CheckPointLongitude(Value: Double);
    function Get_CheckPointRadius: Integer;
    procedure Set_CheckPointRadius(Value: Integer);
    function Get_CheckPointFixTime: Integer;
    procedure Set_CheckPointFixTime(Value: Integer);
    function Get_CheckPointWeekDays: Integer;
    procedure Set_CheckPointWeekDays(Value: Integer);
    function Get_WorkDirectory: WideString;
    function Get_GroupFileName: WideString;
    function Get_ComputingBusy: Integer;
    function Get_ComputingPercents: Integer;
    function Get_ComputingCheck: Integer;
    function Get_TripsNum: Integer;
    function Get_TripIndex: Integer;
    procedure Set_TripIndex(Value: Integer);
    function Get_TripCase: Integer;
    function Get_TripStartName: WideString;
    function Get_TripStartAddress: WideString;
    function Get_TripStartIDP: WideString;
    function Get_TripStartLongitude: Double;
    function Get_TripStartLatitude: Double;
    function Get_TripStartRealTime: WideString;
    function Get_TripStartRegTime: WideString;
    function Get_TripEndName: WideString;
    function Get_TripEndAddress: WideString;
    function Get_TripEndIDP: WideString;
    function Get_TripEndLongitude: Double;
    function Get_TripEndLatitude: Double;
    function Get_TripEndRealTime: WideString;
    function Get_TripEndRegTime: WideString;
    function Get_TripDistance: Double;
    function Get_TripRealCont: WideString;
    function Get_TripRegCont: WideString;
    function Get_TripMoveCont: WideString;
    function Get_TripParkCont: WideString;
    function Get_TripMaxSpeed: Double;
    function Get_TripAverSpeed: Double;
    function Get_TripMotor1Hours: Double;
    function Get_TripMotor1MoveHours: Double;
    function Get_TripMotor1ParkHours: Double;
    function Get_TripMotor1Fuel: Double;
    function Get_TripMotor2Hours: Double;
    function Get_TripMotor2MoveHours: Double;
    function Get_TripMotor2ParkHours: Double;
    function Get_TripMotor2Fuel: Double;
    function Get_TripEntriesNum: Integer;
    function Get_EntryIndex: Integer;
    procedure Set_EntryIndex(Value: Integer);
    function Get_EntryID: Integer;
    function Get_EntryStartName: WideString;
    function Get_EntryStartAddress: WideString;
    function Get_EntryStartIDP: WideString;
    function Get_EntryStartLongitude: Double;
    function Get_EntryStartLatitude: Double;
    function Get_EntryStartRealTime: WideString;
    function Get_EntryEndName: WideString;
    function Get_EntryEndAddress: WideString;
    function Get_EntryEndIDP: WideString;
    function Get_EntryEndLongitude: Double;
    function Get_EntryEndLatitude: Double;
    function Get_EntryEndRealTime: WideString;
    function Get_EntryDistance: Double;
    function Get_EntryParkCntr: Integer;
    function Get_EntryRealCont: WideString;
    function Get_EntryMoveCont: WideString;
    function Get_EntryParkCont: WideString;
    function Get_EntryMaxSpeed: Double;
    function Get_EntryAverSpeed: Double;
    function Get_EntryMotor1Hours: Double;
    function Get_EntryMotor1MoveHours: Double;
    function Get_EntryMotor1ParkHours: Double;
    function Get_EntryMotor1Fuel: Double;
    function Get_EntryMotor2Hours: Double;
    function Get_EntryMotor2MoveHours: Double;
    function Get_EntryMotor2ParkHours: Double;
    function Get_EntryMotor2Fuel: Double;
    function Get_ComputingTimeout: Integer;
    procedure Set_ComputingTimeout(Value: Integer);
    function Get_TripCrdEntriesNum: Integer;
    function Get_CrdEntryIndex: Integer;
    procedure Set_CrdEntryIndex(Value: Integer);
    function Get_CrdEntryTime: WideString;
    function Get_CrdEntryLatitude: Double;
    function Get_CrdEntryLongitude: Double;
    function Get_CrdEntryDistance: Double;
    function Get_CrdEntrySpeed: Double;
    function Get_CrdEntrySensor1: Integer;
    function Get_CrdEntrySensor2: Integer;
    function Get_CrdEntrySensor3: Integer;
    function Get_CrdEntrySensor4: Integer;
    function Get_CrdEntrySensor5: Integer;
    function Get_CrdEntrySensor6: Integer;
    function Get_CarHandle: WideString;
    function Get_TrackCrdsStr: WideString;
    function Get_CarRoute: WideString;
    function Get_CarDrivers: WideString;
    function Get_CrdEntryFlags: Integer;
    function Get_CarSensor1: Integer;
    function Get_CarSensor2: Integer;
    function Get_CarSensor3: Integer;
    function Get_CarSensor4: Integer;
    function Get_CarSensor5: Integer;
    function Get_CarSensor6: Integer;
    function Get_TripSensor1Cntr: Integer;
    function Get_TripSensor1Distance: Double;
    function Get_TripSensor1Cont: WideString;
    function Get_TripSensor2Cntr: Integer;
    function Get_TripSensor2Distance: Double;
    function Get_TripSensor2Cont: WideString;
    function Get_TripSensor3Cntr: Integer;
    function Get_TripSensor3Distance: Double;
    function Get_TripSensor3Cont: WideString;
    function Get_TripSensor4Cntr: Integer;
    function Get_TripSensor4Distance: Double;
    function Get_TripSensor4Cont: WideString;
    function Get_TripSensor5Cntr: Integer;
    function Get_TripSensor5Distance: Double;
    function Get_TripSensor5Cont: WideString;
    function Get_TripSensor6Cntr: Integer;
    function Get_TripSensor6Distance: Double;
    function Get_TripSensor6Cont: WideString;
    function Get_PropertyName: WideString;
    procedure Set_PropertyName(const Value: WideString);
    function Get_PropertyValue: WideString;
    procedure Set_PropertyValue(const Value: WideString);
    function Get_TripEntriesListTypeName: WideString;
    procedure Set_TripEntriesListTypeName(const Value: WideString);
    function Get_TripEntriesListKindName: WideString;
    procedure Set_TripEntriesListKindName(const Value: WideString);
    function Get_PropertyCheck: Integer;
    function Get_CrdEntryDriverID: WideString;
    function Get_TrackCrdsArray: OleVariant;
    function Get_CurrentGroupFileName: WideString;
    function Get_CurrentCarDevice: Integer;
    function Get_CurrentTripIndex: Integer;
    function Get_EntryStartType: WideString;
    function Get_EntryStartChannel: WideString;
    function Get_EntryStartPlanTime: WideString;
    function Get_EntryEndType: WideString;
    function Get_EntryEndChannel: WideString;
    function Get_EntryEndPlanTime: WideString;
    function Get_EntryPlanCont: WideString;
    function Get_TripTank1StartLevel: Double;
    function Get_TripTank1EndLevel: Double;
    function Get_TripTank2StartLevel: Double;
    function Get_TripTank2EndLevel: Double;
    function Get_EntryTank1StartLevel: Double;
    function Get_EntryTank1EndLevel: Double;
    function Get_EntryTank2StartLevel: Double;
    function Get_EntryTank2EndLevel: Double;
    function Get_CrdEntryLLS1: Integer;
    function Get_CrdEntryLLS2: Integer;
    function Get_CrdEntryLLS3: Integer;
    function Get_CrdEntryLLS4: Integer;
    function Get_CrdEntryLLS5: Integer;
    function Get_CrdEntryLLS6: Integer;
    function Get_CrdEntryLLS7: Integer;
    function Get_CrdEntryLLS8: Integer;
    function Get_TripCntr12EntriesNum: Integer;
    function Get_TripCntr34EntriesNum: Integer;
    function Get_Counters12Array: OleVariant;
    function Get_Counters34Array: OleVariant;
    function Get_TripRouteName: WideString;
    function Get_CrdEntrySensor7: Integer;
    function Get_CrdEntrySensor8: Integer;
    function Get_CrdEntryChPName: WideString;
    function Get_CrdEntryChPAddress: WideString;
    function Get_CrdEntryChPID: WideString;
    function Get_CurrentCheckPointIndex: Integer;
    function Get_CarSensor7: Integer;
    function Get_CarSensor8: Integer;
    function Get_TripTank3StartLevel: Double;
    function Get_TripTank3EndLevel: Double;
    function Get_TripTank4StartLevel: Double;
    function Get_TripTank4EndLevel: Double;
    function Get_TripSensor7Cntr: Integer;
    function Get_TripSensor7Distance: Double;
    function Get_TripSensor7Cont: WideString;
    function Get_TripSensor8Cntr: Integer;
    function Get_TripSensor8Distance: Double;
    function Get_TripSensor8Cont: WideString;
    function Get_TripCntr56EntriesNum: Integer;
    function Get_TripCntr78EntriesNum: Integer;
    function Get_EntryTank3StartLevel: Double;
    function Get_EntryTank3EndLevel: Double;
    function Get_EntryTank4StartLevel: Double;
    function Get_EntryTank4EndLevel: Double;
    function Get_Counters56Array: OleVariant;
    function Get_Counters78Array: OleVariant;
    function Get_CarGeoZonesFile: WideString;
    function Get_CrdEntryGeoZName: WideString;
    function Get_CrdEntryGeoZAddress: WideString;
    function Get_CrdEntryGeoZID: WideString;
    function Get_CrdEntryDriverName: WideString;
    function Get_TripDriverName: WideString;
    function Get_TripDriverID: WideString;
    function Get_CmnExPropertyValue: WideString;
    procedure Set_CmnExPropertyValue(const Value: WideString);
    function Get_CarExPropertyValue: WideString;
    procedure Set_CarExPropertyValue(const Value: WideString);
    function Get_FieldsComputingTimeout: Integer;
    procedure Set_FieldsComputingTimeout(Value: Integer);
    function Get_FieldsComputingBusy: Integer;
    function Get_FieldsComputingPercents: Integer;
    function Get_FieldsComputingCheck: Integer;
    function Get_CurrentLatitude: Double;
    function Get_CurrentLongitude: Double;
    function Get_CurrentAltitude: Double;
    function Get_CarPlacement: WideString;
    function Get_CurrentTime: WideString;
    function Get_TripImplementNames: WideString;
    function Get_TripImplementIDs: WideString;
    function Get_FieldsList: WideString;
    procedure Set_FieldsList(const Value: WideString);
    function Get_FieldsComputingTotalPercents: Integer;
    function Get_OnlineComputingBusy: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAutoGRAPHAutomation);
    procedure Disconnect; override;
    procedure ShowApplication;
    procedure HideApplication;
    procedure GoToCarLastPosition(const GroupFileName: WideString; CarDevice: Integer);
    procedure GoToCarLastTrack(const GroupFileName: WideString; CarDevice: Integer);
    procedure LoadChPFromFile(const FileName: WideString);
    procedure SaveChPToFile(const FileName: WideString);
    procedure ClearCheckPoints;
    procedure AddCheckPoint(const Name: WideString; const Address: WideString; 
                            const ID: WideString; Latitude: Double; Longitude: Double; 
                            Radius: Integer);
    procedure AddCheckPointEx(const Name: WideString; const Address: WideString; 
                              const ID: WideString; Latitude: Double; Longitude: Double; 
                              Radius: Integer; FixTime: Integer; WeekDays: Integer);
    procedure DeleteCheckPoint;
    procedure SetCarChPParameters(const GroupFileName: WideString; CarDevice: Integer; 
                                  CarDefault: Integer; const CarCheckPointsFile: WideString; 
                                  CarCallPointsByPark: Integer; CarCallPointsByParkTime: Integer; 
                                  CarCallPointsBySens: Integer; CarCallPointsBySensIndex: Integer; 
                                  CarCallPointsBySensTime: Integer; 
                                  const CarGeoZonesFile: WideString);
    procedure SetGroupIndexByFileName(const GroupFileName: WideString);
    procedure StartComputing(const GroupFileName: WideString; CarDevice: Integer; 
                             const FirstTime: WideString; const LastTime: WideString; 
                             const DataSource: WideString; TakeTripsSetup: Integer);
    procedure WaitForComputing(const GroupFileName: WideString; CarDevice: Integer; 
                               const FirstTime: WideString; const LastTime: WideString; 
                               const DataSource: WideString; TakeTripsSetup: Integer);
    procedure EnterPassword(const Password: WideString);
    procedure ExportTrackToFile(const FileName: WideString; PropDefault: Integer; 
                                const Comment: WideString; const Placemark: WideString; 
                                TrackThick: Integer; TrackColorIndex: Integer; IconTypes: Integer; 
                                TimeOffset: Integer; CreateAlways: Integer; 
                                WaitForCompleted: Integer);
    procedure SetCrdEntryIndexByTime(const Time: WideString);
    procedure ExportListToFile(const FileName: WideString; const ListType: WideString; 
                               const ListKind: WideString; Add: Integer; CreateAlways: Integer);
    procedure WaitForInitializing;
    procedure SetCarIndexByDevice(CarDevice: Integer);
    procedure ExportDataToFile(const FileName: WideString; DataTypes: Integer; CreateAlways: Integer);
    procedure Sleep(Milliseconds: Integer);
    procedure ExportCarsToFile(const FileName: WideString; const CarDevices: WideString; 
                               PropDefault: Integer; const Comment: WideString; 
                               const Placemark: WideString; TimeOffset: Integer; 
                               CreateAlways: Integer; WaitForCompleted: Integer);
    procedure SetCurrentCoords(Latitude: Double; Longitude: Double);
    procedure CmnExPropertySet(const PropertyName: WideString);
    procedure CarExPropertySet(const PropertyName: WideString; SerNum: Integer);
    procedure StartFieldsComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                   const FirstTime: WideString; const LastTime: WideString; 
                                   const DataSource: WideString; WorkWidth: Double; 
                                   WorkSensor: Integer);
    procedure WaitForFieldsComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                     const FirstTime: WideString; const LastTime: WideString; 
                                     const DataSource: WideString; WorkWidth: Double; 
                                     WorkSensor: Integer);
    procedure ShowAddress(const City: WideString; const Street: WideString; const House: WideString);
    procedure FindNearestAddress(Latitude: Double; Longitude: Double; MaxDistance: Integer);
    procedure ReceiveOnlineData(CarDevice: Integer);
    procedure StartFieldsComputingEx(Type_: Integer; const DevicesList: WideString; 
                                     const FirstTime: WideString; const LastTime: WideString; 
                                     const DataSource: WideString; const WorkWidths: WideString; 
                                     const WorkOffsets: WideString; const WorkSensors: WideString);
    procedure WaitForFieldsComputingEx(Type_: Integer; const DevicesList: WideString; 
                                       const FirstTime: WideString; const LastTime: WideString; 
                                       const DataSource: WideString; const WorkWidths: WideString; 
                                       const WorkOffsets: WideString; const WorkSensors: WideString);
    procedure WaitForOnlineData(CarDevice: Integer);
    property DefaultInterface: IAutoGRAPHAutomation read GetDefaultInterface;
    property CurrentVersion: WideString read Get_CurrentVersion;
    property GroupsNum: Integer read Get_GroupsNum;
    property GroupCarsNum: Integer read Get_GroupCarsNum;
    property GroupName: WideString read Get_GroupName;
    property GroupAddress: WideString read Get_GroupAddress;
    property GroupContacts: WideString read Get_GroupContacts;
    property CarDevice: Integer read Get_CarDevice;
    property CarModel: WideString read Get_CarModel;
    property CarNumber: WideString read Get_CarNumber;
    property CarAlias: WideString read Get_CarAlias;
    property CarTelNum: WideString read Get_CarTelNum;
    property CarLatitude: Double read Get_CarLatitude;
    property CarLongitude: Double read Get_CarLongitude;
    property CarCourse: Double read Get_CarCourse;
    property CarSpeed: Double read Get_CarSpeed;
    property CarParkTime: WideString read Get_CarParkTime;
    property CarLastTime: WideString read Get_CarLastTime;
    property CarLastATime: WideString read Get_CarLastATime;
    property CarFlags: Integer read Get_CarFlags;
    property CarCheckPointsFile: WideString read Get_CarCheckPointsFile;
    property CheckPointsNum: Integer read Get_CheckPointsNum;
    property WorkDirectory: WideString read Get_WorkDirectory;
    property GroupFileName: WideString read Get_GroupFileName;
    property ComputingBusy: Integer read Get_ComputingBusy;
    property ComputingPercents: Integer read Get_ComputingPercents;
    property ComputingCheck: Integer read Get_ComputingCheck;
    property TripsNum: Integer read Get_TripsNum;
    property TripCase: Integer read Get_TripCase;
    property TripStartName: WideString read Get_TripStartName;
    property TripStartAddress: WideString read Get_TripStartAddress;
    property TripStartIDP: WideString read Get_TripStartIDP;
    property TripStartLongitude: Double read Get_TripStartLongitude;
    property TripStartLatitude: Double read Get_TripStartLatitude;
    property TripStartRealTime: WideString read Get_TripStartRealTime;
    property TripStartRegTime: WideString read Get_TripStartRegTime;
    property TripEndName: WideString read Get_TripEndName;
    property TripEndAddress: WideString read Get_TripEndAddress;
    property TripEndIDP: WideString read Get_TripEndIDP;
    property TripEndLongitude: Double read Get_TripEndLongitude;
    property TripEndLatitude: Double read Get_TripEndLatitude;
    property TripEndRealTime: WideString read Get_TripEndRealTime;
    property TripEndRegTime: WideString read Get_TripEndRegTime;
    property TripDistance: Double read Get_TripDistance;
    property TripRealCont: WideString read Get_TripRealCont;
    property TripRegCont: WideString read Get_TripRegCont;
    property TripMoveCont: WideString read Get_TripMoveCont;
    property TripParkCont: WideString read Get_TripParkCont;
    property TripMaxSpeed: Double read Get_TripMaxSpeed;
    property TripAverSpeed: Double read Get_TripAverSpeed;
    property TripMotor1Hours: Double read Get_TripMotor1Hours;
    property TripMotor1MoveHours: Double read Get_TripMotor1MoveHours;
    property TripMotor1ParkHours: Double read Get_TripMotor1ParkHours;
    property TripMotor1Fuel: Double read Get_TripMotor1Fuel;
    property TripMotor2Hours: Double read Get_TripMotor2Hours;
    property TripMotor2MoveHours: Double read Get_TripMotor2MoveHours;
    property TripMotor2ParkHours: Double read Get_TripMotor2ParkHours;
    property TripMotor2Fuel: Double read Get_TripMotor2Fuel;
    property TripEntriesNum: Integer read Get_TripEntriesNum;
    property EntryID: Integer read Get_EntryID;
    property EntryStartName: WideString read Get_EntryStartName;
    property EntryStartAddress: WideString read Get_EntryStartAddress;
    property EntryStartIDP: WideString read Get_EntryStartIDP;
    property EntryStartLongitude: Double read Get_EntryStartLongitude;
    property EntryStartLatitude: Double read Get_EntryStartLatitude;
    property EntryStartRealTime: WideString read Get_EntryStartRealTime;
    property EntryEndName: WideString read Get_EntryEndName;
    property EntryEndAddress: WideString read Get_EntryEndAddress;
    property EntryEndIDP: WideString read Get_EntryEndIDP;
    property EntryEndLongitude: Double read Get_EntryEndLongitude;
    property EntryEndLatitude: Double read Get_EntryEndLatitude;
    property EntryEndRealTime: WideString read Get_EntryEndRealTime;
    property EntryDistance: Double read Get_EntryDistance;
    property EntryParkCntr: Integer read Get_EntryParkCntr;
    property EntryRealCont: WideString read Get_EntryRealCont;
    property EntryMoveCont: WideString read Get_EntryMoveCont;
    property EntryParkCont: WideString read Get_EntryParkCont;
    property EntryMaxSpeed: Double read Get_EntryMaxSpeed;
    property EntryAverSpeed: Double read Get_EntryAverSpeed;
    property EntryMotor1Hours: Double read Get_EntryMotor1Hours;
    property EntryMotor1MoveHours: Double read Get_EntryMotor1MoveHours;
    property EntryMotor1ParkHours: Double read Get_EntryMotor1ParkHours;
    property EntryMotor1Fuel: Double read Get_EntryMotor1Fuel;
    property EntryMotor2Hours: Double read Get_EntryMotor2Hours;
    property EntryMotor2MoveHours: Double read Get_EntryMotor2MoveHours;
    property EntryMotor2ParkHours: Double read Get_EntryMotor2ParkHours;
    property EntryMotor2Fuel: Double read Get_EntryMotor2Fuel;
    property TripCrdEntriesNum: Integer read Get_TripCrdEntriesNum;
    property CrdEntryTime: WideString read Get_CrdEntryTime;
    property CrdEntryLatitude: Double read Get_CrdEntryLatitude;
    property CrdEntryLongitude: Double read Get_CrdEntryLongitude;
    property CrdEntryDistance: Double read Get_CrdEntryDistance;
    property CrdEntrySpeed: Double read Get_CrdEntrySpeed;
    property CrdEntrySensor1: Integer read Get_CrdEntrySensor1;
    property CrdEntrySensor2: Integer read Get_CrdEntrySensor2;
    property CrdEntrySensor3: Integer read Get_CrdEntrySensor3;
    property CrdEntrySensor4: Integer read Get_CrdEntrySensor4;
    property CrdEntrySensor5: Integer read Get_CrdEntrySensor5;
    property CrdEntrySensor6: Integer read Get_CrdEntrySensor6;
    property CarHandle: WideString read Get_CarHandle;
    property TrackCrdsStr: WideString read Get_TrackCrdsStr;
    property CarRoute: WideString read Get_CarRoute;
    property CarDrivers: WideString read Get_CarDrivers;
    property CrdEntryFlags: Integer read Get_CrdEntryFlags;
    property CarSensor1: Integer read Get_CarSensor1;
    property CarSensor2: Integer read Get_CarSensor2;
    property CarSensor3: Integer read Get_CarSensor3;
    property CarSensor4: Integer read Get_CarSensor4;
    property CarSensor5: Integer read Get_CarSensor5;
    property CarSensor6: Integer read Get_CarSensor6;
    property TripSensor1Cntr: Integer read Get_TripSensor1Cntr;
    property TripSensor1Distance: Double read Get_TripSensor1Distance;
    property TripSensor1Cont: WideString read Get_TripSensor1Cont;
    property TripSensor2Cntr: Integer read Get_TripSensor2Cntr;
    property TripSensor2Distance: Double read Get_TripSensor2Distance;
    property TripSensor2Cont: WideString read Get_TripSensor2Cont;
    property TripSensor3Cntr: Integer read Get_TripSensor3Cntr;
    property TripSensor3Distance: Double read Get_TripSensor3Distance;
    property TripSensor3Cont: WideString read Get_TripSensor3Cont;
    property TripSensor4Cntr: Integer read Get_TripSensor4Cntr;
    property TripSensor4Distance: Double read Get_TripSensor4Distance;
    property TripSensor4Cont: WideString read Get_TripSensor4Cont;
    property TripSensor5Cntr: Integer read Get_TripSensor5Cntr;
    property TripSensor5Distance: Double read Get_TripSensor5Distance;
    property TripSensor5Cont: WideString read Get_TripSensor5Cont;
    property TripSensor6Cntr: Integer read Get_TripSensor6Cntr;
    property TripSensor6Distance: Double read Get_TripSensor6Distance;
    property TripSensor6Cont: WideString read Get_TripSensor6Cont;
    property PropertyCheck: Integer read Get_PropertyCheck;
    property CrdEntryDriverID: WideString read Get_CrdEntryDriverID;
    property TrackCrdsArray: OleVariant read Get_TrackCrdsArray;
    property CurrentGroupFileName: WideString read Get_CurrentGroupFileName;
    property CurrentCarDevice: Integer read Get_CurrentCarDevice;
    property CurrentTripIndex: Integer read Get_CurrentTripIndex;
    property EntryStartType: WideString read Get_EntryStartType;
    property EntryStartChannel: WideString read Get_EntryStartChannel;
    property EntryStartPlanTime: WideString read Get_EntryStartPlanTime;
    property EntryEndType: WideString read Get_EntryEndType;
    property EntryEndChannel: WideString read Get_EntryEndChannel;
    property EntryEndPlanTime: WideString read Get_EntryEndPlanTime;
    property EntryPlanCont: WideString read Get_EntryPlanCont;
    property TripTank1StartLevel: Double read Get_TripTank1StartLevel;
    property TripTank1EndLevel: Double read Get_TripTank1EndLevel;
    property TripTank2StartLevel: Double read Get_TripTank2StartLevel;
    property TripTank2EndLevel: Double read Get_TripTank2EndLevel;
    property EntryTank1StartLevel: Double read Get_EntryTank1StartLevel;
    property EntryTank1EndLevel: Double read Get_EntryTank1EndLevel;
    property EntryTank2StartLevel: Double read Get_EntryTank2StartLevel;
    property EntryTank2EndLevel: Double read Get_EntryTank2EndLevel;
    property CrdEntryLLS1: Integer read Get_CrdEntryLLS1;
    property CrdEntryLLS2: Integer read Get_CrdEntryLLS2;
    property CrdEntryLLS3: Integer read Get_CrdEntryLLS3;
    property CrdEntryLLS4: Integer read Get_CrdEntryLLS4;
    property CrdEntryLLS5: Integer read Get_CrdEntryLLS5;
    property CrdEntryLLS6: Integer read Get_CrdEntryLLS6;
    property CrdEntryLLS7: Integer read Get_CrdEntryLLS7;
    property CrdEntryLLS8: Integer read Get_CrdEntryLLS8;
    property TripCntr12EntriesNum: Integer read Get_TripCntr12EntriesNum;
    property TripCntr34EntriesNum: Integer read Get_TripCntr34EntriesNum;
    property Counters12Array: OleVariant read Get_Counters12Array;
    property Counters34Array: OleVariant read Get_Counters34Array;
    property TripRouteName: WideString read Get_TripRouteName;
    property CrdEntrySensor7: Integer read Get_CrdEntrySensor7;
    property CrdEntrySensor8: Integer read Get_CrdEntrySensor8;
    property CrdEntryChPName: WideString read Get_CrdEntryChPName;
    property CrdEntryChPAddress: WideString read Get_CrdEntryChPAddress;
    property CrdEntryChPID: WideString read Get_CrdEntryChPID;
    property CurrentCheckPointIndex: Integer read Get_CurrentCheckPointIndex;
    property CarSensor7: Integer read Get_CarSensor7;
    property CarSensor8: Integer read Get_CarSensor8;
    property TripTank3StartLevel: Double read Get_TripTank3StartLevel;
    property TripTank3EndLevel: Double read Get_TripTank3EndLevel;
    property TripTank4StartLevel: Double read Get_TripTank4StartLevel;
    property TripTank4EndLevel: Double read Get_TripTank4EndLevel;
    property TripSensor7Cntr: Integer read Get_TripSensor7Cntr;
    property TripSensor7Distance: Double read Get_TripSensor7Distance;
    property TripSensor7Cont: WideString read Get_TripSensor7Cont;
    property TripSensor8Cntr: Integer read Get_TripSensor8Cntr;
    property TripSensor8Distance: Double read Get_TripSensor8Distance;
    property TripSensor8Cont: WideString read Get_TripSensor8Cont;
    property TripCntr56EntriesNum: Integer read Get_TripCntr56EntriesNum;
    property TripCntr78EntriesNum: Integer read Get_TripCntr78EntriesNum;
    property EntryTank3StartLevel: Double read Get_EntryTank3StartLevel;
    property EntryTank3EndLevel: Double read Get_EntryTank3EndLevel;
    property EntryTank4StartLevel: Double read Get_EntryTank4StartLevel;
    property EntryTank4EndLevel: Double read Get_EntryTank4EndLevel;
    property Counters56Array: OleVariant read Get_Counters56Array;
    property Counters78Array: OleVariant read Get_Counters78Array;
    property CarGeoZonesFile: WideString read Get_CarGeoZonesFile;
    property CrdEntryGeoZName: WideString read Get_CrdEntryGeoZName;
    property CrdEntryGeoZAddress: WideString read Get_CrdEntryGeoZAddress;
    property CrdEntryGeoZID: WideString read Get_CrdEntryGeoZID;
    property CrdEntryDriverName: WideString read Get_CrdEntryDriverName;
    property TripDriverName: WideString read Get_TripDriverName;
    property TripDriverID: WideString read Get_TripDriverID;
    property FieldsComputingBusy: Integer read Get_FieldsComputingBusy;
    property FieldsComputingPercents: Integer read Get_FieldsComputingPercents;
    property FieldsComputingCheck: Integer read Get_FieldsComputingCheck;
    property CurrentLatitude: Double read Get_CurrentLatitude;
    property CurrentLongitude: Double read Get_CurrentLongitude;
    property CurrentAltitude: Double read Get_CurrentAltitude;
    property CarPlacement: WideString read Get_CarPlacement;
    property CurrentTime: WideString read Get_CurrentTime;
    property TripImplementNames: WideString read Get_TripImplementNames;
    property TripImplementIDs: WideString read Get_TripImplementIDs;
    property FieldsComputingTotalPercents: Integer read Get_FieldsComputingTotalPercents;
    property OnlineComputingBusy: Integer read Get_OnlineComputingBusy;
    property GroupIndex: Integer read Get_GroupIndex write Set_GroupIndex;
    property CarIndex: Integer read Get_CarIndex write Set_CarIndex;
    property CheckPointIndex: Integer read Get_CheckPointIndex write Set_CheckPointIndex;
    property CheckPointName: WideString read Get_CheckPointName write Set_CheckPointName;
    property CheckPointAddress: WideString read Get_CheckPointAddress write Set_CheckPointAddress;
    property CheckPointID: WideString read Get_CheckPointID write Set_CheckPointID;
    property CheckPointLatitude: Double read Get_CheckPointLatitude write Set_CheckPointLatitude;
    property CheckPointLongitude: Double read Get_CheckPointLongitude write Set_CheckPointLongitude;
    property CheckPointRadius: Integer read Get_CheckPointRadius write Set_CheckPointRadius;
    property CheckPointFixTime: Integer read Get_CheckPointFixTime write Set_CheckPointFixTime;
    property CheckPointWeekDays: Integer read Get_CheckPointWeekDays write Set_CheckPointWeekDays;
    property TripIndex: Integer read Get_TripIndex write Set_TripIndex;
    property EntryIndex: Integer read Get_EntryIndex write Set_EntryIndex;
    property ComputingTimeout: Integer read Get_ComputingTimeout write Set_ComputingTimeout;
    property CrdEntryIndex: Integer read Get_CrdEntryIndex write Set_CrdEntryIndex;
    property PropertyName: WideString read Get_PropertyName write Set_PropertyName;
    property PropertyValue: WideString read Get_PropertyValue write Set_PropertyValue;
    property TripEntriesListTypeName: WideString read Get_TripEntriesListTypeName write Set_TripEntriesListTypeName;
    property TripEntriesListKindName: WideString read Get_TripEntriesListKindName write Set_TripEntriesListKindName;
    property CmnExPropertyValue: WideString read Get_CmnExPropertyValue write Set_CmnExPropertyValue;
    property CarExPropertyValue: WideString read Get_CarExPropertyValue write Set_CarExPropertyValue;
    property FieldsComputingTimeout: Integer read Get_FieldsComputingTimeout write Set_FieldsComputingTimeout;
    property FieldsList: WideString read Get_FieldsList write Set_FieldsList;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAutoGRAPHAutomationProperties read GetServerProperties;
{$ENDIF}
    property OnChangeCarsLists: TNotifyEvent read FOnChangeCarsLists write FOnChangeCarsLists;
    property OnReceiveOnlineData: TNotifyEvent read FOnReceiveOnlineData write FOnReceiveOnlineData;
    property OnCloseServer: TNotifyEvent read FOnCloseServer write FOnCloseServer;
    property OnChangeParameters: TNotifyEvent read FOnChangeParameters write FOnChangeParameters;
    property OnEndComputing: TNotifyEvent read FOnEndComputing write FOnEndComputing;
    property OnEndFieldsComputing: TNotifyEvent read FOnEndFieldsComputing write FOnEndFieldsComputing;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAutoGRAPHAutomation
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAutoGRAPHAutomationProperties = class(TPersistent)
  private
    FServer:    TAutoGRAPHAutomation;
    function    GetDefaultInterface: IAutoGRAPHAutomation;
    constructor Create(AServer: TAutoGRAPHAutomation);
  protected
    function Get_CurrentVersion: WideString;
    function Get_GroupsNum: Integer;
    function Get_GroupIndex: Integer;
    procedure Set_GroupIndex(Value: Integer);
    function Get_GroupCarsNum: Integer;
    function Get_CarIndex: Integer;
    procedure Set_CarIndex(Value: Integer);
    function Get_GroupName: WideString;
    function Get_GroupAddress: WideString;
    function Get_GroupContacts: WideString;
    function Get_CarDevice: Integer;
    function Get_CarModel: WideString;
    function Get_CarNumber: WideString;
    function Get_CarAlias: WideString;
    function Get_CarTelNum: WideString;
    function Get_CarLatitude: Double;
    function Get_CarLongitude: Double;
    function Get_CarCourse: Double;
    function Get_CarSpeed: Double;
    function Get_CarParkTime: WideString;
    function Get_CarLastTime: WideString;
    function Get_CarLastATime: WideString;
    function Get_CarFlags: Integer;
    function Get_CarCheckPointsFile: WideString;
    function Get_CheckPointsNum: Integer;
    function Get_CheckPointIndex: Integer;
    procedure Set_CheckPointIndex(Value: Integer);
    function Get_CheckPointName: WideString;
    procedure Set_CheckPointName(const Value: WideString);
    function Get_CheckPointAddress: WideString;
    procedure Set_CheckPointAddress(const Value: WideString);
    function Get_CheckPointID: WideString;
    procedure Set_CheckPointID(const Value: WideString);
    function Get_CheckPointLatitude: Double;
    procedure Set_CheckPointLatitude(Value: Double);
    function Get_CheckPointLongitude: Double;
    procedure Set_CheckPointLongitude(Value: Double);
    function Get_CheckPointRadius: Integer;
    procedure Set_CheckPointRadius(Value: Integer);
    function Get_CheckPointFixTime: Integer;
    procedure Set_CheckPointFixTime(Value: Integer);
    function Get_CheckPointWeekDays: Integer;
    procedure Set_CheckPointWeekDays(Value: Integer);
    function Get_WorkDirectory: WideString;
    function Get_GroupFileName: WideString;
    function Get_ComputingBusy: Integer;
    function Get_ComputingPercents: Integer;
    function Get_ComputingCheck: Integer;
    function Get_TripsNum: Integer;
    function Get_TripIndex: Integer;
    procedure Set_TripIndex(Value: Integer);
    function Get_TripCase: Integer;
    function Get_TripStartName: WideString;
    function Get_TripStartAddress: WideString;
    function Get_TripStartIDP: WideString;
    function Get_TripStartLongitude: Double;
    function Get_TripStartLatitude: Double;
    function Get_TripStartRealTime: WideString;
    function Get_TripStartRegTime: WideString;
    function Get_TripEndName: WideString;
    function Get_TripEndAddress: WideString;
    function Get_TripEndIDP: WideString;
    function Get_TripEndLongitude: Double;
    function Get_TripEndLatitude: Double;
    function Get_TripEndRealTime: WideString;
    function Get_TripEndRegTime: WideString;
    function Get_TripDistance: Double;
    function Get_TripRealCont: WideString;
    function Get_TripRegCont: WideString;
    function Get_TripMoveCont: WideString;
    function Get_TripParkCont: WideString;
    function Get_TripMaxSpeed: Double;
    function Get_TripAverSpeed: Double;
    function Get_TripMotor1Hours: Double;
    function Get_TripMotor1MoveHours: Double;
    function Get_TripMotor1ParkHours: Double;
    function Get_TripMotor1Fuel: Double;
    function Get_TripMotor2Hours: Double;
    function Get_TripMotor2MoveHours: Double;
    function Get_TripMotor2ParkHours: Double;
    function Get_TripMotor2Fuel: Double;
    function Get_TripEntriesNum: Integer;
    function Get_EntryIndex: Integer;
    procedure Set_EntryIndex(Value: Integer);
    function Get_EntryID: Integer;
    function Get_EntryStartName: WideString;
    function Get_EntryStartAddress: WideString;
    function Get_EntryStartIDP: WideString;
    function Get_EntryStartLongitude: Double;
    function Get_EntryStartLatitude: Double;
    function Get_EntryStartRealTime: WideString;
    function Get_EntryEndName: WideString;
    function Get_EntryEndAddress: WideString;
    function Get_EntryEndIDP: WideString;
    function Get_EntryEndLongitude: Double;
    function Get_EntryEndLatitude: Double;
    function Get_EntryEndRealTime: WideString;
    function Get_EntryDistance: Double;
    function Get_EntryParkCntr: Integer;
    function Get_EntryRealCont: WideString;
    function Get_EntryMoveCont: WideString;
    function Get_EntryParkCont: WideString;
    function Get_EntryMaxSpeed: Double;
    function Get_EntryAverSpeed: Double;
    function Get_EntryMotor1Hours: Double;
    function Get_EntryMotor1MoveHours: Double;
    function Get_EntryMotor1ParkHours: Double;
    function Get_EntryMotor1Fuel: Double;
    function Get_EntryMotor2Hours: Double;
    function Get_EntryMotor2MoveHours: Double;
    function Get_EntryMotor2ParkHours: Double;
    function Get_EntryMotor2Fuel: Double;
    function Get_ComputingTimeout: Integer;
    procedure Set_ComputingTimeout(Value: Integer);
    function Get_TripCrdEntriesNum: Integer;
    function Get_CrdEntryIndex: Integer;
    procedure Set_CrdEntryIndex(Value: Integer);
    function Get_CrdEntryTime: WideString;
    function Get_CrdEntryLatitude: Double;
    function Get_CrdEntryLongitude: Double;
    function Get_CrdEntryDistance: Double;
    function Get_CrdEntrySpeed: Double;
    function Get_CrdEntrySensor1: Integer;
    function Get_CrdEntrySensor2: Integer;
    function Get_CrdEntrySensor3: Integer;
    function Get_CrdEntrySensor4: Integer;
    function Get_CrdEntrySensor5: Integer;
    function Get_CrdEntrySensor6: Integer;
    function Get_CarHandle: WideString;
    function Get_TrackCrdsStr: WideString;
    function Get_CarRoute: WideString;
    function Get_CarDrivers: WideString;
    function Get_CrdEntryFlags: Integer;
    function Get_CarSensor1: Integer;
    function Get_CarSensor2: Integer;
    function Get_CarSensor3: Integer;
    function Get_CarSensor4: Integer;
    function Get_CarSensor5: Integer;
    function Get_CarSensor6: Integer;
    function Get_TripSensor1Cntr: Integer;
    function Get_TripSensor1Distance: Double;
    function Get_TripSensor1Cont: WideString;
    function Get_TripSensor2Cntr: Integer;
    function Get_TripSensor2Distance: Double;
    function Get_TripSensor2Cont: WideString;
    function Get_TripSensor3Cntr: Integer;
    function Get_TripSensor3Distance: Double;
    function Get_TripSensor3Cont: WideString;
    function Get_TripSensor4Cntr: Integer;
    function Get_TripSensor4Distance: Double;
    function Get_TripSensor4Cont: WideString;
    function Get_TripSensor5Cntr: Integer;
    function Get_TripSensor5Distance: Double;
    function Get_TripSensor5Cont: WideString;
    function Get_TripSensor6Cntr: Integer;
    function Get_TripSensor6Distance: Double;
    function Get_TripSensor6Cont: WideString;
    function Get_PropertyName: WideString;
    procedure Set_PropertyName(const Value: WideString);
    function Get_PropertyValue: WideString;
    procedure Set_PropertyValue(const Value: WideString);
    function Get_TripEntriesListTypeName: WideString;
    procedure Set_TripEntriesListTypeName(const Value: WideString);
    function Get_TripEntriesListKindName: WideString;
    procedure Set_TripEntriesListKindName(const Value: WideString);
    function Get_PropertyCheck: Integer;
    function Get_CrdEntryDriverID: WideString;
    function Get_TrackCrdsArray: OleVariant;
    function Get_CurrentGroupFileName: WideString;
    function Get_CurrentCarDevice: Integer;
    function Get_CurrentTripIndex: Integer;
    function Get_EntryStartType: WideString;
    function Get_EntryStartChannel: WideString;
    function Get_EntryStartPlanTime: WideString;
    function Get_EntryEndType: WideString;
    function Get_EntryEndChannel: WideString;
    function Get_EntryEndPlanTime: WideString;
    function Get_EntryPlanCont: WideString;
    function Get_TripTank1StartLevel: Double;
    function Get_TripTank1EndLevel: Double;
    function Get_TripTank2StartLevel: Double;
    function Get_TripTank2EndLevel: Double;
    function Get_EntryTank1StartLevel: Double;
    function Get_EntryTank1EndLevel: Double;
    function Get_EntryTank2StartLevel: Double;
    function Get_EntryTank2EndLevel: Double;
    function Get_CrdEntryLLS1: Integer;
    function Get_CrdEntryLLS2: Integer;
    function Get_CrdEntryLLS3: Integer;
    function Get_CrdEntryLLS4: Integer;
    function Get_CrdEntryLLS5: Integer;
    function Get_CrdEntryLLS6: Integer;
    function Get_CrdEntryLLS7: Integer;
    function Get_CrdEntryLLS8: Integer;
    function Get_TripCntr12EntriesNum: Integer;
    function Get_TripCntr34EntriesNum: Integer;
    function Get_Counters12Array: OleVariant;
    function Get_Counters34Array: OleVariant;
    function Get_TripRouteName: WideString;
    function Get_CrdEntrySensor7: Integer;
    function Get_CrdEntrySensor8: Integer;
    function Get_CrdEntryChPName: WideString;
    function Get_CrdEntryChPAddress: WideString;
    function Get_CrdEntryChPID: WideString;
    function Get_CurrentCheckPointIndex: Integer;
    function Get_CarSensor7: Integer;
    function Get_CarSensor8: Integer;
    function Get_TripTank3StartLevel: Double;
    function Get_TripTank3EndLevel: Double;
    function Get_TripTank4StartLevel: Double;
    function Get_TripTank4EndLevel: Double;
    function Get_TripSensor7Cntr: Integer;
    function Get_TripSensor7Distance: Double;
    function Get_TripSensor7Cont: WideString;
    function Get_TripSensor8Cntr: Integer;
    function Get_TripSensor8Distance: Double;
    function Get_TripSensor8Cont: WideString;
    function Get_TripCntr56EntriesNum: Integer;
    function Get_TripCntr78EntriesNum: Integer;
    function Get_EntryTank3StartLevel: Double;
    function Get_EntryTank3EndLevel: Double;
    function Get_EntryTank4StartLevel: Double;
    function Get_EntryTank4EndLevel: Double;
    function Get_Counters56Array: OleVariant;
    function Get_Counters78Array: OleVariant;
    function Get_CarGeoZonesFile: WideString;
    function Get_CrdEntryGeoZName: WideString;
    function Get_CrdEntryGeoZAddress: WideString;
    function Get_CrdEntryGeoZID: WideString;
    function Get_CrdEntryDriverName: WideString;
    function Get_TripDriverName: WideString;
    function Get_TripDriverID: WideString;
    function Get_CmnExPropertyValue: WideString;
    procedure Set_CmnExPropertyValue(const Value: WideString);
    function Get_CarExPropertyValue: WideString;
    procedure Set_CarExPropertyValue(const Value: WideString);
    function Get_FieldsComputingTimeout: Integer;
    procedure Set_FieldsComputingTimeout(Value: Integer);
    function Get_FieldsComputingBusy: Integer;
    function Get_FieldsComputingPercents: Integer;
    function Get_FieldsComputingCheck: Integer;
    function Get_CurrentLatitude: Double;
    function Get_CurrentLongitude: Double;
    function Get_CurrentAltitude: Double;
    function Get_CarPlacement: WideString;
    function Get_CurrentTime: WideString;
    function Get_TripImplementNames: WideString;
    function Get_TripImplementIDs: WideString;
    function Get_FieldsList: WideString;
    procedure Set_FieldsList(const Value: WideString);
    function Get_FieldsComputingTotalPercents: Integer;
    function Get_OnlineComputingBusy: Integer;
  public
    property DefaultInterface: IAutoGRAPHAutomation read GetDefaultInterface;
  published
    property GroupIndex: Integer read Get_GroupIndex write Set_GroupIndex;
    property CarIndex: Integer read Get_CarIndex write Set_CarIndex;
    property CheckPointIndex: Integer read Get_CheckPointIndex write Set_CheckPointIndex;
    property CheckPointName: WideString read Get_CheckPointName write Set_CheckPointName;
    property CheckPointAddress: WideString read Get_CheckPointAddress write Set_CheckPointAddress;
    property CheckPointID: WideString read Get_CheckPointID write Set_CheckPointID;
    property CheckPointLatitude: Double read Get_CheckPointLatitude write Set_CheckPointLatitude;
    property CheckPointLongitude: Double read Get_CheckPointLongitude write Set_CheckPointLongitude;
    property CheckPointRadius: Integer read Get_CheckPointRadius write Set_CheckPointRadius;
    property CheckPointFixTime: Integer read Get_CheckPointFixTime write Set_CheckPointFixTime;
    property CheckPointWeekDays: Integer read Get_CheckPointWeekDays write Set_CheckPointWeekDays;
    property TripIndex: Integer read Get_TripIndex write Set_TripIndex;
    property EntryIndex: Integer read Get_EntryIndex write Set_EntryIndex;
    property ComputingTimeout: Integer read Get_ComputingTimeout write Set_ComputingTimeout;
    property CrdEntryIndex: Integer read Get_CrdEntryIndex write Set_CrdEntryIndex;
    property PropertyName: WideString read Get_PropertyName write Set_PropertyName;
    property PropertyValue: WideString read Get_PropertyValue write Set_PropertyValue;
    property TripEntriesListTypeName: WideString read Get_TripEntriesListTypeName write Set_TripEntriesListTypeName;
    property TripEntriesListKindName: WideString read Get_TripEntriesListKindName write Set_TripEntriesListKindName;
    property CmnExPropertyValue: WideString read Get_CmnExPropertyValue write Set_CmnExPropertyValue;
    property CarExPropertyValue: WideString read Get_CarExPropertyValue write Set_CarExPropertyValue;
    property FieldsComputingTimeout: Integer read Get_FieldsComputingTimeout write Set_FieldsComputingTimeout;
    property FieldsList: WideString read Get_FieldsList write Set_FieldsList;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'COM+';

  dtlOcxPage = 'COM+';

implementation

uses ComObj;

class function CoAutoGRAPHAutomation.Create: IAutoGRAPHAutomation;
begin
  Result := CreateComObject(CLASS_AutoGRAPHAutomation) as IAutoGRAPHAutomation;
end;

class function CoAutoGRAPHAutomation.CreateRemote(const MachineName: string): IAutoGRAPHAutomation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AutoGRAPHAutomation) as IAutoGRAPHAutomation;
end;

procedure TAutoGRAPHAutomation.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D8625B15-227D-4927-B466-E80DCACEEBC2}';
    IntfIID:   '{F5EF148F-5059-43D0-9F70-71DBAE21EAB3}';
    EventIID:  '{590E3923-C635-4464-B7A5-70A1C3CA652F}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAutoGRAPHAutomation.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IAutoGRAPHAutomation;
  end;
end;

procedure TAutoGRAPHAutomation.ConnectTo(svrIntf: IAutoGRAPHAutomation);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TAutoGRAPHAutomation.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TAutoGRAPHAutomation.GetDefaultInterface: IAutoGRAPHAutomation;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAutoGRAPHAutomation.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAutoGRAPHAutomationProperties.Create(Self);
{$ENDIF}
end;

destructor TAutoGRAPHAutomation.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAutoGRAPHAutomation.GetServerProperties: TAutoGRAPHAutomationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TAutoGRAPHAutomation.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    201: if Assigned(FOnChangeCarsLists) then
         FOnChangeCarsLists(Self);
    202: if Assigned(FOnReceiveOnlineData) then
         FOnReceiveOnlineData(Self);
    203: if Assigned(FOnCloseServer) then
         FOnCloseServer(Self);
    204: if Assigned(FOnChangeParameters) then
         FOnChangeParameters(Self);
    205: if Assigned(FOnEndComputing) then
         FOnEndComputing(Self);
    206: if Assigned(FOnEndFieldsComputing) then
         FOnEndFieldsComputing(Self);
  end; {case DispID}
end;

function TAutoGRAPHAutomation.Get_CurrentVersion: WideString;
begin
    Result := DefaultInterface.CurrentVersion;
end;

function TAutoGRAPHAutomation.Get_GroupsNum: Integer;
begin
    Result := DefaultInterface.GroupsNum;
end;

function TAutoGRAPHAutomation.Get_GroupIndex: Integer;
begin
    Result := DefaultInterface.GroupIndex;
end;

procedure TAutoGRAPHAutomation.Set_GroupIndex(Value: Integer);
begin
  DefaultInterface.Set_GroupIndex(Value);
end;

function TAutoGRAPHAutomation.Get_GroupCarsNum: Integer;
begin
    Result := DefaultInterface.GroupCarsNum;
end;

function TAutoGRAPHAutomation.Get_CarIndex: Integer;
begin
    Result := DefaultInterface.CarIndex;
end;

procedure TAutoGRAPHAutomation.Set_CarIndex(Value: Integer);
begin
  DefaultInterface.Set_CarIndex(Value);
end;

function TAutoGRAPHAutomation.Get_GroupName: WideString;
begin
    Result := DefaultInterface.GroupName;
end;

function TAutoGRAPHAutomation.Get_GroupAddress: WideString;
begin
    Result := DefaultInterface.GroupAddress;
end;

function TAutoGRAPHAutomation.Get_GroupContacts: WideString;
begin
    Result := DefaultInterface.GroupContacts;
end;

function TAutoGRAPHAutomation.Get_CarDevice: Integer;
begin
    Result := DefaultInterface.CarDevice;
end;

function TAutoGRAPHAutomation.Get_CarModel: WideString;
begin
    Result := DefaultInterface.CarModel;
end;

function TAutoGRAPHAutomation.Get_CarNumber: WideString;
begin
    Result := DefaultInterface.CarNumber;
end;

function TAutoGRAPHAutomation.Get_CarAlias: WideString;
begin
    Result := DefaultInterface.CarAlias;
end;

function TAutoGRAPHAutomation.Get_CarTelNum: WideString;
begin
    Result := DefaultInterface.CarTelNum;
end;

function TAutoGRAPHAutomation.Get_CarLatitude: Double;
begin
    Result := DefaultInterface.CarLatitude;
end;

function TAutoGRAPHAutomation.Get_CarLongitude: Double;
begin
    Result := DefaultInterface.CarLongitude;
end;

function TAutoGRAPHAutomation.Get_CarCourse: Double;
begin
    Result := DefaultInterface.CarCourse;
end;

function TAutoGRAPHAutomation.Get_CarSpeed: Double;
begin
    Result := DefaultInterface.CarSpeed;
end;

function TAutoGRAPHAutomation.Get_CarParkTime: WideString;
begin
    Result := DefaultInterface.CarParkTime;
end;

function TAutoGRAPHAutomation.Get_CarLastTime: WideString;
begin
    Result := DefaultInterface.CarLastTime;
end;

function TAutoGRAPHAutomation.Get_CarLastATime: WideString;
begin
    Result := DefaultInterface.CarLastATime;
end;

function TAutoGRAPHAutomation.Get_CarFlags: Integer;
begin
    Result := DefaultInterface.CarFlags;
end;

function TAutoGRAPHAutomation.Get_CarCheckPointsFile: WideString;
begin
    Result := DefaultInterface.CarCheckPointsFile;
end;

function TAutoGRAPHAutomation.Get_CheckPointsNum: Integer;
begin
    Result := DefaultInterface.CheckPointsNum;
end;

function TAutoGRAPHAutomation.Get_CheckPointIndex: Integer;
begin
    Result := DefaultInterface.CheckPointIndex;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointIndex(Value: Integer);
begin
  DefaultInterface.Set_CheckPointIndex(Value);
end;

function TAutoGRAPHAutomation.Get_CheckPointName: WideString;
begin
    Result := DefaultInterface.CheckPointName;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointName(const Value: WideString);
  { Warning: The property CheckPointName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CheckPointName := Value;
end;

function TAutoGRAPHAutomation.Get_CheckPointAddress: WideString;
begin
    Result := DefaultInterface.CheckPointAddress;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointAddress(const Value: WideString);
  { Warning: The property CheckPointAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CheckPointAddress := Value;
end;

function TAutoGRAPHAutomation.Get_CheckPointID: WideString;
begin
    Result := DefaultInterface.CheckPointID;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointID(const Value: WideString);
  { Warning: The property CheckPointID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CheckPointID := Value;
end;

function TAutoGRAPHAutomation.Get_CheckPointLatitude: Double;
begin
    Result := DefaultInterface.CheckPointLatitude;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointLatitude(Value: Double);
begin
  DefaultInterface.Set_CheckPointLatitude(Value);
end;

function TAutoGRAPHAutomation.Get_CheckPointLongitude: Double;
begin
    Result := DefaultInterface.CheckPointLongitude;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointLongitude(Value: Double);
begin
  DefaultInterface.Set_CheckPointLongitude(Value);
end;

function TAutoGRAPHAutomation.Get_CheckPointRadius: Integer;
begin
    Result := DefaultInterface.CheckPointRadius;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointRadius(Value: Integer);
begin
  DefaultInterface.Set_CheckPointRadius(Value);
end;

function TAutoGRAPHAutomation.Get_CheckPointFixTime: Integer;
begin
    Result := DefaultInterface.CheckPointFixTime;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointFixTime(Value: Integer);
begin
  DefaultInterface.Set_CheckPointFixTime(Value);
end;

function TAutoGRAPHAutomation.Get_CheckPointWeekDays: Integer;
begin
    Result := DefaultInterface.CheckPointWeekDays;
end;

procedure TAutoGRAPHAutomation.Set_CheckPointWeekDays(Value: Integer);
begin
  DefaultInterface.Set_CheckPointWeekDays(Value);
end;

function TAutoGRAPHAutomation.Get_WorkDirectory: WideString;
begin
    Result := DefaultInterface.WorkDirectory;
end;

function TAutoGRAPHAutomation.Get_GroupFileName: WideString;
begin
    Result := DefaultInterface.GroupFileName;
end;

function TAutoGRAPHAutomation.Get_ComputingBusy: Integer;
begin
    Result := DefaultInterface.ComputingBusy;
end;

function TAutoGRAPHAutomation.Get_ComputingPercents: Integer;
begin
    Result := DefaultInterface.ComputingPercents;
end;

function TAutoGRAPHAutomation.Get_ComputingCheck: Integer;
begin
    Result := DefaultInterface.ComputingCheck;
end;

function TAutoGRAPHAutomation.Get_TripsNum: Integer;
begin
    Result := DefaultInterface.TripsNum;
end;

function TAutoGRAPHAutomation.Get_TripIndex: Integer;
begin
    Result := DefaultInterface.TripIndex;
end;

procedure TAutoGRAPHAutomation.Set_TripIndex(Value: Integer);
begin
  DefaultInterface.Set_TripIndex(Value);
end;

function TAutoGRAPHAutomation.Get_TripCase: Integer;
begin
    Result := DefaultInterface.TripCase;
end;

function TAutoGRAPHAutomation.Get_TripStartName: WideString;
begin
    Result := DefaultInterface.TripStartName;
end;

function TAutoGRAPHAutomation.Get_TripStartAddress: WideString;
begin
    Result := DefaultInterface.TripStartAddress;
end;

function TAutoGRAPHAutomation.Get_TripStartIDP: WideString;
begin
    Result := DefaultInterface.TripStartIDP;
end;

function TAutoGRAPHAutomation.Get_TripStartLongitude: Double;
begin
    Result := DefaultInterface.TripStartLongitude;
end;

function TAutoGRAPHAutomation.Get_TripStartLatitude: Double;
begin
    Result := DefaultInterface.TripStartLatitude;
end;

function TAutoGRAPHAutomation.Get_TripStartRealTime: WideString;
begin
    Result := DefaultInterface.TripStartRealTime;
end;

function TAutoGRAPHAutomation.Get_TripStartRegTime: WideString;
begin
    Result := DefaultInterface.TripStartRegTime;
end;

function TAutoGRAPHAutomation.Get_TripEndName: WideString;
begin
    Result := DefaultInterface.TripEndName;
end;

function TAutoGRAPHAutomation.Get_TripEndAddress: WideString;
begin
    Result := DefaultInterface.TripEndAddress;
end;

function TAutoGRAPHAutomation.Get_TripEndIDP: WideString;
begin
    Result := DefaultInterface.TripEndIDP;
end;

function TAutoGRAPHAutomation.Get_TripEndLongitude: Double;
begin
    Result := DefaultInterface.TripEndLongitude;
end;

function TAutoGRAPHAutomation.Get_TripEndLatitude: Double;
begin
    Result := DefaultInterface.TripEndLatitude;
end;

function TAutoGRAPHAutomation.Get_TripEndRealTime: WideString;
begin
    Result := DefaultInterface.TripEndRealTime;
end;

function TAutoGRAPHAutomation.Get_TripEndRegTime: WideString;
begin
    Result := DefaultInterface.TripEndRegTime;
end;

function TAutoGRAPHAutomation.Get_TripDistance: Double;
begin
    Result := DefaultInterface.TripDistance;
end;

function TAutoGRAPHAutomation.Get_TripRealCont: WideString;
begin
    Result := DefaultInterface.TripRealCont;
end;

function TAutoGRAPHAutomation.Get_TripRegCont: WideString;
begin
    Result := DefaultInterface.TripRegCont;
end;

function TAutoGRAPHAutomation.Get_TripMoveCont: WideString;
begin
    Result := DefaultInterface.TripMoveCont;
end;

function TAutoGRAPHAutomation.Get_TripParkCont: WideString;
begin
    Result := DefaultInterface.TripParkCont;
end;

function TAutoGRAPHAutomation.Get_TripMaxSpeed: Double;
begin
    Result := DefaultInterface.TripMaxSpeed;
end;

function TAutoGRAPHAutomation.Get_TripAverSpeed: Double;
begin
    Result := DefaultInterface.TripAverSpeed;
end;

function TAutoGRAPHAutomation.Get_TripMotor1Hours: Double;
begin
    Result := DefaultInterface.TripMotor1Hours;
end;

function TAutoGRAPHAutomation.Get_TripMotor1MoveHours: Double;
begin
    Result := DefaultInterface.TripMotor1MoveHours;
end;

function TAutoGRAPHAutomation.Get_TripMotor1ParkHours: Double;
begin
    Result := DefaultInterface.TripMotor1ParkHours;
end;

function TAutoGRAPHAutomation.Get_TripMotor1Fuel: Double;
begin
    Result := DefaultInterface.TripMotor1Fuel;
end;

function TAutoGRAPHAutomation.Get_TripMotor2Hours: Double;
begin
    Result := DefaultInterface.TripMotor2Hours;
end;

function TAutoGRAPHAutomation.Get_TripMotor2MoveHours: Double;
begin
    Result := DefaultInterface.TripMotor2MoveHours;
end;

function TAutoGRAPHAutomation.Get_TripMotor2ParkHours: Double;
begin
    Result := DefaultInterface.TripMotor2ParkHours;
end;

function TAutoGRAPHAutomation.Get_TripMotor2Fuel: Double;
begin
    Result := DefaultInterface.TripMotor2Fuel;
end;

function TAutoGRAPHAutomation.Get_TripEntriesNum: Integer;
begin
    Result := DefaultInterface.TripEntriesNum;
end;

function TAutoGRAPHAutomation.Get_EntryIndex: Integer;
begin
    Result := DefaultInterface.EntryIndex;
end;

procedure TAutoGRAPHAutomation.Set_EntryIndex(Value: Integer);
begin
  DefaultInterface.Set_EntryIndex(Value);
end;

function TAutoGRAPHAutomation.Get_EntryID: Integer;
begin
    Result := DefaultInterface.EntryID;
end;

function TAutoGRAPHAutomation.Get_EntryStartName: WideString;
begin
    Result := DefaultInterface.EntryStartName;
end;

function TAutoGRAPHAutomation.Get_EntryStartAddress: WideString;
begin
    Result := DefaultInterface.EntryStartAddress;
end;

function TAutoGRAPHAutomation.Get_EntryStartIDP: WideString;
begin
    Result := DefaultInterface.EntryStartIDP;
end;

function TAutoGRAPHAutomation.Get_EntryStartLongitude: Double;
begin
    Result := DefaultInterface.EntryStartLongitude;
end;

function TAutoGRAPHAutomation.Get_EntryStartLatitude: Double;
begin
    Result := DefaultInterface.EntryStartLatitude;
end;

function TAutoGRAPHAutomation.Get_EntryStartRealTime: WideString;
begin
    Result := DefaultInterface.EntryStartRealTime;
end;

function TAutoGRAPHAutomation.Get_EntryEndName: WideString;
begin
    Result := DefaultInterface.EntryEndName;
end;

function TAutoGRAPHAutomation.Get_EntryEndAddress: WideString;
begin
    Result := DefaultInterface.EntryEndAddress;
end;

function TAutoGRAPHAutomation.Get_EntryEndIDP: WideString;
begin
    Result := DefaultInterface.EntryEndIDP;
end;

function TAutoGRAPHAutomation.Get_EntryEndLongitude: Double;
begin
    Result := DefaultInterface.EntryEndLongitude;
end;

function TAutoGRAPHAutomation.Get_EntryEndLatitude: Double;
begin
    Result := DefaultInterface.EntryEndLatitude;
end;

function TAutoGRAPHAutomation.Get_EntryEndRealTime: WideString;
begin
    Result := DefaultInterface.EntryEndRealTime;
end;

function TAutoGRAPHAutomation.Get_EntryDistance: Double;
begin
    Result := DefaultInterface.EntryDistance;
end;

function TAutoGRAPHAutomation.Get_EntryParkCntr: Integer;
begin
    Result := DefaultInterface.EntryParkCntr;
end;

function TAutoGRAPHAutomation.Get_EntryRealCont: WideString;
begin
    Result := DefaultInterface.EntryRealCont;
end;

function TAutoGRAPHAutomation.Get_EntryMoveCont: WideString;
begin
    Result := DefaultInterface.EntryMoveCont;
end;

function TAutoGRAPHAutomation.Get_EntryParkCont: WideString;
begin
    Result := DefaultInterface.EntryParkCont;
end;

function TAutoGRAPHAutomation.Get_EntryMaxSpeed: Double;
begin
    Result := DefaultInterface.EntryMaxSpeed;
end;

function TAutoGRAPHAutomation.Get_EntryAverSpeed: Double;
begin
    Result := DefaultInterface.EntryAverSpeed;
end;

function TAutoGRAPHAutomation.Get_EntryMotor1Hours: Double;
begin
    Result := DefaultInterface.EntryMotor1Hours;
end;

function TAutoGRAPHAutomation.Get_EntryMotor1MoveHours: Double;
begin
    Result := DefaultInterface.EntryMotor1MoveHours;
end;

function TAutoGRAPHAutomation.Get_EntryMotor1ParkHours: Double;
begin
    Result := DefaultInterface.EntryMotor1ParkHours;
end;

function TAutoGRAPHAutomation.Get_EntryMotor1Fuel: Double;
begin
    Result := DefaultInterface.EntryMotor1Fuel;
end;

function TAutoGRAPHAutomation.Get_EntryMotor2Hours: Double;
begin
    Result := DefaultInterface.EntryMotor2Hours;
end;

function TAutoGRAPHAutomation.Get_EntryMotor2MoveHours: Double;
begin
    Result := DefaultInterface.EntryMotor2MoveHours;
end;

function TAutoGRAPHAutomation.Get_EntryMotor2ParkHours: Double;
begin
    Result := DefaultInterface.EntryMotor2ParkHours;
end;

function TAutoGRAPHAutomation.Get_EntryMotor2Fuel: Double;
begin
    Result := DefaultInterface.EntryMotor2Fuel;
end;

function TAutoGRAPHAutomation.Get_ComputingTimeout: Integer;
begin
    Result := DefaultInterface.ComputingTimeout;
end;

procedure TAutoGRAPHAutomation.Set_ComputingTimeout(Value: Integer);
begin
  DefaultInterface.Set_ComputingTimeout(Value);
end;

function TAutoGRAPHAutomation.Get_TripCrdEntriesNum: Integer;
begin
    Result := DefaultInterface.TripCrdEntriesNum;
end;

function TAutoGRAPHAutomation.Get_CrdEntryIndex: Integer;
begin
    Result := DefaultInterface.CrdEntryIndex;
end;

procedure TAutoGRAPHAutomation.Set_CrdEntryIndex(Value: Integer);
begin
  DefaultInterface.Set_CrdEntryIndex(Value);
end;

function TAutoGRAPHAutomation.Get_CrdEntryTime: WideString;
begin
    Result := DefaultInterface.CrdEntryTime;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLatitude: Double;
begin
    Result := DefaultInterface.CrdEntryLatitude;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLongitude: Double;
begin
    Result := DefaultInterface.CrdEntryLongitude;
end;

function TAutoGRAPHAutomation.Get_CrdEntryDistance: Double;
begin
    Result := DefaultInterface.CrdEntryDistance;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySpeed: Double;
begin
    Result := DefaultInterface.CrdEntrySpeed;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor1: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor1;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor2: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor2;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor3: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor3;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor4: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor4;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor5: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor5;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor6: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor6;
end;

function TAutoGRAPHAutomation.Get_CarHandle: WideString;
begin
    Result := DefaultInterface.CarHandle;
end;

function TAutoGRAPHAutomation.Get_TrackCrdsStr: WideString;
begin
    Result := DefaultInterface.TrackCrdsStr;
end;

function TAutoGRAPHAutomation.Get_CarRoute: WideString;
begin
    Result := DefaultInterface.CarRoute;
end;

function TAutoGRAPHAutomation.Get_CarDrivers: WideString;
begin
    Result := DefaultInterface.CarDrivers;
end;

function TAutoGRAPHAutomation.Get_CrdEntryFlags: Integer;
begin
    Result := DefaultInterface.CrdEntryFlags;
end;

function TAutoGRAPHAutomation.Get_CarSensor1: Integer;
begin
    Result := DefaultInterface.CarSensor1;
end;

function TAutoGRAPHAutomation.Get_CarSensor2: Integer;
begin
    Result := DefaultInterface.CarSensor2;
end;

function TAutoGRAPHAutomation.Get_CarSensor3: Integer;
begin
    Result := DefaultInterface.CarSensor3;
end;

function TAutoGRAPHAutomation.Get_CarSensor4: Integer;
begin
    Result := DefaultInterface.CarSensor4;
end;

function TAutoGRAPHAutomation.Get_CarSensor5: Integer;
begin
    Result := DefaultInterface.CarSensor5;
end;

function TAutoGRAPHAutomation.Get_CarSensor6: Integer;
begin
    Result := DefaultInterface.CarSensor6;
end;

function TAutoGRAPHAutomation.Get_TripSensor1Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor1Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor1Distance: Double;
begin
    Result := DefaultInterface.TripSensor1Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor1Cont: WideString;
begin
    Result := DefaultInterface.TripSensor1Cont;
end;

function TAutoGRAPHAutomation.Get_TripSensor2Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor2Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor2Distance: Double;
begin
    Result := DefaultInterface.TripSensor2Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor2Cont: WideString;
begin
    Result := DefaultInterface.TripSensor2Cont;
end;

function TAutoGRAPHAutomation.Get_TripSensor3Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor3Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor3Distance: Double;
begin
    Result := DefaultInterface.TripSensor3Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor3Cont: WideString;
begin
    Result := DefaultInterface.TripSensor3Cont;
end;

function TAutoGRAPHAutomation.Get_TripSensor4Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor4Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor4Distance: Double;
begin
    Result := DefaultInterface.TripSensor4Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor4Cont: WideString;
begin
    Result := DefaultInterface.TripSensor4Cont;
end;

function TAutoGRAPHAutomation.Get_TripSensor5Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor5Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor5Distance: Double;
begin
    Result := DefaultInterface.TripSensor5Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor5Cont: WideString;
begin
    Result := DefaultInterface.TripSensor5Cont;
end;

function TAutoGRAPHAutomation.Get_TripSensor6Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor6Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor6Distance: Double;
begin
    Result := DefaultInterface.TripSensor6Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor6Cont: WideString;
begin
    Result := DefaultInterface.TripSensor6Cont;
end;

function TAutoGRAPHAutomation.Get_PropertyName: WideString;
begin
    Result := DefaultInterface.PropertyName;
end;

procedure TAutoGRAPHAutomation.Set_PropertyName(const Value: WideString);
  { Warning: The property PropertyName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PropertyName := Value;
end;

function TAutoGRAPHAutomation.Get_PropertyValue: WideString;
begin
    Result := DefaultInterface.PropertyValue;
end;

procedure TAutoGRAPHAutomation.Set_PropertyValue(const Value: WideString);
  { Warning: The property PropertyValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PropertyValue := Value;
end;

function TAutoGRAPHAutomation.Get_TripEntriesListTypeName: WideString;
begin
    Result := DefaultInterface.TripEntriesListTypeName;
end;

procedure TAutoGRAPHAutomation.Set_TripEntriesListTypeName(const Value: WideString);
  { Warning: The property TripEntriesListTypeName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TripEntriesListTypeName := Value;
end;

function TAutoGRAPHAutomation.Get_TripEntriesListKindName: WideString;
begin
    Result := DefaultInterface.TripEntriesListKindName;
end;

procedure TAutoGRAPHAutomation.Set_TripEntriesListKindName(const Value: WideString);
  { Warning: The property TripEntriesListKindName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TripEntriesListKindName := Value;
end;

function TAutoGRAPHAutomation.Get_PropertyCheck: Integer;
begin
    Result := DefaultInterface.PropertyCheck;
end;

function TAutoGRAPHAutomation.Get_CrdEntryDriverID: WideString;
begin
    Result := DefaultInterface.CrdEntryDriverID;
end;

function TAutoGRAPHAutomation.Get_TrackCrdsArray: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.TrackCrdsArray;
end;

function TAutoGRAPHAutomation.Get_CurrentGroupFileName: WideString;
begin
    Result := DefaultInterface.CurrentGroupFileName;
end;

function TAutoGRAPHAutomation.Get_CurrentCarDevice: Integer;
begin
    Result := DefaultInterface.CurrentCarDevice;
end;

function TAutoGRAPHAutomation.Get_CurrentTripIndex: Integer;
begin
    Result := DefaultInterface.CurrentTripIndex;
end;

function TAutoGRAPHAutomation.Get_EntryStartType: WideString;
begin
    Result := DefaultInterface.EntryStartType;
end;

function TAutoGRAPHAutomation.Get_EntryStartChannel: WideString;
begin
    Result := DefaultInterface.EntryStartChannel;
end;

function TAutoGRAPHAutomation.Get_EntryStartPlanTime: WideString;
begin
    Result := DefaultInterface.EntryStartPlanTime;
end;

function TAutoGRAPHAutomation.Get_EntryEndType: WideString;
begin
    Result := DefaultInterface.EntryEndType;
end;

function TAutoGRAPHAutomation.Get_EntryEndChannel: WideString;
begin
    Result := DefaultInterface.EntryEndChannel;
end;

function TAutoGRAPHAutomation.Get_EntryEndPlanTime: WideString;
begin
    Result := DefaultInterface.EntryEndPlanTime;
end;

function TAutoGRAPHAutomation.Get_EntryPlanCont: WideString;
begin
    Result := DefaultInterface.EntryPlanCont;
end;

function TAutoGRAPHAutomation.Get_TripTank1StartLevel: Double;
begin
    Result := DefaultInterface.TripTank1StartLevel;
end;

function TAutoGRAPHAutomation.Get_TripTank1EndLevel: Double;
begin
    Result := DefaultInterface.TripTank1EndLevel;
end;

function TAutoGRAPHAutomation.Get_TripTank2StartLevel: Double;
begin
    Result := DefaultInterface.TripTank2StartLevel;
end;

function TAutoGRAPHAutomation.Get_TripTank2EndLevel: Double;
begin
    Result := DefaultInterface.TripTank2EndLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank1StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank1StartLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank1EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank1EndLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank2StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank2StartLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank2EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank2EndLevel;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS1: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS1;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS2: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS2;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS3: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS3;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS4: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS4;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS5: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS5;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS6: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS6;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS7: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS7;
end;

function TAutoGRAPHAutomation.Get_CrdEntryLLS8: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS8;
end;

function TAutoGRAPHAutomation.Get_TripCntr12EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr12EntriesNum;
end;

function TAutoGRAPHAutomation.Get_TripCntr34EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr34EntriesNum;
end;

function TAutoGRAPHAutomation.Get_Counters12Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters12Array;
end;

function TAutoGRAPHAutomation.Get_Counters34Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters34Array;
end;

function TAutoGRAPHAutomation.Get_TripRouteName: WideString;
begin
    Result := DefaultInterface.TripRouteName;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor7: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor7;
end;

function TAutoGRAPHAutomation.Get_CrdEntrySensor8: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor8;
end;

function TAutoGRAPHAutomation.Get_CrdEntryChPName: WideString;
begin
    Result := DefaultInterface.CrdEntryChPName;
end;

function TAutoGRAPHAutomation.Get_CrdEntryChPAddress: WideString;
begin
    Result := DefaultInterface.CrdEntryChPAddress;
end;

function TAutoGRAPHAutomation.Get_CrdEntryChPID: WideString;
begin
    Result := DefaultInterface.CrdEntryChPID;
end;

function TAutoGRAPHAutomation.Get_CurrentCheckPointIndex: Integer;
begin
    Result := DefaultInterface.CurrentCheckPointIndex;
end;

function TAutoGRAPHAutomation.Get_CarSensor7: Integer;
begin
    Result := DefaultInterface.CarSensor7;
end;

function TAutoGRAPHAutomation.Get_CarSensor8: Integer;
begin
    Result := DefaultInterface.CarSensor8;
end;

function TAutoGRAPHAutomation.Get_TripTank3StartLevel: Double;
begin
    Result := DefaultInterface.TripTank3StartLevel;
end;

function TAutoGRAPHAutomation.Get_TripTank3EndLevel: Double;
begin
    Result := DefaultInterface.TripTank3EndLevel;
end;

function TAutoGRAPHAutomation.Get_TripTank4StartLevel: Double;
begin
    Result := DefaultInterface.TripTank4StartLevel;
end;

function TAutoGRAPHAutomation.Get_TripTank4EndLevel: Double;
begin
    Result := DefaultInterface.TripTank4EndLevel;
end;

function TAutoGRAPHAutomation.Get_TripSensor7Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor7Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor7Distance: Double;
begin
    Result := DefaultInterface.TripSensor7Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor7Cont: WideString;
begin
    Result := DefaultInterface.TripSensor7Cont;
end;

function TAutoGRAPHAutomation.Get_TripSensor8Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor8Cntr;
end;

function TAutoGRAPHAutomation.Get_TripSensor8Distance: Double;
begin
    Result := DefaultInterface.TripSensor8Distance;
end;

function TAutoGRAPHAutomation.Get_TripSensor8Cont: WideString;
begin
    Result := DefaultInterface.TripSensor8Cont;
end;

function TAutoGRAPHAutomation.Get_TripCntr56EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr56EntriesNum;
end;

function TAutoGRAPHAutomation.Get_TripCntr78EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr78EntriesNum;
end;

function TAutoGRAPHAutomation.Get_EntryTank3StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank3StartLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank3EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank3EndLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank4StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank4StartLevel;
end;

function TAutoGRAPHAutomation.Get_EntryTank4EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank4EndLevel;
end;

function TAutoGRAPHAutomation.Get_Counters56Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters56Array;
end;

function TAutoGRAPHAutomation.Get_Counters78Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters78Array;
end;

function TAutoGRAPHAutomation.Get_CarGeoZonesFile: WideString;
begin
    Result := DefaultInterface.CarGeoZonesFile;
end;

function TAutoGRAPHAutomation.Get_CrdEntryGeoZName: WideString;
begin
    Result := DefaultInterface.CrdEntryGeoZName;
end;

function TAutoGRAPHAutomation.Get_CrdEntryGeoZAddress: WideString;
begin
    Result := DefaultInterface.CrdEntryGeoZAddress;
end;

function TAutoGRAPHAutomation.Get_CrdEntryGeoZID: WideString;
begin
    Result := DefaultInterface.CrdEntryGeoZID;
end;

function TAutoGRAPHAutomation.Get_CrdEntryDriverName: WideString;
begin
    Result := DefaultInterface.CrdEntryDriverName;
end;

function TAutoGRAPHAutomation.Get_TripDriverName: WideString;
begin
    Result := DefaultInterface.TripDriverName;
end;

function TAutoGRAPHAutomation.Get_TripDriverID: WideString;
begin
    Result := DefaultInterface.TripDriverID;
end;

function TAutoGRAPHAutomation.Get_CmnExPropertyValue: WideString;
begin
    Result := DefaultInterface.CmnExPropertyValue;
end;

procedure TAutoGRAPHAutomation.Set_CmnExPropertyValue(const Value: WideString);
  { Warning: The property CmnExPropertyValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CmnExPropertyValue := Value;
end;

function TAutoGRAPHAutomation.Get_CarExPropertyValue: WideString;
begin
    Result := DefaultInterface.CarExPropertyValue;
end;

procedure TAutoGRAPHAutomation.Set_CarExPropertyValue(const Value: WideString);
  { Warning: The property CarExPropertyValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CarExPropertyValue := Value;
end;

function TAutoGRAPHAutomation.Get_FieldsComputingTimeout: Integer;
begin
    Result := DefaultInterface.FieldsComputingTimeout;
end;

procedure TAutoGRAPHAutomation.Set_FieldsComputingTimeout(Value: Integer);
begin
  DefaultInterface.Set_FieldsComputingTimeout(Value);
end;

function TAutoGRAPHAutomation.Get_FieldsComputingBusy: Integer;
begin
    Result := DefaultInterface.FieldsComputingBusy;
end;

function TAutoGRAPHAutomation.Get_FieldsComputingPercents: Integer;
begin
    Result := DefaultInterface.FieldsComputingPercents;
end;

function TAutoGRAPHAutomation.Get_FieldsComputingCheck: Integer;
begin
    Result := DefaultInterface.FieldsComputingCheck;
end;

function TAutoGRAPHAutomation.Get_CurrentLatitude: Double;
begin
    Result := DefaultInterface.CurrentLatitude;
end;

function TAutoGRAPHAutomation.Get_CurrentLongitude: Double;
begin
    Result := DefaultInterface.CurrentLongitude;
end;

function TAutoGRAPHAutomation.Get_CurrentAltitude: Double;
begin
    Result := DefaultInterface.CurrentAltitude;
end;

function TAutoGRAPHAutomation.Get_CarPlacement: WideString;
begin
    Result := DefaultInterface.CarPlacement;
end;

function TAutoGRAPHAutomation.Get_CurrentTime: WideString;
begin
    Result := DefaultInterface.CurrentTime;
end;

function TAutoGRAPHAutomation.Get_TripImplementNames: WideString;
begin
    Result := DefaultInterface.TripImplementNames;
end;

function TAutoGRAPHAutomation.Get_TripImplementIDs: WideString;
begin
    Result := DefaultInterface.TripImplementIDs;
end;

function TAutoGRAPHAutomation.Get_FieldsList: WideString;
begin
    Result := DefaultInterface.FieldsList;
end;

procedure TAutoGRAPHAutomation.Set_FieldsList(const Value: WideString);
  { Warning: The property FieldsList has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FieldsList := Value;
end;

function TAutoGRAPHAutomation.Get_FieldsComputingTotalPercents: Integer;
begin
    Result := DefaultInterface.FieldsComputingTotalPercents;
end;

function TAutoGRAPHAutomation.Get_OnlineComputingBusy: Integer;
begin
    Result := DefaultInterface.OnlineComputingBusy;
end;

procedure TAutoGRAPHAutomation.ShowApplication;
begin
  DefaultInterface.ShowApplication;
end;

procedure TAutoGRAPHAutomation.HideApplication;
begin
  DefaultInterface.HideApplication;
end;

procedure TAutoGRAPHAutomation.GoToCarLastPosition(const GroupFileName: WideString; 
                                                   CarDevice: Integer);
begin
  DefaultInterface.GoToCarLastPosition(GroupFileName, CarDevice);
end;

procedure TAutoGRAPHAutomation.GoToCarLastTrack(const GroupFileName: WideString; CarDevice: Integer);
begin
  DefaultInterface.GoToCarLastTrack(GroupFileName, CarDevice);
end;

procedure TAutoGRAPHAutomation.LoadChPFromFile(const FileName: WideString);
begin
  DefaultInterface.LoadChPFromFile(FileName);
end;

procedure TAutoGRAPHAutomation.SaveChPToFile(const FileName: WideString);
begin
  DefaultInterface.SaveChPToFile(FileName);
end;

procedure TAutoGRAPHAutomation.ClearCheckPoints;
begin
  DefaultInterface.ClearCheckPoints;
end;

procedure TAutoGRAPHAutomation.AddCheckPoint(const Name: WideString; const Address: WideString; 
                                             const ID: WideString; Latitude: Double; 
                                             Longitude: Double; Radius: Integer);
begin
  DefaultInterface.AddCheckPoint(Name, Address, ID, Latitude, Longitude, Radius);
end;

procedure TAutoGRAPHAutomation.AddCheckPointEx(const Name: WideString; const Address: WideString; 
                                               const ID: WideString; Latitude: Double; 
                                               Longitude: Double; Radius: Integer; 
                                               FixTime: Integer; WeekDays: Integer);
begin
  DefaultInterface.AddCheckPointEx(Name, Address, ID, Latitude, Longitude, Radius, FixTime, WeekDays);
end;

procedure TAutoGRAPHAutomation.DeleteCheckPoint;
begin
  DefaultInterface.DeleteCheckPoint;
end;

procedure TAutoGRAPHAutomation.SetCarChPParameters(const GroupFileName: WideString; 
                                                   CarDevice: Integer; CarDefault: Integer; 
                                                   const CarCheckPointsFile: WideString; 
                                                   CarCallPointsByPark: Integer; 
                                                   CarCallPointsByParkTime: Integer; 
                                                   CarCallPointsBySens: Integer; 
                                                   CarCallPointsBySensIndex: Integer; 
                                                   CarCallPointsBySensTime: Integer; 
                                                   const CarGeoZonesFile: WideString);
begin
  DefaultInterface.SetCarChPParameters(GroupFileName, CarDevice, CarDefault, CarCheckPointsFile, 
                                       CarCallPointsByPark, CarCallPointsByParkTime, 
                                       CarCallPointsBySens, CarCallPointsBySensIndex, 
                                       CarCallPointsBySensTime, CarGeoZonesFile);
end;

procedure TAutoGRAPHAutomation.SetGroupIndexByFileName(const GroupFileName: WideString);
begin
  DefaultInterface.SetGroupIndexByFileName(GroupFileName);
end;

procedure TAutoGRAPHAutomation.StartComputing(const GroupFileName: WideString; CarDevice: Integer; 
                                              const FirstTime: WideString; 
                                              const LastTime: WideString; 
                                              const DataSource: WideString; TakeTripsSetup: Integer);
begin
  DefaultInterface.StartComputing(GroupFileName, CarDevice, FirstTime, LastTime, DataSource, 
                                  TakeTripsSetup);
end;

procedure TAutoGRAPHAutomation.WaitForComputing(const GroupFileName: WideString; 
                                                CarDevice: Integer; const FirstTime: WideString; 
                                                const LastTime: WideString; 
                                                const DataSource: WideString; 
                                                TakeTripsSetup: Integer);
begin
  DefaultInterface.WaitForComputing(GroupFileName, CarDevice, FirstTime, LastTime, DataSource, 
                                    TakeTripsSetup);
end;

procedure TAutoGRAPHAutomation.EnterPassword(const Password: WideString);
begin
  DefaultInterface.EnterPassword(Password);
end;

procedure TAutoGRAPHAutomation.ExportTrackToFile(const FileName: WideString; PropDefault: Integer; 
                                                 const Comment: WideString; 
                                                 const Placemark: WideString; TrackThick: Integer; 
                                                 TrackColorIndex: Integer; IconTypes: Integer; 
                                                 TimeOffset: Integer; CreateAlways: Integer; 
                                                 WaitForCompleted: Integer);
begin
  DefaultInterface.ExportTrackToFile(FileName, PropDefault, Comment, Placemark, TrackThick, 
                                     TrackColorIndex, IconTypes, TimeOffset, CreateAlways, 
                                     WaitForCompleted);
end;

procedure TAutoGRAPHAutomation.SetCrdEntryIndexByTime(const Time: WideString);
begin
  DefaultInterface.SetCrdEntryIndexByTime(Time);
end;

procedure TAutoGRAPHAutomation.ExportListToFile(const FileName: WideString; 
                                                const ListType: WideString; 
                                                const ListKind: WideString; Add: Integer; 
                                                CreateAlways: Integer);
begin
  DefaultInterface.ExportListToFile(FileName, ListType, ListKind, Add, CreateAlways);
end;

procedure TAutoGRAPHAutomation.WaitForInitializing;
begin
  DefaultInterface.WaitForInitializing;
end;

procedure TAutoGRAPHAutomation.SetCarIndexByDevice(CarDevice: Integer);
begin
  DefaultInterface.SetCarIndexByDevice(CarDevice);
end;

procedure TAutoGRAPHAutomation.ExportDataToFile(const FileName: WideString; DataTypes: Integer; 
                                                CreateAlways: Integer);
begin
  DefaultInterface.ExportDataToFile(FileName, DataTypes, CreateAlways);
end;

procedure TAutoGRAPHAutomation.Sleep(Milliseconds: Integer);
begin
  DefaultInterface.Sleep(Milliseconds);
end;

procedure TAutoGRAPHAutomation.ExportCarsToFile(const FileName: WideString; 
                                                const CarDevices: WideString; PropDefault: Integer; 
                                                const Comment: WideString; 
                                                const Placemark: WideString; TimeOffset: Integer; 
                                                CreateAlways: Integer; WaitForCompleted: Integer);
begin
  DefaultInterface.ExportCarsToFile(FileName, CarDevices, PropDefault, Comment, Placemark, 
                                    TimeOffset, CreateAlways, WaitForCompleted);
end;

procedure TAutoGRAPHAutomation.SetCurrentCoords(Latitude: Double; Longitude: Double);
begin
  DefaultInterface.SetCurrentCoords(Latitude, Longitude);
end;

procedure TAutoGRAPHAutomation.CmnExPropertySet(const PropertyName: WideString);
begin
  DefaultInterface.CmnExPropertySet(PropertyName);
end;

procedure TAutoGRAPHAutomation.CarExPropertySet(const PropertyName: WideString; SerNum: Integer);
begin
  DefaultInterface.CarExPropertySet(PropertyName, SerNum);
end;

procedure TAutoGRAPHAutomation.StartFieldsComputing(const GroupFileName: WideString; 
                                                    CarDevice: Integer; 
                                                    const FirstTime: WideString; 
                                                    const LastTime: WideString; 
                                                    const DataSource: WideString; 
                                                    WorkWidth: Double; WorkSensor: Integer);
begin
  DefaultInterface.StartFieldsComputing(GroupFileName, CarDevice, FirstTime, LastTime, DataSource, 
                                        WorkWidth, WorkSensor);
end;

procedure TAutoGRAPHAutomation.WaitForFieldsComputing(const GroupFileName: WideString; 
                                                      CarDevice: Integer; 
                                                      const FirstTime: WideString; 
                                                      const LastTime: WideString; 
                                                      const DataSource: WideString; 
                                                      WorkWidth: Double; WorkSensor: Integer);
begin
  DefaultInterface.WaitForFieldsComputing(GroupFileName, CarDevice, FirstTime, LastTime, 
                                          DataSource, WorkWidth, WorkSensor);
end;

procedure TAutoGRAPHAutomation.ShowAddress(const City: WideString; const Street: WideString; 
                                           const House: WideString);
begin
  DefaultInterface.ShowAddress(City, Street, House);
end;

procedure TAutoGRAPHAutomation.FindNearestAddress(Latitude: Double; Longitude: Double; 
                                                  MaxDistance: Integer);
begin
  DefaultInterface.FindNearestAddress(Latitude, Longitude, MaxDistance);
end;

procedure TAutoGRAPHAutomation.ReceiveOnlineData(CarDevice: Integer);
begin
  DefaultInterface.ReceiveOnlineData(CarDevice);
end;

procedure TAutoGRAPHAutomation.StartFieldsComputingEx(Type_: Integer; 
                                                      const DevicesList: WideString; 
                                                      const FirstTime: WideString; 
                                                      const LastTime: WideString; 
                                                      const DataSource: WideString; 
                                                      const WorkWidths: WideString; 
                                                      const WorkOffsets: WideString; 
                                                      const WorkSensors: WideString);
begin
  DefaultInterface.StartFieldsComputingEx(Type_, DevicesList, FirstTime, LastTime, DataSource, 
                                          WorkWidths, WorkOffsets, WorkSensors);
end;

procedure TAutoGRAPHAutomation.WaitForFieldsComputingEx(Type_: Integer; 
                                                        const DevicesList: WideString; 
                                                        const FirstTime: WideString; 
                                                        const LastTime: WideString; 
                                                        const DataSource: WideString; 
                                                        const WorkWidths: WideString; 
                                                        const WorkOffsets: WideString; 
                                                        const WorkSensors: WideString);
begin
  DefaultInterface.WaitForFieldsComputingEx(Type_, DevicesList, FirstTime, LastTime, DataSource, 
                                            WorkWidths, WorkOffsets, WorkSensors);
end;

procedure TAutoGRAPHAutomation.WaitForOnlineData(CarDevice: Integer);
begin
  DefaultInterface.WaitForOnlineData(CarDevice);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAutoGRAPHAutomationProperties.Create(AServer: TAutoGRAPHAutomation);
begin
  inherited Create;
  FServer := AServer;
end;

function TAutoGRAPHAutomationProperties.GetDefaultInterface: IAutoGRAPHAutomation;
begin
  Result := FServer.DefaultInterface;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentVersion: WideString;
begin
    Result := DefaultInterface.CurrentVersion;
end;

function TAutoGRAPHAutomationProperties.Get_GroupsNum: Integer;
begin
    Result := DefaultInterface.GroupsNum;
end;

function TAutoGRAPHAutomationProperties.Get_GroupIndex: Integer;
begin
    Result := DefaultInterface.GroupIndex;
end;

procedure TAutoGRAPHAutomationProperties.Set_GroupIndex(Value: Integer);
begin
  DefaultInterface.Set_GroupIndex(Value);
end;

function TAutoGRAPHAutomationProperties.Get_GroupCarsNum: Integer;
begin
    Result := DefaultInterface.GroupCarsNum;
end;

function TAutoGRAPHAutomationProperties.Get_CarIndex: Integer;
begin
    Result := DefaultInterface.CarIndex;
end;

procedure TAutoGRAPHAutomationProperties.Set_CarIndex(Value: Integer);
begin
  DefaultInterface.Set_CarIndex(Value);
end;

function TAutoGRAPHAutomationProperties.Get_GroupName: WideString;
begin
    Result := DefaultInterface.GroupName;
end;

function TAutoGRAPHAutomationProperties.Get_GroupAddress: WideString;
begin
    Result := DefaultInterface.GroupAddress;
end;

function TAutoGRAPHAutomationProperties.Get_GroupContacts: WideString;
begin
    Result := DefaultInterface.GroupContacts;
end;

function TAutoGRAPHAutomationProperties.Get_CarDevice: Integer;
begin
    Result := DefaultInterface.CarDevice;
end;

function TAutoGRAPHAutomationProperties.Get_CarModel: WideString;
begin
    Result := DefaultInterface.CarModel;
end;

function TAutoGRAPHAutomationProperties.Get_CarNumber: WideString;
begin
    Result := DefaultInterface.CarNumber;
end;

function TAutoGRAPHAutomationProperties.Get_CarAlias: WideString;
begin
    Result := DefaultInterface.CarAlias;
end;

function TAutoGRAPHAutomationProperties.Get_CarTelNum: WideString;
begin
    Result := DefaultInterface.CarTelNum;
end;

function TAutoGRAPHAutomationProperties.Get_CarLatitude: Double;
begin
    Result := DefaultInterface.CarLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_CarLongitude: Double;
begin
    Result := DefaultInterface.CarLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_CarCourse: Double;
begin
    Result := DefaultInterface.CarCourse;
end;

function TAutoGRAPHAutomationProperties.Get_CarSpeed: Double;
begin
    Result := DefaultInterface.CarSpeed;
end;

function TAutoGRAPHAutomationProperties.Get_CarParkTime: WideString;
begin
    Result := DefaultInterface.CarParkTime;
end;

function TAutoGRAPHAutomationProperties.Get_CarLastTime: WideString;
begin
    Result := DefaultInterface.CarLastTime;
end;

function TAutoGRAPHAutomationProperties.Get_CarLastATime: WideString;
begin
    Result := DefaultInterface.CarLastATime;
end;

function TAutoGRAPHAutomationProperties.Get_CarFlags: Integer;
begin
    Result := DefaultInterface.CarFlags;
end;

function TAutoGRAPHAutomationProperties.Get_CarCheckPointsFile: WideString;
begin
    Result := DefaultInterface.CarCheckPointsFile;
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointsNum: Integer;
begin
    Result := DefaultInterface.CheckPointsNum;
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointIndex: Integer;
begin
    Result := DefaultInterface.CheckPointIndex;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointIndex(Value: Integer);
begin
  DefaultInterface.Set_CheckPointIndex(Value);
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointName: WideString;
begin
    Result := DefaultInterface.CheckPointName;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointName(const Value: WideString);
  { Warning: The property CheckPointName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CheckPointName := Value;
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointAddress: WideString;
begin
    Result := DefaultInterface.CheckPointAddress;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointAddress(const Value: WideString);
  { Warning: The property CheckPointAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CheckPointAddress := Value;
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointID: WideString;
begin
    Result := DefaultInterface.CheckPointID;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointID(const Value: WideString);
  { Warning: The property CheckPointID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CheckPointID := Value;
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointLatitude: Double;
begin
    Result := DefaultInterface.CheckPointLatitude;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointLatitude(Value: Double);
begin
  DefaultInterface.Set_CheckPointLatitude(Value);
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointLongitude: Double;
begin
    Result := DefaultInterface.CheckPointLongitude;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointLongitude(Value: Double);
begin
  DefaultInterface.Set_CheckPointLongitude(Value);
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointRadius: Integer;
begin
    Result := DefaultInterface.CheckPointRadius;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointRadius(Value: Integer);
begin
  DefaultInterface.Set_CheckPointRadius(Value);
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointFixTime: Integer;
begin
    Result := DefaultInterface.CheckPointFixTime;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointFixTime(Value: Integer);
begin
  DefaultInterface.Set_CheckPointFixTime(Value);
end;

function TAutoGRAPHAutomationProperties.Get_CheckPointWeekDays: Integer;
begin
    Result := DefaultInterface.CheckPointWeekDays;
end;

procedure TAutoGRAPHAutomationProperties.Set_CheckPointWeekDays(Value: Integer);
begin
  DefaultInterface.Set_CheckPointWeekDays(Value);
end;

function TAutoGRAPHAutomationProperties.Get_WorkDirectory: WideString;
begin
    Result := DefaultInterface.WorkDirectory;
end;

function TAutoGRAPHAutomationProperties.Get_GroupFileName: WideString;
begin
    Result := DefaultInterface.GroupFileName;
end;

function TAutoGRAPHAutomationProperties.Get_ComputingBusy: Integer;
begin
    Result := DefaultInterface.ComputingBusy;
end;

function TAutoGRAPHAutomationProperties.Get_ComputingPercents: Integer;
begin
    Result := DefaultInterface.ComputingPercents;
end;

function TAutoGRAPHAutomationProperties.Get_ComputingCheck: Integer;
begin
    Result := DefaultInterface.ComputingCheck;
end;

function TAutoGRAPHAutomationProperties.Get_TripsNum: Integer;
begin
    Result := DefaultInterface.TripsNum;
end;

function TAutoGRAPHAutomationProperties.Get_TripIndex: Integer;
begin
    Result := DefaultInterface.TripIndex;
end;

procedure TAutoGRAPHAutomationProperties.Set_TripIndex(Value: Integer);
begin
  DefaultInterface.Set_TripIndex(Value);
end;

function TAutoGRAPHAutomationProperties.Get_TripCase: Integer;
begin
    Result := DefaultInterface.TripCase;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartName: WideString;
begin
    Result := DefaultInterface.TripStartName;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartAddress: WideString;
begin
    Result := DefaultInterface.TripStartAddress;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartIDP: WideString;
begin
    Result := DefaultInterface.TripStartIDP;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartLongitude: Double;
begin
    Result := DefaultInterface.TripStartLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartLatitude: Double;
begin
    Result := DefaultInterface.TripStartLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartRealTime: WideString;
begin
    Result := DefaultInterface.TripStartRealTime;
end;

function TAutoGRAPHAutomationProperties.Get_TripStartRegTime: WideString;
begin
    Result := DefaultInterface.TripStartRegTime;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndName: WideString;
begin
    Result := DefaultInterface.TripEndName;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndAddress: WideString;
begin
    Result := DefaultInterface.TripEndAddress;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndIDP: WideString;
begin
    Result := DefaultInterface.TripEndIDP;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndLongitude: Double;
begin
    Result := DefaultInterface.TripEndLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndLatitude: Double;
begin
    Result := DefaultInterface.TripEndLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndRealTime: WideString;
begin
    Result := DefaultInterface.TripEndRealTime;
end;

function TAutoGRAPHAutomationProperties.Get_TripEndRegTime: WideString;
begin
    Result := DefaultInterface.TripEndRegTime;
end;

function TAutoGRAPHAutomationProperties.Get_TripDistance: Double;
begin
    Result := DefaultInterface.TripDistance;
end;

function TAutoGRAPHAutomationProperties.Get_TripRealCont: WideString;
begin
    Result := DefaultInterface.TripRealCont;
end;

function TAutoGRAPHAutomationProperties.Get_TripRegCont: WideString;
begin
    Result := DefaultInterface.TripRegCont;
end;

function TAutoGRAPHAutomationProperties.Get_TripMoveCont: WideString;
begin
    Result := DefaultInterface.TripMoveCont;
end;

function TAutoGRAPHAutomationProperties.Get_TripParkCont: WideString;
begin
    Result := DefaultInterface.TripParkCont;
end;

function TAutoGRAPHAutomationProperties.Get_TripMaxSpeed: Double;
begin
    Result := DefaultInterface.TripMaxSpeed;
end;

function TAutoGRAPHAutomationProperties.Get_TripAverSpeed: Double;
begin
    Result := DefaultInterface.TripAverSpeed;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor1Hours: Double;
begin
    Result := DefaultInterface.TripMotor1Hours;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor1MoveHours: Double;
begin
    Result := DefaultInterface.TripMotor1MoveHours;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor1ParkHours: Double;
begin
    Result := DefaultInterface.TripMotor1ParkHours;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor1Fuel: Double;
begin
    Result := DefaultInterface.TripMotor1Fuel;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor2Hours: Double;
begin
    Result := DefaultInterface.TripMotor2Hours;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor2MoveHours: Double;
begin
    Result := DefaultInterface.TripMotor2MoveHours;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor2ParkHours: Double;
begin
    Result := DefaultInterface.TripMotor2ParkHours;
end;

function TAutoGRAPHAutomationProperties.Get_TripMotor2Fuel: Double;
begin
    Result := DefaultInterface.TripMotor2Fuel;
end;

function TAutoGRAPHAutomationProperties.Get_TripEntriesNum: Integer;
begin
    Result := DefaultInterface.TripEntriesNum;
end;

function TAutoGRAPHAutomationProperties.Get_EntryIndex: Integer;
begin
    Result := DefaultInterface.EntryIndex;
end;

procedure TAutoGRAPHAutomationProperties.Set_EntryIndex(Value: Integer);
begin
  DefaultInterface.Set_EntryIndex(Value);
end;

function TAutoGRAPHAutomationProperties.Get_EntryID: Integer;
begin
    Result := DefaultInterface.EntryID;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartName: WideString;
begin
    Result := DefaultInterface.EntryStartName;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartAddress: WideString;
begin
    Result := DefaultInterface.EntryStartAddress;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartIDP: WideString;
begin
    Result := DefaultInterface.EntryStartIDP;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartLongitude: Double;
begin
    Result := DefaultInterface.EntryStartLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartLatitude: Double;
begin
    Result := DefaultInterface.EntryStartLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartRealTime: WideString;
begin
    Result := DefaultInterface.EntryStartRealTime;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndName: WideString;
begin
    Result := DefaultInterface.EntryEndName;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndAddress: WideString;
begin
    Result := DefaultInterface.EntryEndAddress;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndIDP: WideString;
begin
    Result := DefaultInterface.EntryEndIDP;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndLongitude: Double;
begin
    Result := DefaultInterface.EntryEndLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndLatitude: Double;
begin
    Result := DefaultInterface.EntryEndLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndRealTime: WideString;
begin
    Result := DefaultInterface.EntryEndRealTime;
end;

function TAutoGRAPHAutomationProperties.Get_EntryDistance: Double;
begin
    Result := DefaultInterface.EntryDistance;
end;

function TAutoGRAPHAutomationProperties.Get_EntryParkCntr: Integer;
begin
    Result := DefaultInterface.EntryParkCntr;
end;

function TAutoGRAPHAutomationProperties.Get_EntryRealCont: WideString;
begin
    Result := DefaultInterface.EntryRealCont;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMoveCont: WideString;
begin
    Result := DefaultInterface.EntryMoveCont;
end;

function TAutoGRAPHAutomationProperties.Get_EntryParkCont: WideString;
begin
    Result := DefaultInterface.EntryParkCont;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMaxSpeed: Double;
begin
    Result := DefaultInterface.EntryMaxSpeed;
end;

function TAutoGRAPHAutomationProperties.Get_EntryAverSpeed: Double;
begin
    Result := DefaultInterface.EntryAverSpeed;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor1Hours: Double;
begin
    Result := DefaultInterface.EntryMotor1Hours;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor1MoveHours: Double;
begin
    Result := DefaultInterface.EntryMotor1MoveHours;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor1ParkHours: Double;
begin
    Result := DefaultInterface.EntryMotor1ParkHours;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor1Fuel: Double;
begin
    Result := DefaultInterface.EntryMotor1Fuel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor2Hours: Double;
begin
    Result := DefaultInterface.EntryMotor2Hours;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor2MoveHours: Double;
begin
    Result := DefaultInterface.EntryMotor2MoveHours;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor2ParkHours: Double;
begin
    Result := DefaultInterface.EntryMotor2ParkHours;
end;

function TAutoGRAPHAutomationProperties.Get_EntryMotor2Fuel: Double;
begin
    Result := DefaultInterface.EntryMotor2Fuel;
end;

function TAutoGRAPHAutomationProperties.Get_ComputingTimeout: Integer;
begin
    Result := DefaultInterface.ComputingTimeout;
end;

procedure TAutoGRAPHAutomationProperties.Set_ComputingTimeout(Value: Integer);
begin
  DefaultInterface.Set_ComputingTimeout(Value);
end;

function TAutoGRAPHAutomationProperties.Get_TripCrdEntriesNum: Integer;
begin
    Result := DefaultInterface.TripCrdEntriesNum;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryIndex: Integer;
begin
    Result := DefaultInterface.CrdEntryIndex;
end;

procedure TAutoGRAPHAutomationProperties.Set_CrdEntryIndex(Value: Integer);
begin
  DefaultInterface.Set_CrdEntryIndex(Value);
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryTime: WideString;
begin
    Result := DefaultInterface.CrdEntryTime;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLatitude: Double;
begin
    Result := DefaultInterface.CrdEntryLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLongitude: Double;
begin
    Result := DefaultInterface.CrdEntryLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryDistance: Double;
begin
    Result := DefaultInterface.CrdEntryDistance;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySpeed: Double;
begin
    Result := DefaultInterface.CrdEntrySpeed;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor1: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor1;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor2: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor2;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor3: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor3;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor4: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor4;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor5: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor5;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor6: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor6;
end;

function TAutoGRAPHAutomationProperties.Get_CarHandle: WideString;
begin
    Result := DefaultInterface.CarHandle;
end;

function TAutoGRAPHAutomationProperties.Get_TrackCrdsStr: WideString;
begin
    Result := DefaultInterface.TrackCrdsStr;
end;

function TAutoGRAPHAutomationProperties.Get_CarRoute: WideString;
begin
    Result := DefaultInterface.CarRoute;
end;

function TAutoGRAPHAutomationProperties.Get_CarDrivers: WideString;
begin
    Result := DefaultInterface.CarDrivers;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryFlags: Integer;
begin
    Result := DefaultInterface.CrdEntryFlags;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor1: Integer;
begin
    Result := DefaultInterface.CarSensor1;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor2: Integer;
begin
    Result := DefaultInterface.CarSensor2;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor3: Integer;
begin
    Result := DefaultInterface.CarSensor3;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor4: Integer;
begin
    Result := DefaultInterface.CarSensor4;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor5: Integer;
begin
    Result := DefaultInterface.CarSensor5;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor6: Integer;
begin
    Result := DefaultInterface.CarSensor6;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor1Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor1Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor1Distance: Double;
begin
    Result := DefaultInterface.TripSensor1Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor1Cont: WideString;
begin
    Result := DefaultInterface.TripSensor1Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor2Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor2Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor2Distance: Double;
begin
    Result := DefaultInterface.TripSensor2Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor2Cont: WideString;
begin
    Result := DefaultInterface.TripSensor2Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor3Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor3Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor3Distance: Double;
begin
    Result := DefaultInterface.TripSensor3Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor3Cont: WideString;
begin
    Result := DefaultInterface.TripSensor3Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor4Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor4Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor4Distance: Double;
begin
    Result := DefaultInterface.TripSensor4Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor4Cont: WideString;
begin
    Result := DefaultInterface.TripSensor4Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor5Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor5Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor5Distance: Double;
begin
    Result := DefaultInterface.TripSensor5Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor5Cont: WideString;
begin
    Result := DefaultInterface.TripSensor5Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor6Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor6Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor6Distance: Double;
begin
    Result := DefaultInterface.TripSensor6Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor6Cont: WideString;
begin
    Result := DefaultInterface.TripSensor6Cont;
end;

function TAutoGRAPHAutomationProperties.Get_PropertyName: WideString;
begin
    Result := DefaultInterface.PropertyName;
end;

procedure TAutoGRAPHAutomationProperties.Set_PropertyName(const Value: WideString);
  { Warning: The property PropertyName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PropertyName := Value;
end;

function TAutoGRAPHAutomationProperties.Get_PropertyValue: WideString;
begin
    Result := DefaultInterface.PropertyValue;
end;

procedure TAutoGRAPHAutomationProperties.Set_PropertyValue(const Value: WideString);
  { Warning: The property PropertyValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PropertyValue := Value;
end;

function TAutoGRAPHAutomationProperties.Get_TripEntriesListTypeName: WideString;
begin
    Result := DefaultInterface.TripEntriesListTypeName;
end;

procedure TAutoGRAPHAutomationProperties.Set_TripEntriesListTypeName(const Value: WideString);
  { Warning: The property TripEntriesListTypeName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TripEntriesListTypeName := Value;
end;

function TAutoGRAPHAutomationProperties.Get_TripEntriesListKindName: WideString;
begin
    Result := DefaultInterface.TripEntriesListKindName;
end;

procedure TAutoGRAPHAutomationProperties.Set_TripEntriesListKindName(const Value: WideString);
  { Warning: The property TripEntriesListKindName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TripEntriesListKindName := Value;
end;

function TAutoGRAPHAutomationProperties.Get_PropertyCheck: Integer;
begin
    Result := DefaultInterface.PropertyCheck;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryDriverID: WideString;
begin
    Result := DefaultInterface.CrdEntryDriverID;
end;

function TAutoGRAPHAutomationProperties.Get_TrackCrdsArray: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.TrackCrdsArray;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentGroupFileName: WideString;
begin
    Result := DefaultInterface.CurrentGroupFileName;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentCarDevice: Integer;
begin
    Result := DefaultInterface.CurrentCarDevice;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentTripIndex: Integer;
begin
    Result := DefaultInterface.CurrentTripIndex;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartType: WideString;
begin
    Result := DefaultInterface.EntryStartType;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartChannel: WideString;
begin
    Result := DefaultInterface.EntryStartChannel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryStartPlanTime: WideString;
begin
    Result := DefaultInterface.EntryStartPlanTime;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndType: WideString;
begin
    Result := DefaultInterface.EntryEndType;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndChannel: WideString;
begin
    Result := DefaultInterface.EntryEndChannel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryEndPlanTime: WideString;
begin
    Result := DefaultInterface.EntryEndPlanTime;
end;

function TAutoGRAPHAutomationProperties.Get_EntryPlanCont: WideString;
begin
    Result := DefaultInterface.EntryPlanCont;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank1StartLevel: Double;
begin
    Result := DefaultInterface.TripTank1StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank1EndLevel: Double;
begin
    Result := DefaultInterface.TripTank1EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank2StartLevel: Double;
begin
    Result := DefaultInterface.TripTank2StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank2EndLevel: Double;
begin
    Result := DefaultInterface.TripTank2EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank1StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank1StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank1EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank1EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank2StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank2StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank2EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank2EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS1: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS1;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS2: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS2;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS3: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS3;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS4: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS4;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS5: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS5;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS6: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS6;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS7: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS7;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryLLS8: Integer;
begin
    Result := DefaultInterface.CrdEntryLLS8;
end;

function TAutoGRAPHAutomationProperties.Get_TripCntr12EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr12EntriesNum;
end;

function TAutoGRAPHAutomationProperties.Get_TripCntr34EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr34EntriesNum;
end;

function TAutoGRAPHAutomationProperties.Get_Counters12Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters12Array;
end;

function TAutoGRAPHAutomationProperties.Get_Counters34Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters34Array;
end;

function TAutoGRAPHAutomationProperties.Get_TripRouteName: WideString;
begin
    Result := DefaultInterface.TripRouteName;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor7: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor7;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntrySensor8: Integer;
begin
    Result := DefaultInterface.CrdEntrySensor8;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryChPName: WideString;
begin
    Result := DefaultInterface.CrdEntryChPName;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryChPAddress: WideString;
begin
    Result := DefaultInterface.CrdEntryChPAddress;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryChPID: WideString;
begin
    Result := DefaultInterface.CrdEntryChPID;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentCheckPointIndex: Integer;
begin
    Result := DefaultInterface.CurrentCheckPointIndex;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor7: Integer;
begin
    Result := DefaultInterface.CarSensor7;
end;

function TAutoGRAPHAutomationProperties.Get_CarSensor8: Integer;
begin
    Result := DefaultInterface.CarSensor8;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank3StartLevel: Double;
begin
    Result := DefaultInterface.TripTank3StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank3EndLevel: Double;
begin
    Result := DefaultInterface.TripTank3EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank4StartLevel: Double;
begin
    Result := DefaultInterface.TripTank4StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripTank4EndLevel: Double;
begin
    Result := DefaultInterface.TripTank4EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor7Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor7Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor7Distance: Double;
begin
    Result := DefaultInterface.TripSensor7Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor7Cont: WideString;
begin
    Result := DefaultInterface.TripSensor7Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor8Cntr: Integer;
begin
    Result := DefaultInterface.TripSensor8Cntr;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor8Distance: Double;
begin
    Result := DefaultInterface.TripSensor8Distance;
end;

function TAutoGRAPHAutomationProperties.Get_TripSensor8Cont: WideString;
begin
    Result := DefaultInterface.TripSensor8Cont;
end;

function TAutoGRAPHAutomationProperties.Get_TripCntr56EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr56EntriesNum;
end;

function TAutoGRAPHAutomationProperties.Get_TripCntr78EntriesNum: Integer;
begin
    Result := DefaultInterface.TripCntr78EntriesNum;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank3StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank3StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank3EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank3EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank4StartLevel: Double;
begin
    Result := DefaultInterface.EntryTank4StartLevel;
end;

function TAutoGRAPHAutomationProperties.Get_EntryTank4EndLevel: Double;
begin
    Result := DefaultInterface.EntryTank4EndLevel;
end;

function TAutoGRAPHAutomationProperties.Get_Counters56Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters56Array;
end;

function TAutoGRAPHAutomationProperties.Get_Counters78Array: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Counters78Array;
end;

function TAutoGRAPHAutomationProperties.Get_CarGeoZonesFile: WideString;
begin
    Result := DefaultInterface.CarGeoZonesFile;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryGeoZName: WideString;
begin
    Result := DefaultInterface.CrdEntryGeoZName;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryGeoZAddress: WideString;
begin
    Result := DefaultInterface.CrdEntryGeoZAddress;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryGeoZID: WideString;
begin
    Result := DefaultInterface.CrdEntryGeoZID;
end;

function TAutoGRAPHAutomationProperties.Get_CrdEntryDriverName: WideString;
begin
    Result := DefaultInterface.CrdEntryDriverName;
end;

function TAutoGRAPHAutomationProperties.Get_TripDriverName: WideString;
begin
    Result := DefaultInterface.TripDriverName;
end;

function TAutoGRAPHAutomationProperties.Get_TripDriverID: WideString;
begin
    Result := DefaultInterface.TripDriverID;
end;

function TAutoGRAPHAutomationProperties.Get_CmnExPropertyValue: WideString;
begin
    Result := DefaultInterface.CmnExPropertyValue;
end;

procedure TAutoGRAPHAutomationProperties.Set_CmnExPropertyValue(const Value: WideString);
  { Warning: The property CmnExPropertyValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CmnExPropertyValue := Value;
end;

function TAutoGRAPHAutomationProperties.Get_CarExPropertyValue: WideString;
begin
    Result := DefaultInterface.CarExPropertyValue;
end;

procedure TAutoGRAPHAutomationProperties.Set_CarExPropertyValue(const Value: WideString);
  { Warning: The property CarExPropertyValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CarExPropertyValue := Value;
end;

function TAutoGRAPHAutomationProperties.Get_FieldsComputingTimeout: Integer;
begin
    Result := DefaultInterface.FieldsComputingTimeout;
end;

procedure TAutoGRAPHAutomationProperties.Set_FieldsComputingTimeout(Value: Integer);
begin
  DefaultInterface.Set_FieldsComputingTimeout(Value);
end;

function TAutoGRAPHAutomationProperties.Get_FieldsComputingBusy: Integer;
begin
    Result := DefaultInterface.FieldsComputingBusy;
end;

function TAutoGRAPHAutomationProperties.Get_FieldsComputingPercents: Integer;
begin
    Result := DefaultInterface.FieldsComputingPercents;
end;

function TAutoGRAPHAutomationProperties.Get_FieldsComputingCheck: Integer;
begin
    Result := DefaultInterface.FieldsComputingCheck;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentLatitude: Double;
begin
    Result := DefaultInterface.CurrentLatitude;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentLongitude: Double;
begin
    Result := DefaultInterface.CurrentLongitude;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentAltitude: Double;
begin
    Result := DefaultInterface.CurrentAltitude;
end;

function TAutoGRAPHAutomationProperties.Get_CarPlacement: WideString;
begin
    Result := DefaultInterface.CarPlacement;
end;

function TAutoGRAPHAutomationProperties.Get_CurrentTime: WideString;
begin
    Result := DefaultInterface.CurrentTime;
end;

function TAutoGRAPHAutomationProperties.Get_TripImplementNames: WideString;
begin
    Result := DefaultInterface.TripImplementNames;
end;

function TAutoGRAPHAutomationProperties.Get_TripImplementIDs: WideString;
begin
    Result := DefaultInterface.TripImplementIDs;
end;

function TAutoGRAPHAutomationProperties.Get_FieldsList: WideString;
begin
    Result := DefaultInterface.FieldsList;
end;

procedure TAutoGRAPHAutomationProperties.Set_FieldsList(const Value: WideString);
  { Warning: The property FieldsList has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FieldsList := Value;
end;

function TAutoGRAPHAutomationProperties.Get_FieldsComputingTotalPercents: Integer;
begin
    Result := DefaultInterface.FieldsComputingTotalPercents;
end;

function TAutoGRAPHAutomationProperties.Get_OnlineComputingBusy: Integer;
begin
    Result := DefaultInterface.OnlineComputingBusy;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TAutoGRAPHAutomation]);
end;

end.
