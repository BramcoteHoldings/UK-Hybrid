object frmRollupAccounts: TfrmRollupAccounts
  Left = 893
  Top = 271
  BorderStyle = bsDialog
  Caption = 'Rollup Accounts'
  ClientHeight = 142
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 8
    Top = 6
    Width = 332
    Height = 98
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 20
    Top = 20
    Width = 33
    Height = 15
    Caption = 'Entity '
  end
  object dbtEntityCode: TDBText
    Left = 143
    Top = 21
    Width = 26
    Height = 17
    DataField = 'CODE'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dbtEntityName: TDBText
    Left = 178
    Top = 21
    Width = 153
    Height = 13
    DataField = 'NAME'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 45
    Width = 116
    Height = 15
    Caption = 'Currently Rolled up to'
  end
  object dbtCurrentRollupDate: TDBText
    Left = 143
    Top = 46
    Width = 115
    Height = 13
    AutoSize = True
    DataField = 'LAST_ROLLOVER'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 70
    Width = 104
    Height = 15
    Caption = 'Rollup Accounts to '
  end
  object OKBtn: TButton
    Left = 102
    Top = 110
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 182
    Top = 110
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object dtmRollup: TDateTimePicker
    Left = 125
    Top = 66
    Width = 86
    Height = 23
    Date = 37550.622800196800000000
    Time = 37550.622800196800000000
    TabOrder = 2
  end
end
