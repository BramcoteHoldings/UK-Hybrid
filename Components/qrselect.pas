{ :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  :: QuickReport 3.0 for Delphi 3 or newer                   ::
  ::                                                         ::
  :: Example printer setup for Custom preview project        ::
  ::                                                         ::
  :: Copyright (c) 1999 QuSoft AS                            ::
  :: All Rights Reserved                                     ::
  ::                                                         ::
  :: web: http://www.qusoft.no   fax: +47 22 41 74 91        ::
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }
unit qrselect;

interface

uses
  Windows, WinSpool, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, printers, qrprntr, ComCtrls, Spin, ExtCtrls;

(*const
  TrayList: array[0..10] of string = ('First',
    'Upper', 'Lower', 'Middle', 'Manual', 'Envelope',
    'Envelope Manual', 'Auto', 'Tractor', 'Cassette',
    'Last');*)
type
  TPName = array[0..63] of char;
  TPNames = array[0..0] of TPName;
  TPrinterDriver = (pdGeneric, pdKonica);

type
  TfrmSelectPrinter = class(TForm)
    Label1: TLabel;
    cbPrinters: TComboBox;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    btnDefault: TBitBtn;
    GroupBox1: TGroupBox;
    AllPagesRb: TRadioButton;
    RangeRb: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    FromEdt: TEdit;
    ToEdt: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    CopiesSe: TSpinEdit;
    Bevel1: TBevel;
    StatusLbl: TLabel;
    cbTray: TComboBox;
    Label5: TLabel;
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
    procedure AllPagesRbClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FromEdtChange(Sender: TObject);
    procedure cbPrintersChange(Sender: TObject);
  private
    { Private declarations }
    FPrinterDriver: TPrinterDriver;
    FTrayList: array[0..10] of string;
    function GetReportBin(BinName: TQRBin): Byte;
    procedure SetPrinterDriver;
    function SetReportBin(Index: byte): TQRBin;
  public
    { Public declarations }
    NumCopies: integer;
    Printer : TPrinter;
    PrinterIndex: integer;
    OutputBin: TQRBin;
    QRPrinter: TQRPrinter;
    FromPage, ToPage: integer;
  end;

//function DeviceCapabilities(pDriverName, pDeviceName, pPort: PAnsiChar;
//  iIndex: Integer; pOutput: PAnsiChar; DevMode: PDeviceModeA): Integer; stdcall;

var
  frmSelectPrinter: TfrmSelectPrinter;

implementation

{$R *.DFM}

//function DeviceCapabilities; external 'gdi32.dll' name 'DeviceCapabilitiesExA';

function TfrmSelectPrinter.GetReportBin(BinName: TQRBin): Byte;
begin
  case FPrinterDriver of
    pdGeneric:
    begin
      case BinName of
        First: Result := 0;
        Upper: Result := 1;
        Lower: Result := 2;
        Middle: Result := 3;
        Manual: Result := 4;
        Envelope: Result := 5;
        EnvManual: Result := 6;
        Auto: Result := 7;
        Tractor: Result := 8;
        Cassette: Result := 9;
        Last: Result := 10;
      end;
    end;
    pdKonica:
    begin
      case BinName of
        First: Result := 0;
        Upper: Result := 0;
        Lower: Result := 1;
        Middle: Result := 2;
        Manual: Result := 3;
        Envelope: Result := 4;
        EnvManual: Result := 5;
        Auto: Result := 0;
        Tractor: Result := 0;
        Cassette: Result := 0;
        Last: Result := 0;
      end;
    end;
  end;
end;

function TfrmSelectPrinter.SetReportBin(Index: byte): TQRBin;
begin
  case FPrinterDriver of
    pdGeneric:
    begin
      case index of
        0: Result := First;
        1: Result := Upper;
        2: Result := Lower;
        3: Result := Middle;
        4: Result := Manual;
        5: Result := Envelope;
        6: Result := EnvManual;
        7: Result := Auto;
        8: Result := Tractor;
        9: Result := Cassette;
        10: Result := Last;
      end;
    end;
    pdKonica:
    begin
      case index of
        0: Result := First;
        1: Result := Lower;
        2: Result := Middle;
        3: Result := Manual;
        4: Result := Envelope;
        5: Result := EnvManual;
      end;
    end;
  end;
