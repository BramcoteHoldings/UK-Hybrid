unit WorkFlowDocumentMergeOptions;

(*
  WorkFlow Document Merge Options

  Called from the workflow document templates form, this dialog lists
  the merge types that are registered, and selects the current type, allows
  selection of the type and entry of fields that are linked for that type.

  Mathew Dredge, Aug-Sep 2002
 *)
interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, WorkFlowDocumentMerge, Dialogs, Grids, ValEdit, Mask,
  JvBaseDlg, JvBrowseFolder;


type
  TfmWorkFlowDocumentMergeOptionsDialog = class(TForm)
    bnOk: TButton;
    bnCancel: TButton;
    cbMergeType: TComboBox;
    veProperties: TValueListEditor;
    OpenDialog: TOpenDialog;
    lMergeType: TLabel;
    lConfigurationProperties: TLabel;
    BrowseFolderDlg: TJvBrowseForFolderDialog;
    procedure FormCreate(Sender: TObject);
    procedure vePropertiesGetPickList(Sender: TObject;
      const KeyName: String; Values: TStrings);
    procedure cbMergeTypeChange(Sender: TObject);
    procedure vePropertiesValidate(Sender: TObject; ACol, ARow: Integer;
      const KeyName, KeyValue: String);
    procedure vePropertiesEditButtonClick(Sender: TObject);
    procedure bnOkClick(Sender: TObject);
  private
    { Private declarations }
    FMerge: TMergeDocumentClass;

    procedure SaveBackProperties();
    procedure LoadProperties();
  public
    { Public declarations }
  end;

var
  fmWorkFlowDocumentMergeOptionsDialog: TfmWorkFlowDocumentMergeOptionsDialog;

implementation

uses
  MiscFunc;
{$R *.dfm}

procedure TfmWorkFlowDocumentMergeOptionsDialog.FormCreate(Sender: TObject);
var
  i: Integer;
  LMergeType: String;

begin
  FMerge := GetWorkFlowMergeTypeClass();
  if(Assigned(FMerge)) then
    LMergeType := FMerge.ExportDescription;
//  LMergeType := GlobalSettingLoadString(C_WKF,C_WORKFLOW,C_MERGETYPE);

  veProperties.Strings.Clear();
  for i := 0 to Length(GWorkFlowMergeTypes) - 1 do
  begin
    cbMergeType.Items.Add(GWorkFlowMergeTypes[i].ExportDescription);
    GWorkFlowMergeTypes[i].LoadSettings();
  end;

  if(cbMergeType.Items.Count > 0) then
  begin
    cbMergeType.ItemIndex := cbMergeType.Items.IndexOf(LMergeType);
    if(cbMergeType.ItemIndex = -1) then
      cbMergeType.ItemIndex := 0;
    FMerge := GWorkFlowMergeTypes[cbMergeType.ItemIndex];
    if(Assigned(FMerge)) then
    begin
      FMerge.LoadSettings();
      LoadProperties();
    end;
  end else
    raise Exception.Create('There are no decendents of TMergeDocument programmed');
  veProperties.Enabled := veProperties.Strings.Count > 0;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.vePropertiesGetPickList(
  Sender: TObject; const KeyName: String; Values: TStrings);
begin
  Values.Clear();
  if(Assigned(FMerge)) then
  begin
    if(FMerge.PropertyType(KeyName) = mptBoolean) then
    begin
      Values.Add(BoolToStr(True,True));
      Values.Add(BoolToStr(False,True));
    end;
  end;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.cbMergeTypeChange(
  Sender: TObject);
begin

  SaveBackProperties();
  veProperties.Strings.Clear();

  if(cbMergeType.ItemIndex > -1) then
  begin
    FMerge := GWorkFlowMergeTypes[cbMergeType.ItemIndex];
    LoadProperties();
  end else
    FMerge := Nil;
  veProperties.Enabled := veProperties.Strings.Count > 0;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.vePropertiesValidate(
  Sender: TObject; ACol, ARow: Integer; const KeyName, KeyValue: String);
begin
  if(Assigned(FMerge)) then
  begin
    if(FMerge.PropertyType(KeyName) = mptBoolean) then
    begin
      if((KeyValue <> BoolToStr(False,True))) and (KeyValue <> BoolToStr(True,True)) then
        Raise Exception.Create('Property ' + KeyName + ' must be True or False');
    end;
  end;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.vePropertiesEditButtonClick(
  Sender: TObject);
var
  LKeyName: String;
begin
  if(Assigned(FMerge)) then
  begin
    LKeyName := veProperties.Keys[veProperties.Row];
    case FMerge.PropertyType(LKeyName) of
      mptFilePath:
        begin
          OpenDialog.FileName := veProperties.Values[LKeyName];
          if(OpenDialog.Execute()) then
            veProperties.Values[LKeyName] := OpenDialog.FileName;
        end;
      mptPath:
        begin
          BrowseFolderDlg.Directory := veProperties.Values[LKeyName];
          if(BrowseFolderDlg.Execute()) then
            veProperties.Values[LKeyName] := BrowseFolderDlg.Directory;
        end;
    end;
  end;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.LoadProperties;
var
  i: Integer;
  LProp: String;
begin
  if(Assigned(FMerge)) then
  begin
    for i := 0 to FMerge.NumberOfProperties - 1 do
    begin
      LProp := FMerge.GetPropertyName(i);
      case FMerge.PropertyType(LProp) of
        mptString,
        mptInteger:
          begin
            veProperties.Values[LProp] := FMerge.GetPropertyValue(LProp);
            veProperties.ItemProps[LProp].EditStyle := esSimple;
          end;
        mptBoolean:
          begin
            veProperties.Values[LProp] := BoolToStr(FMerge.GetPropertyValue(LProp),True);
            veProperties.ItemProps[LProp].EditStyle := esPickList;
          end;
        mptFilePath,
        mptPath:
          begin
            veProperties.Values[LProp] := FMerge.GetPropertyValue(LProp);
            veProperties.ItemProps[LProp].EditStyle := esEllipsis;
          end;
      end;
    end;
  end;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.SaveBackProperties;
var
  i: Integer;
  LProp: String;
begin
  if(Assigned(FMerge)) then
  begin
    for i := 1 to veProperties.Strings.Count do
    begin
      LProp := veProperties.Keys[i];
      case FMerge.PropertyType(LProp) of
        mptInteger:  FMerge.SetPropertyValue(LProp,StrToIntDef(veProperties.Values[LProp],0));
        mptBoolean:  FMerge.SetPropertyValue(LProp,veProperties.Values[LProp] = BoolToStr(True,True));
        mptFilePath,
        mptPath,
        mptString:   FMerge.SetPropertyValue(LProp,veProperties.Values[LProp]);
      end;
    end;
  end;
end;

procedure TfmWorkFlowDocumentMergeOptionsDialog.bnOkClick(Sender: TObject);
begin
  SaveBackProperties();
  if(Assigned(FMerge)) then
  begin
    SetWorkFlowMergeTypeClass(FMerge);
    FMerge.SaveSettings();
  end;
end;

end.
