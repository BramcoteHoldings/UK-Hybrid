object frmInvoiceList: TfrmInvoiceList
  Left = 412
  Top = 204
  Caption = 'Creditor Invoices'
  ClientHeight = 592
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pagInvoices: TcxPageControl
    Left = 0
    Top = 28
    Width = 1024
    Height = 564
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    OnChange = pagInvoicesChange
    ExplicitTop = 26
    ExplicitHeight = 566
    ClientRectBottom = 560
    ClientRectLeft = 4
    ClientRectRight = 1020
    ClientRectTop = 24
    object tabInvoices: TcxTabSheet
      Caption = 'Invoices'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrInvoices: TcxGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 329
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvInvoices: TcxGridDBTableView
          PopupMenu = popGrid
          OnMouseDown = tvInvoicesMouseDown
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = tvInvoicesCellClick
          OnFocusedRecordChanged = tvInvoicesFocusedRecordChanged
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsAccounts
          DataController.KeyFieldNames = 'NINVOICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              OnGetText = tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
              FieldName = 'OWING'
              Column = tvInvoicesOWING
            end
            item
              Kind = skCount
              OnGetText = tvInvoicesTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
              FieldName = 'REFNO'
              Column = tvInvoicesREFNO
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soNullIgnore, soSelectedRecords]
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 46
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object tvInvoicesINCLUDE: TcxGridDBColumn
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.OnEditValueChanged = tvInvoicesINCLUDEPropertiesEditValueChanged
            MinWidth = 19
            Width = 19
          end
          object tvInvoicesNAME: TcxGridDBColumn
            Caption = 'Creditor'
            DataBinding.FieldName = 'NAME'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 112
          end
          object tvInvoicesREFNO: TcxGridDBColumn
            Caption = 'Refno'
            DataBinding.FieldName = 'REFNO'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 110
          end
          object tvInvoicesACCT: TcxGridDBColumn
            Caption = 'Entity'
            DataBinding.FieldName = 'ACCT'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 54
          end
          object tvInvoicesINVOICE_DATE: TcxGridDBColumn
            Caption = 'Invoice Date'
            DataBinding.FieldName = 'INVOICE_DATE'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 108
          end
          object tvInvoicesDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 88
          end
          object tvInvoicesDUE_DATE: TcxGridDBColumn
            Caption = 'Due'
            DataBinding.FieldName = 'DUE_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 110
          end
          object tvInvoicesOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 100
          end
          object tvInvoicesPaid: TcxGridDBColumn
            DataBinding.FieldName = 'Paid'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 100
          end
          object tvInvoicesPAY_DATE: TcxGridDBColumn
            Caption = 'Date Paid'
            DataBinding.FieldName = 'LAST_PAYMENT'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
          end
          object tvInvoicesHeld: TcxGridDBColumn
            DataBinding.FieldName = 'Held'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 61
          end
          object tvInvoicesAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 133
          end
          object tvInvoicesINVOICE_COPY: TcxGridDBColumn
            Caption = 'Invoice'
            DataBinding.FieldName = 'INVOICE_COPY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekBlob
            Properties.ImmediateDropDownWhenActivated = False
            Properties.PopupHeight = 186
            Properties.PopupWidth = 232
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Width = 68
          end
        end
        object dbgrInvoicesLevel1: TcxGridLevel
          GridView = tvInvoices
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 329
        Width = 8
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        AlignSplitter = salTop
        PositionAfterOpen = 28
        MinSize = 28
        Control = dbgrInvoices
      end
      object dbgrTransactions: TcxGrid
        Left = 0
        Top = 336
        Width = 1017
        Height = 203
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object tvTransactions: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsTransactions
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.NavigatorOffset = 46
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object tvTransactionsCHART: TcxGridDBColumn
            Caption = 'Chart'
            DataBinding.FieldName = 'CHART'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 19
            Width = 70
          end
          object tvTransactionsCREATED: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            PropertiesClassName = 'TcxDateEditProperties'
            MinWidth = 19
            Options.Editing = False
          end
          object tvTransactionsFILEID: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 19
          end
          object tvTransactionsOWNER_CODE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'OWNER_CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 19
            Width = 79
          end
          object tvTransactionsCHQNO: TcxGridDBColumn
            Caption = 'Cheque'
            DataBinding.FieldName = 'CHQNO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 19
            Width = 70
          end
          object tvTransactionsDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 19
            Width = 186
          end
          object tvTransactionsAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 19
            Width = 55
          end
        end
        object dbgrTransactionsLevel1: TcxGridLevel
          GridView = tvTransactions
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 7
        Top = 107
        Width = 45
        Height = 13
        Caption = 'Creditor:'
      end
      object cbShowAll: TcxCheckBox
        Left = 272
        Top = 104
        AutoSize = False
        Caption = 'Show All Invoices'
        Properties.Alignment = taRightJustify
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 20
        Width = 109
      end
      object editCreditor: TcxButtonEdit
        Left = 69
        Top = 104
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ValidateOnEnter = False
        Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 181
      end
      object fraInvoiceSearch: TcxGroupBox
        Left = 6
        Top = 183
        Caption = 'Find Creditors by Invoice Numbers'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 48
        Width = 314
        object Label4: TLabel
          Left = 7
          Top = 23
          Width = 46
          Height = 13
          Caption = 'Invoice #'
          Transparent = True
        end
        object tbInvoiceNumber: TcxTextEdit
          Left = 75
          Top = 20
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 229
        end
      end
      object fraActive: TcxRadioGroup
        Left = 6
        Top = 235
        Caption = 'Creditor Status'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Active'
          end
          item
            Caption = 'Inactive'
          end
          item
            Caption = 'Both'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 42
        Width = 314
      end
      object fraEqual: TcxGroupBox
        Left = 6
        Top = 128
        Caption = 'Select Equal to'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 50
        Width = 314
        object Label7: TLabel
          Left = 7
          Top = 22
          Width = 72
          Height = 13
          Caption = 'Creditor Code'
          Transparent = True
        end
        object tbCreditorCode: TcxTextEdit
          Left = 82
          Top = 21
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 143
        end
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 10
        Width = 486
        Height = 90
        Caption = 'Date Range'
        TabOrder = 5
        object Label2: TLabel
          Left = 13
          Top = 44
          Width = 26
          Height = 13
          Caption = 'From'
          Transparent = True
        end
        object Label3: TLabel
          Left = 13
          Top = 66
          Width = 11
          Height = 13
          Caption = 'To'
          Transparent = True
        end
        object chkDateFrom: TCheckBox
          Left = 63
          Top = 43
          Width = 16
          Height = 16
          TabOrder = 0
        end
        object chkDateTo: TCheckBox
          Left = 63
          Top = 65
          Width = 16
          Height = 16
          TabOrder = 1
        end
        object dtpDateFrom: TDateTimePicker
          Left = 78
          Top = 41
          Width = 85
          Height = 22
          Date = 0.847006782409152900
          Time = 0.847006782409152900
          TabOrder = 2
        end
        object dtpDateTo: TDateTimePicker
          Left = 78
          Top = 63
          Width = 85
          Height = 22
          Date = 0.847006782409152900
          Time = 0.847006782409152900
          TabOrder = 3
        end
        object dcToday: TDateChangeButton
          Left = 165
          Top = 41
          Width = 75
          Height = 19
          Caption = 'Today'
          TabOrder = 4
          TabStop = False
          ChangeType = ctToday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton2: TDateChangeButton
          Left = 165
          Top = 63
          Width = 75
          Height = 20
          Caption = 'Yesterday'
          TabOrder = 5
          TabStop = False
          ChangeType = ctYesterday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton4: TDateChangeButton
          Left = 241
          Top = 41
          Width = 74
          Height = 19
          Caption = 'This Week'
          TabOrder = 6
          TabStop = False
          ChangeType = ctThisWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton3: TDateChangeButton
          Left = 241
          Top = 63
          Width = 74
          Height = 20
          Caption = 'Last Week'
          TabOrder = 7
          TabStop = False
          ChangeType = ctLastWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton5: TDateChangeButton
          Left = 316
          Top = 41
          Width = 74
          Height = 19
          Caption = 'This Month'
          TabOrder = 8
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton6: TDateChangeButton
          Left = 316
          Top = 63
          Width = 74
          Height = 20
          Caption = 'Last Month'
          TabOrder = 9
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton7: TDateChangeButton
          Left = 391
          Top = 41
          Width = 74
          Height = 19
          Caption = 'Year To Date'
          TabOrder = 10
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton8: TDateChangeButton
          Left = 391
          Top = 63
          Width = 74
          Height = 20
          Caption = 'Last Year'
          TabOrder = 11
          TabStop = False
          ChangeType = ctLastYear
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object GroupBox2: TGroupBox
          Left = 7
          Top = 15
          Width = 238
          Height = 23
          TabOrder = 12
          object rbDueDate: TRadioButton
            Left = 6
            Top = 4
            Width = 97
            Height = 16
            Caption = 'Use Due Date'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object rbInvoiceDate: TRadioButton
            Left = 107
            Top = 4
            Width = 105
            Height = 16
            Caption = 'Use Invoice Date'
            TabOrder = 1
          end
        end
      end
    end
  end
  object qryAccounts: TUniQuery
    UpdatingTable = 'invoice'
    SmartFetch.Enabled = True
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   i.ncheque, i.ROWID, TRUNC (i.invoice_date) AS invoice_d' +
        'ate, i.owing,'
      
        '         i.refno, i.descr, TRUNC (i.due_date) AS due_date, i.hol' +
        'd, i.ninvoice,'
      '         i.amount, i.acct, i.invoice_copy, i.invoice_copy_ext,'
      '         (i.amount - i.owing) AS paid,'
      '         CASE'
      '            WHEN (i.hold = '#39'Y'#39')'
      '               THEN '#39'Held'#39
      '            ELSE NULL'
      
        '         END AS held, p.NAME, i.ncreditor, c.active, i.last_paym' +
        'ent, i.hold'
      '    FROM phonebook p, creditor c, invoice i'
      
        '   WHERE i.owing <> 0 AND i.ncreditor = c.ncreditor AND c.nname ' +
        '= p.nname'
      'ORDER BY i.due_date ASC')
    AfterOpen = qryAccountsAfterOpen
    BeforeClose = qryAccountsBeforeClose
    BeforeScroll = qryAccountsBeforeScroll
    AfterScroll = qryAccountsAfterScroll
    Left = 469
    Top = 194
  end
  object dsAccounts: TUniDataSource
    DataSet = qryAccounts
    Left = 471
    Top = 244
  end
  object qryTransactions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  nvl(CH.COMPONENT_CODE_DISPLAY,T.CHART)as CHART,'
      
        '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_CODE, '#39'INVOI' +
        'CE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39') as OWNER' +
        '_CODE,'
      
        '   ( select chqno from cheque where cheque.ncheque = T.NOWNER AN' +
        'D T.OWNER_CODE = '#39'CHEQUE'#39') AS CHQNO,'
      '  T.DESCR, T.AMOUNT, M.FILEID, T.CREATED'
      'FROM'
      '  TRANSITEM T,  MATTER M,CHART CH'
      'WHERE'
      '--  T.ACCT = :ACCT'
      '--AND'
      '  T.NINVOICE = :NINVOICE'
      'AND T.CHART = CH.CODE'
      'AND T.ACCT = CH.BANK'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'order by 2 desc, 1'
      ''
      ''
      '/*'
      'SELECT'
      '  nvl(CH.COMPONENT_CODE_DISPLAY,T.CHART)as CHART,'
      
        '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_CODE, '#39'INVOI' +
        'CE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39') as OWNER' +
        '_CODE,'
      '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', C.CHQNO, '#39#39') AS CHQNO,'
      '  T.DESCR, T.AMOUNT, M.FILEID, C.CREATED'
      'FROM'
      '  TRANSITEM T, CHEQUE C, MATTER M,CHART CH'
      'WHERE'
      '  T.ACCT = :ACCT'
      'AND'
      '  T.NINVOICE = :NINVOICE'
      'AND T.CHART = CH.CODE'
      'AND T.ACCT = CH.BANK'
      'AND'
      '  T.NOWNER = C.NCHEQUE(+)'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'AND T.OWNER_CODE = '#39'CHEQUE'#39
      'union all'
      'SELECT'
      '  nvl(CH.COMPONENT_CODE_DISPLAY,T.CHART)as CHART,'
      
        '  DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_CODE, '#39'INVOI' +
        'CE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39') as OWNER' +
        '_CODE,'
      '   '#39#39' AS CHQNO,'
      '  T.DESCR, T.AMOUNT, M.FILEID, T.CREATED'
      'FROM'
      '  TRANSITEM T,  MATTER M,CHART CH'
      'WHERE'
      '  T.ACCT = :ACCT'
      'AND'
      '  T.NINVOICE = :NINVOICE'
      'AND T.CHART = CH.CODE'
      'AND T.ACCT = CH.BANK'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'order by 2 desc, 1 '
      '*/')
    BeforeOpen = qryTransactionsBeforeOpen
    Left = 486
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object dsTransactions: TUniDataSource
    DataSet = qryTransactions
    Left = 486
    Top = 449
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Print'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 599
    Top = 181
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
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 724
      FloatTop = 371
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnCreditNote'
        end
        item
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          Visible = True
          ItemName = 'tbtnPayInvoice'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnClose'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic2'
        end>
      MultiLine = True
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object popPrintTrialBalance: TdxBarButton
      Caption = 'Trial Balance...'
      Category = 0
      Hint = 'Trial Balance'
      Visible = ivAlways
      OnClick = popPrintTrialBalanceClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Transactions'
      Category = 0
      Hint = 'Transactions'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object tbtnExport2Excel: TdxBarButton
      Caption = 'Export to Excel'
      Category = 0
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = tbtnExport2ExcelClick
    end
    object btnClose: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btnCloseClick
    end
    object tbtnReverse: TdxBarButton
      Caption = 'Reverse'
      Category = 1
      Enabled = False
      Hint = 'Reverse'
      Visible = ivAlways
      ImageIndex = 40
      OnClick = tbtnReverseClick
    end
    object tbtnPayInvoice: TdxBarButton
      Caption = 'Pay Selected'
      Category = 1
      Enabled = False
      Hint = 'Pay Selected'
      Visible = ivAlways
      ImageIndex = 38
      OnClick = tbtnPayInvoiceClick
    end
    object tbtnCreditNote: TdxBarButton
      Caption = 'CreditNote'
      Category = 1
      Enabled = False
      Hint = 'CreditNote'
      Visible = ivAlways
      ImageIndex = 39
    end
    object btnHold: TdxBarButton
      Caption = 'Hold'
      Category = 1
      Hint = 'Hold'
      Visible = ivAlways
      OnClick = btnHoldClick
    end
    object btnI: TdxBarButton
      Caption = 'Change Invoice Due Date...'
      Category = 1
      Hint = 'Change Invoice Due Date'
      Visible = ivAlways
      OnClick = btnIClick
    end
    object tbtnPrint: TdxBarButton
      Caption = 'Print'
      Category = 1
      Enabled = False
      Hint = 'Print'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popPrint
      ImageIndex = 29
      OnClick = tbtnPrintClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'View Attached Invoice'
      Category = 1
      Hint = 'View Attached Invoice'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Total selected = $0.00'
      Category = 1
      Hint = 'Total selected'
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'Number of Records Selected = 0'
      Category = 1
      Hint = 'Number of Records Selected = 0'
      Visible = ivAlways
    end
  end
  object popPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'popPrintTrialBalance'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 718
    Top = 2
    PixelsPerInch = 96
  end
  object popPay: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end>
    UseOwnFont = False
    Left = 873
    Top = 39
    PixelsPerInch = 96
  end
  object popGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
        ItemName = 'btnHold'
      end
      item
        Visible = True
        ItemName = 'tbtnPayInvoice'
      end
      item
        Visible = True
        ItemName = 'tbtnReverse'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnI'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnExport2Excel'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'popPrintTrialBalance'
      end>
    UseOwnFont = False
    Left = 159
    Top = 275
    PixelsPerInch = 96
  end
  object plInvoices: TppDBPipeline
    DataSource = dsInvoices
    UserName = 'plInvoices'
    Left = 752
    Top = 98
  end
  object rptCreditorTrans: TppReport
    AutoStop = False
    DataPipeline = plInvoices
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Creditor Transactions Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 822
    Top = 101
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plInvoices'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Creditor Transactions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = [fsBold, fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6646
        mmLeft = 60590
        mmTop = 3704
        mmWidth = 58166
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Invoice Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 2117
        mmTop = 15610
        mmWidth = 22902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Refno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 40217
        mmTop = 15610
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Due Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 76729
        mmTop = 15610
        mmWidth = 16849
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Owing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 142610
        mmTop = 15610
        mmWidth = 12023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 174879
        mmTop = 15610
        mmWidth = 14563
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 20108
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plInvoices
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 43921
        mmTop = 1588
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'CHQNO'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 1588
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'DESCR_1'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 7144
        mmWidth = 189177
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'AMOUNT_1'
        DataPipeline = plInvoices
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 1588
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CHART'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 39158
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 74083
        mmTop = 1588
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'OWNER_CODE'
        DataPipeline = plInvoices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvoices'
        mmHeight = 4233
        mmLeft = 100542
        mmTop = 1588
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 1058
        mmWidth = 37888
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 180711
        mmTop = 1588
        mmWidth = 11091
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 529
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'NINVOICE'
      DataPipeline = plInvoices
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plInvoices'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Color = clSilver
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          Pen.Width = 2
          Shape = stRoundRect
          mmHeight = 20108
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'INVOICE_DATE'
          DataPipeline = plInvoices
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 2117
          mmWidth = 33867
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'REFNO'
          DataPipeline = plInvoices
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 42598
          mmTop = 2117
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'DUE_DATE'
          DataPipeline = plInvoices
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 79111
          mmTop = 2117
          mmWidth = 37306
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.mmPadding = 0
          DataField = 'OWING'
          DataPipeline = plInvoices
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 131234
          mmTop = 2117
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'DESCR'
          DataPipeline = plInvoices
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 7673
          mmWidth = 189707
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'AMOUNT'
          DataPipeline = plInvoices
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 11
          Font.Style = [fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plInvoices'
          mmHeight = 4233
          mmLeft = 161925
          mmTop = 2117
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          Border.mmPadding = 0
          Caption = 'Chart'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 3969
          mmTop = 14023
          mmWidth = 9186
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 43921
          mmTop = 14023
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Matter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 74083
          mmTop = 14023
          mmWidth = 10626
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          Border.mmPadding = 0
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 100542
          mmTop = 14023
          mmWidth = 7959
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = 'Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 113771
          mmTop = 14023
          mmWidth = 12912
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.mmPadding = 0
          Caption = 'Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4191
          mmLeft = 177007
          mmTop = 14023
          mmWidth = 13208
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryInvoices: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from'
      
        '(SELECT   invoice.ncheque, TRUNC (invoice.invoice_date) AS invoi' +
        'ce_date,'
      '         invoice.owing, invoice.refno, invoice.descr,'
      
        '         TRUNC (invoice.due_date) AS due_date, invoice.hold, inv' +
        'oice.ninvoice,'
      '         invoice.amount, invoice.acct'
      '    FROM invoice'
      '   WHERE '
      'case '
      '  when (:showall = 0) and invoice.owing <> 0'
      '    then 1'
      '  when (:showall = 1) and invoice.owing >= 0'
      '    then 1 '
      '  end = 1'
      'ORDER BY invoice.due_date ASC) a,'
      
        '(SELECT   NVL (chart.component_code_display, transitem.chart) AS' +
        ' chart,'
      '         DECODE (transitem.owner_code,'
      '                 '#39'CHEQUE'#39', '#39'Chq'#39','
      '                 '#39#39', transitem.owner_code,'
      '                 '#39'INVOICE'#39', '#39'Inv'#39','
      '                 '#39#39', transitem.owner_code,'
      '                 '#39'CREDIT_NOTE'#39', '#39'C/N'#39','
      '                 '#39#39
      '                ) AS owner_code,'
      '         (SELECT chqno'
      '            FROM cheque'
      '           WHERE cheque.ncheque = transitem.nowner'
      '             AND transitem.owner_code = '#39'CHEQUE'#39') AS chqno,'
      
        '         transitem.descr, transitem.amount, matter.fileid, trans' +
        'item.created,'
      '         transitem.ninvoice, transitem.acct'
      '    FROM chart, matter, transitem'
      '   WHERE transitem.chart = chart.code'
      '     AND transitem.acct = chart.bank'
      '     AND transitem.nmatter = matter.nmatter(+)'
      #9' AND transitem.NINVOICE is not null) b'
      'where'
      'a.NINVOICE = b.ninvoice '
      'and'
      'a.ACCT = b.acct'
      'ORDER BY 8, 12 DESC, 11'
      ''
      ''
      '/*'
      
        'SELECT   invoice.ncheque, TRUNC (invoice.invoice_date) AS invoic' +
        'e_date,'
      '         invoice.owing, invoice.refno, invoice.descr,'
      
        '         TRUNC (invoice.due_date) AS due_date, invoice.hold, inv' +
        'oice.ninvoice,'
      '         invoice.amount, invoice.acct'
      '    FROM invoice'
      '   WHERE invoice.ncreditor = :ncreditor AND invoice.owing <> 0'
      'ORDER BY invoice.due_date ASC'
      '*/')
    Left = 616
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'showall'
        Value = nil
      end>
  end
  object dsInvoices: TUniDataSource
    DataSet = qryInvoices
    Left = 685
    Top = 95
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 844
    Top = 277
  end
end
