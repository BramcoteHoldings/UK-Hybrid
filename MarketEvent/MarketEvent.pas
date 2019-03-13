unit MarketEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBActns, ActnList, ActnMan, ToolWin,
  ActnCtrls, ComCtrls, ImgList, cxDropDownEdit, cxLookupEdit, DB,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxMaskEdit, cxCalendar,
  cxMemo, cxControls, cxContainer, cxEdit, cxTextEdit, dxBar, dxBarDBNav,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  dxLayoutcxEditAdapters, cxCurrencyEdit, dxLayoutContainer, dxLayoutControl;

type
  TfrmMarketEvent = class(TForm)
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarButton1: TdxBarButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarketEvent: TfrmMarketEvent;

implementation

uses MarketEventDataModule, miscfunc, axiomdata;

{$R *.dfm}

procedure TfrmMarketEvent.FormCreate(Sender: TObject);
begin
   if(not Assigned(dmMarketEventDataModule)) then
      dmMarketEventDataModule := TdmMarketEventDataModule.Create(Application);
   dmMarketEventDataModule.qryEmployee.Open;
   dmMarketEventDataModule.tbEventTypes.Open;
end;

procedure TfrmMarketEvent.FormShow(Sender: TObject);
begin
//   if dmMarketEventDataModule.qryEvent.State = (dsBrowse) then
//      dmMarketEventDataModule.qryEvent.Open();
   dmMarketEventDataModule.tbEvent.Open();
end;

procedure TfrmMarketEvent.dxBarButton1Click(Sender: TObject);
begin
   Self.Close;
//   RemoveFromDesktop(Self);
end;

procedure TfrmMarketEvent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmMarketEventDataModule.qryEmployee.Close;
   dmMarketEventDataModule.tbEventTypes.Close;
   RemoveFromDesktop(Self);
end;

end.
