object frmLockAccounts: TfrmLockAccounts
  Left = 308
  Top = 184
  BorderStyle = bsDialog
  Caption = 'Lock Accounts'
  ClientHeight = 132
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 7
    Top = 7
    Width = 276
    Height = 91
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 14
    Top = 19
    Width = 33
    Height = 15
    Caption = 'Entity '
  end
  object Label2: TLabel
    Left = 14
    Top = 42
    Width = 104
    Height = 15
    Caption = 'Currently Locked to'
  end
  object Label3: TLabel
    Left = 14
    Top = 69
    Width = 95
    Height = 15
    Caption = 'Lock Accounts to '
  end
  object OKBtn: TButton
    Left = 73
    Top = 102
    Width = 70
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object CancelBtn: TButton
    Left = 148
    Top = 102
    Width = 69
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object dtmLockDate: TDateTimePicker
    Left = 123
    Top = 65
    Width = 94
    Height = 23
    Date = 37550.622800196800000000
    Time = 37550.622800196800000000
    TabOrder = 3
  end
  object dbtEntityCode: TcxDBLabel
    Left = 123
    Top = 17
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = frmEntity.dsEntity
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 21
    Width = 19
  end
  object dbtEntityName: TcxDBLabel
    Left = 146
    Top = 17
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = frmEntity.dsEntity
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 21
    Width = 128
  end
  object dbtCurrentLockDate: TcxDBLabel
    Left = 124
    Top = 40
    DataBinding.DataField = 'LOCKDATE'
    DataBinding.DataSource = frmEntity.dsEntity
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 21
    Width = 135
  end
end
