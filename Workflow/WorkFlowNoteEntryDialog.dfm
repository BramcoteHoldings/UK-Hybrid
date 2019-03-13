object fmWorkFlowNoteEntryDialog: TfmWorkFlowNoteEntryDialog
  Left = 311
  Top = 402
  BorderStyle = bsDialog
  Caption = 'Note Entry'
  ClientHeight = 214
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  DesignSize = (
    313
    214)
  PixelsPerInch = 96
  TextHeight = 14
  object lDate: TDBText
    Left = 72
    Top = 10
    Width = 223
    Height = 13
  end
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 22
    Height = 14
    Caption = 'Date'
  end
  object Label2: TLabel
    Left = 10
    Top = 26
    Width = 53
    Height = 14
    Caption = 'Entered By'
  end
  object Label3: TLabel
    Left = 10
    Top = 44
    Width = 22
    Height = 14
    Caption = 'Note'
  end
  object lBy: TLabel
    Left = 72
    Top = 26
    Width = 15
    Height = 14
    Caption = 'lBy'
  end
  object bnOk: TButton
    Left = 79
    Top = 180
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object bnCancel: TButton
    Left = 159
    Top = 180
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object mNote: TMemo
    Left = 72
    Top = 44
    Width = 229
    Height = 127
    BevelKind = bkTile
    BevelOuter = bvNone
    Lines.Strings = (
      'mNote')
    TabOrder = 0
  end
end
