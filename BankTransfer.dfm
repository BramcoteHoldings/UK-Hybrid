object frmTransferMoney: TfrmTransferMoney
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Transfer Money'
  ClientHeight = 309
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 27
    Top = 18
    Width = 69
    Height = 15
    Caption = 'Transfer Date'
  end
  object Label4: TLabel
    Left = 27
    Top = 192
    Width = 44
    Height = 15
    Caption = 'Amount'
  end
  object Label5: TLabel
    Left = 29
    Top = 224
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object dtpDate: TDateTimePicker
    Left = 134
    Top = 15
    Width = 155
    Height = 22
    Date = 42064.579310601850000000
    Time = 42064.579310601850000000
    TabOrder = 0
  end
  object ceAmount: TcxCurrencyEdit
    Left = 99
    Top = 189
    TabOrder = 1
    Width = 155
  end
  object tbDesc: TcxTextEdit
    Left = 99
    Top = 221
    TabOrder = 2
    OnKeyPress = tbDescKeyPress
    Width = 326
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 50
    Width = 400
    Height = 63
    Caption = 'Transfer Money From'
    TabOrder = 3
    object Label1: TLabel
      Left = 17
      Top = 27
      Width = 26
      Height = 15
      Caption = 'Bank'
    end
    object lblGLFromDesc: TLabel
      Left = 227
      Top = 57
      Width = 3
      Height = 15
    end
    object cmbBankFrom: TcxLookupComboBox
      Left = 89
      Top = 24
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCT'
      Properties.ListColumns = <
        item
          FieldName = 'BANKNAME'
        end
        item
          FieldName = 'ACCT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsFromBank
      Properties.OnCloseUp = cmbBankFromPropertiesCloseUp
      TabOrder = 0
      Width = 300
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 119
    Width = 401
    Height = 61
    Caption = 'Transfer money To'
    TabOrder = 4
    object Label2: TLabel
      Left = 18
      Top = 26
      Width = 26
      Height = 15
      Caption = 'Bank'
    end
    object lblGLToDesc: TLabel
      Left = 227
      Top = 57
      Width = 3
      Height = 15
    end
    object cmbBankTo: TcxLookupComboBox
      Left = 90
      Top = 23
      Properties.KeyFieldNames = 'ACCT'
      Properties.ListColumns = <
        item
          FieldName = 'BANKNAME'
        end
        item
          FieldName = 'ACCT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dstoBank
      Properties.OnCloseUp = cmbBankToPropertiesCloseUp
      TabOrder = 0
      Width = 300
    end
  end
  object cxButton1: TcxButton
    Left = 323
    Top = 268
    Width = 80
    Height = 27
    Caption = 'Transfer'
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 409
    Top = 268
    Width = 81
    Height = 27
    Caption = 'Cancel'
    TabOrder = 6
    OnClick = cxButton2Click
  end
  object qryFromBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from '
      'bank '
      'where trust = '#39'G'#39
      'and entity = :entity')
    Left = 426
    Top = 71
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object qryToBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from '
      'bank '
      'where trust = '#39'G'#39
      'and entity = :entity')
    Left = 315
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsFromBank: TUniDataSource
    DataSet = qryFromBank
    Left = 367
    Top = 74
  end
  object dstoBank: TUniDataSource
    DataSet = qryToBank
    Left = 364
    Top = 175
  end
  object UniQuery3: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 37
    Top = 228
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID'
      'FROM '
      '  CHEQUE C'
      'WHERE '
      '  C.NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 296
    Top = 65535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' NAME, CASH_AT_BANK, LASTCHQ, CHEQUE, TRUST,'
      ' CL_BALANCE, BALANCE, ROWID'
      'FROM'
      ' BANK'
      'WHERE ACCT = :P_Code')
    Left = 379
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryBankBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.*, B.ROWID FROM BANK B')
    Left = 406
    Top = 138
  end
  object qryReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.*, R.ROWID '
      'FROM RECEIPT R '
      'WHERE R.NRECEIPT = :p_nreceipt')
    CachedUpdates = True
    Left = 112
    Top = 222
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nreceipt'
        Value = nil
      end>
  end
  object qryBankdepInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO BANKDEP'
      
        '  (ACCT, DEPOSIT_DATE, AMOUNT, LAST_NRECEIPT, NBANKDEP, RECONCIL' +
        'ED)'
      'VALUES'
      
        '  (:ACCT, :DEPOSIT_DATE, :AMOUNT, :LAST_NRECEIPT, :NBANKDEP, '#39'N'#39 +
        ')')
    Left = 170
    Top = 237
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPOSIT_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LAST_NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = nil
      end>
  end
  object qryBankClearance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'bank_clearance_days'
      'where code = :code')
    Left = 240
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM BANK')
    CachedUpdates = True
    Left = 404
    Top = 184
  end
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ACCT, "NAME", CASH_AT_BANK, RECEIPT, BALANCE, CL_BALANCE,' +
        ' TRUST, LASTRCP, CLEARANCE,BANK_CLEARANCE, ROWID'
      'FROM BANK '
      'WHERE ACCT = :P_Acct')
    Left = 255
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
end
