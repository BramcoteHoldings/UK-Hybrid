{------------------------------------------------------------------------------}
{ Purposesoft HTMLEdit toolbar demo application
{ Module HandlerConfigForm.pas
{ Copyright Purposesoft. All rights reserved. http://www.purposesoft.com
{------------------------------------------------------------------------------}
unit HandlerConfigForm;

{------------------------------------------------------------------------------}
interface
{------------------------------------------------------------------------------}

uses {vcl} Windows, Messages, SysUtils, Classes, Graphics, Controls,
           Forms, Dialogs, StdCtrls, CheckLst, ExtCtrls, ComCtrls, Buttons,
     {HtmlEdit} psHtmlEdit, psSmartTagUIHelpers;

type
  TFrmHandlerConfig = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    SetupBtn: TButton;
    HandlerList: TListView;
    DownBtn: TSpeedButton;
    UpBtn: TSpeedButton;
    procedure SetupBtnClick(Sender: TObject);
    procedure HandlerListSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure UpBtnClick(Sender: TObject);
    procedure DownBtnClick(Sender: TObject);
    procedure HandlerListChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  private { fields }
    fComponent: TpsHTMLEditBase;
    fConfigList: TpsSmartTagHandlerConfigList;
    fRebuildingHandlerList: boolean;
  private { methods }
    procedure RebuildHandlerList(iSelectionIndex:integer = 0);
  public { methods }
    function ShowModalEx(iComponent:TpsHTMLEditBase):integer;
  end;

var
  FrmHandlerConfig: TFrmHandlerConfig;

{------------------------------------------------------------------------------}
implementation
{------------------------------------------------------------------------------}

{$R *.dfm}

{------------------------------------------------------------------------------}
{------------------------------------------------------------------------------}
{ TFrmHandlerConfig
{------------------------------------------------------------------------------}
{------------------------------------------------------------------------------}
procedure TFrmHandlerConfig.RebuildHandlerList(iSelectionIndex:integer);
var i: integer;
    Handler: TpsSmartTagHandler;
    Item: TListItem;
begin
  fRebuildingHandlerList := true;

  with fComponent.SmartTags do begin
    HandlerList.Items.Clear();

    for i := 0 to fConfigList.Count - 1 do begin
      Handler := HandlersByID[fConfigList.HandlerID[i]];
      Item := HandlerList.Items.Add();
      Item.Checked := fConfigList.Enabled[i];
      Item.Caption := Handler.Name;
      Item.SubItems.Add(Handler.Description);
    end;
    HandlerList.Selected := HandlerList.Items[iSelectionIndex];
  end;

  fRebuildingHandlerList := false;
end;

{------------------------------------------------------------------------------}
function TFrmHandlerConfig.ShowModalEx(iComponent:TpsHTMLEditBase):integer;
begin
  fComponent := iComponent;

  fConfigList := TpsSmartTagHandlerConfigList.Create();
  fConfigList.CopyFromComponent(fComponent);
  try
    with fComponent.SmartTags do begin
      RebuildHandlerList();

      ActiveControl := HandlerList;
      result := ShowModal();

      if result = mrOk then
        fConfigList.ApplyChangesToComponent(fComponent);
    end;
  finally
    FreeAndNil(fConfigList);
  end;
end;

{------------------------------------------------------------------------------}
procedure TFrmHandlerConfig.SetupBtnClick(Sender: TObject);
begin
  fComponent.SmartTags.Handlers[HandlerList.Selected.Index].Configure();
end;

{------------------------------------------------------------------------------}
procedure TFrmHandlerConfig.HandlerListSelectItem(Sender:TObject;Item:TListItem;Selected:Boolean);
begin
  if Selected then begin
    SetupBtn.Enabled := fComponent.SmartTags.HandlersByID[fConfigList.HandlerID[Item.Index]].CanConfigure;
    UpBtn.Enabled := (Item.Index > 0);
    DownBtn.Enabled := (Item.Index < HandlerList.Items.Count - 1);
  end
  else begin
    SetupBtn.Enabled := false;
    UpBtn.Enabled := false;
    DownBtn.Enabled := false;
  end;
end;

{------------------------------------------------------------------------------}
procedure TFrmHandlerConfig.UpBtnClick(Sender: TObject);
var lHandlerID: integer;
    lSelectionIndex: integer;
begin
  lSelectionIndex := HandlerList.Selected.Index - 1;
  lHandlerID := fConfigList.HandlerID[HandlerList.Selected.Index];
  fConfigList.SetHandlerPriority(lHandlerID,lSelectionIndex);
  RebuildHandlerList(lSelectionIndex);
end;

{------------------------------------------------------------------------------}
procedure TFrmHandlerConfig.DownBtnClick(Sender: TObject);
var lHandlerID: integer;
    lSelectionIndex: integer;
begin
  lSelectionIndex := HandlerList.Selected.Index + 1;
  lHandlerID := fConfigList.HandlerID[HandlerList.Selected.Index];
  fConfigList.SetHandlerPriority(lHandlerID,lSelectionIndex);
  RebuildHandlerList(lSelectionIndex);
end;

{------------------------------------------------------------------------------}
procedure TFrmHandlerConfig.HandlerListChange(Sender:TObject;Item:TListItem;Change:TItemChange);
var lEnabled: boolean;
begin
  if (not fRebuildingHandlerList) and Assigned(fConfigList) and (Item.Index <> -1) then begin
    lEnabled := HandlerList.Items[Item.Index].Checked;
    fConfigList.SetHandlerStatus(fConfigList.HandlerID[Item.Index],lEnabled);
  end;
end;

end.
