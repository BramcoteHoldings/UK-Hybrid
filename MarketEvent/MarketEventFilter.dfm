object frmFilter: TfrmFilter
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Filter'
  ClientHeight = 507
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MemoList: TMemo
    Left = 8
    Top = 8
    Width = 345
    Height = 481
    TabOrder = 0
  end
  object rgFilter: TRadioGroup
    Left = 367
    Top = 8
    Width = 128
    Height = 65
    Caption = 'List Filter'
    Items.Strings = (
      'Inclusive Delete'
      'Exclusive Delete')
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 420
    Top = 416
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 420
    Top = 464
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
