object fmDocCopyMoveFileDialog: TfmDocCopyMoveFileDialog
  Left = 607
  Top = 352
  BorderStyle = bsDialog
  Caption = 'Copy File'
  ClientHeight = 198
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  DesignSize = (
    570
    198)
  PixelsPerInch = 96
  TextHeight = 15
  object lTo: TLabel
    Left = 19
    Top = 104
    Width = 94
    Height = 15
    Caption = 'Document Name:'
  end
  object bnOk: TButton
    Left = 193
    Top = 164
    Width = 80
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 279
    Top = 164
    Width = 80
    Height = 27
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 12
    Width = 552
    Height = 91
    Anchors = [akLeft, akTop, akRight]
    Caption = 'On the filesystem'
    TabOrder = 2
    object lFrom: TLabel
      Left = 11
      Top = 20
      Width = 52
      Height = 15
      Caption = 'Copy File:'
    end
    object eFileName: TLabel
      Left = 11
      Top = 40
      Width = 529
      Height = 38
      AutoSize = False
      Caption = 'eFileName'
      WordWrap = True
    end
  end
  object eNewFileName: TEdit
    Left = 19
    Top = 121
    Width = 531
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    TabOrder = 3
    Text = 'eFileName'
  end
end
