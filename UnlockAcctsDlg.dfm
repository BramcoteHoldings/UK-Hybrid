object frmUnlockAccounts: TfrmUnlockAccounts
  Left = 642
  Top = 265
  BorderStyle = bsDialog
  Caption = 'Unlock Accounts'
  ClientHeight = 199
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 7
    Top = 7
    Width = 282
    Height = 150
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 19
    Top = 19
    Width = 32
    Height = 13
    Caption = 'Entity '
  end
  object dbtEntityCode: TDBText
    Left = 123
    Top = 19
    Width = 24
    Height = 15
    DataField = 'CODE'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dbtEntityName: TDBText
    Left = 156
    Top = 19
    Width = 126
    Height = 12
    DataField = 'NAME'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 19
    Top = 42
    Width = 100
    Height = 13
    Caption = 'Currently Locked to'
  end
  object dbtCurrentLockDate: TDBText
    Left = 123
    Top = 42
    Width = 79
    Height = 12
    AutoSize = True
    DataField = 'LOCKDATE'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 73
    Top = 167
    Width = 70
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 148
    Top = 167
    Width = 69
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object gbUnlock: TGroupBox
    Left = 19
    Top = 70
    Width = 256
    Height = 75
    Caption = 'Unlock Accounts for this Entity'
    TabOrder = 2
    object rbToDate: TRadioButton
      Left = 23
      Top = 19
      Width = 105
      Height = 15
      Caption = 'Back to'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbToDateClick
    end
    object rbRemove: TRadioButton
      Left = 23
      Top = 46
      Width = 105
      Height = 16
      Caption = 'Remove All Locks'
      TabOrder = 1
      OnClick = rbToDateClick
    end
    object dtmBackTo: TDateTimePicker
      Left = 153
      Top = 17
      Width = 80
      Height = 22
      Date = 37550.631448379600000000
      Time = 37550.631448379600000000
      TabOrder = 2
    end
  end
end
