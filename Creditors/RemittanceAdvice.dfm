object frmRemittanceAdvice: TfrmRemittanceAdvice
  Left = 0
  Top = 0
  Caption = 'Remittance Advice'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rgOptions: TRadioGroup
    Left = 32
    Top = 16
    Width = 185
    Height = 41
    Caption = 'Options'
    Columns = 2
    Items.Strings = (
      'Print'
      'Email and Print')
    TabOrder = 0
  end
end
