object frmLedgers: TfrmLedgers
  Left = 528
  Top = 238
  Caption = 'General Ledger'
  ClientHeight = 677
  ClientWidth = 1258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagCashbook: TcxPageControl
    Left = 0
    Top = 28
    Width = 1258
    Height = 626
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    OnChange = pagCashbook1Change
    ClientRectBottom = 622
    ClientRectLeft = 4
    ClientRectRight = 1254
    ClientRectTop = 26
    object tabLedger: TcxTabSheet
      Caption = 'Ledger'
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 246
        Width = 1250
        Height = 350
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Label17: TLabel
          Left = 13
          Top = 7
          Width = 77
          Height = 17
          Caption = 'Transactions'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object grdTransactions: TcxGrid
          Left = 1
          Top = 1
          Width = 1248
          Height = 348
          Align = alClient
          PopupMenu = pmCreateCheque
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvTransactions: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsNaccounts
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Content = cxStyle1
            object tvTransactionsCREATED: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'CREATED'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              Width = 91
            end
            object tvTransactionsType: TcxGridDBColumn
              DataBinding.FieldName = 'Type'
              Width = 49
            end
            object tvTransactionsREFNO: TcxGridDBColumn
              Caption = 'Refno'
              DataBinding.FieldName = 'REFNO'
              Width = 71
            end
            object tvTransactionsDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Width = 230
            end
            object tvTransactionsCREDITORCODE: TcxGridDBColumn
              Caption = 'Creditor'
              DataBinding.FieldName = 'CREDITORCODE'
              Width = 76
            end
            object tvTransactionsDebit: TcxGridDBColumn
              DataBinding.FieldName = 'Debit'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 103
            end
            object tvTransactionsCredit: TcxGridDBColumn
              DataBinding.FieldName = 'Credit'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 102
            end
          end
          object grdTransactionsLevel1: TcxGridLevel
            GridView = tvTransactions
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 28
        Width = 1250
        Height = 210
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 1
        object grdLedgers: TcxGrid
          Left = 1
          Top = 1
          Width = 1248
          Height = 208
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvLedgers: TcxGridDBTableView
            OnDblClick = mnuFileEditClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = tvLedgersCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsCharts
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 5
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            OptionsView.Indicator = True
            OnColumnHeaderClick = tvLedgersColumnHeaderClick
            object tvLedgersCODE: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'CODE'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Filtering = False
              Width = 82
            end
            object tvLedgersREPORT_DESC: TcxGridDBColumn
              Caption = 'Report'
              DataBinding.FieldName = 'REPORT_DESC'
              Width = 228
            end
            object tvLedgersTYPEDESCR: TcxGridDBColumn
              Caption = 'Type'
              DataBinding.FieldName = 'TYPEDESCR'
              Width = 88
            end
            object tvLedgersBANK: TcxGridDBColumn
              Caption = 'Entity'
              DataBinding.FieldName = 'BANK'
              Width = 50
            end
            object tvLedgersDEFAULT_TAXCODE: TcxGridDBColumn
              Caption = 'Default Tax Code'
              DataBinding.FieldName = 'DEFAULT_TAXCODE'
              Width = 105
            end
            object tvLedgersOIFDEFAULTCODE: TcxGridDBColumn
              Caption = 'Default OIF Code'
              DataBinding.FieldName = 'OIFDEFAULTCODE'
              Visible = False
              Width = 100
            end
            object tvLedgersCHARTTYPE: TcxGridDBColumn
              Caption = 'Chart Type'
              DataBinding.FieldName = 'CHARTTYPE'
              Width = 81
            end
            object tvLedgersACCOUNTVALUE: TcxGridDBColumn
              Caption = 'Budget'
              DataBinding.FieldName = 'ACCOUNTVALUE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 88
            end
            object tvLedgersLKEY: TcxGridDBColumn
              DataBinding.FieldName = 'LKEY'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object grdLedgersLevel1: TcxGridLevel
            GridView = tvLedgers
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1250
        Height = 28
        Align = alTop
        TabOrder = 2
        DesignSize = (
          1250
          28)
        object Label16: TLabel
          Left = 8
          Top = 6
          Width = 48
          Height = 17
          Caption = 'Ledgers'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 914
          Top = 7
          Width = 35
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Search'
          FocusControl = tbLedgerSearch
          ExplicitLeft = 671
        end
        object Label6: TLabel
          Left = 1063
          Top = 7
          Width = 35
          Height = 15
          Anchors = [akTop, akRight]
          Caption = 'Report'
          FocusControl = tbReportSearch
          ExplicitLeft = 820
        end
        object tbLedgerSearch: TEdit
          Left = 951
          Top = 2
          Width = 95
          Height = 23
          Anchors = [akTop, akRight]
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = tbLedgerSearchChange
          OnKeyDown = tbLedgerSearchKeyDown
        end
        object tbReportSearch: TEdit
          Left = 1101
          Top = 3
          Width = 136
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 1
          OnChange = tbReportSearchChange
        end
        object chkGroupBy: TcxCheckBox
          Left = 77
          Top = 4
          Caption = 'Group by Type'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnClick = chkGroupByClick
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 238
        Width = 1250
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        AlignSplitter = salTop
        Control = Panel2
        ExplicitWidth = 8
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      DesignSize = (
        1250
        596)
      object cxGroupBox1: TcxGroupBox
        Left = 10
        Top = 143
        Caption = 'Ledgers'
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 90
        Width = 559
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 29
          Height = 15
          Caption = 'Types'
          Transparent = True
        end
        object Label14: TLabel
          Left = 8
          Top = 40
          Width = 80
          Height = 15
          Caption = 'To Report Level'
          Transparent = True
        end
        object Label8: TLabel
          Left = 224
          Top = 16
          Width = 107
          Height = 15
          Caption = 'Description Includes'
          Transparent = True
        end
        object Label12: TLabel
          Left = 224
          Top = 40
          Width = 43
          Height = 15
          Caption = 'Column'
          Transparent = True
        end
        object tbTypes: TEdit
          Left = 96
          Top = 16
          Width = 41
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object tbReportLevel: TEdit
          Left = 96
          Top = 40
          Width = 25
          Height = 23
          TabOrder = 1
        end
        object chkNonzero: TCheckBox
          Left = 8
          Top = 64
          Width = 142
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Exclude Zero Balances?'
          TabOrder = 2
          Visible = False
        end
        object tbColumn: TEdit
          Left = 352
          Top = 40
          Width = 25
          Height = 23
          TabOrder = 3
        end
        object tbChartDesc: TEdit
          Left = 352
          Top = 16
          Width = 113
          Height = 23
          TabOrder = 4
        end
        object chkShowBudgets: TCheckBox
          Left = 222
          Top = 64
          Width = 142
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Show Budgets?'
          TabOrder = 5
          Visible = False
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 495
        Top = 8
        Caption = 'Chart Totals'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Visible = False
        Height = 129
        Width = 185
        object Label11: TLabel
          Left = 15
          Top = 21
          Width = 52
          Height = 15
          Caption = 'DateFrom'
          Transparent = True
        end
        object Label15: TLabel
          Left = 15
          Top = 45
          Width = 36
          Height = 15
          Caption = 'DateTo'
          Transparent = True
        end
        object dtpdummyfrom: TDateTimePicker
          Left = 77
          Top = 17
          Width = 97
          Height = 23
          Date = 37288.665684965300000000
          Time = 37288.665684965300000000
          TabOrder = 0
        end
        object dtpdummyto: TDateTimePicker
          Left = 77
          Top = 41
          Width = 97
          Height = 23
          Date = 37315.665774340300000000
          Time = 37315.665774340300000000
          TabOrder = 1
        end
        object dummydt: TDateChangeButton
          Left = 11
          Top = 66
          Width = 80
          Height = 21
          Caption = 'Year To Date'
          TabOrder = 2
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpdummyfrom
          DateTo = dtpdummyto
        end
        object DateChangeButton10: TDateChangeButton
          Left = 93
          Top = 66
          Width = 80
          Height = 21
          Caption = 'This Month'
          TabOrder = 3
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpdummyfrom
          DateTo = dtpdummyto
        end
        object DateChangeButton9: TDateChangeButton
          Left = 10
          Top = 89
          Width = 80
          Height = 21
          Caption = 'Last Year'
          TabOrder = 4
          TabStop = False
          ChangeType = ctLastYear
          DateFrom = dtpdummyfrom
          DateTo = dtpdummyto
        end
        object DateChangeButton11: TDateChangeButton
          Left = 93
          Top = 89
          Width = 80
          Height = 21
          Caption = 'Last Month'
          TabOrder = 5
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpdummyfrom
          DateTo = dtpdummyto
        end
      end
      object btnClearAll: TcxButton
        Left = 1151
        Top = 563
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Clear &All'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360800000000000036000000280000002000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000FFFFFFFF808080FF808080FF808080FF808080FF808080FFFFFF
          FFFFFFFFFFFFFFFFFFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000080
          8000808080FF808080FF808080FF008080000080800000808000808080FF8080
          80FF808080FFFFFFFFFFFFFFFFFF008080000080800000808000008080000000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080008080
          80FF808080FFFFFFFFFFFFFFFFFF008080000080800000808000008080000080
          8000808080FF808080FFFFFFFFFFFFFFFFFF00808000008080000000FFFF0000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF008080000080800000808000808080FF8080
          80FF808080FF808080FFFFFFFFFFFFFFFFFF0080800000808000008080000080
          800000808000808080FF808080FFFFFFFFFF00808000008080000000FFFF0080
          80000000FFFF0000FFFF0000FFFF008080000080800000808000008080000080
          8000008080000000FFFF0000FFFF008080000080800000808000808080FFFFFF
          FFFF808080FF808080FF808080FFFFFFFFFFFFFFFFFF00808000008080000080
          80000080800000808000808080FFFFFFFFFFFFFFFFFF0000FFFF0000FFFF0080
          8000008080000000FFFF0000FFFF0000FFFF0080800000808000008080000080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF00808000808080FF808080FF808080FFFFFFFFFFFFFFFFFF008080000080
          80000080800000808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          800000808000008080000000FFFF0000FFFF0000FFFF00808000008080000080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF0080800000808000808080FF808080FF808080FFFFFFFFFFFFFFFFFF0080
          80000080800000808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          80000080800000808000008080000000FFFF0000FFFF0000FFFF008080000080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF008080000080800000808000808080FF808080FF808080FFFFFFFFFFFFFF
          FFFF0080800000808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000000FFFF0000FFFF0000FFFF0080
          800000808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFF00808000008080000080800000808000808080FF808080FF808080FFFFFF
          FFFFFFFFFFFF00808000808080FF808080FFFFFFFFFF0000FFFF0000FFFF0080
          800000808000008080000080800000808000008080000000FFFF0000FFFF0000
          FFFF00808000008080000000FFFF0000FFFF00808000808080FF808080FFFFFF
          FFFFFFFFFFFF00808000008080000080800000808000808080FF808080FF8080
          80FFFFFFFFFFFFFFFFFF808080FF808080FF00808000008080000000FFFF0000
          FFFF0080800000808000008080000080800000808000008080000000FFFF0000
          FFFF0000FFFF008080000000FFFF008080000080800000808000808080FF0080
          8000FFFFFFFFFFFFFFFF00808000008080000080800000808000808080FF8080
          80FF808080FFFFFFFFFF808080FFFFFFFFFF00808000008080000000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF0000FFFF008080000080800000808000808080FF8080
          80FF00808000FFFFFFFFFFFFFFFF008080000080800000808000008080008080
          80FF808080FF808080FF808080FF008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF00808000008080000080800000808000008080008080
          80FF808080FF00808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF808080FF808080FF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000080
          8000808080FF808080FF808080FF008080000080800000808000808080FF8080
          80FF808080FF0080800000808000008080000080800000808000008080000080
          800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000808080FF808080FF808080FF808080FF808080FF0080
          80000080800000808000008080000080800000808000}
        OptionsImage.NumGlyphs = 2
        TabOrder = 2
        OnClick = btnClearAllClick
      end
      object grpTrans: TcxGroupBox
        Left = 10
        Top = 240
        Caption = 'Transactions'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 160
        Width = 560
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 55
          Height = 15
          Caption = 'Date From'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 39
          Height = 15
          Caption = 'Date To'
          Transparent = True
        end
        object lblAmountFrom: TLabel
          Left = 2
          Top = 84
          Width = 105
          Height = 15
          Caption = 'Amount more than '
          Transparent = True
        end
        object Label5: TLabel
          Left = 2
          Top = 108
          Width = 96
          Height = 15
          Caption = 'Amount less than '
          Transparent = True
        end
        object Label4: TLabel
          Left = 2
          Top = 132
          Width = 107
          Height = 15
          Caption = 'Description includes'
          Transparent = True
        end
        object Label7: TLabel
          Left = 264
          Top = 88
          Width = 52
          Height = 15
          Caption = 'Reference'
          Transparent = True
        end
        object dtpDateFrom: TDateTimePicker
          Left = 112
          Top = 24
          Width = 89
          Height = 23
          Date = 36342.847006782400000000
          Time = 36342.847006782400000000
          TabOrder = 0
        end
        object dtpDateTo: TDateTimePicker
          Left = 112
          Top = 48
          Width = 89
          Height = 23
          Date = 36356.847006782400000000
          Time = 36356.847006782400000000
          Checked = False
          TabOrder = 1
        end
        object DateChangeButton1: TDateChangeButton
          Left = 208
          Top = 24
          Width = 80
          Height = 21
          Caption = 'Today'
          TabOrder = 2
          TabStop = False
          ChangeType = ctToday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton2: TDateChangeButton
          Left = 208
          Top = 48
          Width = 80
          Height = 21
          Caption = 'Yesterday'
          TabOrder = 3
          TabStop = False
          ChangeType = ctYesterday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton4: TDateChangeButton
          Left = 296
          Top = 24
          Width = 80
          Height = 21
          Caption = 'This Week'
          TabOrder = 4
          TabStop = False
          ChangeType = ctThisWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton3: TDateChangeButton
          Left = 296
          Top = 48
          Width = 80
          Height = 21
          Caption = 'Last Week'
          TabOrder = 5
          TabStop = False
          ChangeType = ctLastWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton6: TDateChangeButton
          Left = 384
          Top = 24
          Width = 80
          Height = 21
          Caption = 'This Month'
          TabOrder = 6
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton5: TDateChangeButton
          Left = 384
          Top = 48
          Width = 80
          Height = 21
          Caption = 'Last Month'
          TabOrder = 7
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton8: TDateChangeButton
          Left = 472
          Top = 24
          Width = 80
          Height = 21
          Caption = 'Year To Date'
          TabOrder = 8
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton7: TDateChangeButton
          Left = 472
          Top = 48
          Width = 80
          Height = 21
          Caption = 'Last Year'
          TabOrder = 9
          TabStop = False
          ChangeType = ctLastYear
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object tbTransAmtFrom: TEdit
          Left = 112
          Top = 84
          Width = 121
          Height = 23
          TabOrder = 10
        end
        object tbTransAmtTo: TEdit
          Left = 112
          Top = 108
          Width = 121
          Height = 23
          TabOrder = 11
        end
        object tbTransDesc: TEdit
          Left = 112
          Top = 132
          Width = 121
          Height = 23
          TabOrder = 12
        end
        object tbReference: TEdit
          Left = 320
          Top = 84
          Width = 121
          Height = 23
          TabOrder = 13
        end
        object chMovementOnly: TCheckBox
          Left = 248
          Top = 110
          Width = 193
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Only accounts with movement?'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 14
        end
      end
      object glComponentFilter: TGLComponentFilterCxGroup
        Left = 8
        Top = 8
        Caption = 'GL Components'
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        TabOrder = 4
        hideEmpty = False
        Height = 129
        Width = 481
      end
    end
  end
  object sbarInfo: TStatusBar
    Left = 0
    Top = 654
    Width = 1258
    Height = 23
    BiDiMode = bdLeftToRight
    Panels = <
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = 'Total ='
        Width = 120
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object dsCharts: TUniDataSource
    AutoEdit = False
    DataSet = qryCharts
    Left = 86
    Top = 139
  end
  object qryCharts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CT.REPORTTYPE,CT.DESCR AS TYPEDESCR, C.BANK AS BANK '
      
        '     , nvl(C.COMPONENT_CODE_DISPLAY,C.CODE) AS CODE,C.CODE as LK' +
        'EY, C.TYPE AS TYPE '
      #9' , C.REPORT_DESC AS REPORT_DESC '
      #9' , C.ADDTO AS ADDTO '
      #9' , C.IS_JOURNAL_SPLIT '
      
        #9' ,DECODE(TRIM(C.OIFDEFAULTCODE),'#39'O'#39','#39'Operating'#39','#39'I'#39','#39'Investing'#39 +
        ','#39'F'#39','#39'Financing'#39',NULL) AS OIFDEFAULTCODE '
      
        #9' ,DECODE(TRIM(C.CHARTTYPE),'#39'DISB'#39', '#39'Disbursement Control'#39', '#39'DEB' +
        'T'#39', '#39'Debtor Control'#39', '#39'GST'#39' , '#39'Bank Control'#39', '#39'CRED'#39', '#39'GST Contr' +
        'ol'#39', '#39'BANK'#39', '#39'Fee Control'#39', '#39'FEE'#39' , '#39'Creditor Control'#39', '#39'GEN'#39' , ' +
        #39'General'#39', NULL) AS CHARTTYPE '
      #9' ,sum(B.ACCOUNTVALUE) AS ACCOUNTVALUE '
      #9' , C.DEFAULT_TAXCODE AS DEFAULT_TAXCODE '
      #9' FROM CHART C, CHARTTYPE CT, BUDGET B '
      #9' WHERE C.BANK = '#39'SG'#39' '
      '  AND C.TYPE = CT.CODE '
      '  AND C.CODE = B.ACCOUNTCODE '
      
        '  AND add_months(to_date('#39'01-'#39'||nvl(b.month,TO_CHAR(SYSDATE,'#39'MM'#39 +
        '))||'#39'-'#39'||nvl(b.year, CAST(TO_CHAR(SYSDATE,'#39'YYYY'#39') AS INTEGER)), ' +
        #39'DD-MM-YYYY'#39'),decode(CAST(TO_CHAR(SYSDATE,'#39'MM'#39') AS INTEGER),1,5,' +
        '2,4,3,3,4,2,5,1,6)) between '
      
        '  to_date('#39'01-07-'#39' || (TO_CHAR(CAST(TO_CHAR(SYSDATE,'#39'YYYY'#39') AS I' +
        'NTEGER)-1)),'#39'DD-MM-YYYY'#39')  AND '
      '  to_date('#39'30-06-'#39' || TO_CHAR(SYSDATE,'#39'YYYY'#39'),'#39'DD-MM-YYYY'#39') '
      
        '  group by CT.REPORTTYPE,CT.DESCR, C.BANK , nvl(C.COMPONENT_CODE' +
        '_DISPLAY,C.CODE),C.CODE, C.TYPE, C.REPORT_DESC, C.ADDTO, C.IS_JO' +
        'URNAL_SPLIT ,DECODE(TRIM(C.OIFDEFAULTCODE),'#39'O'#39','#39'Operating'#39','#39'I'#39','#39 +
        'Investing'#39','#39'F'#39','#39'Financing'#39',NULL) ,DECODE(TRIM(C.CHARTTYPE),'#39'DISB' +
        #39', '#39'Disbursement Control'#39', '#39'DEBT'#39', '#39'Debtor Control'#39', '#39'GST'#39' , '#39'Ba' +
        'nk Control'#39', '#39'CRED'#39', '#39'GST Control'#39', '#39'BANK'#39', '#39'Fee Control'#39', '#39'FEE'#39 +
        ', '#39'Creditor Control'#39', '#39'GEN'#39', '#39'General'#39', NULL) , C.DEFAULT_TAXCOD' +
        'E '
      ' ORDER BY nvl(C.COMPONENT_CODE_DISPLAY,C.CODE)')
    AfterScroll = qryChartsAfterScroll
    OnCalcFields = qryChartsCalcFields
    Left = 29
    Top = 139
  end
  object qryNaccounts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   TO_DATE ('#39'01-Jan-00'#39') AS created, '#39'Opening Balance'#39' AS ' +
        'descr,'
      
        '         NVL (SUM (amount), 0) AS amount, '#39#39' AS refno, 0 AS ntra' +
        'ns,'
      
        '         NULL AS creditorcode, '#39'BBF'#39' AS owner_code, NULL AS acct' +
        ','
      '         0 AS naccount,'
      '         CASE'
      '            WHEN (NVL (SUM (amount), 0) < 0)'
      '               THEN ABS (NVL (SUM (amount), 0))'
      '         END AS debit,'
      '         CASE'
      '            WHEN (NVL (SUM (amount), 0) > 0)'
      '               THEN NVL (SUM (amount), 0)'
      '         END AS credit,'
      '         '#39#39' AS TYPE'
      '    FROM transitem'
      '   WHERE created < :p_datefrom'
      '     AND created >= :p_datestart'
      'UNION ALL'
      
        'SELECT   created, descr, amount, refno, ntrans, creditorcode, ow' +
        'ner_code,'
      '         acct, naccount, CASE'
      '            WHEN amount < 0'
      '               THEN ABS (amount)'
      '         END AS debit, CASE'
      '            WHEN (amount > 0)'
      '               THEN amount'
      '         END AS credit,'
      '         CASE'
      '            WHEN (owner_code = '#39'CHEQUE'#39')'
      '               THEN '#39'CHQ'#39
      '            WHEN (owner_code = '#39'RECEIPT'#39')'
      '               THEN '#39'RCP'#39
      '            WHEN (owner_code = '#39'NMEMO'#39')'
      '               THEN '#39'BLL'#39
      '            WHEN (owner_code = '#39'JOURNAL'#39')'
      '               THEN '#39'JNL'#39
      '            WHEN (owner_code = '#39'CHEQREQ'#39')'
      '               THEN '#39'CRQ'#39
      '            ELSE SUBSTR (owner_code, 1, 3)'
      '         END AS TYPE'
      '    FROM transitem'
      '   WHERE created >= :p_datefrom'
      '     AND created < :p_dateto'
      'ORDER BY 9, 1'
      ''
      '/*'
      
        'SELECT CREATED, DESCR, AMOUNT, REFNO, NTRANS, CREDITORCODE, OWNE' +
        'R_CODE,ACCT,NACCOUNT'
      'FROM TRANSITEM'
      'WHERE CREATED >= :P_DateFrom'
      '      AND CREATED <= :P_DateTo'
      '*/')
    MasterSource = dsCharts
    OnCalcFields = qryNaccountsCalcFields
    Left = 209
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_datestart'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object dsNaccounts: TUniDataSource
    AutoEdit = False
    DataSet = qryNaccounts
    Left = 281
    Top = 462
  end
  object qryChartDelete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM CHART WHERE BANK = :BANK AND CODE = :CODE')
    Left = 156
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryTransitems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ordtype, chart, created, descr, amount, refno, owner_code' +
        ', nowner,'
      
        '       creditorcode, report_desc, taxcode, debit, credit, TYPE, ' +
        'payee,'
      '       running_total, chart_desc,'
      '       CASE'
      '          WHEN (running_total >= 0)'
      '             THEN    TO_CHAR (ABS (running_total),'
      '                              '#39'$999,999,999.99'#39
      '                             )'
      '                  || '#39' DR'#39
      '          WHEN (running_total < 0)'
      
        '             THEN TO_CHAR (ABS (running_total), '#39'$999,999,999.99' +
        #39') || '#39' CR'#39
      '       END AS disp_running_total'
      
        '  FROM (SELECT   cr.ordtype, cr.chart, cr.created, cr.descr, cr.' +
        'amount,'
      
        '                 cr.refno, cr.owner_code, cr.nowner, cr.creditor' +
        'code,'
      
        '                 report_desc, cr.taxcode, cr.debit, cr.credit, T' +
        'YPE, cr.x,'
      '                 cr.code,'
      '                 CASE'
      '                    WHEN (TYPE = '#39'CHQ'#39')'
      '                       THEN (SELECT payee'
      '                               FROM cheque'
      '                              WHERE ncheque = cr.nowner)'
      '                    WHEN (TYPE = '#39'RCP'#39')'
      '                       THEN (SELECT payor'
      '                               FROM receipt'
      '                              WHERE nreceipt = cr.nowner)'
      '                 END AS payee,'
      
        '                 SUM (cr.x) OVER (PARTITION BY cr.code ORDER BY ' +
        'cr.code,'
      '                  cr.created, naccount) AS running_total'
      '            FROM gl_report_trans cr'
      '           WHERE cr.empcode = :empcode'
      '        ORDER BY chart, created, naccount, ordtype)'
      ''
      ''
      '/*'
      
        'SELECT CHART, CREATED, DESCR, AMOUNT, REFNO, NOWNER, OWNER_CODE,' +
        ' CREDITORCODE, TAXCODE'
      'FROM TRANSITEM '
      'WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo'
      'AND ACCT = :ACCT'
      '*/')
    OnCalcFields = qryTransitemsCalcFields
    Left = 608
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empcode'
        Value = nil
      end>
  end
  object ilstToolbar: TImageList
    Left = 480
    Top = 8
    Bitmap = {
      494C01010D001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF008F8F8F009E9E9E00F6F6F600EBEBEB00D2D2D200C4C4C4009A9A
      9A00AFAFAF00ECECEC00FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000DADADA003636360042424200E0E0E000B1B1B100777777006E6B6B00785E
      5E0068555500AAAAAA00D3D3D300FCFCFC000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D6000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000D0D0D000EAA35B00C16B1E006B6868001643A9001A66FF006F62AD00B8A9
      A900ADA4A4009D88880077545400EAEAEA000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C00010152007171710000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000D0D0D000E5994D00A9601600B29696001643A9002675FF006A579F00A673
      7300A17D7D009DB79E00A2B19E00E7E7E7000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E450000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000FBFBFB00F3F3F300F3F3F300F2F2
      F200C5C5C500E3954500AF632A00D7B5B5001643A9004197FF006F62A300B890
      9000B3808000A87C7C00A4767600E7E7E7000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000008000000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D00000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000DFDFDF00B8B8B800B8B8B800B6B6
      B60097979700DF8D3A00AF632A00E3D1D1001643A9004DA6FF006F629F00B98E
      8E00BF8C8C00C9969600B3838300E7E7E7000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E00000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000003E718A004DB4E7004DB4E7004DB7
      EA004697BD00DA812900A2624100EAE3E3001643A9004E96D9006F629800BC88
      8800B6838300A6737300B9808000E7E7E7000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000003DA3CC006DD0FF0069CFFF0069CF
      FF005BA8CC00D98026008B583B00EAE3E300716C8C006E6F6F00B49EB200BE84
      8400BF8C8C00B9868600BB7C7C00E7E7E7000000000000000000000000000000
      0000000000000000000000800000008000000000000000800000000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000003DA3CC007FD3F4008CCCDF009396
      9E006A96A600929292008D8D8D0097909000E2E2E200D6D7D800968B8C00D9A1
      A100C96D6D00C06B6B00BD6B6B00E9E9E9000000000000000000000000000000
      0000000000000080000000800000008000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000003DA3CC0089D0ED00AFB5B700BFB1
      B1008A797900C0C0C000D1D1D100C9C9C900E8E8E800CCCCCC00E2E3E400F9F2
      F200F5E8E800DA969600CE6E6E00F0F0F0000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000003DA3CC007FCBF1007B949600C7C7
      C7007B949600BBBBBB00C5C5C5007B9496007B949600AB939300AAA8A800A88A
      8A00AD949400E7E1E100FEFEFE00000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000003DA3CC006ECEFD008CCCDF007B94
      960086D9D9007B9496007B94960099FFFF008CE6E6007ABAC300B9E6E600FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE00000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000003DA3CC0080E5FF0080E5FF0080E5
      FF0080E5FF00A0ECFF00A0ECFF00A0ECFF00A0ECFF003DA3CC00ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000003DA3CC0093F3FF008CF2FF008CF2
      FF00D4FAFF003DA3CC003DA3CC003DA3CC003DA3CC00A2D0E000FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD000000000000000000000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BDBDBD00BDBDBD000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BDBDBD000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BDBDBD000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BDBDBD00BDBDBD00000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF000000
      000000FFFF000000000000000000FFFF00000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFF00000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BDBDBD000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000FFFF00000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BDBDBD00000000000000000000000000FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BDBDBD00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF000000000000000000FFFF00000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF0000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000FFFF00000000000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF0000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00000000000000FF0000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00000000000000000000FFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00F03F000000000000E007000000000000
      C000000000000000800000000000000000000000000000000000000000000000
      00000000000000008000000000000000E001000000000000F003000000000000
      F01F000000000000E03F000000000000E03F000000000000C03F000000000000
      C07F000000000000F8FF000000000000F80FFFFFFFFFFE7FE007F83FF001FE7F
      C003E00FF000F81F8001CFC7F000F00F800187E3F000F24F0001A3F30000F20F
      000131F90000FE0F000138F90000FC0F00013C790000F81F00013E390000F03F
      00013F190000F04F00019F8B0001F24F80038FC3000FF00FC003C7E7001FF81F
      E00FE00F001FFE7FF01FF83FFFFFFE7FFFFFFFFFC0078007C007FE7FC0070003
      8003FC3FC00700010001FC3FC00780100001FE7FC00700000001FC3FC0070000
      0000FC3FC00780000000FC3FC00780008000FC1FC0070000C000F20FC0070000
      E001E107C0070000E007E187C0070000F007E007C007C001F003F00FC007C001
      F803F81FC007C007FFFFFFFFC007E3FF80078007FFFF800000030003FFFF0000
      00010000FFF9000080108010E7FF800000000000C3F3000000000000C3E70000
      80008000E1C7800080008000F08F800000000000F81F000000000000FC3F0000
      00000000F81F000000000000F09F0000C001C001C1C7C001C000C00183E3C001
      C003C0038FF1C007E3D5E3F7FFFFE3FF00000000000000000000000000000000
      000000000000}
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, DESCR, AMOUNT, REFNO, NOWNER, OWNER_CODE FROM TR' +
        'ANSITEM WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo')
    Left = 19
    Top = 337
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qryChartBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM(AMOUNT) AS BALANCE '
      'FROM TRANSITEM'
      'WHERE ACCT = :Entity'
      '  AND CHART = :Chart'
      '  AND CREATED >= :DateFrom'
      '  AND CREATED < :DateTo')
    Left = 61
    Top = 415
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Chart'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DateTo'
        Value = nil
      end>
  end
  object qryReceiptInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'INSERT INTO RECEIPT (NRECEIPT, CREATED,TYPE, ACCT, RCPTNO,PAYOR,' +
        ' DRAWER, BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE' +
        ', BANKED, CLEARED, NTRANS,    TRUST, SUFCHQ, DESCR,    NBANKDEP,' +
        ' SYSTEM_DATE, PRINTED, NNAME, AMOUNT, NCHEQUE) '
      
        'VALUES (:NRECEIPT, :CREATED,:TYPE, :ACCT, :RCPTNO,:PAYOR, :DRAWE' +
        'R, :BANK, :BRANCH, :CHQNO, :REVERSED, :RVBY, :DCLEARDATE, :CCTYP' +
        'E, :BANKED, :CLEARED, :NTRANS,    :TRUST, :SUFCHQ, :DESCR,    :N' +
        'BANKDEP, :SYSTEM_DATE, :PRINTED, :NNAME, :AMOUNT, :NCHEQUE)')
    Left = 568
    Top = 7
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RCPTNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DRAWER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REVERSED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RVBY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DCLEARDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CCTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANKED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLEARED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NTRANS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUFCHQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SYSTEM_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRINTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end>
  end
  object qryChequeInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'INSERT INTO CHEQUE (PRINTER, NCHEQUE, CREATED,ACCT, TYPE, PAYEE,' +
        'CHQNO, APPROVAL, REQBY,RVBY, REVERSED, NTRANS,BANKED, TRUST, SUF' +
        'CHQ,PRESENTED, DESCR, SYSTEM_DATE,PRINTED, RECONDATE, NNAME, AMO' +
        'UNT) '
      
        'VALUES (:PRINTER, :NCHEQUE, :CREATED,:ACCT, :TYPE, :PAYEE,:CHQNO' +
        ', :APPROVAL, :REQBY,:RVBY, :REVERSED, :NTRANS,:BANKED, :TRUST, :' +
        'SUFCHQ,:PRESENTED, :DESCR, :SYSTEM_DATE,:PRINTED, :RECONDATE, :N' +
        'NAME, :AMOUNT)')
    Left = 622
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRINTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
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
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'APPROVAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REQBY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RVBY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REVERSED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NTRANS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANKED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUFCHQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SYSTEM_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRINTED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECONDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 118
    Top = 65
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'File'
      'Help'
      'popup'
      'Menus')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 450
    Top = 16
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFile'
        end
        item
          Visible = True
          ItemName = 'mnuHelp'
        end>
      NotDocking = [dsNone]
      OldName = 'Main Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 88
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFileNewLedger'
        end
        item
          Visible = True
          ItemName = 'mnuFileEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileJournal'
        end
        item
          Visible = True
          ItemName = 'btnBudget'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'tbtnJournalSplit'
        end
        item
          Visible = True
          ItemName = 'dxmunAllocation'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrintAllocations'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnBudget: TdxBarButton
      Caption = 'Budget'
      Category = 0
      Hint = 'Budget'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnBudgetClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Ledger Types'
      Category = 0
      Hint = 'Ledger Types'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton2Click
    end
    object tbtnJournalSplit: TdxBarButton
      Caption = 'Journal Split'
      Category = 0
      Hint = 'Journal Split'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton3Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Clear All'
      Category = 0
      Hint = 'Clear All'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btnClearAllClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarLookupCombo1: TdxBarLookupCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FFFF000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      RowCount = 7
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxmunAllocation: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'Expense Allocation'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = dxmunAllocationClick
    end
    object mnuFileNewLedger: TdxBarButton
      Caption = '&New'
      Category = 1
      Hint = 'Create G/L account'
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 116
      OnClick = mnuFileNewLedgerClick
    end
    object mnuFileEdit: TdxBarButton
      Caption = '&Edit'
      Category = 1
      Hint = 'Edit selected G/L account'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = mnuFileEditClick
    end
    object mnuFileDelete: TdxBarButton
      Caption = '&Delete'
      Category = 1
      Hint = 'Delete selected G/L account'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = mnuFileDeleteClick
    end
    object mnuFileJournal: TdxBarButton
      Caption = '&Journal'
      Category = 1
      Hint = 'Create Journal'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = mnuFileJournalClick
    end
    object mnuFilePrintAllCheques: TdxBarButton
      Caption = 'Print &Chart of Accounts'
      Category = 1
      Hint = 'Use Filter to Select a Subset'
      Visible = ivAlways
      OnClick = mnuFilePrintAllChequesClick
    end
    object PrintLedgerBalances1: TdxBarButton
      Caption = 'Print Ledger Balances'
      Category = 1
      Visible = ivAlways
      OnClick = PrintLedgerBalances1Click
    end
    object mnuFilePrintAllocations: TdxBarButton
      Caption = 'Print Ledger &Allocations'
      Category = 1
      Visible = ivAlways
      ImageIndex = 12
      OnClick = mnuFilePrintAllocationsClick
    end
    object mnuFileExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close form'
      Visible = ivAlways
      DropDownEnabled = False
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = mnuFileExitClick
    end
    object mnuHelpHelp: TdxBarButton
      Caption = '&Help'
      Category = 2
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 112
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Create Receipt For Transaction'
      Category = 3
      Hint = 'Create Receipt For Transaction'
      Visible = ivAlways
      OnClick = CreateReceiptForTransaction1Click
    end
    object btnXLSExport: TdxBarButton
      Caption = 'Export Transactions to Excel'
      Category = 3
      Hint = 'Export Transactions to Excel'
      Visible = ivAlways
      OnClick = btnXLSExportClick
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Create Cheque For Transaction'
      Category = 3
      Hint = 'Create Cheque For Transaction'
      Visible = ivAlways
      OnClick = CreateChequeForTransaction1Click
    end
    object mnuFile: TdxBarSubItem
      Caption = '&File'
      Category = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFileNewLedger'
        end
        item
          Visible = True
          ItemName = 'mnuFileEdit'
        end
        item
          Visible = True
          ItemName = 'mnuFileDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileJournal'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrintAllCheques'
        end
        item
          Visible = True
          ItemName = 'PrintLedgerBalances1'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintAllocations'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
    end
    object mnuHelp: TdxBarSubItem
      Caption = '&Help'
      Category = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuHelpHelp'
        end>
    end
  end
  object rptGeneralLedger: TppReport
    AutoStop = False
    DataPipeline = plGeneralLedger
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
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
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.Visible = True
    XLSSettings.AppName = 'Insight'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.IgnorePageHeight = True
    XLSSettings.IncludeSingleFooter = True
    XLSSettings.IncludeSingleHeader = True
    XLSSettings.MergeAdjacentCells = False
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 792
    Top = 151
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plGeneralLedger'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 14817
        mmTop = 1058
        mmWidth = 33147
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 529
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 96044
        mmTop = 5821
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Ledger Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 2117
        mmTop = 16404
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 24342
        mmTop = 21431
        mmWidth = 17526
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 96300
        mmTop = 21431
        mmWidth = 7027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Tax Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 111646
        mmTop = 16404
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 138105
        mmTop = 21431
        mmWidth = 7959
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 21431
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 180446
        mmTop = 20902
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'General Ledger Transactions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 73856
        mmTop = 265
        mmWidth = 53636
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.mmPadding = 0
        Caption = 'Label14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 94986
        mmTop = 10848
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable3'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 57415
        mmTop = 20902
        mmWidth = 9790
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
      mmHeight = 10583
      mmPrintPosition = 0
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        ParentWidth = True
        Pen.Style = psClear
        Pen.Width = 0
        ShiftRelativeTo = ppRegion1
        Stretch = True
        mmHeight = 5821
        mmLeft = 0
        mmTop = 5027
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'DESCR'
          DataPipeline = plGeneralLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 17198
          mmTop = 5821
          mmWidth = 123825
          BandType = 4
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          ParentHeight = True
          Position = lpRight
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 168011
          mmTop = 5027
          mmWidth = 1323
          BandType = 4
          LayerName = Foreground
        end
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        ParentWidth = True
        Pen.Style = psClear
        Pen.Width = 0
        Stretch = True
        mmHeight = 5821
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CREATED'
          DataPipeline = plGeneralLedger
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 1852
          mmTop = 794
          mmWidth = 21696
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CREDITORCODE'
          DataPipeline = plGeneralLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 96300
          mmTop = 794
          mmWidth = 14288
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TAXCODE'
          DataPipeline = plGeneralLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 111646
          mmTop = 794
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          OnPrint = ppDBText6Print
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'DEBIT'
          DataPipeline = plGeneralLedger
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 125140
          mmTop = 794
          mmWidth = 20902
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          OnPrint = ppDBText7Print
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          DataField = 'CREDIT'
          DataPipeline = plGeneralLedger
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3704
          mmLeft = 146579
          mmTop = 794
          mmWidth = 20902
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'DISP_RUNNING_TOTAL'
          DataPipeline = plGeneralLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 170392
          mmTop = 794
          mmWidth = 25135
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.mmPadding = 0
          DataField = 'TYPE'
          DataPipeline = plGeneralLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 24077
          mmTop = 794
          mmWidth = 8467
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          Border.mmPadding = 0
          DataField = 'REFNO'
          DataPipeline = plGeneralLedger
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3768
          mmLeft = 34396
          mmTop = 794
          mmWidth = 8731
          BandType = 4
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          ParentHeight = True
          Position = lpRight
          StretchWithParent = True
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 168011
          mmTop = 0
          mmWidth = 1323
          BandType = 4
          LayerName = Foreground
        end
        object ppMemo1: TppMemo
          DesignLayer = ppDesignLayer1
          UserName = 'Memo1'
          Border.mmPadding = 0
          CharWrap = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          mmHeight = 3704
          mmLeft = 43921
          mmTop = 794
          mmWidth = 51594
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText15'
          Border.mmPadding = 0
          DataField = 'RUNNING_TOTAL'
          DataPipeline = plGeneralLedger
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 4233
          mmLeft = 162454
          mmTop = 5821
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Total Debits This Period'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 85196
        mmTop = 5821
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Total Credits This Period'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 84138
        mmTop = 11906
        mmWidth = 26987
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Movement for Period'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 88371
        mmTop = 17992
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'DEBIT'
        DataPipeline = plGeneralLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plGeneralLedger'
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 7673
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'CREDIT'
        DataPipeline = plGeneralLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plGeneralLedger'
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 13229
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object lblMovementDebit: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lblMovementDebit'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3968
        mmLeft = 131763
        mmTop = 17992
        mmWidth = 19314
        BandType = 7
        LayerName = Foreground
      end
      object lblMovementCredit: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lblMovementCredit'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3968
        mmLeft = 151342
        mmTop = 17992
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable4: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable4'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 141023
        mmTop = 5821
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable5: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable5'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 161661
        mmTop = 11906
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CHART'
      DataPipeline = plGeneralLedger
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plGeneralLedger'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Color = clSilver
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 0
          mmTop = 529
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'CHART'
          DataPipeline = plGeneralLedger
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 794
          mmWidth = 39688
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.mmPadding = 0
          DataField = 'REPORT_DESC'
          DataPipeline = plGeneralLedger
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 4233
          mmLeft = 43921
          mmTop = 794
          mmWidth = 104775
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Anchors = [atLeft, atBottom]
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 2
          ParentWidth = True
          Position = lpBottom
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'CHART'
          DataPipeline = plGeneralLedger
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 3704
          mmLeft = 2117
          mmTop = 1058
          mmWidth = 39688
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText14'
          Border.mmPadding = 0
          DataField = 'REPORT_DESC'
          DataPipeline = plGeneralLedger
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plGeneralLedger'
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 5292
          mmWidth = 67733
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Closing Balance'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3968
          mmLeft = 71173
          mmTop = 5292
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppVariable1: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable1'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = True
          CalcOrder = 0
          DataType = dtCurrency
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3768
          mmLeft = 125140
          mmTop = 4763
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppVariable2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable2'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = True
          CalcOrder = 1
          DataType = dtCurrency
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 146579
          mmTop = 4763
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object daDataModule1: TdaDataModule
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraVarProgram'
        raProgram.ChildType = 17
        raProgram.ProgramName = 'Variables'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variables;'#13#10'var'#13#10'   fcLocalCredits : Double;'#13#10'   fcLoc' +
          'alDebits  : Double;'#13#10'   OpeningBalance : Double;'#13#10'   Balance: Do' +
          'uble;'#13#10'   TotalDebits: Double;'#13#10'   TotalCredits: Double;'#13#10#13#10'begi' +
          'n'#13#10#13#10'end;'#13#10
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DetailBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DetailBeforePrint;'#13#10'begin'#13#10'      if (UpperCase(plGener' +
          'alLedger['#39'DESCR'#39']) = '#39'OPENING BALANCE'#39') then'#13#10'   begin'#13#10'     Ope' +
          'ningBalance := plGeneralLedger['#39'AMOUNT'#39'];'#13#10'     Balance:= Openin' +
          'gBalance'#13#10'   end'#13#10'   else'#13#10'     if(plGeneralLedger['#39'AMOUNT'#39'] < 0' +
          ') then'#13#10'       TotalDebits := TotalDebits + plGeneralLedger['#39'AMO' +
          'UNT'#39']'#13#10'     else'#13#10'       TotalCredits := TotalCredits + plGenera' +
          'lLedger['#39'AMOUNT'#39'];'#13#10#13#10'     Balance:= Balance + plGeneralLedger['#39 +
          'AMOUNT'#39'];'#13#10'end;'#13#10
        raProgram.ComponentName = 'Detail'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'SummaryBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure SummaryBeforePrint;'#13#10'var'#13#10'  movement: currency;'#13#10'begin' +
          #13#10'    lblMovementDebit.visible := False;'#13#10'    lblMovementCredit.' +
          'Visible := False;'#13#10'    movement := (DBCalc1.Value - DBCalc2.Valu' +
          'e) - (OpeningBalance * -1);'#13#10'    if OpeningBalance > 0 then'#13#10'   ' +
          ' begin'#13#10'       Variable5.Value := DBCalc2.Value - (OpeningBalanc' +
          'e);'#13#10'       Variable4.Value := DBCalc1.Value;'#13#10'    end'#13#10'    else' +
          #13#10'    begin'#13#10'       Variable4.Value := DBCalc1.Value - (OpeningB' +
          'alance * -1);'#13#10'       Variable5.Value := DBCalc2.Value;'#13#10'    end' +
          ';'#13#10'    if movement > 0 then'#13#10'    begin'#13#10'      lblMovementDebit.v' +
          'isible := True;'#13#10'      lblMovementDebit.Value := movement;'#13#10'    ' +
          'end'#13#10'    else'#13#10'    begin'#13#10'      lblMovementCredit.Visible := Tru' +
          'e;'#13#10'      lblMovementCredit.Value := movement;'#13#10'    end;'#13#10'end;'#13#10
        raProgram.ComponentName = 'Summary'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Memo1OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Memo1OnPrint;'#13#10'begin'#13#10'    if (plGeneralLedger['#39'OWNER_C' +
          'ODE'#39'] = '#39'CHEQUE'#39') or'#13#10'      (plGeneralLedger['#39'OWNER_CODE'#39'] = '#39'RE' +
          'CEIPT'#39') then'#13#10'    begin'#13#10'      Detail.Height := 11.377;'#13#10'       ' +
          'Region2.Visible := True;'#13#10'      Memo1.Text := plGeneralLedger['#39'P' +
          'AYEE'#39'];'#13#10'    end'#13#10'    else'#13#10'    begin'#13#10'      Region2.Visible := ' +
          'False;'#13#10'      Detail.Height := 5.556;'#13#10'      Memo1.Text := plGen' +
          'eralLedger['#39'DESCR'#39'];'#13#10'    end;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Memo1'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable3OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable3OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' := OpeningBalance;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable3'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
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
  object plGeneralLedger: TppDBPipeline
    DataSource = dsGeneralLedger
    UserName = 'plGeneralLedger'
    Left = 777
    Top = 214
  end
  object qryChartReport: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CT.DESCR AS TYPEDESCR,'
      '  C.BANK AS BANK,'
      '  C.CODE AS CODE,'
      '  C.REPORT_LEVEL AS REPORT_LEVEL,'
      '  C.REPORT_DESC AS REPORT_DESC,'
      '  C.ADDTO AS ADDTO,'
      '  C.SUBLEDGERS as SUBLEDGERS,'
      '  C.TYPE,'
      '  C.DEFAULT_TAXCODE,'
      '  C.IS_JOURNAL_SPLIT,'
      
        '  DECODE(TRIM(C.OIFDEFAULTCODE),'#39'O'#39','#39'Operating'#39','#39'I'#39','#39'Investing'#39',' +
        #39'F'#39','#39'Financing'#39',NULL) AS OIFDEFAULTCODE,'
      '  DECODE(TRIM(C.CHARTTYPE),'#39'DISB'#39', '#39'Disbursement Control'#39','
      '    '#39'DEBT'#39', '#39'Debtor Control'#39','
      '    '#39'GST'#39' , '#39'Bank Control'#39','
      '    '#39'CRED'#39', '#39'GST Control'#39','
      '    '#39'BANK'#39', '#39'Fee Control'#39','
      '    '#39'FEE'#39' , '#39'Creditor Control'#39','
      '    '#39'GEN'#39' , '#39'General'#39','
      '    NULL) AS CHARTTYPE,'
      '  B.ACCOUNTVALUE'
      'FROM CHART C, CHARTTYPE CT, BUDGET B'
      'WHERE C.BANK = '#39'SG'#39
      '  AND C.TYPE = CT.CODE'
      '  AND C.CODE = B.ACCOUNTCODE(+) ')
    Left = 308
    Top = 275
  end
  object dsChartReport: TUniDataSource
    DataSet = qryChartReport
    Left = 391
    Top = 278
  end
  object qryBudgetTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM (b.accountvalue) AS accountvalue'
      '  FROM BUDGET b'
      ' WHERE b.accountcode = :code'
      '   AND ADD_MONTHS (TO_DATE (   '#39'01-'#39
      
        '                            || NVL (b.MONTH, TO_CHAR (SYSDATE, '#39 +
        'MM'#39'))'
      '                            || '#39'-'#39
      '                            || NVL (b.CALENDAR_YEAR,'
      
        '                                    CAST (TO_CHAR (SYSDATE, '#39'YYY' +
        'Y'#39') AS INTEGER)'
      '                                   ),'
      '                            '#39'DD-MM-YYYY'#39
      '                           ),'
      
        '                   DECODE (CAST (TO_CHAR (SYSDATE, '#39'MM'#39') AS INTE' +
        'GER),'
      '                           1, 5,'
      '                           2, 4,'
      '                           3, 3,'
      '                           4, 2,'
      '                           5, 1,'
      '                           6'
      '                          )'
      '                  )'
      '          BETWEEN TO_DATE (   '#39'01-07-'#39
      
        '                           || (TO_CHAR (  CAST (TO_CHAR (SYSDATE' +
        ', '#39'YYYY'#39') AS INTEGER'
      '                                               )'
      '                                        - 1'
      '                                       )'
      '                              ),'
      '                           '#39'DD-MM-YYYY'#39
      '                          )'
      
        '              AND TO_DATE ('#39'30-06-'#39' || TO_CHAR (SYSDATE, '#39'YYYY'#39')' +
        ','
      '                           '#39'DD-MM-YYYY'#39')')
    Left = 661
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 384
    Top = 8
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
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
    Left = 877
    Top = 341
    Version = '20.01'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'General Ledger Transactions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 119570
        mmTop = 265
        mmWidth = 45551
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Label8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 137096
        mmTop = 5027
        mmWidth = 10499
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 794
        mmWidth = 36513
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 263007
        mmTop = 265
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 56092
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    UserName = 'DBPipeline2'
    Left = 813
    Top = 363
  end
  object pmCreateCheque: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnXLSExport'
      end>
    UseOwnFont = False
    Left = 382
    Top = 462
    PixelsPerInch = 96
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofShareAware, ofEnableSizing]
    Left = 668
    Top = 420
  end
  object dsGeneralLedger: TUniDataSource
    DataSet = qryTransitems
    Left = 687
    Top = 239
  end
end
