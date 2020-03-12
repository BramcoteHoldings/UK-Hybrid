object frmJournals: TfrmJournals
  Left = 516
  Top = 303
  Caption = 'Journals'
  ClientHeight = 603
  ClientWidth = 1132
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagJournal: TcxPageControl
    Left = 0
    Top = 28
    Width = 1132
    Height = 555
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ilstToolbar
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    OnChange = pagJournalChange
    ClientRectBottom = 551
    ClientRectLeft = 4
    ClientRectRight = 1128
    ClientRectTop = 25
    object tabCashbook: TcxTabSheet
      Caption = 'Journals'
      ImageIndex = 0
      object pnlAllocations: TPanel
        Left = 0
        Top = 161
        Width = 1124
        Height = 365
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlAllocations'
        TabOrder = 0
        object pnlAllocRB: TPanel
          Left = 0
          Top = 0
          Width = 1124
          Height = 21
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label9: TLabel
            Left = 9
            Top = 2
            Width = 69
            Height = 17
            Caption = 'Allocations'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rbLedger: TcxRadioButton
            Left = 112
            Top = 2
            Width = 113
            Height = 17
            Caption = 'General Ledger'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbLedgerClick
            LookAndFeel.NativeStyle = True
          end
          object rbMatters: TcxRadioButton
            Left = 240
            Top = 2
            Width = 113
            Height = 17
            Caption = 'Matters'
            TabOrder = 1
            OnClick = rbMattersClick
            LookAndFeel.NativeStyle = True
          end
        end
        object dbgrAllocations: TcxGrid
          Left = 0
          Top = 21
          Width = 1124
          Height = 344
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          ExplicitTop = 19
          object tvAllocations: TcxGridDBTableView
            PopupMenu = mMoveMatter
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsNaccounts
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tvAllocationsCODE: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'CODE'
              Width = 70
            end
            object tvAllocationsDESCR: TcxGridDBColumn
              Caption = 'GL Code Description'
              DataBinding.FieldName = 'DESCR'
              Width = 283
            end
            object tvAllocationsColumn1: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'TDESCR'
              Width = 245
            end
            object tvAllocationsDebit: TcxGridDBColumn
              DataBinding.FieldName = 'Debit'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 99
            end
            object tvAllocationsCredit: TcxGridDBColumn
              DataBinding.FieldName = 'Credit'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 99
            end
            object tvAllocationsMRV_NALLOC: TcxGridDBColumn
              DataBinding.FieldName = 'MRV_NALLOC'
            end
          end
          object dbgrAllocationsLevel1: TcxGridLevel
            GridView = tvAllocations
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 153
        Width = 1124
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 39
        AlignSplitter = salTop
        InvertDirection = True
        Control = pnlJournals
        ExplicitLeft = 3
        ExplicitTop = 202
      end
      object pnlJournals: TPanel
        Left = 0
        Top = 0
        Width = 1124
        Height = 153
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlJournals'
        TabOrder = 2
        object pnlJournalHead: TPanel
          Left = 0
          Top = 0
          Width = 1124
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label10: TLabel
            Left = 6
            Top = 0
            Width = 52
            Height = 17
            Caption = 'Journals'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object dbgrJournals: TcxGrid
          Left = 0
          Top = 18
          Width = 1124
          Height = 135
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object tvJournals: TcxGridDBTableView
            PopupMenu = dxBarPopupMenu1
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = tvJournalsCellClick
            OnSelectionChanged = tvJournalsSelectionChanged
            DataController.DataSource = dsJournals
            DataController.KeyFieldNames = 'NJOURNAL'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'AMOUNT'
                Column = tvJournalsAMOUNT1
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Deleting = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = tvJournalsStylesGetContentStyle
            OnColumnHeaderClick = tvJournalsColumnHeaderClick
            object tvJournalsACCT1: TcxGridDBColumn
              Caption = 'Bank'
              DataBinding.FieldName = 'ACCT'
              Options.Editing = False
              Options.Grouping = False
              Width = 51
            end
            object tvJournalsCREATED1: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'CREATED'
              Options.Editing = False
              Options.Grouping = False
              Width = 119
            end
            object tvJournalsNJOURNAL1: TcxGridDBColumn
              Caption = 'Journal#'
              DataBinding.FieldName = 'NJOURNAL'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Grouping = False
              Width = 99
            end
            object tvJournalsREFNO1: TcxGridDBColumn
              Caption = 'RefNo'
              DataBinding.FieldName = 'REFNO'
              Options.Editing = False
              Options.Grouping = False
              Width = 116
            end
            object tvJournalsREASON1: TcxGridDBColumn
              Caption = 'Reason'
              DataBinding.FieldName = 'REASON'
              Options.Editing = False
              Width = 366
            end
            object tvJournalsTYPE1: TcxGridDBColumn
              Caption = 'Type'
              DataBinding.FieldName = 'TYPE'
              Options.Editing = False
              Width = 69
            end
            object tvJournalsAMOUNT1: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Grouping = False
              Width = 174
            end
            object tvJournalsRECURRING: TcxGridDBColumn
              Caption = 'Recurring'
              DataBinding.FieldName = 'RECURRING'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Y'
              Properties.DisplayUnchecked = 'N'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Properties.OnChange = tvJournalsRECURRINGPropertiesChange
              Options.Grouping = False
              Width = 62
            end
            object tvJournalsREV_NJOURNAL: TcxGridDBColumn
              DataBinding.FieldName = 'REV_NJOURNAL'
              Visible = False
              Options.Grouping = False
            end
            object tvJournalsTRUST1: TcxGridDBColumn
              DataBinding.FieldName = 'TRUST'
            end
          end
          object dbgrJournalsDBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsJournals
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.BandHeaders = False
            Bands = <
              item
              end
              item
              end>
            object dbgrJournalsDBBandedTableView1ACCT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCT'
              Width = 41
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1REFNO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REFNO'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1NJOURNAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NJOURNAL'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1AMOUNT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AMOUNT'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1REASON: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REASON'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1TYPE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TYPE'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1REV_NJOURNAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REV_NJOURNAL'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object dbgrJournalsDBBandedTableView1RECURRING: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RECURRING'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object dbgrJournalsLevel1: TcxGridLevel
            GridView = tvJournals
          end
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 6
      object lblBank: TLabel
        Left = 54
        Top = 11
        Width = 58
        Height = 13
        Caption = 'Bank/Entity'
        Transparent = True
      end
      object Label1: TLabel
        Left = 60
        Top = 34
        Width = 53
        Height = 13
        Caption = 'Date From'
        Transparent = True
      end
      object Label2: TLabel
        Left = 75
        Top = 58
        Width = 39
        Height = 13
        Caption = 'Date To'
        Transparent = True
      end
      object Label6: TLabel
        Left = 2
        Top = 83
        Width = 111
        Height = 13
        Caption = 'Journal Number From'
        Transparent = True
      end
      object Label7: TLabel
        Left = 17
        Top = 107
        Width = 97
        Height = 13
        Caption = 'Journal Number To'
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 131
        Width = 105
        Height = 13
        Caption = 'Description includes'
        Transparent = True
      end
      object lblAmountFrom: TLabel
        Left = 13
        Top = 155
        Width = 100
        Height = 13
        Caption = 'Amount more than '
        Transparent = True
      end
      object Label5: TLabel
        Left = 20
        Top = 179
        Width = 93
        Height = 13
        Caption = 'Amount less than '
        Transparent = True
      end
      object Label3: TLabel
        Left = 18
        Top = 203
        Width = 95
        Height = 13
        Caption = 'Reference Number'
        Transparent = True
      end
      object edRefNo: TEdit
        Left = 120
        Top = 200
        Width = 101
        Height = 21
        TabOrder = 8
      end
      object neAmountTo: TNumberEdit
        Left = 120
        Top = 176
        Width = 101
        Height = 21
        Alignment = taRightJustify
        DecimalPlaces = 2
        DisplayFormat = dfFloat
        EditText = '0'
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clWindowText
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clWindowText
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = True
        ShowHint = False
        TabOrder = 7
        Text = '0'
      end
      object neAmountFrom: TNumberEdit
        Left = 120
        Top = 152
        Width = 101
        Height = 21
        Alignment = taRightJustify
        DecimalPlaces = 2
        DisplayFormat = dfFloat
        EditText = '0'
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clWindowText
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clWindowText
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = True
        ShowHint = False
        TabOrder = 6
        Text = '0'
      end
      object tbDesc: TEdit
        Left = 120
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object neJnlTo: TNumberEdit
        Left = 120
        Top = 104
        Width = 101
        Height = 21
        Alignment = taRightJustify
        DecimalPlaces = 0
        DisplayFormat = dfInteger
        EditText = '0'
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clWindowText
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clWindowText
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = True
        ShowHint = False
        TabOrder = 4
        Text = '0'
      end
      object neJnlFrom: TNumberEdit
        Left = 120
        Top = 80
        Width = 101
        Height = 21
        Alignment = taRightJustify
        DecimalPlaces = 0
        DisplayFormat = dfInteger
        EditText = '0'
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clWindowText
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = []
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clWindowText
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = []
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = []
        NoZero = True
        ShowHint = False
        TabOrder = 3
        Text = '0'
      end
      object dtpDateTo: TDateTimePicker
        Left = 136
        Top = 56
        Width = 85
        Height = 22
        Date = 0.847006782409152900
        Time = 0.847006782409152900
        TabOrder = 2
      end
      object dtpDateFrom: TDateTimePicker
        Left = 136
        Top = 32
        Width = 85
        Height = 22
        Date = 0.847006782409152900
        Time = 0.847006782409152900
        TabOrder = 1
      end
      object edAcct: TEdit
        Left = 120
        Top = 6
        Width = 101
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object dcToday: TDateChangeButton
        Left = 225
        Top = 32
        Width = 80
        Height = 22
        Caption = 'Today'
        TabOrder = 10
        TabStop = False
        ChangeType = ctToday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton2: TDateChangeButton
        Left = 225
        Top = 56
        Width = 80
        Height = 22
        Caption = 'Yesterday'
        TabOrder = 11
        TabStop = False
        ChangeType = ctYesterday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton4: TDateChangeButton
        Left = 312
        Top = 32
        Width = 80
        Height = 22
        Caption = 'This Week'
        TabOrder = 12
        TabStop = False
        ChangeType = ctThisWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton3: TDateChangeButton
        Left = 312
        Top = 56
        Width = 80
        Height = 22
        Caption = 'Last Week'
        TabOrder = 13
        TabStop = False
        ChangeType = ctLastWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton5: TDateChangeButton
        Left = 400
        Top = 32
        Width = 80
        Height = 22
        Caption = 'This Month'
        TabOrder = 14
        TabStop = False
        ChangeType = ctThisMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton6: TDateChangeButton
        Left = 400
        Top = 56
        Width = 80
        Height = 22
        Caption = 'Last Month'
        TabOrder = 15
        TabStop = False
        ChangeType = ctLastMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton7: TDateChangeButton
        Left = 488
        Top = 32
        Width = 80
        Height = 22
        Caption = 'Year To Date'
        TabOrder = 16
        TabStop = False
        ChangeType = ctYearToDate
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton8: TDateChangeButton
        Left = 488
        Top = 56
        Width = 80
        Height = 22
        Caption = 'Last Year'
        TabOrder = 17
        TabStop = False
        ChangeType = ctLastYear
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object rgJournalType: TcxRadioGroup
        Left = 306
        Top = 85
        Caption = 'Journal Type'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'All'
          end
          item
            Caption = 'Debtors'
          end
          item
            Caption = 'Disbursements'
          end
          item
            Caption = 'Trust'
          end
          item
            Caption = 'Profit Appropriation'
          end
          item
            Caption = 'Prior-Period'
          end
          item
            Caption = 'Recurring'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Transparent = True
        Height = 138
        Width = 263
      end
      object chkDateFrom: TCheckBox
        Left = 120
        Top = 33
        Width = 14
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 18
      end
      object chkDateTo: TCheckBox
        Left = 120
        Top = 57
        Width = 14
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 19
      end
    end
  end
  object sbarInfo: TdxStatusBar
    Left = 0
    Top = 583
    Width = 1132
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        PanelStyle.EllipsisType = dxetTruncate
        MinWidth = 120
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT njournal, alloc.fileid AS "CODE", alloc.client_name AS "D' +
        'ESCR",'
      '       (alloc.amount + NVL (alloc.tax, 0)) AS "AMOUNT",'
      '       CASE'
      '          WHEN (alloc.amount + NVL (alloc.tax, 0)) < 0'
      '             THEN ((alloc.amount + NVL (alloc.tax, 0))*-1)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (alloc.amount + NVL (alloc.tax, 0)) > 0'
      '             THEN ((alloc.amount + NVL (alloc.tax, 0)))'
      '          ELSE 0'
      
        '       END AS credit, nmemo, trust, descr as alloc_descr, nalloc' +
        ', type,'
      
        '       (alloc.amount * -1) as amount_extax, tax, nclient, client' +
        '_name, matter_desc, nvl(mrv_nalloc, 0) mrv_nalloc'
      '  FROM alloc'
      
        ' WHERE njournal = :p_njournal AND njournal <> 0 AND alloc.acct =' +
        ' :p_acct AND alloc.trust = :p_trust'
      ''
      ''
      '/*'
      
        'SELECT ALLOC.FILEID AS "CODE", ALLOC.CLIENT_NAME AS "DESCR", (AL' +
        'LOC.AMOUNT+nvl(ALLOC.TAX,0)) AS "AMOUNT" '
      
        'FROM ALLOC WHERE NJOURNAL = :P_NJournal AND NJOURNAL <> 0 AND AL' +
        'LOC.ACCT = :P_Acct'
      '*/')
    Left = 271
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_njournal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_trust'
        Value = nil
      end>
  end
  object dsAllocs: TUniDataSource
    AutoEdit = False
    DataSet = qryAllocs
    Left = 304
    Top = 8
  end
  object dsJournals: TUniDataSource
    DataSet = qryJournals
    Left = 240
    Top = 8
  end
  object qryTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT FROM RECEIPT WHE' +
        'RE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo AND REVERSED ' +
        '<> '#39'Y'#39)
    Left = 376
    Top = 8
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
  object qryJournals: TUniQuery
    UpdatingTable = 'JOURNAL'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '   REFNO,ACCT, TRUNC(CREATED) AS CREATED, NJOURNAL, AMOUNT, REAS' +
        'ON, TYPE, REV_NJOURNAL, NMEMO, TRUST, RECURRING, WASCONVERTED, R' +
        'OWID'
      'FROM'
      '   JOURNAL'
      'WHERE'
      '   CREATED >= :P_DateFrom AND CREATED <= :P_DateTo')
    AfterScroll = qryJournalsAfterScroll
    Left = 207
    Top = 7
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
  object qryNaccounts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CHART.COMPONENT_CODE_DISPLAY AS "CODE",'
      '  TRANSITEM.DESCR AS "TDESCR",'
      '  CHART.REPORT_DESC AS "DESCR",'
      '  TRANSITEM.AMOUNT AS "AMOUNT",'
      '      CASE'
      '          WHEN (TRANSITEM.AMOUNT) < 0'
      '             THEN (TRANSITEM.AMOUNT)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (TRANSITEM.AMOUNT) > 0'
      '             THEN (TRANSITEM.AMOUNT)'
      '          ELSE 0'
      '       END AS credit'
      'FROM'
      '  TRANSITEM,'
      '  CHART'
      'WHERE'
      '  (TRANSITEM.OWNER_CODE = '#39'JOURNAL'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PAJ'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PPJ'#39' )AND'
      '  TRANSITEM.NOWNER = :P_NJournal AND'
      '  TRANSITEM.NJOURNAL <> 0 AND'
      '  TRANSITEM.ACCT = :P_Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_NJournal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object dsNaccounts: TUniDataSource
    AutoEdit = False
    DataSet = qryNaccounts
    Left = 440
    Top = 8
  end
  object ilstToolbar: TImageList
    Left = 479
    Top = 8
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C2000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C0001015200717171000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E45000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A00080606000AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C00080606000BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C0008060600000000000BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      800080606000806060000000000000000000C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      000000000000000000000000000000000000C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      000000000000000000000000000000000000CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008400000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF000000000000FFFF000000
      000000000000000000000000FF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FF00000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F80FF03FFFFF0000E007E007FF1F0000
      C003C000FF1F000080018000FF1F000080010000FF1F000000010000FE0F0000
      000100000007000000018000000300000001E001000000000001F00300000000
      0001F01F000000000001E03F000F00008003E03F000F0000C003C03F000F0000
      E00FC07F000F0000F01FF8FFFFFF00008000FFFFFFFFFFFF0000FFFFC007FE7F
      0000FFFF8003FC3F8000FFFF0001FC3F0000FFFF0001FE7F0000FFE70001FC3F
      8000C1F30000FC3F8000C3FB0000FC3F0000C7FB8000FC1F0000CBFBC000F20F
      0000DCF3E001E1070000FF07E007E187C001FFFFF007E007C001FFFFF003F00F
      C007FFFFF803F81FE3FFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dxBarManager1: TdxBarManager
    AllowCallFromAnotherForm = True
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'file'
      'Menu')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    UseSystemFont = False
    Left = 344
    Top = 12
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
      FloatLeft = 572
      FloatTop = 289
      FloatClientWidth = 26
      FloatClientHeight = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      NotDocking = [dsNone]
      OldName = 'Main Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
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
      FloatLeft = 657
      FloatTop = 265
      FloatClientWidth = 23
      FloatClientHeight = 72
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnMarkRecurring'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton5: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close Window'
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton5Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Journal'
      Category = 1
      Hint = 'New Journal'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = actNewJournalExecute
    end
    object dxReverse: TdxBarButton
      Caption = 'Reverse Current Journal'
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 1
      OnClick = actReverseJournalExecute
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Print All Journals'
      Category = 1
      Hint = 'Print All Journals'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = actPrintAllJournalsExecute
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Print Current Journal'
      Category = 1
      Hint = 'Print Current Journal'
      Visible = ivAlways
      OnClick = actPrintCurrJournalExecute
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Print'
      Category = 1
      Enabled = False
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxbtnPrintToExcel: TdxBarButton
      Caption = 'Export Grid To Excel'
      Category = 1
      Hint = 'Export Grid To Excel'
      Visible = ivAlways
      OnClick = dxbtnPrintToExcelClick
    end
    object btnMarkRecurring: TdxBarButton
      Caption = 'Use Recurring'
      Category = 1
      Enabled = False
      Hint = 'Use Recurring as template'
      Visible = ivAlways
      OnClick = btnMarkRecurringClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '&File'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
  end
  object ActionManager1: TActionManager
    Images = ilstToolbar
    Left = 512
    Top = 11
    StyleName = 'XP Style'
    object actNewJournal: TAction
      Caption = 'New Journal'
      ImageIndex = 0
      ShortCut = 16500
      OnExecute = actNewJournalExecute
    end
    object actReverseJournal: TAction
      Caption = 'Reverse Current Journal'
      ImageIndex = 1
      ShortCut = 8308
      OnExecute = actReverseJournalExecute
    end
    object actPrintCurrJournal: TAction
      Caption = 'Print Current Journal'
      Hint = 'Print Current Journal'
      ShortCut = 118
      OnExecute = actPrintCurrJournalExecute
    end
    object actPrintAllJournals: TAction
      Caption = 'Print All Journals'
      Hint = 'Print All Journals'
      ImageIndex = 2
      ShortCut = 8310
      OnExecute = actPrintAllJournalsExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 669
    Top = 4
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object styRevJournal: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object styNotRevJournal: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyleR: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyleD: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clMenuText
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbtnPrintToExcel'
      end>
    UseOwnFont = True
    Left = 621
    Top = 116
    PixelsPerInch = 96
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 843
    Top = 240
  end
  object dsJournalsPrint: TUniDataSource
    DataSet = qryJournalsPrint
    Left = 161
    Top = 362
  end
  object qryJournalsPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '   REFNO,ACCT, TRUNC(CREATED) AS CREATED, NJOURNAL, AMOUNT, REAS' +
        'ON, TYPE, REV_NJOURNAL, NMEMO, TRUST, TRUNC(SYSTEM_DATE) AS TX_D' +
        'ATE'
      'FROM'
      '   JOURNAL'
      'WHERE'
      '   CREATED >= :P_DateFrom AND CREATED <= :P_DateTo'
      'AND'
      '   ACCT = nvl(upper(:ACCT), ACCT)'
      'order by trunc(system_date)')
    Active = True
    Left = 77
    Top = 357
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = Null
      end>
  end
  object plJournalsPrint: TppDBPipeline
    DataSource = dsJournalsPrint
    UserName = 'plJournalsPrint'
    Left = 222
    Top = 368
  end
  object rptJournals: TppReport
    AutoStop = False
    DataPipeline = plJournalsPrint
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpVertical
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptJournalsBeforePrint
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
    Left = 295
    Top = 361
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plJournalsPrint'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object lblCompany: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblCompany'
        Border.mmPadding = 0
        Caption = 'lblCompany'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5715
        mmLeft = 0
        mmTop = 529
        mmWidth = 26035
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 0
        mmTop = 8731
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object lblEntity: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblEntity'
        Border.mmPadding = 0
        Caption = 'lblEntity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 16140
        mmWidth = 13843
        BandType = 0
        LayerName = Foreground
      end
      object pplblTitle: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Journal Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 9525
        mmWidth = 25019
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'TX Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 24077
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Jrnl #'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 24077
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4106
        mmLeft = 49213
        mmTop = 24077
        mmWidth = 15917
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4106
        mmLeft = 30956
        mmTop = 29633
        mmWidth = 7239
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4106
        mmLeft = 53711
        mmTop = 29633
        mmWidth = 15917
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4106
        mmLeft = 153723
        mmTop = 29633
        mmWidth = 7239
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4106
        mmLeft = 176477
        mmTop = 29633
        mmWidth = 8340
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 34396
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 184944
        mmTop = 24077
        mmWidth = 9864
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 163248
        mmTop = 24077
        mmWidth = 6096
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 1323
        mmTop = 29633
        mmWidth = 6350
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
      mmHeight = 14817
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'TX_DATE'
        DataPipeline = plJournalsPrint
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppDBMemo1
        TraverseAllData = False
        DataPipelineName = 'plAllocsPrint'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9002
        mmWidth = 197200
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plAllocsPrint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpVertical
          PrinterSetup.PaperName = 'A4 (210 x 297mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 209900
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '20.01'
          mmColumnWidth = 0
          DataPipelineName = 'plAllocsPrint'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'CODE'
              DataPipeline = plAllocsPrint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'plAllocsPrint'
              mmHeight = 3810
              mmLeft = 23548
              mmTop = 794
              mmWidth = 36777
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBMemo2: TppDBMemo
              DesignLayer = ppDesignLayer2
              UserName = 'DBMemo2'
              Border.mmPadding = 0
              CharWrap = False
              DataField = 'DESCR'
              DataPipeline = plAllocsPrint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsItalic]
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'plAllocsPrint'
              mmHeight = 3704
              mmLeft = 61913
              mmTop = 794
              mmWidth = 65617
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'DEBIT'
              DataPipeline = plAllocsPrint
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plAllocsPrint'
              mmHeight = 3810
              mmLeft = 137584
              mmTop = 794
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'CREDIT'
              DataPipeline = plAllocsPrint
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plAllocsPrint'
              mmHeight = 3704
              mmLeft = 163513
              mmTop = 794
              mmWidth = 20108
              BandType = 4
              LayerName = Foreground1
            end
          end
          object raCodeModule1: TraCodeModule
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NJOURNAL'
        DataPipeline = plJournalsPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3704
        mmLeft = 28310
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'REASON'
        DataPipeline = plJournalsPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3704
        mmLeft = 49213
        mmTop = 0
        mmWidth = 110331
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = plJournalsPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3768
        mmLeft = 163248
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plJournalsPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3704
        mmLeft = 172509
        mmTop = 0
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plJournalsPrint
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3703
        mmLeft = 0
        mmTop = 4233
        mmWidth = 26673
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169334
        mmTop = 1588
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 197200
        BandType = 8
        LayerName = Foreground
      end
      object lblFileName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblFileName'
        Border.mmPadding = 0
        Caption = 'lblFileName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3768
        mmLeft = 0
        mmTop = 1588
        mmWidth = 13758
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = 15395562
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 197200
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plJournalsPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plJournalsPrint'
        mmHeight = 3725
        mmLeft = 170657
        mmTop = 794
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
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
  object qryAllocsPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT njournal, alloc.fileid AS "CODE", alloc.client_name AS "D' +
        'ESCR",'
      '       CASE'
      '          WHEN alloc.amount < 0'
      '             THEN (alloc.amount + NVL (alloc.tax, 0))'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN alloc.amount > 0'
      '             THEN (alloc.amount + NVL (alloc.tax, 0))'
      '          ELSE 0'
      '       END AS credit'
      '  FROM alloc'
      ' WHERE'
      '--NJOURNAL = :P_NJournal AND'
      '       njournal <> 0 AND alloc.acct = :p_acct')
    MasterSource = dsJournalsPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 60
    Top = 410
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'NJOURNAL'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsAllocsPrint: TUniDataSource
    DataSet = qryAllocsPrint
    Left = 145
    Top = 411
  end
  object plAllocsPrint: TppDBPipeline
    DataSource = dsAllocsPrint
    UserName = 'plAllocsPrint'
    Left = 217
    Top = 420
    MasterDataPipelineName = 'plJournalsPrint'
  end
  object qryNAccountsPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CHART.COMPONENT_CODE_DISPLAY AS "CODE",'
      '  TRANSITEM.DESCR AS "TDESCR",'
      '  CHART.REPORT_DESC AS "DESCR",'
      '  TRANSITEM.AMOUNT AS "AMOUNT",'
      '      CASE'
      '          WHEN (TRANSITEM.AMOUNT) < 0'
      '             THEN (TRANSITEM.AMOUNT * -1)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (TRANSITEM.AMOUNT) > 0'
      '             THEN (TRANSITEM.AMOUNT * -1)'
      '          ELSE 0'
      '       END AS credit,'
      'njournal'
      'FROM'
      '  TRANSITEM,'
      '  CHART'
      'WHERE'
      '  (TRANSITEM.OWNER_CODE = '#39'JOURNAL'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PAJ'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PPJ'#39' )AND'
      '--  TRANSITEM.NOWNER = :P_NJournal AND'
      '  TRANSITEM.NJOURNAL <> 0 AND'
      '  TRANSITEM.ACCT = :P_Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    MasterSource = dsJournalsPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 52
    Top = 459
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end>
  end
  object dsNAccountsPrint: TUniDataSource
    DataSet = qryNAccountsPrint
    Left = 153
    Top = 470
  end
  object qryJournalPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '   REFNO,ACCT, TRUNC(CREATED) AS CREATED, NJOURNAL, AMOUNT, REAS' +
        'ON, TYPE, REV_NJOURNAL, NMEMO, TRUST, TRUNC(SYSTEM_DATE) AS SYST' +
        'EM_DATE'
      'FROM'
      '   JOURNAL'
      'WHERE'
      '   NJOURNAL = :NJOURNAL'
      'AND'
      '   NVL(ACCT,:ACCT) = :ACCT'
      'AND'
      '   NVL(TRUST,:TRUST) = :TRUST')
    Active = True
    Left = 433
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = Null
      end>
  end
  object qryAllocPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NJOURNAL , ALLOC.FILEID AS "CODE", ALLOC.CLIENT_NAME AS "' +
        'DESCR", '
      'case when ALLOC.AMOUNT < 0 then (ALLOC.AMOUNT+nvl(ALLOC.TAX,0))'
      'else 0 end AS DEBIT, '
      'case when ALLOC.AMOUNT > 0 then (ALLOC.AMOUNT+nvl(ALLOC.TAX,0)) '
      'else 0 end AS CREDIT '
      'FROM ALLOC WHERE'
      'NJOURNAL <> 0 '
      'AND ALLOC.BANK = :P_Acct'
      'AND ALLOC.TRUST = :P_Trust'
      'AND ALLOC.NJOURNAL = :P_NJournal')
    MasterSource = dsJournalPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Active = True
    Left = 430
    Top = 410
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'P_Trust'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'P_NJournal'
        Value = Null
      end
      item
        DataType = ftLargeint
        Name = 'NJOURNAL'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryNAccountPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CHART.COMPONENT_CODE_DISPLAY AS "CODE",'
      '  TRANSITEM.DESCR AS "TDESCR",'
      '  CHART.REPORT_DESC AS "DESCR",'
      '  TRANSITEM.AMOUNT AS "AMOUNT",'
      '      CASE'
      '          WHEN (TRANSITEM.AMOUNT) < 0'
      '             THEN (TRANSITEM.AMOUNT * -1)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (TRANSITEM.AMOUNT) > 0'
      '             THEN (TRANSITEM.AMOUNT * -1)'
      '          ELSE 0'
      '       END AS credit,'
      'njournal'
      'FROM'
      '  TRANSITEM,'
      '  CHART'
      'WHERE'
      '  (TRANSITEM.OWNER_CODE = '#39'JOURNAL'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PAJ'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PPJ'#39' )AND'
      '  TRANSITEM.NJOURNAL <> 0 AND'
      '  TRANSITEM.ACCT = :P_Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    MasterSource = dsJournalPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 430
    Top = 463
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end>
  end
  object dsJournalPrint: TUniDataSource
    DataSet = qryJournalPrint
    Left = 510
    Top = 359
  end
  object dsAllocPrint: TUniDataSource
    DataSet = qryAllocPrint
    Left = 495
    Top = 408
  end
  object dsNAccountPrint: TUniDataSource
    DataSet = qryNAccountPrint
    Left = 502
    Top = 467
  end
  object plJournalPrint: TppDBPipeline
    DataSource = dsJournalPrint
    UserName = 'plJournalPrint'
    Left = 571
    Top = 365
    object plJournalPrintppField1: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 0
    end
    object plJournalPrintppField2: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object plJournalPrintppField3: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plJournalPrintppField4: TppField
      FieldAlias = 'NJOURNAL'
      FieldName = 'NJOURNAL'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 3
    end
    object plJournalPrintppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plJournalPrintppField6: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 400
      DisplayWidth = 400
      Position = 5
    end
    object plJournalPrintppField7: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plJournalPrintppField8: TppField
      FieldAlias = 'REV_NJOURNAL'
      FieldName = 'REV_NJOURNAL'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object plJournalPrintppField9: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object plJournalPrintppField10: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object plJournalPrintppField11: TppField
      FieldAlias = 'SYSTEM_DATE'
      FieldName = 'SYSTEM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
  end
  object plAllocPrint: TppDBPipeline
    DataSource = dsAllocPrint
    UserName = 'plAllocPrint'
    Left = 566
    Top = 417
    object plAllocPrintppField1: TppField
      FieldAlias = 'NJOURNAL'
      FieldName = 'NJOURNAL'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plAllocPrintppField2: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plAllocPrintppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 2
    end
    object plAllocPrintppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT'
      FieldName = 'DEBIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plAllocPrintppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT'
      FieldName = 'CREDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object rptJournal: TppReport
    AutoStop = False
    DataPipeline = plAllocPrint
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpVertical
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptJournalBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
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
    Left = 644
    Top = 358
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plAllocPrint'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object lblCompanyJournals: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lblCompany'
        Border.mmPadding = 0
        Caption = 'lblCompany'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 88503
        mmTop = 529
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Journal Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 86048
        mmTop = 5027
        mmWidth = 25019
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 17198
        mmWidth = 8805
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Jrnl #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 22490
        mmWidth = 9356
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 27781
        mmWidth = 20532
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 35719
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 48154
        mmTop = 35719
        mmWidth = 17568
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 155311
        mmTop = 35719
        mmWidth = 8170
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 179557
        mmTop = 35719
        mmWidth = 9356
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 40481
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 142802
        mmTop = 17198
        mmWidth = 11980
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 61235
        mmTop = 17198
        mmWidth = 7027
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 529
        mmWidth = 31369
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plJournalPrint
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 21167
        mmTop = 17198
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NJOURNAL'
        DataPipeline = plJournalPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 21167
        mmTop = 22490
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = plJournalPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 70644
        mmTop = 17198
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plJournalPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 3598
        mmLeft = 157692
        mmTop = 17198
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'REASON'
        DataPipeline = plJournalPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plJournalPrint'
        mmHeight = 4233
        mmLeft = 21167
        mmTop = 27781
        mmWidth = 167482
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lblEntity1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'lblEntity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 11906
        mmWidth = 13843
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plAllocPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3641
        mmLeft = 21167
        mmTop = 794
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBMemo3: TppDBMemo
        DesignLayer = ppDesignLayer4
        UserName = 'DBMemo3'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = plAllocPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 794
        mmWidth = 91546
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'DEBIT'
        DataPipeline = plAllocPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3641
        mmLeft = 141288
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText11'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'CREDIT'
        DataPipeline = plAllocPrint
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAllocPrint'
        mmHeight = 3641
        mmLeft = 166688
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 197200
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lblFileName'
        Border.mmPadding = 0
        Caption = 'lblFileName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3768
        mmLeft = 0
        mmTop = 1058
        mmWidth = 13758
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qryCreateRecurring: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from journal'
      'where njournal = :njournal'
      'and acct = :acct')
    Left = 616
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'njournal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'acct'
        Value = nil
      end>
  end
  object qryCreateRecurringItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CHART.COMPONENT_CODE_DISPLAY AS "CODE",'
      '  TRANSITEM.DESCR AS "TDESCR",'
      '  CHART.REPORT_DESC AS "DESCR",'
      '  TRANSITEM.TAXCODE,'
      '  TRANSITEM.REFNO,'
      '  TRANSITEM.CHART,'
      '  TRANSITEM.AMOUNT AS "AMOUNT",'
      '      CASE'
      '          WHEN (TRANSITEM.AMOUNT) < 0'
      '             THEN (TRANSITEM.AMOUNT)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (TRANSITEM.AMOUNT) > 0'
      '             THEN (TRANSITEM.AMOUNT)'
      '          ELSE 0'
      '       END AS credit'
      'FROM'
      '  TRANSITEM,'
      '  CHART'
      'WHERE'
      '  (TRANSITEM.OWNER_CODE = '#39'JOURNAL'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PAJ'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PPJ'#39' )AND'
      '  TRANSITEM.NOWNER = :NJournal AND'
      '  TRANSITEM.NJOURNAL <> 0 AND'
      '  TRANSITEM.ACCT = :Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    Left = 608
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJournal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Acct'
        Value = nil
      end>
  end
  object qryTrustAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT njournal, alloc.fileid AS "CODE", alloc.client_name AS "D' +
        'ESCR",'
      '       (alloc.amount + NVL (alloc.tax, 0)) AS "AMOUNT",'
      '       CASE'
      '          WHEN (alloc.amount + NVL (alloc.tax, 0)) < 0'
      '             THEN ((alloc.amount + NVL (alloc.tax, 0))*-1)'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (alloc.amount + NVL (alloc.tax, 0)) > 0'
      '             THEN ((alloc.amount + NVL (alloc.tax, 0)))'
      '          ELSE 0'
      '       END AS credit'
      '  FROM alloc'
      
        ' WHERE njournal = :p_njournal AND njournal <> 0 AND alloc.bank =' +
        ' :p_bank AND alloc.trust = :p_trust'
      ''
      ''
      '/*'
      
        'SELECT ALLOC.FILEID AS "CODE", ALLOC.CLIENT_NAME AS "DESCR", (AL' +
        'LOC.AMOUNT+nvl(ALLOC.TAX,0)) AS "AMOUNT" '
      
        'FROM ALLOC WHERE NJOURNAL = :P_NJournal AND NJOURNAL <> 0 AND AL' +
        'LOC.ACCT = :P_Acct'
      '*/')
    Left = 384
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_njournal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_bank'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_trust'
        Value = nil
      end>
  end
  object dsTrustAllocs: TUniDataSource
    DataSet = qryTrustAllocs
    Left = 464
    Top = 136
  end
  object mMoveMatter: TPopupMenu
    OnPopup = mMoveMatterPopup
    Left = 816
    Top = 352
    object MoveMatter1: TMenuItem
      Caption = 'Move to different matter'
      OnClick = MoveMatter1Click
    end
  end
  object qryCopyAlloc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO alloc'
      
        '            (nalloc, bank, descr, ncheque, approval, nreceipt, c' +
        'leared,'
      
        '             dcleardate, created, acct, nmatter, refno, TYPE, nc' +
        'lient,'
      
        '             njournal, payer, trust, billed, fileid, ntrans, nme' +
        'mo,'
      
        '             client_name, system_date, matter_desc, overdrawn, d' +
        'isb_only,'
      
        '             PRIVATE, taxcode, sundrytype, disbtext, ninvoice, u' +
        'pcred,'
      
        '             pmnt_to_upcred, antd, amount, fee, outlay, sundry, ' +
        'spec_purpose,'
      
        '             tax, priorbalance, disb_crdit, antd_crdit, fees_crd' +
        'it, tax_crdit,'
      
        '             disb, ncheqreq, billed_amount, billed_tax_amount, m' +
        'rv_nalloc)'
      
        '   SELECT :alloc_new, a.bank, :descr, a.ncheque, a.approval, a.n' +
        'receipt,'
      
        '          a.cleared, a.dcleardate, a.created, a.acct, m.nmatter,' +
        ' a.refno,'
      
        '          :TYPE, :nclient, a.njournal, a.payer, a.trust, :billed' +
        ', :fileid,'
      
        '          a.ntrans, a.nmemo, :client_name, SYSDATE, :matter_desc' +
        ','
      
        '          a.overdrawn, a.disb_only, :private, a.taxcode, a.sundr' +
        'ytype, a.disbtext,'
      
        '          a.ninvoice, a.upcred, a.pmnt_to_upcred, a.antd, :amoun' +
        't, a.fee,'
      
        '          a.outlay, a.sundry, a.spec_purpose, :tax, a.priorbalan' +
        'ce,'
      
        '          a.disb_crdit, a.antd_crdit, a.fees_crdit, a.tax_crdit,' +
        ' a.disb,'
      
        '          a.ncheqreq, billed_amount, billed_tax_amount, :mrv_nal' +
        'loc'
      '     FROM alloc a, matter m'
      '    WHERE nalloc = :alloc_old AND m.fileid = :fileid')
    Left = 920
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ALLOC_NEW'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billed'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'client_name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'matter_desc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'private'
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
        Name = 'mrv_nalloc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ALLOC_OLD'
        Value = nil
      end>
  end
end
