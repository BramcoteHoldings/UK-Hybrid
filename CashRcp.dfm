object frmCashRcp: TfrmCashRcp
  Left = 135
  Top = 191
  Caption = 'Receipts Cashbook'
  ClientHeight = 727
  ClientWidth = 1204
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sbarInfo: TStatusBar
    Left = 0
    Top = 705
    Width = 1204
    Height = 22
    Panels = <
      item
        Alignment = taRightJustify
        Width = 120
      end
      item
        Width = 50
      end>
  end
  object pagCashbook: TcxPageControl
    Left = 0
    Top = 28
    Width = 1204
    Height = 677
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ilstToolbar
    OnChange = pagCashbookChange
    ClientRectBottom = 673
    ClientRectLeft = 4
    ClientRectRight = 1200
    ClientRectTop = 26
    object tabCashbook: TcxTabSheet
      Caption = 'Cashbook'
      ImageIndex = 0
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 250
        Width = 1196
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 53
        AlignSplitter = salTop
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1196
        Height = 250
        Align = alTop
        TabOrder = 1
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 1194
          Height = 27
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Receipts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            1194
            27)
          object Label17: TLabel
            Left = 986
            Top = 3
            Width = 39
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '&Search'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExplicitLeft = 1153
          end
          object tbSearch: TEdit
            Left = 1030
            Top = 0
            Width = 81
            Height = 25
            Anchors = [akTop, akRight]
            TabOrder = 0
            OnChange = tbSearchChange
            OnKeyDown = tbSearchKeyDown
          end
        end
        object dbgrReceipts: TcxGrid
          Left = 1
          Top = 28
          Width = 1194
          Height = 221
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object tvReceipts: TcxGridDBTableView
            PopupMenu = pmReceipts
            OnDblClick = tvReceiptsDblClick
            OnKeyDown = tvReceiptsKeyDown
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = tvReceiptsCellClick
            DataController.DataSource = dsReceipts
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 55
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.IndicatorWidth = 13
            Preview.LeftIndent = 22
            Preview.RightIndent = 6
            Styles.OnGetContentStyle = tvChequesStylesGetContentStyle
            object tvReceiptsACCT1: TcxGridDBColumn
              Caption = 'Bank'
              DataBinding.FieldName = 'ACCT'
              Width = 48
            end
            object tvReceiptsCREATED: TcxGridDBColumn
              Caption = 'Transaction Date'
              DataBinding.FieldName = 'CREATED'
              Width = 116
            end
            object tvReceiptsRCPTNO: TcxGridDBColumn
              Caption = 'Receipt'
              DataBinding.FieldName = 'RCPTNO'
              Width = 92
            end
            object tvReceiptsPAYOR1: TcxGridDBColumn
              Caption = 'Payor'
              DataBinding.FieldName = 'PAYOR'
              Width = 180
            end
            object tvReceiptsDESCR1: TcxGridDBColumn
              Caption = 'Reason'
              DataBinding.FieldName = 'DESCR'
              Width = 209
            end
            object tvReceiptsAMOUNT1: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 145
            end
            object tvReceiptsClearance1: TcxGridDBColumn
              DataBinding.FieldName = 'Clearance'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object tvReceiptsREVERSED: TcxGridDBColumn
              DataBinding.FieldName = 'REVERSED'
              Visible = False
            end
            object tvReceiptsNRECEIPT: TcxGridDBColumn
              DataBinding.FieldName = 'NRECEIPT'
              Visible = False
              VisibleForCustomization = False
            end
            object tvReceiptsPRINTER: TcxGridDBColumn
              DataBinding.FieldName = 'PRINTER'
              Visible = False
              VisibleForCustomization = False
            end
            object tvReceiptsRECEIPT_NO: TcxGridDBColumn
              Caption = 'Receipt'
              DataBinding.FieldName = 'RECEIPT_NO'
              MinWidth = 70
              Width = 85
            end
            object tvReceiptsNCHEQUE: TcxGridDBColumn
              DataBinding.FieldName = 'NCHEQUE'
              Visible = False
              VisibleForCustomization = False
            end
            object tvReceiptsCHQNO: TcxGridDBColumn
              Caption = 'Cheque #'
              DataBinding.FieldName = 'CHQNO'
              Width = 67
            end
            object tvReceiptsRCPT_BY: TcxGridDBColumn
              Caption = 'Receipted by'
              DataBinding.FieldName = 'WHO'
              Width = 57
            end
          end
          object dbgrReceiptsLevel1: TcxGridLevel
            GridView = tvReceipts
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 258
        Width = 1196
        Height = 389
        Align = alClient
        TabOrder = 2
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1194
          Height = 27
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Allocations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object rbMatters: TcxRadioButton
            Left = 113
            Top = 5
            Width = 62
            Height = 17
            Caption = '&Matters'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = rbMattersClick
            LookAndFeel.NativeStyle = True
          end
          object rbLedger: TcxRadioButton
            Left = 200
            Top = 5
            Width = 125
            Height = 17
            Caption = 'General &Ledger'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = rbLedgerClick
            LookAndFeel.NativeStyle = True
          end
        end
        object dbgrAllocations: TcxGrid
          Left = 1
          Top = 28
          Width = 1194
          Height = 360
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object tvAllocations: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsNallocs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 55
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.IndicatorWidth = 13
            Preview.LeftIndent = 22
            Preview.RightIndent = 6
            Styles.Background = cxStyle1
            Styles.Content = cxStyle1
            object tvAllocationsCODE1: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'CODE'
              Width = 100
            end
            object tvAllocationsDESCR1: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Width = 300
            end
            object tvAllocationsAMOUNT1: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 90
            end
          end
          object dbgrAllocationsLevel1: TcxGridLevel
            GridView = tvAllocations
          end
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 11
      DesignSize = (
        1196
        647)
      object Label7: TLabel
        Left = 8
        Top = 138
        Width = 101
        Height = 15
        Caption = 'Receipt Number To'
        Transparent = True
      end
      object Label6: TLabel
        Left = 8
        Top = 110
        Width = 117
        Height = 15
        Caption = 'Receipt Number From'
        Transparent = True
      end
      object lblAmountFrom: TLabel
        Left = 8
        Top = 254
        Width = 105
        Height = 15
        Caption = 'Amount more than '
        Transparent = True
      end
      object Label8: TLabel
        Left = 8
        Top = 167
        Width = 134
        Height = 15
        Caption = 'Receipt Number contains'
        Transparent = True
      end
      object Label5: TLabel
        Left = 8
        Top = 283
        Width = 96
        Height = 15
        Caption = 'Amount less than '
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 82
        Width = 39
        Height = 15
        Caption = 'Date To'
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 58
        Width = 55
        Height = 15
        Caption = 'Date From'
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 225
        Width = 107
        Height = 15
        Caption = 'Description includes'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 196
        Width = 77
        Height = 15
        Caption = 'Payor includes'
        Transparent = True
      end
      object lblBankName: TLabel
        Left = 222
        Top = 26
        Width = 3
        Height = 15
        Transparent = True
      end
      object lblBank: TLabel
        Left = 8
        Top = 26
        Width = 26
        Height = 15
        Caption = 'Bank'
        Transparent = True
      end
      object DateChangeButton8: TDateChangeButton
        Left = 571
        Top = 79
        Width = 96
        Height = 25
        Caption = 'Last Year'
        TabOrder = 0
        TabStop = False
        ChangeType = ctLastYear
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton7: TDateChangeButton
        Left = 571
        Top = 51
        Width = 96
        Height = 25
        Caption = 'Year To Date'
        TabOrder = 1
        TabStop = False
        ChangeType = ctYearToDate
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dtpDateFrom: TDateTimePicker
        Left = 180
        Top = 51
        Width = 90
        Height = 23
        Date = 0.847006782409152900
        Time = 0.847006782409152900
        TabOrder = 2
      end
      object dcToday: TDateChangeButton
        Left = 275
        Top = 51
        Width = 96
        Height = 25
        Caption = 'Today'
        TabOrder = 3
        TabStop = False
        ChangeType = ctToday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton6: TDateChangeButton
        Left = 473
        Top = 79
        Width = 96
        Height = 25
        Caption = 'Last Month'
        TabOrder = 4
        TabStop = False
        ChangeType = ctLastMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton3: TDateChangeButton
        Left = 374
        Top = 79
        Width = 96
        Height = 25
        Caption = 'Last Week'
        TabOrder = 5
        TabStop = False
        ChangeType = ctLastWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton2: TDateChangeButton
        Left = 275
        Top = 79
        Width = 96
        Height = 25
        Caption = 'Yesterday'
        TabOrder = 6
        TabStop = False
        ChangeType = ctYesterday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton5: TDateChangeButton
        Left = 473
        Top = 51
        Width = 96
        Height = 25
        Caption = 'This Month'
        TabOrder = 7
        TabStop = False
        ChangeType = ctThisMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton4: TDateChangeButton
        Left = 374
        Top = 51
        Width = 96
        Height = 25
        Caption = 'This Week'
        TabOrder = 8
        TabStop = False
        ChangeType = ctThisWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object tbDesc: TEdit
        Left = 163
        Top = 222
        Width = 121
        Height = 23
        TabOrder = 9
      end
      object tbChqnoTo: TEdit
        Left = 163
        Top = 135
        Width = 121
        Height = 23
        TabOrder = 10
        OnEnter = tbChqnoToEnter
      end
      object tbRcptNoLike: TEdit
        Left = 163
        Top = 164
        Width = 121
        Height = 23
        TabOrder = 11
        OnEnter = tbChqnoToEnter
      end
      object tbPayor: TEdit
        Left = 163
        Top = 193
        Width = 121
        Height = 23
        TabOrder = 12
      end
      object tbChqnoFrom: TEdit
        Left = 163
        Top = 107
        Width = 121
        Height = 23
        TabOrder = 13
      end
      object rgOrderby: TcxRadioGroup
        Left = 442
        Top = 107
        Caption = 'Order by'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Date'
          end
          item
            Caption = 'Receipt No'
          end>
        ItemIndex = 1
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Transparent = True
        Height = 40
        Width = 225
      end
      object dtpDateTo: TDateTimePicker
        Left = 180
        Top = 79
        Width = 90
        Height = 23
        Date = 0.847006782409152900
        Time = 0.847006782409152900
        TabOrder = 15
      end
      object tbAmountTo: TEdit
        Left = 163
        Top = 280
        Width = 121
        Height = 23
        TabOrder = 16
      end
      object tbAmountFrom: TEdit
        Left = 163
        Top = 251
        Width = 121
        Height = 23
        TabOrder = 17
      end
      object chkNoReversals: TcxCheckBox
        Left = 4
        Top = 327
        AutoSize = False
        Caption = 'Exclude Reversals'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Transparent = True
        Height = 25
        Width = 180
      end
      object chkDateTo: TCheckBox
        Left = 163
        Top = 83
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 19
      end
      object chkUnprinted: TcxCheckBox
        Left = 4
        Top = 307
        AutoSize = False
        Caption = 'Select unprinted Receipts'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 20
        Transparent = True
        Height = 25
        Width = 180
      end
      object chkReversalsOnly: TcxCheckBox
        Left = 4
        Top = 348
        AutoSize = False
        Caption = 'Show Reversals Only'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 21
        Transparent = True
        Height = 25
        Width = 180
      end
      object chkDateFrom: TCheckBox
        Left = 163
        Top = 55
        Width = 17
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 22
      end
      object cbBank: TComboBox
        Left = 163
        Top = 23
        Width = 57
        Height = 23
        TabOrder = 23
        OnChange = cbBankChange
        OnClick = cbBankClick
      end
      object btnClearAll: TBitBtn
        Left = 1112
        Top = 619
        Width = 81
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = '&Clear All'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        ModalResult = 3
        NumGlyphs = 2
        TabOrder = 24
        OnClick = btnClearAllClick
      end
    end
  end
  object qryNallocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  MATTER.AUTHOR AS AUTHOR,'
      '  ALLOC.FILEID AS "CODE",'
      '  ALLOC.CLIENT_NAME || '#39' '#39' || ALLOC.MATTER_DESC AS DESCR,'
      '  ALLOC.AMOUNT AS "AMOUNT",'
      '  MATTER.NMATTER,'
      '  ALLOC.CLEARED'
      '  FROM ALLOC, MATTER'
      'WHERE ALLOC.NMATTER = MATTER.NMATTER'
      'AND ALLOC.NRECEIPT = :P_Nreceipt AND ALLOC.NRECEIPT <> 0')
    Left = 229
    Top = 553
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end>
  end
  object dsNallocs: TUniDataSource
    AutoEdit = False
    DataSet = qryNallocs
    Left = 261
    Top = 553
  end
  object dsReceipts: TUniDataSource
    AutoEdit = False
    DataSet = qryReceipts
    Left = 197
    Top = 553
  end
  object qryTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT FROM RECEIPT WHE' +
        'RE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo')
    Left = 389
    Top = 363
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
  object qryReceiptsBankDeps: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM RECEIPT'
      'WHERE CREATED >= :P_DateFrom'
      '   AND CREATED < :P_DateTo'
      ' ')
    AfterScroll = qryReceiptsBankDepsAfterScroll
    Left = 446
    Top = 303
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
      
        'SELECT CHART.COMPONENT_CODE_DISPLAY AS "CODE", CHART.REPORT_DESC' +
        ' AS DESCR, TRANSITEM.AMOUNT AS "AMOUNT" '
      'FROM TRANSITEM, CHART '
      'WHERE TRANSITEM.OWNER_CODE = '#39'RECEIPT'#39' '
      'AND TRANSITEM.NOWNER = :P_Nreceipt '
      'AND TRANSITEM.NRECEIPT <> 0 '
      'AND TRANSITEM.CHART = CHART.CODE '
      'AND TRANSITEM.ACCT = CHART.BANK')
    Left = 421
    Top = 362
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end>
  end
  object dsNaccounts: TUniDataSource
    AutoEdit = False
    DataSet = qryNaccounts
    Left = 453
    Top = 363
  end
  object ilstToolbar: TImageList
    Left = 568
    Top = 18
    Bitmap = {
      494C01010C001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000C0C0C00080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      000000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      0000000000000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF008080800000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000000080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      00000000000000000000000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080008080800000000000FF0000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C0008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      00000000000000000000000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080008080800000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000FF0000FF0000808080008080
      8000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF0000000000000000000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060008080800000000000FF000000FF00
      0000000000000000000000000000C0C0C000C0C0C00080808000808080000000
      000000000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF000000000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF00000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000008080800000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A0000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF0000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000008080800000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF00000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000008080800000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
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
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D4000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00007F7F7F0000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F0000000000000000007F7F
      7F00000000007F7F7F000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C0001015200717171000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007F7F7F000000000000000000FFFF00007F7F
      7F007F7F7F00000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E4500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF000000000000000000007F7F
      7F00000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007F7F7F00FFFF0000FFFF0000000000007F7F
      7F007F7F7F000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B8001111780000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F0000000000000000007F7F
      7F00000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B900000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA70000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FFFF
      FF00FFFFFF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF0000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF0000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF007B7B7B000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000008484840084848400000000008484
      84000000FF000000FF000000FF008484840000FFFF0000FFFF0000FFFF008484
      8400FF000000FF000000FF0000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000FF000000
      FF007B7B7B00FFFFFF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD0000000000000000000000FF007B7B7B00FFFF
      FF000000000000000000000000000000FF000000FF007B7B7B0000000000FFFF
      FF00000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BDBDBD0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000FF000000FF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000008484840084848400000000008484
      8400000000000000000000000000848484008484840084848400848484008484
      8400FF000000FF000000FF00000084848400000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000FF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F03FFF1FFFFFFFFFE007FC07FFFFFF1F
      C0000001FFFFFF1F80007480FFFFFF1F00005700FFFFFF1F00007400BE8DFE0F
      000048109EBA000780007E390EDE0003E001409D06DD0000F0037FAE0EEE0000
      F01F40B19CAA0000E03F7FBFBEDD000FE03F443FFFFF000FC03F7D7FFFFF000F
      C07F7CFFFFFF000FF8FF01FFFFFFFFFFFFFFFFFFFFFFF80FC007FE7F000CE007
      8003FC3F0008C0030001FC3F000180010001FE7F006380010001FC3F00C30001
      0000FC3F01EB00010000FC3F016B00018000FC1F00230001C000F20F00670001
      E001E107000F0001E007E187000F0001F007E007000F8003F003F00F005FC003
      F803F81F003FE00FFFFFFFFF007FF01F8000FFFFFFFFF1110000C007FFFFFFFF
      0000C007FFFF00000000C007FFFFD1110000C007FFFF91110000C007FFE7D111
      0000C007C1F300000000C007C3FBD11180008007C7FB91F1C000C007CBFBD1F1
      C000C007DCF30000C000C007FF07DFF1C000C007FFFF9FF1C000C013FFFFDFFF
      C000C038FFFF0000E001FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryBarCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, SUM(AMOUNT) AS TotalChqs FROM CHEQUE WHERE REVER' +
        'SED <> '#39'Y'#39' AND CREATED >= :P_DateFrom AND CREATED <= :P_DateTo G' +
        'ROUP BY CREATED'
      '')
    Left = 487
    Top = 361
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
  object qryBarReceipts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, SUM(AMOUNT) AS TotalRcpts FROM RECEIPT WHERE REV' +
        'ERSED <> '#39'Y'#39' AND CREATED >= :P_DateFrom AND CREATED <= :P_DateTo' +
        ' GROUP BY CREATED')
    Left = 519
    Top = 361
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
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT ACCT FROM BANK WHERE ACTIVE = '#39'Y'#39' AND ENTITY = :P_Entity')
    Left = 551
    Top = 361
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT AMOUNT FROM RECEIPT WHERE BANKED = '#39'Y'#39' AND CLEARED = '#39'N'#39)
    Left = 583
    Top = 361
  end
  object qryReceipts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, DR' +
        'AWER, BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE, '
      
        'BANKED, CLEARED, NTRANS, TRUST, SUFCHQ, DESCR, NBANKDEP, SYSTEM_' +
        'DATE, PRINTED, NNAME, AMOUNT, NCHEQUE, WHO, RECEIPT_NO, '
      
        'TAKE_ON, WASCONVERTED, AMOUNT AS AMOUNT1, '#39#39' as rcpt_by, banked_' +
        'date'
      
        'FROM RECEIPT WHERE CREATED >= :P_DateFrom AND CREATED < :P_DateT' +
        'o')
    AfterScroll = qryReceiptsAfterScroll
    Left = 165
    Top = 552
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
      'Menus')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 439
    Top = 18
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'File1'
        end>
      MultiLine = True
      OldName = 'Main Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnNew'
        end
        item
          Visible = True
          ItemName = 'tbtnClear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnPrevCashbook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrintCashBook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrintAllocations'
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
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object tbtnBarGraph: TdxBarButton
      Caption = 'Graph'
      Category = 0
      Enabled = False
      Hint = 'Graph of Cheques vs. Receipts'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = tbtnBarGraphClick
    end
    object tbtnPrevCashbook: TdxBarButton
      Caption = 'Preview Cashbook'
      Category = 0
      Enabled = False
      Hint = 'Preview Cashbook'
      Visible = ivAlways
      ImageIndex = 6
      PaintStyle = psCaptionGlyph
      OnClick = tbtnPrevCashbookClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Export to Excel'
      Category = 0
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object tbtnNew: TdxBarButton
      Caption = 'New Receipt'
      Category = 1
      Hint = 'Create a New Receipt'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = mnuFileNewClick
    end
    object tbtnClear: TdxBarButton
      Caption = 'Special Clearance'
      Category = 1
      Enabled = False
      Hint = 'Special Clearance'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = tbtnClearClick
    end
    object mnuFilePrintCheque: TdxBarButton
      Caption = 'Print Current Receipt'
      Category = 1
      Hint = 
        'Prints only one cheque - the highlighted one, but only if it has' +
        ' not previously been printed.'
      Visible = ivAlways
      OnClick = mnuFilePrintChequeClick
    end
    object mnuFilePrintAllCheques: TdxBarButton
      Caption = 'Print All Receipts'
      Category = 1
      Hint = 'Use Filter to Select a Subset'
      Visible = ivAlways
      OnClick = mnuFilePrintAllChequesClick
    end
    object mnuFilePrintAllocations: TdxBarButton
      Caption = 'Print Receipt Allocations'
      Category = 1
      Enabled = False
      Hint = 'Print Receipt Allocations'
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = mnuFilePrintAllocationsClick
    end
    object mnuFilePrintCashBook: TdxBarButton
      Caption = 'Print Receipts Cashbook'
      Category = 1
      Enabled = False
      Hint = 'Use Filter to Specify Bank Account and Date Ranges'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = mnuFilePrintCashBookClick
    end
    object tbtnReverse: TdxBarButton
      Caption = 'Reverse Current Receipt'
      Category = 1
      Enabled = False
      Hint = 
        'Creates an Equal but Opposite Payment Entry to Cancel this Chequ' +
        'e'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = tbtnReverseClick
    end
    object mnuFileExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Exit screen'
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = mnuFileExitClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Re Number Current Receipt'
      Category = 1
      Hint = 'Re Number Current Receipt'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = dxBarButton3Click
    end
    object Help2: TdxBarButton
      Caption = 'Help '
      Category = 2
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 112
    end
    object HowtoCreateaPayment1: TdxBarButton
      Caption = 'How to Create a Receipt'
      Category = 2
      Hint = 'Press F5 to create a New Cheque'
      Visible = ivAlways
    end
    object HowtoFindaCheque1: TdxBarButton
      Caption = 'How to Find a Receipt'
      Category = 2
      Hint = 'Use the Filter Tab to Select only some Cheques'
      Visible = ivAlways
    end
    object HowtoCancelaCheque1: TdxBarButton
      Caption = 'How to Cancel a Receipt'
      Category = 2
      Visible = ivAlways
    end
    object File1: TdxBarSubItem
      Caption = 'File'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnNew'
        end
        item
          Visible = True
          ItemName = 'tbtnClear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrintCheque'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintAllCheques'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintAllocations'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintCashBook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
    end
    object Help1: TdxBarSubItem
      Caption = 'Help'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Help2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'HowtoCreateaPayment1'
        end
        item
          Visible = True
          ItemName = 'HowtoFindaCheque1'
        end
        item
          Visible = True
          ItemName = 'HowtoCancelaCheque1'
        end>
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 364
    Top = 26
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyleR: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyleG: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object cxStyleD: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindowText
    end
  end
  object pmReceipts: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'tbtnClear'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'mnuFilePrintCheque'
      end
      item
        Visible = True
        ItemName = 'mnuFilePrintAllCheques'
      end
      item
        Visible = True
        ItemName = 'mnuFilePrintAllocations'
      end
      item
        Visible = True
        ItemName = 'mnuFilePrintCashBook'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnReverse'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 330
    Top = 201
    PixelsPerInch = 96
  end
  object ActionManager1: TActionManager
    Left = 553
    Top = 199
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
  object rptCashReceiptsBook: TppReport
    AutoStop = False
    DataPipeline = plReceiptsBankDepsRpt
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
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
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
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
    Left = 694
    Top = 337
    Version = '20.01'
    mmColumnWidth = 284427
    DataPipelineName = 'plReceiptsBankDepsRpt'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Brush.Color = 15395562
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 7144
        mmLeft = 0
        mmTop = 11113
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          Border.mmPadding = 0
          Caption = 'Cash Receipts Book'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4234
          mmLeft = 1323
          mmTop = 12435
          mmWidth = 33073
          BandType = 0
          LayerName = Foreground
        end
        object ppSystemVariable1: TppSystemVariable
          DesignLayer = ppDesignLayer1
          UserName = 'SystemVariable1'
          Border.mmPadding = 0
          VarType = vtPageNoDesc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 271198
          mmTop = 12700
          mmWidth = 10319
          BandType = 0
          LayerName = Foreground
        end
      end
      object lblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblCompanyName'
        OnGetText = lblCompanyNameGetText
        Border.mmPadding = 0
        Caption = 'BHL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 1852
        mmTop = 1852
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 17727
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel2: TppLabel
          OnPrint = ppLabel2Print
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = 'Label2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 19050
          mmWidth = 10054
          BandType = 0
          LayerName = Foreground
        end
      end
      object ppRegion3: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region3'
        ParentWidth = True
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion2
        mmHeight = 15875
        mmLeft = 0
        mmTop = 23813
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = 'Date Entered'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 25400
          mmWidth = 19050
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Border.mmPadding = 0
          Caption = 'Receipt#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 25665
          mmTop = 25400
          mmWidth = 13229
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.mmPadding = 0
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 25665
          mmTop = 29898
          mmWidth = 6879
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          Border.mmPadding = 0
          Caption = 'Author'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 25665
          mmTop = 34396
          mmWidth = 9260
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          Border.mmPadding = 0
          Caption = 'Bank'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 56092
          mmTop = 25400
          mmWidth = 7408
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Matter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 56092
          mmTop = 34396
          mmWidth = 8731
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.mmPadding = 0
          Caption = 'Payor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 78846
          mmTop = 25400
          mmWidth = 8202
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          Border.mmPadding = 0
          Caption = 'Reason'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 78846
          mmTop = 29898
          mmWidth = 11642
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Matter Allocation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 8128
          mmLeft = 192088
          mmTop = 30427
          mmWidth = 15494
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Receipt Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 8202
          mmLeft = 223584
          mmTop = 30427
          mmWidth = 12965
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          Border.mmPadding = 0
          Caption = 'Deposited'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 266701
          mmTop = 34660
          mmWidth = 15081
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label20'
          Border.mmPadding = 0
          Caption = 'Banked'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 251355
          mmTop = 34396
          mmWidth = 11112
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel36: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label36'
          Border.mmPadding = 0
          Caption = 'Date Receipted'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 29898
          mmWidth = 22490
          BandType = 0
          LayerName = Foreground
        end
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 40481
        mmWidth = 284300
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
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        TraverseAllData = False
        DataPipelineName = 'plNallocsRpt'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plNallocsRpt
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
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
          Version = '20.01'
          mmColumnWidth = 0
          DataPipelineName = 'plNallocsRpt'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 16669
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'TYPE'
              DataPipeline = plReceiptsBankDepsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plReceiptsBankDepsRpt'
              mmHeight = 4064
              mmLeft = 24340
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'CODE'
              DataPipeline = plNallocsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plNallocsRpt'
              mmHeight = 4022
              mmLeft = 58206
              mmTop = 6085
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'DESCR'
              DataPipeline = plReceiptsBankDepsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plReceiptsBankDepsRpt'
              mmHeight = 3979
              mmLeft = 77521
              mmTop = 1058
              mmWidth = 130704
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = 'AMOUNT'
              DataPipeline = plNallocsRpt
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plNallocsRpt'
              mmHeight = 4022
              mmLeft = 190763
              mmTop = 6085
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'AUTH_NAME'
              DataPipeline = plNallocsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plNallocsRpt'
              mmHeight = 4022
              mmLeft = 24075
              mmTop = 6085
              mmWidth = 31485
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'DESCR'
              DataPipeline = plNallocsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plNallocsRpt'
              mmHeight = 4022
              mmLeft = 77521
              mmTop = 6085
              mmWidth = 110861
              BandType = 4
              LayerName = Foreground4
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label22'
              Border.mmPadding = 0
              Caption = 'Banked Date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 24077
              mmTop = 11377
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText14'
              Border.mmPadding = 0
              DataField = 'DEPOSIT_DATE'
              DataPipeline = plBankedDeposit
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plBankedDeposit'
              mmHeight = 3598
              mmLeft = 57677
              mmTop = 11377
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText30'
              Border.mmPadding = 0
              DataField = 'NBANKDEP'
              DataPipeline = plReceiptsBankDepsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plReceiptsBankDepsRpt'
              mmHeight = 3969
              mmLeft = 89163
              mmTop = 11377
              mmWidth = 28840
              BandType = 4
              LayerName = Foreground4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppRegion6: TppRegion
              DesignLayer = ppDesignLayer5
              UserName = 'Region6'
              Brush.Color = 15395562
              ParentWidth = True
              Pen.Style = psClear
              mmHeight = 6350
              mmLeft = 0
              mmTop = 794
              mmWidth = 284300
              BandType = 7
              LayerName = Foreground4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBCalc4: TppDBCalc
                DesignLayer = ppDesignLayer5
                UserName = 'DBCalc4'
                Border.mmPadding = 0
                DataField = 'NMATTER'
                DataPipeline = plNallocsRpt
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                ParentDataPipeline = False
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'plNallocsRpt'
                mmHeight = 3810
                mmLeft = 25135
                mmTop = 1588
                mmWidth = 17198
                BandType = 7
                LayerName = Foreground4
              end
              object ppLabel23: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label23'
                Border.mmPadding = 0
                Caption = 'Count:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 3810
                mmLeft = 12700
                mmTop = 1588
                mmWidth = 10202
                BandType = 7
                LayerName = Foreground4
              end
              object ppLabel24: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label24'
                Border.mmPadding = 0
                Caption = 'Total Amount Banked:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 3810
                mmLeft = 187325
                mmTop = 2117
                mmWidth = 33528
                BandType = 7
                LayerName = Foreground4
              end
              object ppDBText15: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText15'
                Border.mmPadding = 0
                DataField = 'BANKED_AMT'
                DataPipeline = plReceiptsBankDepsRpt
                DisplayFormat = '$#,0.00;($#,0.00)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Segoe UI'
                Font.Size = 9
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'plReceiptsBankDepsRpt'
                mmHeight = 3979
                mmLeft = 235480
                mmTop = 1852
                mmWidth = 25929
                BandType = 7
                LayerName = Foreground4
              end
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line5'
              Border.mmPadding = 0
              Pen.Width = 2
              ParentWidth = True
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 529
              mmWidth = 284300
              BandType = 7
              LayerName = Foreground4
            end
          end
          object ppDesignLayers5: TppDesignLayers
            object ppDesignLayer5: TppDesignLayer
              UserName = 'Foreground4'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 794
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 246857
        mmTop = 1852
        mmWidth = 35189
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 235215
        mmTop = 1852
        mmWidth = 10319
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Receipted:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 1852
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Banked:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 183886
        mmTop = 7673
        mmWidth = 12171
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'Variance:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 182034
        mmTop = 20108
        mmWidth = 14287
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Unbanked:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 179652
        mmTop = 13494
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppReceipts: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'Receipts'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plReceiptsBankDepsRpt
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReceiptsBankDepsRpt'
        mmHeight = 3810
        mmLeft = 208757
        mmTop = 2117
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        OnPrint = ppVariable2Print
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        CalcType = veReportEnd
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 208757
        mmTop = 13494
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 174096
        mmTop = 18521
        mmWidth = 62442
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'BANKED_AMT'
        DataPipeline = plReceiptsBankDepsRpt
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReceiptsBankDepsRpt'
        mmHeight = 3810
        mmLeft = 208492
        mmTop = 7673
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3810
        mmLeft = 207698
        mmTop = 20108
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'RCPTNO'
      DataPipeline = plReceiptsBankDepsRpt
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReceiptsBankDepsRpt'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 9635
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Color = 15395562
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          Shape = stRoundRect
          Visible = False
          mmHeight = 9635
          mmLeft = 0
          mmTop = 0
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'SYSTEM_DATE'
          DataPipeline = plReceiptsBankDepsRpt
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4233
          mmLeft = 1323
          mmTop = 793
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'RCPTNO'
          DataPipeline = plReceiptsBankDepsRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4233
          mmLeft = 25400
          mmTop = 793
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'ACCT'
          DataPipeline = plReceiptsBankDepsRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4233
          mmLeft = 56087
          mmTop = 793
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          Border.mmPadding = 0
          DataField = 'AMOUNT'
          DataPipeline = plReceiptsBankDepsRpt
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4233
          mmLeft = 211667
          mmTop = 793
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'BANKED'
          DataPipeline = plReceiptsBankDepsRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4233
          mmLeft = 267230
          mmTop = 793
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'BANKED_AMT'
          DataPipeline = plReceiptsBankDepsRpt
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4233
          mmLeft = 243155
          mmTop = 793
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo1'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'PAYOR'
          DataPipeline = plReceiptsBankDepsRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 4203
          mmLeft = 78845
          mmTop = 793
          mmWidth = 128978
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'CREATED'
          DataPipeline = plReceiptsBankDepsRpt
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReceiptsBankDepsRpt'
          mmHeight = 3704
          mmLeft = 1322
          mmTop = 5555
          mmWidth = 19050
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
        mmHeight = 529
        mmPrintPosition = 0
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraVarProgram'
        raProgram.ChildType = 17
        raProgram.ProgramName = 'Variables'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variables;'#13#10'var'#13#10'   fBanked : Currency;'#13#10'   fUnbanked ' +
          ': Currency;'#13#10'   fTotalBanked : Currency;'#13#10#13#10'begin'#13#10#13#10'end;'#13#10
        raProgram.CaretPos = (
          3
          2)
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'ReportBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure ReportBeforePrint;'#13#10'begin'#13#10'//  Shape1.Visible := ('#13#10'en' +
          'd;'#13#10
        raProgram.ComponentName = 'Report'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 1
        raProgram.CaretPos = (
          3
          3)
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
  object qryNallocsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  MATTER.AUTHOR AS AUTHOR,'
      '  ALLOC.FILEID AS "CODE",'
      '  ALLOC.CLIENT_NAME || '#39' '#39' || ALLOC.MATTER_DESC AS DESCR,'
      '  ALLOC.AMOUNT AS "AMOUNT",'
      '  MATTER.NMATTER,'
      '  ALLOC.CLEARED,'
      ' Get_AuthorName(MATTER.AUTHOR) AS AUTH_NAME'
      '  FROM ALLOC, MATTER'
      'WHERE ALLOC.NMATTER = MATTER.NMATTER'
      'AND ALLOC.NRECEIPT = :P_Nreceipt AND ALLOC.NRECEIPT <> 0')
    Active = True
    Left = 498
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = Null
      end>
  end
  object OraQuery2: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT AMOUNT FROM RECEIPT WHERE BANKED = '#39'Y'#39' AND CLEARED = '#39'N'#39)
    Left = 573
    Top = 425
  end
  object qryReceiptsBankDepsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, DR' +
        'AWER,'
      
        'BANK, BRANCH, CHQNO, REVERSED, RVBY, DCLEARDATE, CCTYPE, BANKED,' +
        ' CLEARED,'
      
        'NTRANS, TRUST, SUFCHQ, DESCR, NBANKDEP, SYSTEM_DATE, PRINTED, NN' +
        'AME, AMOUNT,'
      
        'DECODE(BANKED,'#39'Y'#39',AMOUNT,0) AS BANKED_AMT, NCHEQUE, WHO, RECEIPT' +
        '_NO, TAKE_ON, banked_date'
      
        'FROM RECEIPT WHERE CREATED >= :P_DateFrom AND CREATED < :P_DateT' +
        'o '
      'ORDER BY RECEIPT_NO ASC')
    Active = True
    AfterScroll = qryReceiptsBankDepsRptAfterScroll
    Left = 660
    Top = 413
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
      end>
  end
  object qryBankedDeposit: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      'DEPOSIT_DATE'
      'FROM'
      'BANKDEP'
      'WHERE'
      'NBANKDEP = :NBANKDEP'
      'AND'
      'ACCT = NVL(:ACCT, ACCT)'
      '')
    Left = 784
    Top = 397
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = Null
      end>
  end
  object dsReceiptsBankDepsRpt: TUniDataSource
    DataSet = qryReceiptsBankDepsRpt
    Left = 658
    Top = 464
  end
  object plReceiptsBankDepsRpt: TppDBPipeline
    DataSource = dsReceiptsBankDepsRpt
    CloseDataSource = True
    UserName = 'plReceiptsBankDepsRpt'
    Left = 684
    Top = 512
    object plReceiptsBankDepsRptppField1: TppField
      FieldAlias = 'PRINTER'
      FieldName = 'PRINTER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plReceiptsBankDepsRptppField2: TppField
      FieldAlias = 'NRECEIPT'
      FieldName = 'NRECEIPT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plReceiptsBankDepsRptppField3: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plReceiptsBankDepsRptppField4: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object plReceiptsBankDepsRptppField5: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object plReceiptsBankDepsRptppField6: TppField
      FieldAlias = 'RCPTNO'
      FieldName = 'RCPTNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 5
    end
    object plReceiptsBankDepsRptppField7: TppField
      FieldAlias = 'PAYOR'
      FieldName = 'PAYOR'
      FieldLength = 85
      DisplayWidth = 85
      Position = 6
    end
    object plReceiptsBankDepsRptppField8: TppField
      FieldAlias = 'DRAWER'
      FieldName = 'DRAWER'
      FieldLength = 85
      DisplayWidth = 85
      Position = 7
    end
    object plReceiptsBankDepsRptppField9: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object plReceiptsBankDepsRptppField10: TppField
      FieldAlias = 'BRANCH'
      FieldName = 'BRANCH'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plReceiptsBankDepsRptppField11: TppField
      FieldAlias = 'CHQNO'
      FieldName = 'CHQNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 10
    end
    object plReceiptsBankDepsRptppField12: TppField
      FieldAlias = 'REVERSED'
      FieldName = 'REVERSED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object plReceiptsBankDepsRptppField13: TppField
      FieldAlias = 'RVBY'
      FieldName = 'RVBY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object plReceiptsBankDepsRptppField14: TppField
      FieldAlias = 'DCLEARDATE'
      FieldName = 'DCLEARDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object plReceiptsBankDepsRptppField15: TppField
      FieldAlias = 'CCTYPE'
      FieldName = 'CCTYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object plReceiptsBankDepsRptppField16: TppField
      FieldAlias = 'BANKED'
      FieldName = 'BANKED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plReceiptsBankDepsRptppField17: TppField
      FieldAlias = 'CLEARED'
      FieldName = 'CLEARED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object plReceiptsBankDepsRptppField18: TppField
      FieldAlias = 'NTRANS'
      FieldName = 'NTRANS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 17
    end
    object plReceiptsBankDepsRptppField19: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object plReceiptsBankDepsRptppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUFCHQ'
      FieldName = 'SUFCHQ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object plReceiptsBankDepsRptppField21: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 200
      DisplayWidth = 200
      Position = 20
    end
    object plReceiptsBankDepsRptppField22: TppField
      FieldAlias = 'NBANKDEP'
      FieldName = 'NBANKDEP'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 21
    end
    object plReceiptsBankDepsRptppField23: TppField
      FieldAlias = 'SYSTEM_DATE'
      FieldName = 'SYSTEM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 22
    end
    object plReceiptsBankDepsRptppField24: TppField
      FieldAlias = 'PRINTED'
      FieldName = 'PRINTED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object plReceiptsBankDepsRptppField25: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plReceiptsBankDepsRptppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object plReceiptsBankDepsRptppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'BANKED_AMT'
      FieldName = 'BANKED_AMT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object plReceiptsBankDepsRptppField28: TppField
      FieldAlias = 'NCHEQUE'
      FieldName = 'NCHEQUE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 27
    end
    object plReceiptsBankDepsRptppField29: TppField
      FieldAlias = 'WHO'
      FieldName = 'WHO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 28
    end
    object plReceiptsBankDepsRptppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEIPT_NO'
      FieldName = 'RECEIPT_NO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object plReceiptsBankDepsRptppField31: TppField
      FieldAlias = 'TAKE_ON'
      FieldName = 'TAKE_ON'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object plReceiptsBankDepsRptppField32: TppField
      FieldAlias = 'BANKED_DATE'
      FieldName = 'BANKED_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
  end
  object dsNallocsRpt: TUniDataSource
    DataSet = qryNallocsRpt
    Left = 573
    Top = 498
  end
  object plNallocsRpt: TppDBPipeline
    DataSource = dsNallocsRpt
    UserName = 'plNallocsRpt'
    Left = 429
    Top = 453
    object plNallocsRptppField1: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plNallocsRptppField2: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plNallocsRptppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 221
      DisplayWidth = 221
      Position = 2
    end
    object plNallocsRptppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plNallocsRptppField5: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 4
    end
    object plNallocsRptppField6: TppField
      FieldAlias = 'CLEARED'
      FieldName = 'CLEARED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object plNallocsRptppField7: TppField
      FieldAlias = 'AUTH_NAME'
      FieldName = 'AUTH_NAME'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 6
    end
  end
  object plBankedDeposit: TppDBPipeline
    DataSource = dsBankedDeposit
    UserName = 'plBankedDeposit'
    Left = 792
    Top = 497
  end
  object dsBankedDeposit: TUniDataSource
    DataSet = qryBankedDeposit
    Left = 776
    Top = 449
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 26
    Top = 516
  end
  object rptAllocations: TppReport
    AutoStop = False
    DataPipeline = plReceiptPrint
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
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
    Left = 970
    Top = 295
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plReceiptPrint'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 529
        mmTop = 529
        mmWidth = 30057
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Receipt Allocations'
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
        mmLeft = 80608
        mmTop = 529
        mmWidth = 35899
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
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 185209
        mmTop = 529
        mmWidth = 9144
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plAllocPrint'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197200
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plAllocPrint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
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
          DataPipelineName = 'plAllocPrint'
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText27'
              Border.mmPadding = 0
              DataField = 'CODE'
              DataPipeline = plAllocPrint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plAllocPrint'
              mmHeight = 4149
              mmLeft = 529
              mmTop = 794
              mmWidth = 28046
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText28'
              Border.mmPadding = 0
              DataField = 'DESCR'
              DataPipeline = plAllocPrint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plAllocPrint'
              mmHeight = 4149
              mmLeft = 32015
              mmTop = 794
              mmWidth = 140494
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText29'
              Border.mmPadding = 0
              DataField = 'AMOUNT'
              DataPipeline = plAllocPrint
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plAllocPrint'
              mmHeight = 4149
              mmLeft = 175948
              mmTop = 794
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground2
            end
          end
          object raCodeModule2: TraCodeModule
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'NRECEIPT'
      DataPipeline = plReceiptPrint
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReceiptPrint'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 31750
        mmPrintPosition = 0
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Bank'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 529
          mmTop = 1588
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText16'
          Border.mmPadding = 0
          DataField = 'ACCT'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 15346
          mmTop = 1588
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label25'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 529
          mmTop = 6879
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText17: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText17'
          Border.mmPadding = 0
          DataField = 'CREATED'
          DataPipeline = plReceiptPrint
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 15346
          mmTop = 6879
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label26'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Receipt #'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 44715
          mmTop = 1588
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText18'
          Border.mmPadding = 0
          DataField = 'RCPTNO'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4106
          mmLeft = 58208
          mmTop = 1588
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Payee'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 44715
          mmTop = 6879
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText19: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText19'
          Border.mmPadding = 0
          DataField = 'PAYOR'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 56356
          mmTop = 6879
          mmWidth = 81227
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label28'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Reason'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 44715
          mmTop = 12965
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText20: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText20'
          Border.mmPadding = 0
          DataField = 'DESCR'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 56356
          mmTop = 12965
          mmWidth = 81227
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label29'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Type'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 0
          mmTop = 18521
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText21: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText21'
          Border.mmPadding = 0
          DataField = 'TYPE'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 15346
          mmTop = 18521
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText22'
          Border.mmPadding = 0
          DataField = 'CHQNO'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 44715
          mmTop = 18521
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText23: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText23'
          Border.mmPadding = 0
          DataField = 'BANK'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 69850
          mmTop = 18521
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText24: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText24'
          Border.mmPadding = 0
          DataField = 'BRANCH'
          DataPipeline = plReceiptPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 80698
          mmTop = 18521
          mmWidth = 43392
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label30'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Due to Clear'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 142611
          mmTop = 6879
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText25: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText25'
          Border.mmPadding = 0
          DataField = 'DCLEARDATE'
          DataPipeline = plReceiptPrint
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4149
          mmLeft = 162454
          mmTop = 6879
          mmWidth = 29104
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label31'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Amount'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 142611
          mmTop = 12965
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText26: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText26'
          Border.mmPadding = 0
          DataField = 'AMOUNT'
          DataPipeline = plReceiptPrint
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plReceiptPrint'
          mmHeight = 4106
          mmLeft = 162454
          mmTop = 12965
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line3'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 30427
          mmWidth = 197200
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label32'
          Border.mmPadding = 0
          Caption = 'Refno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 529
          mmTop = 25665
          mmWidth = 7705
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label33'
          Border.mmPadding = 0
          Caption = 'Allocation Description'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4149
          mmLeft = 32015
          mmTop = 25665
          mmWidth = 27728
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label34'
          Border.mmPadding = 0
          Caption = 'Allocation Amount'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4149
          mmLeft = 171757
          mmTop = 25665
          mmWidth = 23241
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule3: TraCodeModule
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
  object qryReceiptPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT PRINTER, NRECEIPT, CREATED, TYPE, ACCT, RCPTNO, PAYOR, DR' +
        'AWER, BANK, BRANCH, CHQNO, '
      
        'REVERSED, RVBY, DCLEARDATE, CCTYPE, BANKED, CLEARED, NTRANS, TRU' +
        'ST, SUFCHQ, DESCR, NBANKDEP, '
      
        'SYSTEM_DATE, PRINTED, NNAME, AMOUNT, NCHEQUE, WHO, RECEIPT_NO, A' +
        'MOUNT AS AMOUNT1, banked_date'
      'FROM RECEIPT '
      'WHERE'
      '   NRECEIPT in  :NRECEIPT')
    Left = 830
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = Null
      end>
  end
  object dsReceiptPrint: TUniDataSource
    DataSet = qryReceiptPrint
    Left = 897
    Top = 175
  end
  object plReceiptPrint: TppDBPipeline
    DataSource = dsReceiptPrint
    UserName = 'plReceiptPrint'
    Left = 968
    Top = 190
    object plReceiptPrintppField1: TppField
      FieldAlias = 'PRINTER'
      FieldName = 'PRINTER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plReceiptPrintppField2: TppField
      FieldAlias = 'NRECEIPT'
      FieldName = 'NRECEIPT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plReceiptPrintppField3: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plReceiptPrintppField4: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object plReceiptPrintppField5: TppField
      FieldAlias = 'ACCT'
      FieldName = 'ACCT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 4
    end
    object plReceiptPrintppField6: TppField
      FieldAlias = 'RCPTNO'
      FieldName = 'RCPTNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 5
    end
    object plReceiptPrintppField7: TppField
      FieldAlias = 'PAYOR'
      FieldName = 'PAYOR'
      FieldLength = 85
      DisplayWidth = 85
      Position = 6
    end
    object plReceiptPrintppField8: TppField
      FieldAlias = 'DRAWER'
      FieldName = 'DRAWER'
      FieldLength = 85
      DisplayWidth = 85
      Position = 7
    end
    object plReceiptPrintppField9: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object plReceiptPrintppField10: TppField
      FieldAlias = 'BRANCH'
      FieldName = 'BRANCH'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plReceiptPrintppField11: TppField
      FieldAlias = 'CHQNO'
      FieldName = 'CHQNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 10
    end
    object plReceiptPrintppField12: TppField
      FieldAlias = 'REVERSED'
      FieldName = 'REVERSED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object plReceiptPrintppField13: TppField
      FieldAlias = 'RVBY'
      FieldName = 'RVBY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 12
    end
    object plReceiptPrintppField14: TppField
      FieldAlias = 'DCLEARDATE'
      FieldName = 'DCLEARDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object plReceiptPrintppField15: TppField
      FieldAlias = 'CCTYPE'
      FieldName = 'CCTYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object plReceiptPrintppField16: TppField
      FieldAlias = 'BANKED'
      FieldName = 'BANKED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plReceiptPrintppField17: TppField
      FieldAlias = 'CLEARED'
      FieldName = 'CLEARED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object plReceiptPrintppField18: TppField
      FieldAlias = 'NTRANS'
      FieldName = 'NTRANS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 17
    end
    object plReceiptPrintppField19: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object plReceiptPrintppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUFCHQ'
      FieldName = 'SUFCHQ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object plReceiptPrintppField21: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 20
    end
    object plReceiptPrintppField22: TppField
      FieldAlias = 'NBANKDEP'
      FieldName = 'NBANKDEP'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 21
    end
    object plReceiptPrintppField23: TppField
      FieldAlias = 'SYSTEM_DATE'
      FieldName = 'SYSTEM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 22
    end
    object plReceiptPrintppField24: TppField
      FieldAlias = 'PRINTED'
      FieldName = 'PRINTED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object plReceiptPrintppField25: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plReceiptPrintppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object plReceiptPrintppField27: TppField
      FieldAlias = 'NCHEQUE'
      FieldName = 'NCHEQUE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 26
    end
    object plReceiptPrintppField28: TppField
      FieldAlias = 'WHO'
      FieldName = 'WHO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object plReceiptPrintppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEIPT_NO'
      FieldName = 'RECEIPT_NO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object plReceiptPrintppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT1'
      FieldName = 'AMOUNT1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object plReceiptPrintppField31: TppField
      FieldAlias = 'BANKED_DATE'
      FieldName = 'BANKED_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 30
    end
  end
  object qryAllocPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '   NRECEIPT, '
      '   ALLOC.FILEID AS "CODE", '
      '   ALLOC.CLIENT_NAME ||'#39' '#39'|| ALLOC.MATTER_DESC AS "DESCR", '
      '   (ALLOC.AMOUNT+nvl(ALLOC.TAX,0)) AS DEBIT, '
      '   (ALLOC.AMOUNT+nvl(ALLOC.TAX,0)) AS CREDIT, '
      '   (ALLOC.AMOUNT+nvl(ALLOC.TAX,0)) as amount '
      'FROM  '
      '   ALLOC'
      'WHERE'
      'NRECEIPT <> 0')
    MasterSource = dsReceiptPrint
    MasterFields = 'NRECEIPT'
    DetailFields = 'NRECEIPT'
    Left = 827
    Top = 234
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NRECEIPT'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsAllocPrint: TUniDataSource
    DataSet = qryAllocPrint
    Left = 892
    Top = 232
  end
  object plAllocPrint: TppDBPipeline
    DataSource = dsAllocPrint
    UserName = 'plAllocPrint'
    Left = 963
    Top = 241
    MasterDataPipelineName = 'plReceiptPrint'
  end
  object dsNAccountPrint: TUniDataSource
    DataSet = qryNAccountPrint
    Left = 902
    Top = 286
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
      'nreceipt'
      'FROM'
      '  TRANSITEM,'
      '  CHART'
      'WHERE'
      '  (TRANSITEM.OWNER_CODE = '#39'RECEIPT'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PAJ'#39' OR'
      '   TRANSITEM.OWNER_CODE = '#39'PPJ'#39' )AND'
      '  TRANSITEM.NRECEIPT <> 0 AND'
      '--  TRANSITEM.ACCT = :P_Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    MasterSource = dsReceiptPrint
    MasterFields = 'NRECEIPT'
    DetailFields = 'NRECEIPT'
    Left = 813
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPT'
        Value = nil
      end>
  end
  object ppReport2: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppReport2BeforePrint
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
    Left = 885
    Top = 394
    Version = '20.01'
    mmColumnWidth = 197200
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label35'
        Border.mmPadding = 0
        Caption = 'Receipts vs Payments'
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
        mmLeft = 78068
        mmTop = 0
        mmWidth = 40979
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 117475
      mmPrintPosition = 0
      object ppDPTeeChart1: TppDPTeeChart
        DesignLayer = ppDesignLayer4
        UserName = 'DPTeeChart1'
        Border.mmPadding = 0
        PrintMethod = pmBitmap
        mmHeight = 109009
        mmLeft = 5292
        mmTop = 4233
        mmWidth = 184680
        BandType = 4
        LayerName = Foreground3
        object ppDPTeeChartControl1: TppDPTeeChartControl
          Left = 0
          Top = 0
          Width = 400
          Height = 250
          BackWall.Brush.Style = bsClear
          BackWall.Color = clWhite
          Title.Text.Strings = (
            'Expenses vs Receipts')
          BackColor = clWhite
          MaxPointsPerPage = 0
          Page = 1
          ScaleLastPage = True
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TBarSeries
            Marks.Style = smsValue
            SeriesColor = clRed
            Title = 'SourceBarCheque'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series2: TBarSeries
            SeriesColor = clGreen
            Title = 'SourceBarReceipts'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
