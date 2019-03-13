object fmWorkFlowDocumentMergeOptionsDialog: TfmWorkFlowDocumentMergeOptionsDialog
  Left = 870
  Top = 399
  BorderStyle = bsDialog
  Caption = 'Document Merge Options'
  ClientHeight = 229
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    373
    229)
  PixelsPerInch = 96
  TextHeight = 13
  object lMergeType: TLabel
    Left = 9
    Top = 13
    Width = 58
    Height = 13
    Caption = 'Merge Type'
  end
  object lConfigurationProperties: TLabel
    Left = 9
    Top = 35
    Width = 128
    Height = 13
    Caption = 'Configuration Properties'
  end
  object bnOk: TButton
    Left = 115
    Top = 198
    Width = 70
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = bnOkClick
    ExplicitTop = 168
  end
  object bnCancel: TButton
    Left = 189
    Top = 198
    Width = 70
    Height = 23
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    ExplicitTop = 168
  end
  object cbMergeType: TComboBox
    Left = 74
    Top = 9
    Width = 288
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnChange = cbMergeTypeChange
  end
  object veProperties: TValueListEditor
    Left = 9
    Top = 49
    Width = 353
    Height = 140
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    TitleCaptions.Strings = (
      'Property'
      'Value')
    OnEditButtonClick = vePropertiesEditButtonClick
    OnGetPickList = vePropertiesGetPickList
    OnValidate = vePropertiesValidate
    ExplicitHeight = 110
    ColWidths = (
      104
      243)
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*'
    Filter = 
      'All Files (*.*)|*.*|Executable Files (*.exe, *.cmd, *.bat)|*.exe' +
      '; *.cmd; *.bat'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 206
    Top = 92
  end
  object BrowseFolderDlg: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odStatusAvailable, odNewDialogStyle]
    Left = 73
    Top = 142
  end
end