end;

procedure TfrmSelectPrinter.FormDestroy(Sender: TObject);
begin
  // All done, free the printer object
  Printer.Free;
end;

procedure TfrmSelectPrinter.FormShow(Sender: TObject);
var
  nIdx: integer;
begin
  StatusLbl.Caption := 'Please wait...';
  // create a printer to get the list of printers
  Printer := TPrinter.Create;

  if NumCopies < 1 then
    NumCopies := 1;

  CopiesSe.Value := NumCopies;

  // Now populate the combobox with the list of printer names
  try
    with Printer do
      for nIdx := 0 to Printers.Count - 1 do
        cbPrinters.Items.Add(printers[nIdx]);
  except
    raise;
  end;

  // Set the combo box to the current printer as defined
  // by the caller.  It may not be the default printer
  cbPrinters.ItemIndex := PrinterIndex;

  // Update the page count
  AllPagesRb.Caption := 'All ' + IntToStr(QRPrinter.PageCount) + ' pages';
  FromEdt.Text := '1';
  ToEdt.Text := IntToStr(QRPrinter.PageCount);

  // Now populate the combobox with the list of tray names
  for nIdx := 0 to High(FTrayList) do
  begin
    if FTrayList[nIdx] <> '' then
      cbTray.Items.Add(FTrayList[nIdx]);
  end;
  cbTray.ItemIndex := GetReportBin(OutputBin);

  application.ProcessMessages;
  cbPrintersChange(Sender);
end;

procedure TfrmSelectPrinter.btnDefaultClick(Sender: TObject);
begin
  // reset the printer index back to the default
  Printer.PrinterIndex := -1;
  cbPrinters.ItemIndex := Printer.PrinterIndex;
  cbPrintersChange(Sender);
end;

procedure TfrmSelectPrinter.AllPagesRbClick(Sender: TObject);
begin
  FromEdt.Enabled := RangeRb.Checked;
  ToEdt.Enabled := FromEdt.Enabled;
end;

procedure TfrmSelectPrinter.btnOkClick(Sender: TObject);
begin
  FromPage := 0;
  ToPage := 0;

  NumCopies := CopiesSe.Value;

  if RangeRb.Checked then
  begin
    try
      FromPage := StrToInt(FromEdt.text);
      ToPage := StrToInt(ToEdt.text);
    finally
    end;
  end;
  OutputBin := SetReportBin(cbTray.ItemIndex);
end;

procedure TfrmSelectPrinter.FromEdtChange(Sender: TObject);
const
  sIntKeys = '0123456789';
var
  nIdx: Integer;
begin
  with Sender as TEdit do
  begin
    nIdx := StrLen(pchar(Text));

    // only allow numbers to be entered
    for nIdx := 1 to nIdx do
      if StrScan(sIntKeys, char(Text[nIdx])) = nil then
      begin
        Text := '';
        break;
      end;
  end;
end;

procedure TfrmSelectPrinter.cbPrintersChange(Sender: TObject);
var
  SaveCopies,
  SaveIndex: integer;
begin
  with QRPrinter do
  begin
    SaveIndex := PrinterIndex;
    PrinterIndex := cbPrinters.ItemIndex;

    // Quick and easy way to see if the printer supports the printing
    // of multiple copies
    SaveCopies := Copies;
    Copies := 2;

    if Copies > 1 then
      StatusLbl.Caption := 'Printer supports multiple copies'
    else
      StatusLbl.Caption := 'Printer does not supports multiple copies';

    Copies := SaveCopies;
    PrinterIndex := SaveIndex;

    SetPrinterDriver;
  end;
end;

