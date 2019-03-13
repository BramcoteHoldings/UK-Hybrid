object frmUnbilledWIPFirm: TfrmUnbilledWIPFirm
  Left = 482
  Top = 239
  Caption = 'Unbilled WIP'
  ClientHeight = 665
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 15
  object grdAged: TcxGrid
    Left = 0
    Top = 0
    Width = 1014
    Height = 630
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    ExplicitHeight = 635
    object tvAgedWIP: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsUnbilledFees
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvAgedWIPAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'NFEE'
          Column = tvAgedWIPCREATED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvAgedWIPAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'NFEE'
          Column = tvAgedWIPCREATED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvAgedWIPCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
        Width = 114
      end
      object tvAgedWIPAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 55
      end
      object tvAgedWIPFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
        Width = 93
      end
      object tvAgedWIPDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 208
      end
      object tvAgedWIPAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
        Width = 82
      end
      object tvAgedWIPUNITS: TcxGridDBColumn
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
      end
      object tvAgedWIPMINS: TcxGridDBColumn
        Caption = 'Mins'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
      end
      object tvAgedWIPRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        MinWidth = 23
      end
      object tvAgedWIPTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
        Width = 46
      end
      object tvAgedWIPTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
        Width = 50
      end
      object tvAgedWIPTITLE: TcxGridDBColumn
        Caption = 'Title'
        DataBinding.FieldName = 'TITLE'
        MinWidth = 23
        Width = 275
      end
      object tvAgedWIPSHORTDESCR: TcxGridDBColumn
        Caption = 'Matter Description'
        DataBinding.FieldName = 'SHORTDESCR'
        MinWidth = 23
      end
      object tvAgedWIPBRANCH: TcxGridDBColumn
        Caption = 'Branch'
        DataBinding.FieldName = 'BRANCH'
        MinWidth = 23
        Width = 108
      end
      object tvAgedWIPFEETYPE: TcxGridDBColumn
        Caption = 'Fee Type'
        DataBinding.FieldName = 'FEETYPE'
        MinWidth = 23
        Width = 137
      end
      object tvAgedWIPPARTNERNAME: TcxGridDBColumn
        Caption = 'Partner'
        DataBinding.FieldName = 'PARTNERNAME'
        MinWidth = 23
        Width = 166
      end
      object tvAgedWIPAUTHORNAME: TcxGridDBColumn
        Caption = 'Author Name'
        DataBinding.FieldName = 'AUTHORNAME'
        MinWidth = 23
        Width = 227
      end
      object tvAgedWIPDEPT: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'DEPT'
        MinWidth = 23
        Width = 123
      end
      object tvAgedWIPPARTDEPT: TcxGridDBColumn
        Caption = 'Partner Dept'
        DataBinding.FieldName = 'PARTDEPT'
        MinWidth = 23
        SortIndex = 0
        SortOrder = soDescending
        Width = 158
      end
      object tvAgedWIPTIME_TYPE: TcxGridDBColumn
        Caption = 'Time Type'
        DataBinding.FieldName = 'TIME_TYPE'
        MinWidth = 23
        Width = 75
      end
      object tvAgedWIPNFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        MinWidth = 23
      end
    end
    object tvAgedDebtors: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAgedDebtors
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'OWING'
          Column = tvAgedDebtorsOWING
        end
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'TOTAL'
          Column = tvAgedDebtorsTOTAL
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Owing: '#39'$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'OWING'
          Column = tvAgedDebtorsOWING
        end
        item
          Format = #39'Toatl: '#39'$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'TOTAL'
          Column = tvAgedDebtorsTOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvAgedDebtorsDISPATCHED: TcxGridDBColumn
        Caption = 'Dispatched'
        DataBinding.FieldName = 'DISPATCHED'
        MinWidth = 23
        SortIndex = 0
        SortOrder = soDescending
      end
      object tvAgedDebtorsFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
      end
      object tvAgedDebtorsREFNO: TcxGridDBColumn
        Caption = 'Bill No'
        DataBinding.FieldName = 'REFNO'
        MinWidth = 23
      end
      object tvAgedDebtorsOWING: TcxGridDBColumn
        Caption = 'Owing'
        DataBinding.FieldName = 'OWING'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
      object tvAgedDebtorsFEES: TcxGridDBColumn
        Caption = 'Fees'
        DataBinding.FieldName = 'FEES'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsDISB: TcxGridDBColumn
        Caption = 'Disburse'
        DataBinding.FieldName = 'DISB'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsUPCRED: TcxGridDBColumn
        Caption = 'Creditors'
        DataBinding.FieldName = 'UPCRED'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsANTD: TcxGridDBColumn
        Caption = 'CheqReq'
        DataBinding.FieldName = 'ANTD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsSUND: TcxGridDBColumn
        Caption = 'Sundries'
        DataBinding.FieldName = 'SUND'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsTOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
      object tvAgedDebtorsTRUST: TcxGridDBColumn
        Caption = 'Trust'
        DataBinding.FieldName = 'TRUST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFEES_PAID: TcxGridDBColumn
        Caption = 'Fees Paid'
        DataBinding.FieldName = 'FEES_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsDISB_PAID: TcxGridDBColumn
        Caption = 'Disb Paid'
        DataBinding.FieldName = 'DISB_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsUPCRED_PAID: TcxGridDBColumn
        Caption = 'Unpaid Cred'
        DataBinding.FieldName = 'UPCRED_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsANTD_PAID: TcxGridDBColumn
        Caption = 'CheqReq Paid'
        DataBinding.FieldName = 'ANTD_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsSUND_PAID: TcxGridDBColumn
        Caption = 'Sundries Paid'
        DataBinding.FieldName = 'SUND_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsTAX_PAID: TcxGridDBColumn
        Caption = 'Tax Paid'
        DataBinding.FieldName = 'TAX_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsGENERATED: TcxGridDBColumn
        Caption = 'Generated'
        DataBinding.FieldName = 'GENERATED'
        MinWidth = 23
      end
      object tvAgedDebtorsBILL_TO: TcxGridDBColumn
        Caption = 'Bill To'
        DataBinding.FieldName = 'BILL_TO'
        MinWidth = 23
        Width = 185
      end
      object tvAgedDebtorsSPLIT_BILL: TcxGridDBColumn
        Caption = 'Split Bill'
        DataBinding.FieldName = 'SPLIT_BILL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        MinWidth = 23
        Width = 53
      end
      object tvAgedDebtorsEXPPAYMENT: TcxGridDBColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'EXPPAYMENT'
        MinWidth = 23
      end
      object tvAgedDebtorsINV_NOTE: TcxGridDBColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'INV_NOTE'
        MinWidth = 23
        Width = 173
      end
      object tvAgedDebtorsNMEMO: TcxGridDBColumn
        DataBinding.FieldName = 'NMEMO'
        Visible = False
        MinWidth = 23
      end
      object tvAgedDebtorsRV_NMEMO: TcxGridDBColumn
        DataBinding.FieldName = 'RV_NMEMO'
        Visible = False
        MinWidth = 23
      end
      object tvAgedDebtorsRV_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'RV_TYPE'
        Visible = False
        MinWidth = 23
      end
    end
    object tvFeesBilled: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFeesBilled
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvFeesBilledAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'NFEE'
          Column = tvFeesBilledCREATED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvFeesBilledAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'NFEE'
          Column = tvFeesBilledCREATED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvFeesBilledCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
        Width = 65
      end
      object tvFeesBilledAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 62
      end
      object tvFeesBilledFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
        Width = 57
      end
      object tvFeesBilledDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 220
      end
      object tvFeesBilledAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
        Width = 67
      end
      object tvFeesBilledUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
        Width = 60
      end
      object tvFeesBilledMINS: TcxGridDBColumn
        Caption = 'Mins'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
        Width = 59
      end
      object tvFeesBilledRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        MinWidth = 23
        Width = 44
      end
      object tvFeesBilledTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
        Width = 53
      end
      object tvFeesBilledTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
        Width = 63
      end
      object tvFeesBilledTITLE: TcxGridDBColumn
        DataBinding.FieldName = 'TITLE'
        MinWidth = 23
        Width = 74
      end
      object tvFeesBilledSHORTDESCR: TcxGridDBColumn
        DataBinding.FieldName = 'SHORTDESCR'
        MinWidth = 23
        Width = 96
      end
      object tvFeesBilledBRANCH: TcxGridDBColumn
        DataBinding.FieldName = 'BRANCH'
        MinWidth = 23
        Width = 93
      end
      object tvFeesBilledFEETYPE: TcxGridDBColumn
        DataBinding.FieldName = 'FEETYPE'
        MinWidth = 23
        Width = 61
      end
      object tvFeesBilledPARTNERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'PARTNERNAME'
        MinWidth = 23
        Width = 134
      end
      object tvFeesBilledAUTHORNAME: TcxGridDBColumn
        DataBinding.FieldName = 'AUTHORNAME'
        MinWidth = 23
        SortIndex = 0
        SortOrder = soAscending
        Width = 113
      end
      object tvFeesBilledDEPT: TcxGridDBColumn
        DataBinding.FieldName = 'DEPT'
        MinWidth = 23
        Width = 63
      end
      object tvFeesBilledPARTDEPT: TcxGridDBColumn
        DataBinding.FieldName = 'PARTDEPT'
        MinWidth = 23
        Width = 105
      end
      object tvFeesBilledTIME_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TIME_TYPE'
        MinWidth = 23
        Width = 25
      end
      object tvFeesBilledNFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        MinWidth = 23
      end
    end
    object tvFeesReceived: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFeesReceived
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'FE_RECEIPT'
          Column = tvFeesReceivedFE_RECEIPT
        end
        item
          Kind = skCount
          FieldName = 'DISPATCHED'
          Column = tvFeesReceivedDISPATCHED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'FE_RECEIPT'
          Column = tvFeesReceivedFE_RECEIPT
        end
        item
          Kind = skCount
          FieldName = 'DISPATCHED'
          Column = tvFeesReceivedDISPATCHED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvFeesReceivedGENERATED: TcxGridDBColumn
        Caption = 'Generated'
        DataBinding.FieldName = 'GENERATED'
        MinWidth = 23
        Width = 80
      end
      object tvFeesReceivedREFNO: TcxGridDBColumn
        Caption = 'Bill No'
        DataBinding.FieldName = 'REFNO'
        MinWidth = 23
        Width = 88
      end
      object tvFeesReceivedFE_RECEIPT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'FE_RECEIPT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
        Width = 52
      end
      object tvFeesReceivedBILL_TO: TcxGridDBColumn
        Caption = 'Bill To'
        DataBinding.FieldName = 'BILL_TO'
        MinWidth = 23
        Width = 294
      end
      object tvFeesReceivedAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 61
      end
      object tvFeesReceivedDISPATCHED: TcxGridDBColumn
        Caption = 'Dispatched'
        DataBinding.FieldName = 'DISPATCHED'
        MinWidth = 23
        Width = 92
      end
      object tvFeesReceivedEXPPAYMENT: TcxGridDBColumn
        Caption = 'Exp Payment'
        DataBinding.FieldName = 'EXPPAYMENT'
        MinWidth = 23
        Width = 92
      end
      object tvFeesReceivedSPLIT_BILL: TcxGridDBColumn
        Caption = 'Split'
        DataBinding.FieldName = 'SPLIT_BILL'
        MinWidth = 23
        Width = 28
      end
    end
    object tvWIPLockup: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsWIPLockup
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvWIPLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'NFEE'
          Column = tvWIPLockupCREATED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvWIPLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'NFEE'
          Column = tvWIPLockupCREATED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvWIPLockupCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
        Width = 106
      end
      object tvWIPLockupAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 66
      end
      object tvWIPLockupFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
      end
      object tvWIPLockupDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 376
      end
      object tvWIPLockupAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
        Width = 96
      end
      object tvWIPLockupUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
      end
      object tvWIPLockupMINS: TcxGridDBColumn
        Caption = 'Mins'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
      end
      object tvWIPLockupRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        MinWidth = 23
      end
      object tvWIPLockupTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
      end
      object tvWIPLockupTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
      end
      object tvWIPLockupTASK_AMOUNT: TcxGridDBColumn
        Caption = 'Task Amount'
        DataBinding.FieldName = 'TASK_AMOUNT'
        MinWidth = 23
        Width = 110
      end
      object tvWIPLockupTITLE: TcxGridDBColumn
        Caption = 'Title'
        DataBinding.FieldName = 'TITLE'
        MinWidth = 23
        Width = 224
      end
      object tvWIPLockupSHORTDESCR: TcxGridDBColumn
        Caption = 'Matter Details'
        DataBinding.FieldName = 'SHORTDESCR'
        MinWidth = 23
        Width = 350
      end
      object tvWIPLockupBRANCH: TcxGridDBColumn
        Caption = 'Branch'
        DataBinding.FieldName = 'BRANCH'
        MinWidth = 23
        Width = 208
      end
      object tvWIPLockupPARTNERNAME: TcxGridDBColumn
        Caption = 'Partner'
        DataBinding.FieldName = 'PARTNERNAME'
        MinWidth = 23
      end
      object tvWIPLockupAUTHORNAME: TcxGridDBColumn
        Caption = 'Author Name'
        DataBinding.FieldName = 'AUTHORNAME'
        MinWidth = 23
        Width = 190
      end
      object tvWIPLockupDEPT: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'DEPT'
        MinWidth = 23
        Width = 201
      end
      object tvWIPLockupPARTDEPT: TcxGridDBColumn
        Caption = 'Partner Dept'
        DataBinding.FieldName = 'PARTDEPT'
        MinWidth = 23
        Width = 197
      end
      object tvWIPLockupBILLTYPE: TcxGridDBColumn
        Caption = 'Bill Type'
        DataBinding.FieldName = 'BILLTYPE'
        MinWidth = 23
      end
      object tvWIPLockupTIME_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TIME_TYPE'
        Visible = False
        MinWidth = 23
      end
      object tvWIPLockupNFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        MinWidth = 23
      end
      object tvWIPLockupNMATTER: TcxGridDBColumn
        DataBinding.FieldName = 'NMATTER'
        Visible = False
        MinWidth = 23
      end
    end
    object tvUnbilledDisbLockup: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsUnbilledDisbsLockup
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = tvUnbilledDisbLockupCREDIT
        end
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'DEBIT'
          Column = tvUnbilledDisbLockupDEBIT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvUnbilledDisbLockupCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
      end
      object tvUnbilledDisbLockupPAYER: TcxGridDBColumn
        Caption = 'Payer'
        DataBinding.FieldName = 'PAYER'
        MinWidth = 23
        Width = 396
      end
      object tvUnbilledDisbLockupDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 254
      end
      object tvUnbilledDisbLockupREFNO: TcxGridDBColumn
        Caption = 'Refno'
        DataBinding.FieldName = 'REFNO'
        MinWidth = 23
      end
      object tvUnbilledDisbLockupSUNDRYTYPE: TcxGridDBColumn
        Caption = 'Sundry Type'
        DataBinding.FieldName = 'SUNDRYTYPE'
        MinWidth = 23
        Width = 107
      end
      object tvUnbilledDisbLockupDEBIT: TcxGridDBColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
      object tvUnbilledDisbLockupCREDIT: TcxGridDBColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
      object tvUnbilledDisbLockupAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Visible = False
        MinWidth = 23
      end
    end
    object tvSundriesLockup: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSundriesLockup
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvSundriesLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'CREATED'
          Column = tvSundriesLockupCREATED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          FieldName = 'AMOUNT'
          Column = tvSundriesLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'CREATED'
          Column = tvSundriesLockupCREATED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvSundriesLockupCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
        SortIndex = 0
        SortOrder = soAscending
      end
      object tvSundriesLockupSEARCH: TcxGridDBColumn
        Caption = 'Client'
        DataBinding.FieldName = 'SEARCH'
        MinWidth = 23
        Width = 293
      end
      object tvSundriesLockupDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 413
      end
      object tvSundriesLockupFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
        Width = 110
      end
      object tvSundriesLockupAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
    end
    object tvCreditorsLockup: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCeditorsLockup
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvCreditorsLockupAMOUNT
        end
        item
          Kind = skSum
          FieldName = 'CREATED'
          Column = tvCreditorsLockupCREATED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvCreditorsLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'CREATED'
          Column = tvCreditorsLockupCREATED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvCreditorsLockupCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
      end
      object tvCreditorsLockupDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 396
      end
      object tvCreditorsLockupPAYER: TcxGridDBColumn
        Caption = 'Payer'
        DataBinding.FieldName = 'PAYER'
        MinWidth = 23
        Width = 333
      end
      object tvCreditorsLockupFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
      end
      object tvCreditorsLockupCLIENT_NAME: TcxGridDBColumn
        Caption = 'Client'
        DataBinding.FieldName = 'CLIENT_NAME'
        MinWidth = 23
      end
      object tvCreditorsLockupMATTER_DESC: TcxGridDBColumn
        Caption = 'Matter Descr'
        DataBinding.FieldName = 'MATTER_DESC'
        MinWidth = 23
      end
      object tvCreditorsLockupAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
    end
    object tvDebtorsLockup: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDebtorLockup
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvDebtorsLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'CREATED'
          Column = tvDebtorsLockupCREATED
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvDebtorsLockupAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'CREATED'
          Column = tvDebtorsLockupCREATED
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvDebtorsLockupCREATED: TcxGridDBColumn
        Caption = 'Crated'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
      end
      object tvDebtorsLockupDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        SortIndex = 0
        SortOrder = soAscending
        Width = 408
      end
      object tvDebtorsLockupPAYER: TcxGridDBColumn
        Caption = 'Payer'
        DataBinding.FieldName = 'PAYER'
        MinWidth = 23
        Width = 303
      end
      object tvDebtorsLockupFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
        Width = 127
      end
      object tvDebtorsLockupCLIENT_NAME: TcxGridDBColumn
        Caption = 'Client'
        DataBinding.FieldName = 'CLIENT_NAME'
        MinWidth = 23
        Width = 205
      end
      object tvDebtorsLockupMATTER_DESC: TcxGridDBColumn
        Caption = 'Matter Description'
        DataBinding.FieldName = 'MATTER_DESC'
        MinWidth = 23
        Width = 211
      end
      object tvDebtorsLockupAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
    end
    object tvAgedDebtorsFull: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAgedDebtorsFull
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'OWING'
          Column = tvAgedDebtorsFullOWING
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Owing: '#39'$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'OWING'
          Column = tvAgedDebtorsFullOWING
        end
        item
          Format = #39'Total Matters: '#39'$,0.00;-$,0.00'
          Kind = skCount
          FieldName = 'REFNO'
          Column = tvAgedDebtorsFullREFNO
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvAgedDebtorsFullPERIOD: TcxGridDBColumn
        Caption = 'Period'
        DataBinding.FieldName = 'PERIOD'
        MinWidth = 23
        SortIndex = 0
        SortOrder = soAscending
      end
      object tvAgedDebtorsFullREFNO: TcxGridDBColumn
        Caption = 'Bill #'
        DataBinding.FieldName = 'REFNO'
        MinWidth = 23
        Width = 91
      end
      object tvAgedDebtorsFullDISPATCHED: TcxGridDBColumn
        Caption = 'Dispatched'
        DataBinding.FieldName = 'DISPATCHED'
        MinWidth = 23
      end
      object tvAgedDebtorsFullGENERATED: TcxGridDBColumn
        Caption = 'Generated'
        DataBinding.FieldName = 'GENERATED'
        MinWidth = 23
      end
      object tvAgedDebtorsFullTOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
      object tvAgedDebtorsFullOWING: TcxGridDBColumn
        Caption = 'Owing'
        DataBinding.FieldName = 'OWING'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Styles.Content = dmAxiom.UnreadStyle
        Styles.Header = dmAxiom.UnreadStyle
      end
      object tvAgedDebtorsFullFEES: TcxGridDBColumn
        Caption = 'Fees'
        DataBinding.FieldName = 'FEES'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Width = 73
      end
      object tvAgedDebtorsFullDISB: TcxGridDBColumn
        Caption = 'Disbs'
        DataBinding.FieldName = 'DISB'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullANTD: TcxGridDBColumn
        Caption = 'Anticipateds'
        DataBinding.FieldName = 'ANTD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullSUND: TcxGridDBColumn
        Caption = 'Sundries'
        DataBinding.FieldName = 'SUND'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullUPCRED: TcxGridDBColumn
        Caption = 'Creditors'
        DataBinding.FieldName = 'UPCRED'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullTRUST: TcxGridDBColumn
        Caption = 'Trust'
        DataBinding.FieldName = 'TRUST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullFEES_PAID: TcxGridDBColumn
        Caption = 'Fees Paid'
        DataBinding.FieldName = 'FEES_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullDISB_PAID: TcxGridDBColumn
        Caption = 'Disbs Paid'
        DataBinding.FieldName = 'DISB_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullANTD_PAID: TcxGridDBColumn
        Caption = 'Antd Paid'
        DataBinding.FieldName = 'ANTD_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullSUND_PAID: TcxGridDBColumn
        Caption = 'Sundry Paid'
        DataBinding.FieldName = 'SUND_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullTAX_PAID: TcxGridDBColumn
        Caption = 'Tax Paid'
        DataBinding.FieldName = 'TAX_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullUPCRED_PAID: TcxGridDBColumn
        Caption = 'Creditors Paid'
        DataBinding.FieldName = 'UPCRED_PAID'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedDebtorsFullSPLIT_BILL: TcxGridDBColumn
        Caption = 'Split Bill'
        DataBinding.FieldName = 'SPLIT_BILL'
        MinWidth = 23
      end
      object tvAgedDebtorsFullBILL_TO: TcxGridDBColumn
        Caption = 'Bill To'
        DataBinding.FieldName = 'BILL_TO'
        MinWidth = 23
        Width = 149
      end
      object tvAgedDebtorsFullEXPPAYMENT: TcxGridDBColumn
        Caption = 'Exp Payment'
        DataBinding.FieldName = 'EXPPAYMENT'
        MinWidth = 23
      end
      object tvAgedDebtorsFullINV_NOTE: TcxGridDBColumn
        DataBinding.FieldName = 'INV_NOTE'
        MinWidth = 23
        Width = 129
      end
    end
    object tvAgedWipFull: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAgedWipFull
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvAgedWipFullAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvAgedWipFullPERIOD: TcxGridDBColumn
        DataBinding.FieldName = 'PERIOD'
        Visible = False
        GroupIndex = 0
        MinWidth = 23
        SortIndex = 0
        SortOrder = soAscending
      end
      object tvAgedWipFullCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
        Width = 77
      end
      object tvAgedWipFullAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 60
      end
      object tvAgedWipFullFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
      end
      object tvAgedWipFullDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 231
      end
      object tvAgedWipFullAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedWipFullUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
      end
      object tvAgedWipFullMINS: TcxGridDBColumn
        Caption = 'Mins'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
      end
      object tvAgedWipFullRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvAgedWipFullTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
        Width = 35
      end
      object tvAgedWipFullTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
        Width = 88
      end
      object tvAgedWipFullTITLE: TcxGridDBColumn
        Caption = 'Title'
        DataBinding.FieldName = 'TITLE'
        MinWidth = 23
        Width = 198
      end
      object tvAgedWipFullSHORTDESCR: TcxGridDBColumn
        Caption = 'Matter Description'
        DataBinding.FieldName = 'SHORTDESCR'
        MinWidth = 23
        Width = 317
      end
      object tvAgedWipFullBRANCH: TcxGridDBColumn
        Caption = 'Branch'
        DataBinding.FieldName = 'BRANCH'
        MinWidth = 23
        Width = 135
      end
      object tvAgedWipFullFEETYPE: TcxGridDBColumn
        Caption = 'Fee Type'
        DataBinding.FieldName = 'FEETYPE'
        MinWidth = 23
        Width = 138
      end
      object tvAgedWipFullPARTNERNAME: TcxGridDBColumn
        Caption = 'Partner'
        DataBinding.FieldName = 'PARTNERNAME'
        MinWidth = 23
        Width = 173
      end
      object tvAgedWipFullAUTHORNAME: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHORNAME'
        MinWidth = 23
        Width = 173
      end
      object tvAgedWipFullDEPT: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'DEPT'
        MinWidth = 23
        Width = 173
      end
      object tvAgedWipFullPARTDEPT: TcxGridDBColumn
        Caption = 'Partner Dept'
        DataBinding.FieldName = 'PARTDEPT'
        MinWidth = 23
        Width = 147
      end
      object tvAgedWipFullTIME_TYPE: TcxGridDBColumn
        Caption = 'Time Type'
        DataBinding.FieldName = 'TIME_TYPE'
        MinWidth = 23
        SortIndex = 1
        SortOrder = soAscending
        Width = 58
      end
    end
    object tvWIPGenFull: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsWIPGeneratedFull
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvWIPGenFullAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvWIPGenFullPERIOD: TcxGridDBColumn
        Caption = 'Period'
        DataBinding.FieldName = 'PERIOD'
        MinWidth = 23
      end
      object tvWIPGenFullCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
      end
      object tvWIPGenFullAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 58
      end
      object tvWIPGenFullFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
      end
      object tvWIPGenFullDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 288
      end
      object tvWIPGenFullAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvWIPGenFullUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
      end
      object tvWIPGenFullMINS: TcxGridDBColumn
        Caption = 'Mins'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
      end
      object tvWIPGenFullRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
      end
      object tvWIPGenFullTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
      end
      object tvWIPGenFullTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
      end
      object tvWIPGenFullTITLE: TcxGridDBColumn
        Caption = 'Title'
        DataBinding.FieldName = 'TITLE'
        MinWidth = 23
        Width = 288
      end
      object tvWIPGenFullSHORTDESCR: TcxGridDBColumn
        Caption = 'Matter Description'
        DataBinding.FieldName = 'SHORTDESCR'
        MinWidth = 23
      end
      object tvWIPGenFullBRANCH: TcxGridDBColumn
        Caption = 'Branch'
        DataBinding.FieldName = 'BRANCH'
        MinWidth = 23
        Width = 173
      end
      object tvWIPGenFullPARTNERNAME: TcxGridDBColumn
        Caption = 'Partner'
        DataBinding.FieldName = 'PARTNERNAME'
        MinWidth = 23
        Width = 173
      end
      object tvWIPGenFullAUTHORNAME: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHORNAME'
        MinWidth = 23
        Width = 173
      end
      object tvWIPGenFullDEPT: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'DEPT'
        MinWidth = 23
        Width = 115
      end
      object tvWIPGenFullPARTDEPT: TcxGridDBColumn
        Caption = 'Partner Department'
        DataBinding.FieldName = 'PARTDEPT'
        MinWidth = 23
      end
      object tvWIPGenFullTIME_TYPE: TcxGridDBColumn
        Caption = 'Time Type'
        DataBinding.FieldName = 'TIME_TYPE'
        MinWidth = 23
      end
      object tvWIPGenFullNFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        MinWidth = 23
        VisibleForCustomization = False
      end
    end
    object tvFeesBilledFull: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFeesBilledFull
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvFeesBilledFullCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
      end
      object tvFeesBilledFullINVOICEDATE: TcxGridDBColumn
        Caption = 'Billed'
        DataBinding.FieldName = 'INVOICEDATE'
        MinWidth = 23
      end
      object tvFeesBilledFullDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 288
      end
      object tvFeesBilledFullMINS: TcxGridDBColumn
        Caption = 'Mins'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
      end
      object tvFeesBilledFullUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
      end
      object tvFeesBilledFullAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 115
      end
      object tvFeesBilledFullPATNER: TcxGridDBColumn
        Caption = 'Partner'
        DataBinding.FieldName = 'PATNER'
        MinWidth = 23
        Width = 115
      end
      object tvFeesBilledFullTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
      end
      object tvFeesBilledFullTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        MinWidth = 23
      end
      object tvFeesBilledFullNOTIONAL_COST: TcxGridDBColumn
        Caption = 'Notional Cost'
        DataBinding.FieldName = 'NOTIONAL_COST'
        MinWidth = 23
      end
      object tvFeesBilledFullPERIOD: TcxGridDBColumn
        Caption = 'Period'
        DataBinding.FieldName = 'PERIOD'
        MinWidth = 23
      end
      object tvFeesBilledFullSORT_ORDER: TcxGridDBColumn
        Caption = 'Sort Period'
        DataBinding.FieldName = 'SORT_ORDER'
        OnGetDisplayText = tvFeesBilledFullSORT_ORDERGetDisplayText
        MinWidth = 23
      end
    end
    object lvAged: TcxGridLevel
      GridView = tvWIPGenFull
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 630
    Width = 1014
    Height = 35
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 600
    DesignSize = (
      1014
      35)
    object cxButton2: TcxButton
      Left = 615
      Top = 1
      Width = 118
      Height = 29
      Caption = 'Export to Excel'
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 5
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 738
      Top = 1
      Width = 87
      Height = 29
      Caption = 'Print'
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 5
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object btnClose: TcxButton
      Left = 924
      Top = 1
      Width = 87
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000004D1000004D1000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7
        C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF1616
        3DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4
        F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF0000
        81FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFDFD025A5A
        9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF0000
        8FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8FB7700101
        A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7
        E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828ABD90000
        ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFF
        F7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606B0FD0303
        B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575
        B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808BBFF0707
        C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000
        BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0CC9FF0D0D
        D8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000
        CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414D8FF1717
        EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363
        E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525E5F22222
        FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFF
        FEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5EF1AF3232
        FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADAD
        B0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6FC293E3E
        FBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242
        EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2
        FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151
        FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151
        F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1
        F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OptionsImage.Spacing = 5
      TabOrder = 2
      OnClick = btnCloseClick
    end
  end
  object qryUnbilledFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '/*+ ORDERED */FEE.NFEE,/*+ ORDERED */trunc(FEE.CREATED) "CREATED' +
        '", FEE.AUTHOR, FEE.FILEID, FEE.NMATTER'
      ', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS'
      ', FEE.RATE,FEE.TYPE, FEE.TASK'
      ', FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE'
      
        ', MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR AS FEETYPE,' +
        'PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME'
      ', DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, TIME_TYPE'
      
        'FROM FEE, MATTER, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOYEE AU' +
        'TH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT'
      'WHERE NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39
      'AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      
        'AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - :p1 AND TRUNC(FEE.CRE' +
        'ATED) <= TRUNC(SYSDATE)'
      'AND FEE.TYPE = FEETYPE.CODE AND FEE.PARTNER = PART.CODE'
      'AND FEE.AUTHOR = AUTH.NAME'
      'and FEE.AUTHOR = '#39'CMC'#39
      'AND MATTER.BRANCH = BR.CODE'
      'AND FEE.DEPT = DPT.CODE'
      'AND PART.DEPT = PARTDPT.CODE'
      'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT')
    Left = 495
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end>
  end
  object dsUnbilledFees: TUniDataSource
    DataSet = qryUnbilledFees
    Left = 576
    Top = 177
  end
  object qryAgedDebtors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FEES, DISB, ANT' +
        'D, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PAID, SUND_PAID,' +
        ' TAX_PAID, RV_NMEMO, RV_TYPE'
      
        '  ,(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(' +
        'TAX,0) + nvl(UPCRED,0)) AS TOTAL'
      
        '  ,((nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl' +
        '(TAX,0) + nvl(UPCRED,0)) - (/*NVL(TRUST,0) +*/   '
      
        '  NVL(FEES_PAID,0) +  nvl(DISB_PAID,0) + nvl(ANTD_PAID,0) + nvl(' +
        'SUND_PAID,0) + nvl(TAX_PAID,0) + NVL(FEES_WOFF,0) +  '
      
        '  nvl(DISB_WOFF,0) + nvl(ANTD_WOFF,0) + nvl(SUND_WOFF,0) + nvl(T' +
        'AX_WOFF,0) + nvl(UPCRED_PAID, 0) + nvl(UPCRED_WOFF,0) )) AS OWIN' +
        'G,'
      '  UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE, m.fileid'
      'FROM  matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      '  AND n.refno <> '#39'DRAFT'#39
      '  AND n.rv_type <> '#39'D'#39
      '  AND dispatched IS NOT NULL'
      
        '  AND TRUNC(n.dispatched) >= TRUNC(SYSDATE) - :p1 AND TRUNC(n.di' +
        'spatched) <= TRUNC(SYSDATE)')
    Left = 476
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end>
  end
  object dsAgedDebtors: TUniDataSource
    DataSet = qryAgedDebtors
    Left = 570
    Top = 263
  end
  object qryFeesBilled: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.AUTHOR, FEE.F' +
        'ILEID, FEE.NMATTER , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, '
      
        'FEE.MINS , FEE.RATE,FEE.TYPE, FEE.TASK , FEE.TASK_AMOUNT, PHONEB' +
        'OOK.SEARCH AS TITLE , MATTER.SHORTDESCR, BR.DESCR "BRANCH",'
      
        'FEETYPE.DESCR AS FEETYPE,PART.NAME AS PARTNERNAME, AUTH.NAME AS ' +
        'AUTHORNAME , DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, TIME_' +
        'TYPE '
      
        'FROM  MATTER, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOYEE AUTH, ' +
        'BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT, FEE '
      'WHERE FEE.NMATTER = MATTER.NMATTER '
      'AND FEE.TYPE = FEETYPE.CODE (+)'
      'AND FEE.PARTNER = PART.CODE (+)'
      'AND FEE.AUTHOR = AUTH.CODE'
      'AND MATTER.BRANCH = BR.CODE(+) '
      'AND FEE.DEPT = DPT.CODE(+) '
      'AND PART.DEPT = PARTDPT.CODE (+)'
      'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT(+) '
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'Y'#39' '
      'AND FEE.TYPE <> '#39'wo'#39
      
        'and trunc(invoicedate) between :year_start_date and :year_end_da' +
        'te '
      '')
    Left = 471
    Top = 354
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object dsFeesBilled: TUniDataSource
    DataSet = qryFeesBilled
    Left = 559
    Top = 353
  end
  object qryFeesReceived: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select  author,BILL_TO,DISPATCHED, GENERATED,  REFNO, '
      '  SPLIT_BILL, EXPPAYMENT, feereceipt*feeshare as FE_Receipt '
      'from '
      '(select nmemo , sum(fee) as FeeReceipt '
      '  from alloc '
      
        '  where nmemo is not null and (nreceipt > 0 ) and trunc(created)' +
        ' '
      '   between :month_start_date and :month_end_date'
      '  group by nmemo) REC,'
      
        '(select fe.nmemo, author, fe_fee, FeesBilled, fe_fee/feesbilled ' +
        'as feeshare, BILL_TO,DISPATCHED, GENERATED,  REFNO, '
      '  SPLIT_BILL, EXPPAYMENT, bills.INV_NOTE from'
      
        '  (select nmemo, author, sum(nvl(amount,0)) as FE_Fee from fee w' +
        'here nmemo is not null and author is not null group by nmemo, au' +
        'thor) FE,'
      '(select  BILL_TO,DISPATCHED, GENERATED,  REFNO, '
      
        '  SPLIT_BILL, EXPPAYMENT, INV_NOTE, nmemo, nvl(fees,0) as FeesBi' +
        'lled from nmemo '
      
        '  where refno not like '#39'%RV%'#39' and refno not like '#39'%CN%'#39' and refn' +
        'o <>'#39'DRAFT'#39' and nvl(fees,0) <>0) bills '
      '  where bills.nmemo=fe.nmemo ) fa '
      'where REC.nmemo =FA.nmemo'
      '')
    Left = 467
    Top = 418
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'month_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'month_end_date'
        Value = nil
      end>
  end
  object dsFeesReceived: TUniDataSource
    DataSet = qryFeesReceived
    Left = 551
    Top = 425
  end
  object qryWIPLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.NFEE, trunc(FEE.CREATED)  "CREATED", FEE.AUTHOR, FEE.' +
        'FILEID, FEE.NMATTER'
      ' ,FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS'
      ' , FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK'
      
        ' , FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS T' +
        'ITLE'
      
        ' , MATTER.SHORTDESCR, BR.DESCR "BRANCH", FEETYPE.DESCR AS FEETYP' +
        'E'
      ' , PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME'
      
        ' , DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, FEE.BILLTYPE, F' +
        'EE.TIME_TYPE '
      
        ' FROM FEE,MATTER,NMEMO,PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOY' +
        'EE AUTH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT'
      ' WHERE  FEE.NMATTER = MATTER.NMATTER(+) '
      ' AND FEE.NMEMO = NMEMO.NMEMO(+) AND FEE.TYPE = FEETYPE.CODE(+)'
      
        ' AND FEE.PARTNER = PART.CODE(+) AND FEE.AUTHOR = AUTH.CODE AND M' +
        'ATTER.BRANCH = BR.CODE(+) '
      
        ' AND FEE.DEPT = DPT.CODE(+) AND PART.DEPT = PARTDPT.CODE(+) AND ' +
        'MATTER.NCLIENT = PHONEBOOK.NCLIENT(+)'
      ' and nvl(billed,'#39'N'#39') = '#39'N'#39
      'and nvl(billtype,'#39'Billable'#39') = '#39'Billable'#39)
    Left = 32
    Top = 184
  end
  object dsWIPLockup: TUniDataSource
    DataSet = qryWIPLockup
    Left = 42
    Top = 242
  end
  object qryUnbilledDisbsLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.CREATED, ALLOC.TAXCODE, ALLOC.REFNO, ALLOC.PAYER, N' +
        'MEMO.DISPATCHED AS INVOICEDATE, NMEMO.REFNO AS BILL, '
      
        'ALLOC.AMOUNT, ALLOC.DESCR, ALLOC.SUNDRYTYPE, DECODE(ALLOC.BILLED' +
        ','#39'Y'#39',ALLOC.TAX,'
      
        ' decode(R.RATE-R.BILL_RATE,'#39'0'#39',ALLOC.TAX,(ALLOC.AMOUNT * (abs(R.' +
        'RATE)/100))) ) AS TAX'
      
        ' ,to_number(DECODE(SUBSTR(ALLOC.AMOUNT,0,1),'#39'0'#39',to_number(NULL),' +
        #39'-'#39',ABS(ALLOC.AMOUNT))) DEBIT '
      
        ' ,to_number(DECODE(SUBSTR(ALLOC.AMOUNT,0,1),'#39'-'#39',to_number(NULL),' +
        'ABS(ALLOC.AMOUNT ))) CREDIT '
      ' FROM ALLOC, NMEMO,TAXRATE R, MATTER M'
      ' WHERE ALLOC.NMATTER = M.NMATTER'
      '  AND ALLOC.TRUST <> '#39'T'#39' '
      '  AND nvl(billed, '#39'N'#39') = '#39'N'#39
      '  AND ALLOC.NINVOICE IS NULL '
      
        '  AND((nvl(ALLOC.NCHEQUE,0) <> 0 AND ALLOC.TYPE <> '#39'J1'#39' AND ALLO' +
        'C.TYPE <> '#39'RF'#39') OR ALLOC.TYPE = '#39'J2'#39' OR ALLOC.TYPE = '#39'DR'#39') '
      '  AND ALLOC.NMEMO = NMEMO.NMEMO(+)'
      '  AND ALLOC.TAXCODE = R.TAXCODE (+)'
      '  AND ALLOC.BILLED = '#39'N'#39' ')
    Left = 66
    Top = 303
  end
  object dsUnbilledDisbsLockup: TUniDataSource
    DataSet = qryUnbilledDisbsLockup
    Left = 52
    Top = 365
  end
  object qrySundriesLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT s.created, s.DESCR, s.FILEID, s.AMOUNT, p.SEARCH'
      'FROM PHONEBOOK P, MATTER m, SUNDRY s'
      'WHERE s.nmatter=m.nmatter '
      'AND m.NCLIENT = p.NCLIENT'
      'AND Billed = '#39'N'#39)
    Left = 51
    Top = 430
  end
  object dsSundriesLockup: TUniDataSource
    DataSet = qrySundriesLockup
    Left = 52
    Top = 484
  end
  object qryCeditorsLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT a.created, a.descr, a.payer,  a.client_name, a.matter_des' +
        'c, NVL((a.amount * -1),0) as amount, a.fileid'
      'FROM MATTER m, ALLOC a'
      'WHERE m.nmatter = a.nmatter'
      'AND a.ninvoice IS NOT NULL'
      'AND a.billed = '#39'N'#39)
    Left = 165
    Top = 439
  end
  object dsCeditorsLockup: TUniDataSource
    DataSet = qryCeditorsLockup
    Left = 168
    Top = 492
  end
  object qryDebtorLockup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT created, descr, payer,  client_name, matter_desc, fileid,' +
        ' abs(nvl(amt, 0)) as amount'
      '   FROM'
      '   ('
      
        '      SELECT a.created, a.descr, a.payer,  a.client_name, a.matt' +
        'er_desc, a.fileid,(nvl(a.amount, 0) + nvl(a.tax,0)) as amt'
      '      FROM alloc a, matter'
      '      WHERE a.nmatter = matter.nmatter      '
      '      AND a.trust <> '#39'T'#39
      '      AND a.type <> '#39'DR'#39
      '      AND (a.nreceipt <> 0 OR a.type = '#39'J1'#39' OR a.type = '#39'RF'#39')'
      '      UNION ALL'
      
        '      SELECT nmemo.GENERATED,nmemo.BILL_TO, '#39#39','#39#39', '#39#39', nmemo.fil' +
        'eid, (nvl(fees,0) + nvl(disb,0) + nvl(sund,0) + nvl(antd,0) + nv' +
        'l(upcred, 0) + nvl(tax,0)) *-1 as amt'
      '      FROM nmemo, matter'
      '      WHERE nmemo.nmatter = matter.nmatter      '
      '      AND dispatched IS NOT NULL'
      '      AND refno <> '#39'DRAFT'#39
      '      AND rv_type <> '#39'D'#39
      '   )')
    Left = 180
    Top = 324
  end
  object dsDebtorLockup: TUniDataSource
    DataSet = qryDebtorLockup
    Left = 183
    Top = 373
  end
  object qryAgedDebtorsFull: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  0 as period, n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, FE' +
        'ES, DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PAI' +
        'D, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        '  ,(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(' +
        'TAX,0) + nvl(UPCRED,0)) AS TOTAL'
      '  , OWING,'
      '  UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE'
      'FROM  matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      '  AND n.refno <> '#39'DRAFT'#39
      '  AND n.rv_type <> '#39'D'#39
      '  AND dispatched IS NOT NULL'
      '  AND owing <> 0'
      
        '  AND TRUNC(n.dispatched) >= TRUNC(SYSDATE) - :p1 AND TRUNC(n.di' +
        'spatched) <= TRUNC(SYSDATE)'
      'union'
      'SELECT'
      
        '  30 as period, n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, F' +
        'EES, DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PA' +
        'ID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        '  ,(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(' +
        'TAX,0) + nvl(UPCRED,0)) AS TOTAL'
      '  , OWING,'
      '  UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE'
      'FROM  matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      '  AND n.refno <> '#39'DRAFT'#39
      '  AND n.rv_type <> '#39'D'#39
      '  AND dispatched IS NOT NULL'
      '  AND owing <> 0'
      
        '  AND TRUNC(n.dispatched) >= TRUNC(SYSDATE) - :p2 AND TRUNC(n.di' +
        'spatched) <= TRUNC(SYSDATE)  - (:p1 + 1)'
      '  union'
      'SELECT'
      
        '  60 as period, n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, F' +
        'EES, DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PA' +
        'ID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        '  ,(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(' +
        'TAX,0) + nvl(UPCRED,0)) AS TOTAL'
      '  , OWING,'
      '  UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE'
      'FROM  matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      '  AND n.refno <> '#39'DRAFT'#39
      '  AND n.rv_type <> '#39'D'#39
      '  AND dispatched IS NOT NULL'
      '  AND owing <> 0  '
      
        '  AND TRUNC(n.dispatched) >= TRUNC(SYSDATE) - :p3 AND TRUNC(n.di' +
        'spatched) <= TRUNC(SYSDATE)  - (:p2 + 1)'
      '  union'
      'SELECT'
      
        '  90 as period ,n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, F' +
        'EES, DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PA' +
        'ID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        '  ,(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(' +
        'TAX,0) + nvl(UPCRED,0)) AS TOTAL'
      '  , OWING,'
      '  UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE'
      'FROM  matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      '  AND n.refno <> '#39'DRAFT'#39
      '  AND n.rv_type <> '#39'D'#39
      '  AND dispatched IS NOT NULL'
      '  AND owing <> 0'
      
        '  AND TRUNC(n.dispatched) >= TRUNC(SYSDATE) - :p4 AND TRUNC(n.di' +
        'spatched) <= TRUNC(SYSDATE)  - (:p3 + 1)'
      '  union'
      'SELECT'
      
        '  120 as period, n.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO, ' +
        'FEES, DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_P' +
        'AID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE'
      
        '  ,(nvl(FEES,0) + nvl(DISB,0) + nvl(ANTD,0) + nvl(SUND,0) + nvl(' +
        'TAX,0) + nvl(UPCRED,0)) AS TOTAL'
      '  , OWING,'
      '  UPCRED, UPCRED_PAID,SPLIT_BILL, EXPPAYMENT, INV_NOTE'
      'FROM  matter m, nmemo n'
      'WHERE n.fileid = m.fileid'
      '  AND n.refno <> '#39'DRAFT'#39
      '  AND n.rv_type <> '#39'D'#39
      '  AND dispatched IS NOT NULL'
      '  AND owing <> 0'
      
        '  AND TRUNC(n.dispatched) >= TRUNC(TO_DATE('#39'01/01/1900'#39','#39'dd/mm/y' +
        'yyy'#39'))  AND TRUNC(n.dispatched) <= TRUNC(SYSDATE)  - (:p4 + 1)')
    Left = 453
    Top = 476
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end>
  end
  object dsAgedDebtorsFull: TUniDataSource
    DataSet = qryAgedDebtorsFull
    Left = 552
    Top = 488
  end
  object qryAgedWipFull: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT 0 as period,FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.A' +
        'UTHOR, FEE.FILEID, FEE.NMATTER'
      '           , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '
      '           , FEE.RATE,FEE.TYPE, FEE.TASK '
      '           , FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '
      
        '           , MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR ' +
        'AS FEETYPE, Get_AuthorName(FEE.PARTNER) AS PARTNERNAME, Get_Auth' +
        'orName(FEE.AUTHOR) AS AUTHORNAME '
      
        '           , Get_AuthorDept(fee.author) AS DEPT, Get_AuthorDept(' +
        'fee.partner) AS PARTDEPT, TIME_TYPE '
      '           FROM MATTER, PHONEBOOK, FEETYPE, BRANCH BR,  FEE'
      '           WHERE FEE.NMATTER = MATTER.NMATTER '
      '           AND FEE.TYPE = FEETYPE.CODE(+)           '
      '           AND MATTER.BRANCH = BR.CODE(+) '
      '           AND MATTER.NCLIENT = PHONEBOOK.NCLIENT'
      '           AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      '           AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39' '
      '           AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      
        #9#9'   AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - :p1 AND TRUNC(FE' +
        'E.CREATED) <= TRUNC(SYSDATE)'
      'UNION'
      
        'SELECT 30 as period,FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.' +
        'AUTHOR, FEE.FILEID, FEE.NMATTER'
      '           , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '
      '           , FEE.RATE,FEE.TYPE, FEE.TASK '
      '           , FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '
      
        '           , MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR ' +
        'AS FEETYPE, Get_AuthorName(FEE.PARTNER) AS PARTNERNAME, Get_Auth' +
        'orName(FEE.AUTHOR) AS AUTHORNAME '
      
        '           , Get_AuthorDept(fee.author) AS DEPT, Get_AuthorDept(' +
        'fee.partner) AS PARTDEPT, TIME_TYPE '
      '           FROM MATTER, PHONEBOOK, FEETYPE, BRANCH BR,  FEE'
      '           WHERE FEE.NMATTER = MATTER.NMATTER '
      '           AND FEE.TYPE = FEETYPE.CODE(+)           '
      '           AND MATTER.BRANCH = BR.CODE(+) '
      '           AND MATTER.NCLIENT = PHONEBOOK.NCLIENT'
      '           AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      '           AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39' '
      '           AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      
        #9#9'   AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p2) AND TRUNC(' +
        'FEE.CREATED) <= TRUNC(SYSDATE) - (:p1+1)'
      'UNION'
      
        'SELECT 60 as period,FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.' +
        'AUTHOR, FEE.FILEID, FEE.NMATTER'
      '           , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '
      '           , FEE.RATE,FEE.TYPE, FEE.TASK '
      '           , FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '
      
        '           , MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR ' +
        'AS FEETYPE, Get_AuthorName(FEE.PARTNER) AS PARTNERNAME, Get_Auth' +
        'orName(FEE.AUTHOR) AS AUTHORNAME '
      
        '           , Get_AuthorDept(fee.author) AS DEPT, Get_AuthorDept(' +
        'fee.partner) AS PARTDEPT, TIME_TYPE '
      '           FROM MATTER, PHONEBOOK, FEETYPE, BRANCH BR,  FEE'
      '           WHERE FEE.NMATTER = MATTER.NMATTER '
      '           AND FEE.TYPE = FEETYPE.CODE(+)           '
      '           AND MATTER.BRANCH = BR.CODE(+) '
      '           AND MATTER.NCLIENT = PHONEBOOK.NCLIENT'
      '           AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      '           AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39' '
      '           AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      
        #9#9'   AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p3) AND TRUNC(' +
        'FEE.CREATED) <= TRUNC(SYSDATE) - (:p2+1)'
      'UNION'
      
        'SELECT 90 as period,FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.' +
        'AUTHOR, FEE.FILEID, FEE.NMATTER'
      '           , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '
      '           , FEE.RATE,FEE.TYPE, FEE.TASK '
      '           , FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '
      
        '           , MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR ' +
        'AS FEETYPE, Get_AuthorName(FEE.PARTNER) AS PARTNERNAME, Get_Auth' +
        'orName(FEE.AUTHOR) AS AUTHORNAME '
      
        '           , Get_AuthorDept(fee.author) AS DEPT, Get_AuthorDept(' +
        'fee.partner) AS PARTDEPT, TIME_TYPE '
      '           FROM MATTER, PHONEBOOK, FEETYPE, BRANCH BR,  FEE'
      '           WHERE FEE.NMATTER = MATTER.NMATTER '
      '           AND FEE.TYPE = FEETYPE.CODE(+)           '
      '           AND MATTER.BRANCH = BR.CODE(+) '
      '           AND MATTER.NCLIENT = PHONEBOOK.NCLIENT'
      '           AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      '           AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39' '
      '           AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      
        #9#9'   AND TRUNC(FEE.CREATED) >= TRUNC(SYSDATE) - (:p4) AND TRUNC(' +
        'FEE.CREATED) <= TRUNC(SYSDATE) - (:p3+1)'
      'UNION'
      
        'SELECT 120 as period,FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE' +
        '.AUTHOR, FEE.FILEID, FEE.NMATTER'
      '           , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS '
      '           , FEE.RATE,FEE.TYPE, FEE.TASK '
      '           , FEE.TASK_AMOUNT, PHONEBOOK.SEARCH AS TITLE '
      
        '           , MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR ' +
        'AS FEETYPE, Get_AuthorName(FEE.PARTNER) AS PARTNERNAME, Get_Auth' +
        'orName(FEE.AUTHOR) AS AUTHORNAME '
      
        '           , Get_AuthorDept(fee.author) AS DEPT, Get_AuthorDept(' +
        'fee.partner) AS PARTDEPT, TIME_TYPE '
      '           FROM MATTER, PHONEBOOK, FEETYPE, BRANCH BR,  FEE'
      '           WHERE FEE.NMATTER = MATTER.NMATTER '
      '           AND FEE.TYPE = FEETYPE.CODE(+)           '
      '           AND MATTER.BRANCH = BR.CODE(+) '
      '           AND MATTER.NCLIENT = PHONEBOOK.NCLIENT'
      '           AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      '           AND NVL(FEE.BILLED,'#39'N'#39') = '#39'N'#39' '
      '           AND FEE.TYPE NOT IN ('#39'ia'#39','#39'wo'#39')'
      #9#9'   AND TRUNC(FEE.CREATED) < TRUNC(SYSDATE) - (:p4)')
    Left = 458
    Top = 523
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        Value = nil
      end>
  end
  object dsAgedWipFull: TUniDataSource
    DataSet = qryAgedWipFull
    Left = 556
    Top = 532
  end
  object qryWIPGeneratedFull: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT to_char(fee.invoicedate,'#39'Mon-YYYY'#39') "PERIOD" , trunc(FEE.' +
        'INVOICEDATE)  "INVOICEDATE",'
      
        'FEE.NFEE, trunc(FEE.CREATED) "CREATED", FEE.AUTHOR, FEE.FILEID, ' +
        'FEE.NMATTER , FEE.DESCR, FEE.AMOUNT, FEE.UNITS, '
      
        'FEE.MINS , FEE.RATE,FEE.TYPE, FEE.TASK , FEE.TASK_AMOUNT, PHONEB' +
        'OOK.SEARCH AS TITLE , MATTER.SHORTDESCR, BR.DESCR "BRANCH",'
      
        'FEETYPE.DESCR AS FEETYPE,PART.NAME AS PARTNERNAME, AUTH.NAME AS ' +
        'AUTHORNAME , DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, TIME_' +
        'TYPE'
      
        'FROM  MATTER, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPLOYEE AUTH, ' +
        'BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT, FEE '
      'WHERE FEE.NMATTER = MATTER.NMATTER '
      'AND FEE.TYPE = FEETYPE.CODE (+)'
      'AND FEE.PARTNER = PART.CODE (+)'
      'AND FEE.AUTHOR = AUTH.CODE'
      'AND MATTER.BRANCH = BR.CODE(+) '
      'AND FEE.DEPT = DPT.CODE(+) '
      'AND PART.DEPT = PARTDPT.CODE (+)'
      'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT '
      'AND NVL(FEE.BILLTYPE,'#39'Billable'#39') = '#39'Billable'#39' '
      'AND NVL(FEE.BILLED,'#39'N'#39') = '#39'Y'#39' '
      'AND FEE.TYPE <> '#39'wo'#39
      
        'and trunc(invoicedate) between :year_start_date and :year_end_da' +
        'te'
      'order by 2')
    Left = 706
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object dsWIPGeneratedFull: TUniDataSource
    DataSet = qryWIPGeneratedFull
    Left = 796
    Top = 165
  end
  object qryFeesBilledFull: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select f.created,f.descr, f.mins, get_authorname(f.author) as au' +
        'thor, get_authorname(f.partner) as patner,'
      'task, units, invoicedate, tax, notional_cost,'
      ' to_char(invoicedate,'#39'Mon-YY'#39') as period,'
      
        ' DECODE(TO_CHAR(invoicedate,'#39'MM'#39'),1,7,2,8,3,9,4,10,5,11,6,12,7,1' +
        ',8,2,9,3,10,4,11,5,12,6) as sort_order'
      'from fee f'
      'where billed = '#39'Y'#39
      'and type <> '#39'wo'#39
      'and billtype = '#39'Billable'#39
      
        'and trunc(invoicedate) between :year_start_date and :year_end_da' +
        'te'
      'order by 12')
    Left = 682
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year_start_date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'year_end_date'
        Value = nil
      end>
  end
  object dsFeesBilledFull: TUniDataSource
    DataSet = qryFeesBilledFull
    Left = 773
    Top = 245
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = prnLink
    Version = 0
    Left = 192
    Top = 116
    PixelsPerInch = 106
    object prnLink: TdxGridReportLink
      Active = True
      Component = grdAged
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43152.599300555560000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 370
    Top = 119
  end
end
