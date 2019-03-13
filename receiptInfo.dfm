object frmReceiptInfo: TfrmReceiptInfo
  Left = 484
  Top = 311
  Caption = 'Receipt Data'
  ClientHeight = 50
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 24
    Height = 14
    Caption = 'Bank'
  end
  object cmbBanks: TComboBox
    Left = 48
    Top = 8
    Width = 145
    Height = 22
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 205
    Top = 6
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOkClick
  end
end