procedure TfrmSelectPrinter.SetPrinterDriver;
var
  i, iDevCapRes: Integer;
  BinNames: Pointer;
  sBinName: string;
  hPrinter: THandle;
  pDeviceMode: pDevMode;
  szDevice, szDriver, szPort: array[0..255] of Char;
begin

  Printer.GetPrinter(szDevice, szDriver, szPort, hPrinter);
  iDevCapRes := WinSpool.DeviceCapabilities(szDevice, szPort, DC_BINNAMES, nil, nil);
  if iDevCapRes > 0 then
  begin
    GetMem(BinNames, iDevCapRes * 24);
    try
      if WinSpool.DeviceCapabilities(szDevice, szPort, DC_BINNAMES, BinNames, nil) = -1 then
        raise Exception.create(szDevice + ' Device Capability Error');
      for i := 0 to iDevCapRes - 1 do
      begin
        sBinName := string(TPNames(BinNames^)[i]);
        Memo1.Lines.Add(sBinName);
      end;
    finally
      FreeMem(BinNames, iDevCapRes * 24);
    end;
  end;

  FPrinterDriver := pdKonica;

  case FPrinterDriver of
    pdGeneric:
    begin
      FTrayList[0] := 'First';
      FTrayList[1] := 'Upper';
      FTrayList[2] := 'Lower';
      FTrayList[3] := 'Middle';
      FTrayList[4] := 'Manual';
      FTrayList[5] := 'Envelope';
      FTrayList[6] := 'Envelope Manual';
      FTrayList[7] := 'Auto';
      FTrayList[8] := 'Tractor';
      FTrayList[9] := 'Cassette';
      FTrayList[10] := 'Last';
    end;
    pdKonica:
    begin
      FTrayList[0] := 'Auto';
      FTrayList[1] := 'Last';
      FTrayList[2] := 'Upper';
      FTrayList[3] := 'Middle';
      FTrayList[4] := 'Lower';
      FTrayList[5] := 'Manual';
    end;
  end;
end;

end.

(*

use this one instead:

uses winspool;

procedure GetBinnames( sl: TStrings );
Type
  TBinName = Array [0..23] of Char;
  TBinNameArray = Array [1..High(Integer) div Sizeof( TBinName )] of                       TBinName;
  PBinnameArray = ^TBinNameArray;
  TBinArray = Array [1..High(Integer) div Sizeof(Word)] of Word;   PBinArray = ^TBinArray;
Var
  Device, Driver, Port: Array [0..255] of Char;
  hDevMode: THandle;
  i, numBinNames, numBins, temp: Integer;
  pBinNames: PBinnameArray;
  pBins: PBinArray;
begin
  Printer.PrinterIndex := -1;
  Printer.GetPrinter(Device, Driver, Port, hDevmode);
  numBinNames :=
    WinSpool.DeviceCapabilities( Device, Port, DC_BINNAMES, Nil, Nil );   numBins :=
    WinSpool.DeviceCapabilities( Device, Port, DC_BINS, Nil, Nil );   If numBins <> numBinNames Then Begin
    raise Exception.Create(
            'DeviceCapabilities reports different number of bins and '+             'bin names!');
  End; { If }

  If numBinNames > 0 Then Begin
    pBins := Nil;
    GetMem( pBinNames, numBinNames * Sizeof( TBinname ));
    GetMem( pBins, numBins * Sizeof(Word));
    try
      WinSpool.DeviceCapabilities( Device, Port, DC_BINNAMES,
                                  Pchar( pBinNames ), Nil);
      WinSpool.DeviceCapabilities( Device, Port, DC_BINS, 
                                  Pchar( pBins ), Nil );
      sl.clear;
      For i:= 1 To numBinNames Do Begin
        temp := pBins^[i];
        sl.addObject( pBinNames^[i], TObject( temp ));
      End;
    finally
      FreeMem( pBinNames );
      If pBins <> Nil Then 
        FreeMem( pBins );
    end;
  End;
End;

