unit NewMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters, ImgList,
  fRwMapiV3FolderDialog, cxMemo, cxRichEdit, cxSplitter, cxListView,
  cxLabel, cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  dxBar, cxControls, dxStatusBar;

type
  TfrmNewMessage = class(TForm)
    dxBarManager1: TdxBarManager;
    dxStatusBar1: TdxStatusBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    LMDSimplePanel1: TLMDSimplePanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel1: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    cxListView1: TcxListView;
    cxSplitter1: TcxSplitter;
    cxRichEdit1: TcxRichEdit;
    RwMapiFolderDialogV31: TRwMapiFolderDialogV3;
    ImageList1: TImageList;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewMessage: TfrmNewMessage;

implementation

{$R *.dfm}

procedure TfrmNewMessage.cxButton1Click(Sender: TObject);
begin
  // show the dialog
  if FAddressbook.DisplayAddressbookDialog(FRecipTable, Application.Title, True, True, True, 0) = mrOK then
  begin
    EdtTo.Text := '';
    EdtCC.Text := '';
    FRecipTable.First;
    while not FRecipTable.EOF do
    begin
      if FRecipTable.FieldByName(PR_RECIPIENT_TYPE).AsInteger = rtTO then
        EdtTo.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; '
      else
        EdtCC.Text := EdtTo.Text + FRecipTable.FieldByName(PR_DISPLAY_NAME).AsString + '; ';
      FRecipTable.Next;
    end;
  end;
end;

end.
