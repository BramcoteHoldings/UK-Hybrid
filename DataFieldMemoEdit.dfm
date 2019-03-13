object frmDataFieldMemoEdit: TfrmDataFieldMemoEdit
  Left = 437
  Top = 290
  BorderStyle = bsDialog
  Caption = 'frmDataFieldMemoEdit'
  ClientHeight = 221
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 189
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object meFieldData: TMemo
      Left = 0
      Top = 0
      Width = 438
      Height = 189
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 189
    Width = 438
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 273
      Top = 4
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 355
      Top = 4
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
