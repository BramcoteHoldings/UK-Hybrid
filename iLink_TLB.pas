unit iLink_TLB;

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

// PASTLWTR : $Revision: 1.2 $
// File generated on 19/10/2005 9:04:52 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\informs\iLink.dll (1)
// LIBID: {274BE295-9704-4F6A-8F79-568CA7F3AE96}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\System32\stdvcl40.dll)
// Errors:
//   Hint: Parameter 'Record' of _clsLink.WriteRec changed to 'Record_'
//   Error creating palette bitmap of (TclsLink) : Server c:\program files\informs\iLink.dll contains no icons
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
  iLinkMajorVersion = 1;
  iLinkMinorVersion = 0;

  LIBID_iLink: TGUID = '{274BE295-9704-4F6A-8F79-568CA7F3AE96}';

  IID__clsLink: TGUID = '{414B6EBD-B887-452E-920B-E6C5FDF6E718}';
  CLASS_clsLink: TGUID = '{305988FB-BFA6-4935-90A5-2B251691206E}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _clsLink = interface;
  _clsLinkDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  clsLink = _clsLink;


// *********************************************************************//
// Interface: _clsLink
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {414B6EBD-B887-452E-920B-E6C5FDF6E718}
// *********************************************************************//
  _clsLink = interface(IDispatch)
    ['{414B6EBD-B887-452E-920B-E6C5FDF6E718}']
    function OpenFile(var Matter: WideString; var Client: WideString; var Description: WideString; 
                      var User: WideString): Smallint; safecall;
    function NumRecs: Smallint; safecall;
    procedure SaveFile; safecall;
    procedure WriteRec(const Record_: WideString); safecall;
    function ReadRec(var RecNum: Smallint): WideString; safecall;
    procedure Process(var Matter: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  _clsLinkDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {414B6EBD-B887-452E-920B-E6C5FDF6E718}
// *********************************************************************//
  _clsLinkDisp = dispinterface
    ['{414B6EBD-B887-452E-920B-E6C5FDF6E718}']
    function OpenFile(var Matter: WideString; var Client: WideString; var Description: WideString; 
                      var User: WideString): Smallint; dispid 1610809344;
    function NumRecs: Smallint; dispid 1610809345;
    procedure SaveFile; dispid 1610809346;
    procedure WriteRec(const Record_: WideString); dispid 1610809347;
    function ReadRec(var RecNum: Smallint): WideString; dispid 1610809348;
    procedure Process(var Matter: WideString); dispid 1610809349;
  end;

// *********************************************************************//
// The Class CoclsLink provides a Create and CreateRemote method to          
// create instances of the default interface _clsLink exposed by              
// the CoClass clsLink. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoclsLink = class
    class function Create: _clsLink;
    class function CreateRemote(const MachineName: string): _clsLink;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TclsLink
// Help String      : 
// Default Interface: _clsLink
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TclsLinkProperties= class;
{$ENDIF}
  TclsLink = class(TOleServer)
  private
    FIntf:        _clsLink;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TclsLinkProperties;
    function      GetServerProperties: TclsLinkProperties;
{$ENDIF}
    function      GetDefaultInterface: _clsLink;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _clsLink);
    procedure Disconnect; override;
    function OpenFile(var Matter: WideString; var Client: WideString; var Description: WideString; 
                      var User: WideString): Smallint;
    function NumRecs: Smallint;
    procedure SaveFile;
    procedure WriteRec(const Record_: WideString);
    function ReadRec(var RecNum: Smallint): WideString;
    procedure Process(var Matter: WideString);
    property DefaultInterface: _clsLink read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TclsLinkProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TclsLink
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TclsLinkProperties = class(TPersistent)
  private
    FServer:    TclsLink;
    function    GetDefaultInterface: _clsLink;
    constructor Create(AServer: TclsLink);
  protected
  public
    property DefaultInterface: _clsLink read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

class function CoclsLink.Create: _clsLink;
begin
  Result := CreateComObject(CLASS_clsLink) as _clsLink;
end;

class function CoclsLink.CreateRemote(const MachineName: string): _clsLink;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_clsLink) as _clsLink;
end;

procedure TclsLink.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{305988FB-BFA6-4935-90A5-2B251691206E}';
    IntfIID:   '{414B6EBD-B887-452E-920B-E6C5FDF6E718}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TclsLink.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _clsLink;
  end;
end;

procedure TclsLink.ConnectTo(svrIntf: _clsLink);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TclsLink.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TclsLink.GetDefaultInterface: _clsLink;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TclsLink.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TclsLinkProperties.Create(Self);
{$ENDIF}
end;

destructor TclsLink.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TclsLink.GetServerProperties: TclsLinkProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TclsLink.OpenFile(var Matter: WideString; var Client: WideString; 
                           var Description: WideString; var User: WideString): Smallint;
begin
  Result := DefaultInterface.OpenFile(Matter, Client, Description, User);
end;

function TclsLink.NumRecs: Smallint;
begin
  Result := DefaultInterface.NumRecs;
end;

procedure TclsLink.SaveFile;
begin
  DefaultInterface.SaveFile;
end;

procedure TclsLink.WriteRec(const Record_: WideString);
begin
  DefaultInterface.WriteRec(Record_);
end;

function TclsLink.ReadRec(var RecNum: Smallint): WideString;
begin
  Result := DefaultInterface.ReadRec(RecNum);
end;

procedure TclsLink.Process(var Matter: WideString);
begin
  DefaultInterface.Process(Matter);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TclsLinkProperties.Create(AServer: TclsLink);
begin
  inherited Create;
  FServer := AServer;
end;

function TclsLinkProperties.GetDefaultInterface: _clsLink;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TclsLink]);
end;

end.
