object frmYearEnd2: TfrmYearEnd2
  Left = 294
  Top = 199
  BorderStyle = bsDialog
  Caption = 'Profit and Loss Year End Close 1'
  ClientHeight = 195
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 7
    Top = 135
    Width = 113
    Height = 15
    Caption = 'Update Year End as at'
  end
  object mmoMessage: TMemo
    Left = 7
    Top = 7
    Width = 349
    Height = 115
    Color = clInfoBk
    Ctl3D = False
    Lines.Strings = (
      
        'This is the second part of the year end closing procedure. It wi' +
        'll '
      'create a journal for the opening balances of your balance sheet.'
      ''
      'Before running this, you must have performed the Year End 1'
      'procedure and journaled the resulting Profit and Loss Summary'
      'to the Partner'#39's equity ledgers, and closed the drawing and '
      'other equity ledgers to the main equity ledger.')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object btnOK: TBitBtn
    Left = 213
    Top = 164
    Width = 70
    Height = 24
    Caption = '&OK'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 286
    Top = 164
    Width = 70
    Height = 24
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object dtpYearEnd: TDateTimePicker
    Left = 149
    Top = 135
    Width = 90
    Height = 23
    Date = 37072.851911435200000000
    Time = 37072.851911435200000000
    TabOrder = 3
  end
  object qryYearEnd: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 272
    Top = 16
  end
  object qryChart: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT ADDTO FROM CHART WHERE ADDTO IS NOT NULL')
    Left = 304
    Top = 16
  end
  object qryJournalInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL'
      '  (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, '
      '   TRUST, SYSTEM_DATE)'
      'VALUES'
      '  (:CREATED, :ACCT, :AMOUNT, :NJOURNAL, :REASON, :TYPE, '
      '   '#39'G'#39', SysDate)')
    Left = 150
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REASON'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end>
  end
  object qryTransitemInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO TRANSITEM'
      '  (ACCT, AMOUNT, CHART, CREATED, DESCR, NACCOUNT, NJOURNAL,'
      '   REFNO, NOWNER, OWNER_CODE, WHO)'
      'VALUES'
      
        '  (:ACCT, :AMOUNT, :CHART, :CREATED, :DESCR, :NACCOUNT, :NJOURNA' +
        'L,'
      '   :REFNO, :NOWNER, :OWNER_CODE, :WHO)')
    Left = 329
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NACCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OWNER_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WHO'
        Value = nil
      end>
  end
end
