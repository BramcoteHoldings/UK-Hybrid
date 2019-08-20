object frmBillCredit: TfrmBillCredit
  Left = 560
  Top = 382
  Caption = 'Bill Credit Note'
  ClientHeight = 651
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1060
    651)
  PixelsPerInch = 96
  TextHeight = 15
  object lblBillFind: TLabel
    Left = 9
    Top = 37
    Width = 16
    Height = 15
    Caption = '&Bill'
    FocusControl = btnBillFind
  end
  object lblBill: TLabel
    Left = 80
    Top = 38
    Width = 3
    Height = 15
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblClient: TLabel
    Left = 156
    Top = 38
    Width = 171
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblMatterDesc: TLabel
    Left = 80
    Top = 55
    Width = 364
    Height = 14
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object Label2: TLabel
    Left = 9
    Top = 609
    Width = 26
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Fees:'
  end
  object lblTotalFees: TLabel
    Left = 101
    Top = 609
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
  end
  object Label3: TLabel
    Left = 111
    Top = 609
    Width = 48
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Disburse:'
  end
  object lblTotalDisb: TLabel
    Left = 224
    Top = 609
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
  end
  object Label5: TLabel
    Left = 377
    Top = 609
    Width = 40
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Sundry:'
  end
  object lblTotalSund: TLabel
    Left = 471
    Top = 609
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
  end
  object Label4: TLabel
    Left = 454
    Top = 37
    Width = 24
    Height = 15
    Caption = 'Date'
  end
  object Label1: TLabel
    Left = 9
    Top = 77
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label6: TLabel
    Left = 334
    Top = 77
    Width = 25
    Height = 15
    Caption = 'Type'
  end
  object Label7: TLabel
    Left = 235
    Top = 609
    Width = 64
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Anticipated:'
  end
  object lblTotalAntd: TLabel
    Left = 341
    Top = 609
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
  end
  object Label8: TLabel
    Left = 497
    Top = 609
    Width = 51
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Creditors:'
  end
  object lblTotalCred: TLabel
    Left = 629
    Top = 609
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
  end
  object sbarDetails: TStatusBar
    Left = 0
    Top = 632
    Width = 1060
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'Fees:'
        Width = 115
      end
      item
        Alignment = taRightJustify
        Text = 'Disburse:'
        Width = 115
      end
      item
        Alignment = taRightJustify
        Text = 'Anticipated:'
        Width = 115
      end
      item
        Alignment = taRightJustify
        Text = 'Sundry:'
        Width = 115
      end
      item
        Text = 'Creditors:'
        Width = 115
      end>
  end
  object btnBillFind: TBitBtn
    Left = 51
    Top = 34
    Width = 26
    Height = 23
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 0
    OnClick = btnBillFindClick
  end
  object tbDescr: TEdit
    Left = 77
    Top = 74
    Width = 250
    Height = 23
    TabOrder = 2
  end
  object cbCreditType: TComboBox
    Left = 386
    Top = 74
    Width = 232
    Height = 23
    Style = csDropDownList
    TabOrder = 3
  end
  object dbgrLedger: TcxGrid
    Left = 8
    Top = 103
    Width = 1044
    Height = 483
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    OnEnter = dbgrLedgerEnter
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownListStyle = lsEditFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Fees'
          'Disburse'
          'AntDisb'
          'Sundry'
          'Creditors')
        Properties.OnCloseUp = tvLedgerTYPEPropertiesCloseUp
        Width = 97
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Code (only applies to Fees)'
        DataBinding.FieldName = 'AUTHOR'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvLedgerLONGDESCPropertiesButtonClick
        Width = 183
      end
      object tvLedgerREFNO: TcxGridDBColumn
        Caption = 'Reference'
        DataBinding.FieldName = 'REFNO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = False
        Properties.OnButtonClick = tvLedgerREFNOPropertiesButtonClick
        Properties.OnValidate = tvLedgerREFNOPropertiesValidate
        Width = 116
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        Width = 310
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Tax rate'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTaxRate
        Width = 70
      end
      object tvLedgerAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Width = 108
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taRightJustify
        Width = 77
      end
      object tvLedgerAUTHOR: TcxGridDBColumn
        DataBinding.FieldName = 'AUTHOR'
        Visible = False
        VisibleForCustomization = False
      end
      object tvLedgerSUNDRYTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'SUNDRYTYPE'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 489
    Top = 34
    EditValue = 43697.5439903704d
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 1
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 129
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.ROWID, M.* FROM NMEMO M WHERE M.NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 195
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT ROWID, TYPE, REFNO, LONGDESC, REASON, AMOUNT, BILLED, '
      
        '       UNIQUEID, TAXCODE, TAX, TAXRATE, WITHHOLD, AUTHOR, SUNDRY' +
        'TYPE'
      'FROM LGRALLOC'
      'WHERE REFNO IS NULL')
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    Left = 85
    Top = 174
    object qryLedgerROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 40
    end
    object qryLedgerLONGDESC: TStringField
      FieldName = 'LONGDESC'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 400
    end
    object qryLedgerAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnChange = qryLedgerAMOUNTChange
    end
    object qryLedgerBILLED: TStringField
      FieldName = 'BILLED'
      Size = 1
    end
    object qryLedgerUNIQUEID: TLargeintField
      FieldName = 'UNIQUEID'
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      OnChange = qryLedgerTAXCODEChange
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerTAXRATE: TFloatField
      FieldName = 'TAXRATE'
    end
    object qryLedgerWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
    object qryLedgerAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 10
    end
    object qryLedgerSUNDRYTYPE: TStringField
      FieldName = 'SUNDRYTYPE'
      Size = 5
    end
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 90
    Top = 122
  end
  object qryFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO FEE (CREATED, DESCR, MINS, AUTHOR, PARTNER, RATE,'
      '  AMOUNT, NMATTER, BILLED, BANK_ACCT, NMEMO, '
      '  DEPT, EMP_TYPE, UNITS, INVOICEDATE, NCLIENT, FILEID,'
      
        '  TAXCODE, TAX, PRIVATE, TYPE, PROGRAM_NAME, VERSION, EMPCODE, V' +
        'ALUE)'
      'VALUES'
      '  (:CREATED, :DESCR, 0, :AUTHOR, :PARTNER, 0,'
      '  :AMOUNT, :NMATTER, '#39'Y'#39', :BANK_ACCT, :NMEMO, '
      '  :DEPT, :EMP_TYPE, 0, :INVOICEDATE, :NCLIENT, :FILEID,'
      
        '  :TAXCODE, :TAX, '#39'Y'#39', '#39'wo'#39', :PROGRAM_NAME, :VERSION, :EMPCODE, ' +
        ':VALUE)')
    Left = 275
    Top = 188
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
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARTNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
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
        Name = 'INVOICEDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
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
      end
      item
        DataType = ftUnknown
        Name = 'VALUE'
        Value = nil
      end>
  end
  object qryLastCreditNote: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE ENTITY SET '
      '  LASTCREDITNOTE = :LASTCREDITNOTE'
      'WHERE CODE = :ENTITY')
    Left = 336
    Top = 178
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LASTCREDITNOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qrySundry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY'
      ' (ACCT, CREATED, AMOUNT, BILLED, DESCR, NMATTER, NCLIENT,'
      '  NMEMO, TYPE, PRIVATE, FILEID, TAXCODE, TAX)'
      'VALUES'
      ' (:ACCT, :CREATED, :AMOUNT, '#39'Y'#39', :DESCR, :NMATTER, :NCLIENT,'
      '  :NMEMO, '#39'wo'#39', '#39'N'#39', :FILEID, :TAXCODE, :TAX)')
    Left = 378
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
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
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end>
  end
  object popGrid: TPopupMenu
    Left = 403
    Top = 201
    object popGridRemove: TMenuItem
      Caption = '&Remove'
      OnClick = popGridRemoveClick
    end
  end
  object procBillCreate: TUniStoredProc
    StoredProcName = 'BILL_CREATE'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := BILL_CREATE(:P_ENTITY, :P_NMATTER, :P_ADDFEES, :P_A' +
        'DDDISB, :P_ADDANTD, :P_ADDSUND, :P_ADDUPCRED, :P_ADDFEESUNDRIES,' +
        ' :P_ADDDISBSUNDRIES, :P_BILLTEMPLATE, :P_CREATED, :P_ADDSERVICEF' +
        'EE, :P_CREATEDBY);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 667
    Top = 65535
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_ENTITY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_NMATTER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISB'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDANTD'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSUND'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDUPCRED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDFEESUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDDISBSUNDRIES'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_BILLTEMPLATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_CREATED'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_ADDSERVICEFEE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_CREATEDBY'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_CREATE'
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 797
    Top = 13
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
  object qryTaxRate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code from taxtype')
    Left = 200
    Top = 337
  end
  object dsTaxRate: TUniDataSource
    DataSet = qryTaxRate
    Left = 265
    Top = 336
  end
  object qryFeeDist: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feeDIST'
      'where nmemo = :nmemo'
      'and alloc_amt > 0')
    Left = 806
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryFeeDistInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'insert into feedist (nmemo, author, nmatter, dept, matter_dept, ' +
        'receipt_amt, name, created_date)'
      'values'
      
        '(:nmemo, :author, :nmatter, :dept, :matter_dept, :receipt_amt, :' +
        'name, sysdate)')
    Left = 616
    Top = 93
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'matter_dept'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'receipt_amt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
  end
  object qryBillRV: TUniSQL
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO SET'
      '  DISPATCHED = :DISPATCHED,'
      '  FEES = :FEES,'
      '  DISB = :DISB,'
      '  ANTD = :ANTD,'
      '  SUND = :SUND,'
      '  UPCRED = :UPCRED,'
      '  FEES_PAID = :FEES,'
      '  DISB_PAID = :DISB,'
      '  ANTD_PAID = :ANTD,'
      '  SUND_PAID = :SUND,'
      '  UPCRED_PAID = :UPCRED,'
      '  EXPPAYMENT = :DISPATCHED,'
      '  DEBTORS = :DEBTORS,'
      '  REFNO = :REFNO,'
      '  CREDITTYPE = :CREDITTYPE,'
      '  INV_NOTE = :INV_NOTE,'
      '  TAX = :TAX,'
      '  TAX_PAID = :TAX,'
      '  FEESTAX = :FEESTAX,'
      '  DISBTAX = :DISBTAX,'
      '  ANTDTAX = :ANTDTAX,'
      '  SUNDTAX = :SUNDTAX,'
      '  UPCREDTAX = :UPCREDTAX,'
      '  FEESTAX_PAID = :FEESTAX,'
      '  DISBTAX_PAID = :DISBTAX,'
      '  ANTDTAX_PAID = :ANTDTAX,'
      '  SUNDTAX_PAID = :SUNDTAX,'
      '  UPCREDTAX_PAID = :UPCREDTAX,'
      '  RV_TYPE = '#39'X'#39','
      '  TRUST = 0,'
      '  RV_NMEMO = :RV_NMEMO'
      'WHERE NMEMO = :NMEMO')
    Left = 278
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DISPATCHED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEBTORS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREDITTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'INV_NOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RV_NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 480
    Top = 136
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 529
      FloatTop = 278
      FloatClientWidth = 51
      FloatClientHeight = 24
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOk'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCancel'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkPrint'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnOk: TdxBarButton
      Caption = 'Create'
      Category = 0
      Enabled = False
      Hint = 'Create Bill Credit Note'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object btnCancel: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      OnClick = btnCancelClick
    end
    object chkPrint: TcxBarEditItem
      Caption = 'Print Credit Note '
      Category = 0
      Hint = 'Print Credit Note'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = False
    end
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.FILEID, DESCR, AMOUNT, ACCT, ALLOC.NMATTER, NRECEIP' +
        'T, '
      '       NJOURNAL, NMEMO, CREATED, NCLIENT, PAYER, REFNO, TRUST, '
      '       TYPE, BILLED, CLEARED, NALLOC, FEE,'
      '       CLIENT_NAME, MATTER_DESC, OVERDRAWN, SPEC_PURPOSE, TAX, '
      '       TAXCODE, SUNDRYTYPE, PRIORBALANCE, BANK, '
      
        '       NINVOICE_PAID, UPCRED, BILLED_AMOUNT, BILLED_TAX_AMOUNT, ' +
        'BILLED, ROWID '
      'FROM ALLOC '
      'WHERE 1 = 2')
    CachedUpdates = True
    Left = 520
    Top = 372
  end
end
