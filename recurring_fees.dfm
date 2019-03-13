object frmRecurringFees: TfrmRecurringFees
  Left = 328
  Top = 148
  BorderStyle = bsDialog
  Caption = 'Fee Creation'
  ClientHeight = 597
  ClientWidth = 1212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    1212
    597)
  PixelsPerInch = 120
  TextHeight = 19
  object cxGrid1: TcxGrid
    Left = 10
    Top = 7
    Width = 1184
    Height = 532
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRecurringFees
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$###,00.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = cxGrid1DBTableView1AMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 8
      FixedDataRows.SeparatorWidth = 8
      NewItemRow.SeparatorWidth = 8
      OptionsCustomize.ColumnFiltering = False
      OptionsView.NavigatorOffset = 68
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 16
      Preview.LeftIndent = 27
      Preview.RightIndent = 7
      object cxGrid1DBTableView1CREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 27
        Width = 144
      end
      object cxGrid1DBTableView1REASON: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'REASON'
        MinWidth = 27
        Width = 879
      end
      object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        MinWidth = 27
        Width = 141
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 912
    Top = 551
    Width = 129
    Height = 37
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akRight, akBottom]
    Caption = 'Create Fees'
    LookAndFeel.NativeStyle = True
    OptionsImage.Spacing = 5
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 1075
    Top = 550
    Width = 119
    Height = 36
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Spacing = 5
    TabOrder = 2
  end
  object qryRecurringFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select recurring_fees.*, recurring_fees.rowid'
      'from'
      'recurring_fees')
    CachedUpdates = True
    Left = 49
    Top = 102
    object qryRecurringFeesTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryRecurringFeesFILEID: TStringField
      FieldName = 'FILEID'
      Size = 12
    end
    object qryRecurringFeesREASON: TStringField
      FieldName = 'REASON'
      Size = 400
    end
    object qryRecurringFeesAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qryRecurringFeesUNIQUEID: TLargeintField
      FieldName = 'UNIQUEID'
    end
    object qryRecurringFeesCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryRecurringFeesUNITS: TIntegerField
      FieldName = 'UNITS'
    end
    object qryRecurringFeesRATE: TFloatField
      FieldName = 'RATE'
    end
    object qryRecurringFeesAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qryRecurringFeesEMPCODE: TStringField
      FieldName = 'EMPCODE'
      Size = 3
    end
    object qryRecurringFeesTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 8
    end
    object qryRecurringFeesTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryRecurringFeesTAXRATE: TFloatField
      FieldName = 'TAXRATE'
    end
    object qryRecurringFeesWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
    object qryRecurringFeesNMATTER: TLargeintField
      FieldName = 'NMATTER'
    end
    object qryRecurringFeesTIME_TYPE: TStringField
      FieldName = 'TIME_TYPE'
      FixedChar = True
      Size = 1
    end
    object qryRecurringFeesFEE_TEMPLATE: TStringField
      FieldName = 'FEE_TEMPLATE'
      Size = 15
    end
    object qryRecurringFeesMINS: TLargeintField
      FieldName = 'MINS'
    end
    object qryRecurringFeesITEMS: TLargeintField
      FieldName = 'ITEMS'
    end
    object qryRecurringFeesUNIT: TStringField
      FieldName = 'UNIT'
      Size = 6
    end
    object qryRecurringFeesTASK_AMOUNT: TFloatField
      FieldName = 'TASK_AMOUNT'
    end
    object qryRecurringFeesBILLTYPE: TStringField
      FieldName = 'BILLTYPE'
      Size = 22
    end
    object qryRecurringFeesFEEBASIS: TStringField
      FieldName = 'FEEBASIS'
    end
    object qryRecurringFeesEMP_TYPE: TStringField
      FieldName = 'EMP_TYPE'
      Size = 3
    end
    object qryRecurringFeesVERSION: TStringField
      FieldName = 'VERSION'
      Size = 10
    end
    object qryRecurringFeesSYSTEM_DATE: TDateTimeField
      FieldName = 'SYSTEM_DATE'
    end
    object qryRecurringFeesROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsRecurringFees: TUniDataSource
    DataSet = qryRecurringFees
    Left = 108
    Top = 101
  end
  object qryFeeInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO FEE'
      
        '  (CREATED, DESCR, UNITS, MINS, UNIT, AUTHOR, RATE, NMATTER, NCL' +
        'IENT'
      '  , BILLED, TYPE, PARTNER, FILEID, BANK_ACCT, DEPT, EMP_TYPE'
      
        '  , PRIVATE, TAXCODE, AMOUNT, TAX, TIME_TYPE, TASK, ITEMS, TASK_' +
        'AMOUNT, NFEE'
      '  , LABELCOLOUR, PROGRAM_NAME, VERSION,EMPCODE)'
      'VALUES'
      
        '  (:CREATED, :DESCR, :UNITS, :MINS, :UNIT, :AUTHOR, :RATE, :NMAT' +
        'TER, :NCLIENT'
      '  , '#39'N'#39', '#39'N'#39', :PARTNER, :FILEID, :BANK_ACCT, :DEPT, :EMP_TYPE'
      
        '  , '#39'N'#39', :TAXCODE, :AMOUNT, :TAX, :TIME_TYPE, :TASK, :ITEMS, :TA' +
        'SK_AMOUNT, :NFEE'
      '  , :LABELCOLOUR, :PROGRAM_NAME, :VERSION, :EMPCODE)')
    CachedUpdates = True
    Left = 47
    Top = 181
    ParamData = <
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
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MINS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARTNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMP_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIME_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TASK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ITEMS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TASK_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NFEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABELCOLOUR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROGRAM_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMPCODE'
        Value = nil
      end>
  end
end
