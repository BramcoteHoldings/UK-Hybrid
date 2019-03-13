object frmCreditorMergeProgress: TfrmCreditorMergeProgress
  Left = 130
  Top = 248
  BorderStyle = bsSingle
  Caption = 'Creditor Merge Progress'
  ClientHeight = 88
  ClientWidth = 214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object lblProgress: TLabel
    Left = 15
    Top = 65
    Width = 61
    Height = 14
    Caption = 'lblProgress'
  end
  object lblTitle: TLabel
    Left = 5
    Top = 5
    Width = 206
    Height = 26
    AutoSize = False
    Caption = 'lblTitle'
    WordWrap = True
  end
  object pbProgress: TProgressBar
    Left = 10
    Top = 40
    Width = 191
    Height = 16
    Max = 5
    TabOrder = 0
  end
  object qryMerge: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 145
    Top = 25
  end
end
