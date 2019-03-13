object frmUnrollAccounts: TfrmUnrollAccounts
  Left = 884
  Top = 344
  BorderStyle = bsDialog
  Caption = 'Unroll Accounts'
  ClientHeight = 161
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 7
    Top = 7
    Width = 306
    Height = 119
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
    Left = 141
    Top = 21
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
    Left = 174
    Top = 21
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
    Width = 114
    Height = 13
    Caption = 'Currently Rolled up to'
  end
  object dbtCurrentRollupDate: TDBText
    Left = 141
    Top = 44
    Width = 86
    Height = 12
    AutoSize = True
    DataField = 'LAST_ROLLOVER'
    DataSource = frmEntity.dsEntity
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 22
    Top = 82
    Width = 269
    Height = 39
    Alignment = taCenter
    Caption = 
      'This will unroll all accounts for this entity to the previous ro' +
      'llup date.  Do you want to proceed?'
    WordWrap = True
  end
  object Label4: TLabel
    Left = 19
    Top = 60
    Width = 107
    Height = 13
    Caption = 'Previous Rollup Date'
  end
  object dbtPreviousRollup: TDBText
    Left = 141
    Top = 62
    Width = 70
    Height = 12
    AutoSize = True
    DataField = 'PREV_ROLLOVER'
    DataSource = dsPreviousRollup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 83
    Top = 130
    Width = 70
    Height = 24
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 158
    Top = 130
    Width = 69
    Height = 24
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object qryPreviousRollup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT MAX(CREATED) AS PREV_ROLLOVER'
      'FROM TRANSITEM '
      'WHERE ACCT = :CODE AND'
      'CHART = :PROFIT_APPR_ACCT'
      'AND CREATED < :LAST_ROLLOVER'
      'AND OWNER_CODE = '#39'PAJ'#39)
    Left = 220
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROFIT_APPR_ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LAST_ROLLOVER'
        Value = nil
      end>
  end
  object dsPreviousRollup: TDataSource
    DataSet = qryPreviousRollup
    Left = 270
    Top = 40
  end
end
