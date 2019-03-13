object frmSingleFieldEdit: TfrmSingleFieldEdit
  Left = 436
  Top = 348
  Anchors = [akLeft, akTop, akRight, akBottom]
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Input Form'
  ClientHeight = 107
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 283
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lbFieldDesc: TLabel
      Left = 9
      Top = 10
      Width = 55
      Height = 13
      Caption = 'lbFieldDesc'
    end
    object edFieldValue: TEdit
      Left = 9
      Top = 30
      Width = 268
      Height = 21
      TabOrder = 0
      Text = 'edFieldValue'
    end
  end
  object pnFlag: TPanel
    Left = 0
    Top = 54
    Width = 283
    Height = 19
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cbFlag: TCheckBox
      Left = 9
      Top = 2
      Width = 97
      Height = 17
      Caption = 'cbFlag'
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 283
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object btnOK: TBitBtn
      Left = 126
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      TabOrder = 0
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 206
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Cancel'
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
