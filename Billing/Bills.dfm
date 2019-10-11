object frmBills: TfrmBills
  Left = 427
  Top = 224
  Caption = 'Bills'
  ClientHeight = 672
  ClientWidth = 1396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pagBills: TcxPageControl
    Left = 0
    Top = 28
    Width = 1396
    Height = 644
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ilstToolbar
    OnChange = pagBillsChange
    ClientRectBottom = 640
    ClientRectLeft = 4
    ClientRectRight = 1392
    ClientRectTop = 26
    object tabBills: TcxTabSheet
      Caption = 'Bills'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrBills: TcxGrid
        Left = 0
        Top = 0
        Width = 1388
        Height = 614
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvBills: TcxGridDBTableView
          PopupMenu = popAuthorise
          OnDblClick = dbgrBillsDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsBills
          DataController.KeyFieldNames = 'NMEMO'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'OWING'
              Column = tvBillsOWING
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'TOTAL'
              Column = tvBillsTOTAL
            end
            item
              Kind = skCount
              FieldName = 'REFNO'
              Column = tvBillsREFNO
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '# Bill(s)'
              Kind = skCount
              FieldName = 'REFNO'
              Column = tvBillsREFNO
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'TOTAL'
              Column = tvBillsTOTAL
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'OWING'
              Column = tvBillsOWING
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'ANTD'
              Column = tvBillsANTD
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'DISB'
              Column = tvBillsDISB
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'FEES'
              Column = tvBillsFEES
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'SUND'
              Column = tvBillsSUND
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'UPCRED'
              Column = tvBillsUPCRED
            end
            item
              Format = '$,0.00;-$,0.00'
              FieldName = 'FEES_PAID'
              Column = tvBillsFEES_PAID
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.OnAfterSummary = tvBillsDataControllerSummaryAfterSummary
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 49
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          Styles.OnGetContentStyle = tvBillsStylesGetContentStyle
          OnColumnHeaderClick = tvBillsColumnHeaderClick
          object tvBillsSTATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvBillsNSUBBILL: TcxGridDBColumn
            DataBinding.FieldName = 'NSUBBILL'
            Visible = False
            MinWidth = 18
          end
          object tvBillsREFNO: TcxGridDBColumn
            Caption = 'Bill'
            DataBinding.FieldName = 'REFNO'
            MinWidth = 18
            Width = 47
          end
          object tvBillsTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Styles.Content = cxStyle1
            Styles.Header = cxStyle1
            Width = 69
          end
          object tvBillsDISPATCHED: TcxGridDBColumn
            Caption = 'Dispatched'
            DataBinding.FieldName = 'DISPATCHED'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            MinWidth = 18
            Width = 53
          end
          object tvBillsGENERATED: TcxGridDBColumn
            Caption = 'Generated'
            DataBinding.FieldName = 'GENERATED'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            MinWidth = 18
          end
          object tvBillsOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Styles.Content = cxStyle1
            Styles.Header = cxStyle1
          end
          object tvBillsFILEID: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            MinWidth = 18
            Width = 62
          end
          object tvBillsColumn1: TcxGridDBColumn
            Caption = 'Matter Descr'
            DataBinding.FieldName = 'SHORTDESCR'
            MinWidth = 18
          end
          object tvBillsTITLE: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'TITLE'
            MinWidth = 18
            Width = 101
          end
          object tvBillsFEES: TcxGridDBColumn
            Caption = 'Fees'
            DataBinding.FieldName = 'FEES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Width = 57
          end
          object tvBillsDISB: TcxGridDBColumn
            Caption = 'Disburse'
            DataBinding.FieldName = 'DISB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Width = 61
          end
          object tvBillsANTD: TcxGridDBColumn
            Caption = 'Cheque Req'
            DataBinding.FieldName = 'ANTD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
          end
          object tvBillsSUND: TcxGridDBColumn
            Caption = 'Sundries'
            DataBinding.FieldName = 'SUND'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Width = 57
          end
          object tvBillsUPCRED: TcxGridDBColumn
            Caption = 'Creditors'
            DataBinding.FieldName = 'UPCRED'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 18
          end
          object tvBillsTAX: TcxGridDBColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Width = 49
          end
          object tvBillsTRUST: TcxGridDBColumn
            Caption = 'Trust'
            DataBinding.FieldName = 'TRUST'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
          end
          object tvBillsFEES_PAID: TcxGridDBColumn
            Caption = 'Fees Paid'
            DataBinding.FieldName = 'FEES_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
          end
          object tvBillsDISB_PAID: TcxGridDBColumn
            Caption = 'Disbs Paid'
            DataBinding.FieldName = 'DISB_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
          end
          object tvBillsANTD_PAID: TcxGridDBColumn
            Caption = 'Ant D Paid'
            DataBinding.FieldName = 'ANTD_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
          end
          object tvBillsSUND_PAID: TcxGridDBColumn
            Caption = 'Sundries Paid'
            DataBinding.FieldName = 'SUND_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Width = 76
          end
          object tvBillsUPCRED_PAID: TcxGridDBColumn
            Caption = 'Cred Paid'
            DataBinding.FieldName = 'UPCRED_PAID'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 18
          end
          object tvBillsDATE_LAST_RECPT: TcxGridDBColumn
            Caption = 'Last Receipt'
            DataBinding.FieldName = 'DATE_LAST_RECPT'
            MinWidth = 18
            Width = 85
          end
          object tvBillsBILL_TO: TcxGridDBColumn
            Caption = 'Billed To'
            DataBinding.FieldName = 'BILL_TO'
            MinWidth = 18
            Width = 110
          end
          object tvBillsAUTHORISED: TcxGridDBColumn
            Caption = 'Authorised'
            DataBinding.FieldName = 'AUTHORISED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            MinWidth = 56
          end
          object tvBillsNMEMO: TcxGridDBColumn
            DataBinding.FieldName = 'NMEMO'
            Visible = False
            MinWidth = 18
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.IncSearch = False
            Options.Grouping = False
            Options.Moving = False
            Options.Sorting = False
            VisibleForCustomization = False
          end
          object tvBillsSPLIT_BILL: TcxGridDBColumn
            Caption = 'Split Bill'
            DataBinding.FieldName = 'SPLIT_BILL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            MinWidth = 56
          end
          object tvBillsMASTER_DESCR: TcxGridDBColumn
            Caption = 'Master Bill'
            DataBinding.FieldName = 'MASTER_DESCR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.MaxLength = 64
            MinWidth = 18
            Width = 56
          end
          object tvBillsAUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            MinWidth = 18
          end
          object tvBillsPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            MinWidth = 18
          end
          object tvBillsCONTROLLER: TcxGridDBColumn
            Caption = 'Controller'
            DataBinding.FieldName = 'CONTROLLER'
          end
          object tvBillsEXPPAYMENT: TcxGridDBColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'EXPPAYMENT'
            MinWidth = 18
          end
          object tvBillsEMAIL: TcxGridDBColumn
            Caption = 'eMail'
            DataBinding.FieldName = 'EMAIL'
          end
          object tvBillsNMATTER: TcxGridDBColumn
            DataBinding.FieldName = 'NMATTER'
            Visible = False
            MinWidth = 18
            Options.Editing = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object tvBillsINV_NOTE: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'INV_NOTE'
            MinWidth = 18
            Width = 106
          end
          object tvBillsMOD_BY: TcxGridDBColumn
            Caption = 'Operator'
            DataBinding.FieldName = 'MODBY'
            MinWidth = 18
          end
          object tvBillsCREATEDBY: TcxGridDBColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'CREATEDBY'
            MinWidth = 18
          end
          object tvBillsSPELL_CHK_DONE: TcxGridDBColumn
            DataBinding.FieldName = 'SPELL_CHK_DONE'
            Visible = False
            MinWidth = 18
            VisibleForCustomization = False
          end
          object tvBillsORIGINAL_FEES: TcxGridDBColumn
            Caption = 'Original Fees'
            DataBinding.FieldName = 'ORIGINAL_FEES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 18
            Options.Editing = False
            Options.Focusing = False
          end
          object tvBillsVARIANCE: TcxGridDBColumn
            Caption = '% Variance'
            DataBinding.FieldName = 'VARIANCE'
            MinWidth = 18
            Options.Editing = False
            Options.Focusing = False
          end
          object tvBillsDIFF: TcxGridDBColumn
            Caption = 'Original - Billed Fees'
            DataBinding.FieldName = 'DIFF'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 18
            Options.Editing = False
            Options.Focusing = False
          end
          object tvBillsPATH: TcxGridDBColumn
            DataBinding.FieldName = 'PATH'
            Visible = False
            VisibleForCustomization = False
          end
          object tvBillsNBILL_TO: TcxGridDBColumn
            DataBinding.FieldName = 'NBILL_TO'
            Visible = False
            VisibleForCustomization = False
          end
          object tvBillsIS_DRAFT: TcxGridDBColumn
            DataBinding.FieldName = 'IS_DRAFT'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object dbgrBillsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSubBill
          DataController.DetailKeyFieldNames = 'NMEMO'
          DataController.KeyFieldNames = 'NSUBBILL_ID'
          DataController.MasterKeyFieldNames = 'NMEMO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsView.NavigatorOffset = 49
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object dbgrBillsDBTableView1DBColumn2: TcxGridDBColumn
            Caption = 'Debtor Name'
            DataBinding.FieldName = 'DEBTOR_NAME'
            MinWidth = 18
            Width = 71
          end
          object dbgrBillsDBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            MinWidth = 18
            Width = 55
          end
          object dbgrBillsDBTableView1DBColumn3: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            MinWidth = 18
          end
        end
        object tvSubBills: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSubBill
          DataController.DetailKeyFieldNames = 'NMEMO'
          DataController.KeyFieldNames = 'NMEMO;NSUBBILL'
          DataController.MasterKeyFieldNames = 'NMEMO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PostponedSynchronization = False
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 49
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object tvSubBillsDEBTOR_NAME: TcxGridDBColumn
            Caption = 'Debtor Name'
            DataBinding.FieldName = 'DEBTOR_NAME'
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsFEES: TcxGridDBColumn
            Caption = 'Fees'
            DataBinding.FieldName = 'FEES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsDISB: TcxGridDBColumn
            Caption = 'Disburse'
            DataBinding.FieldName = 'DISB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsANTD: TcxGridDBColumn
            Caption = 'Anticipated'
            DataBinding.FieldName = 'ANTD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsSUND: TcxGridDBColumn
            Caption = 'Sundries'
            DataBinding.FieldName = 'SUND'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsUPCRED: TcxGridDBColumn
            Caption = 'Creditors'
            DataBinding.FieldName = 'UPCRED'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsTAX: TcxGridDBColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 18
            Options.Filtering = False
          end
          object tvSubBillsNSUBBILL_ID: TcxGridDBColumn
            DataBinding.FieldName = 'NSUBBILL_ID'
            MinWidth = 18
          end
        end
        object dbgrBillsLevel1: TcxGridLevel
          GridView = tvBills
          object dbgrBillsLevel2: TcxGridLevel
            GridView = tvSubBills
          end
        end
      end
    end
    object tabTotals: TcxTabSheet
      Caption = 'Totals'
      ImageIndex = 19
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object nlFees: TNumberLabel
        Left = 228
        Top = 17
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlDisbPaid: TNumberLabel
        Left = 228
        Top = 200
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlOwing: TNumberLabel
        Left = 228
        Top = 284
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlFeesPaid: TNumberLabel
        Left = 228
        Top = 183
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlAntdPaid: TNumberLabel
        Left = 228
        Top = 216
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlAntd: TNumberLabel
        Left = 228
        Top = 50
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlDisb: TNumberLabel
        Left = 228
        Top = 33
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlBalance: TNumberLabel
        Left = 228
        Top = 166
        Width = 102
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlTrust: TNumberLabel
        Left = 228
        Top = 134
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clWindowText
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = [fsUnderline]
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clWindowText
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = [fsUnderline]
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = [fsUnderline]
        NoZero = False
        ShowAccelChar = False
      end
      object nlTotal: TNumberLabel
        Left = 228
        Top = 117
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlupcred_paid: TNumberLabel
        Left = 228
        Top = 233
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlUpCred: TNumberLabel
        Left = 228
        Top = 67
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlSundPaid: TNumberLabel
        Left = 228
        Top = 250
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlSund: TNumberLabel
        Left = 228
        Top = 84
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object nlTaxPaid: TNumberLabel
        Left = 228
        Top = 267
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
        FontAbove.Charset = DEFAULT_CHARSET
        FontAbove.Color = clWindowText
        FontAbove.Height = -11
        FontAbove.Name = 'Segoe UI'
        FontAbove.Style = [fsUnderline]
        FontBelow.Charset = DEFAULT_CHARSET
        FontBelow.Color = clWindowText
        FontBelow.Height = -11
        FontBelow.Name = 'Segoe UI'
        FontBelow.Style = [fsUnderline]
        FontBetween.Charset = DEFAULT_CHARSET
        FontBetween.Color = clWindowText
        FontBetween.Height = -11
        FontBetween.Name = 'Segoe UI'
        FontBetween.Style = [fsUnderline]
        NoZero = False
        ShowAccelChar = False
      end
      object nlTax: TNumberLabel
        Left = 228
        Top = 101
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '$0.00'
        DecimalPlaces = 2
        DisplayFormat = dfCurrency
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
        NoZero = False
        ShowAccelChar = False
      end
      object Label15: TLabel
        Left = 9
        Top = 250
        Width = 145
        Height = 15
        Caption = 'Sundry Expenses Paid/Woff'
      end
      object Label14: TLabel
        Left = 9
        Top = 183
        Width = 80
        Height = 15
        Caption = 'Fees Paid/Woff'
      end
      object Label17: TLabel
        Left = 9
        Top = 200
        Width = 135
        Height = 15
        Caption = 'Disbursements Paid/Woff'
      end
      object Label16: TLabel
        Left = 9
        Top = 284
        Width = 35
        Height = 15
        Caption = 'Owing'
      end
      object Label11: TLabel
        Left = 9
        Top = 117
        Width = 25
        Height = 15
        Caption = 'Total'
      end
      object Label1: TLabel
        Left = 9
        Top = 17
        Width = 23
        Height = 15
        Caption = 'Fees'
      end
      object Label13: TLabel
        Left = 9
        Top = 166
        Width = 41
        Height = 15
        Caption = 'Balance'
      end
      object Label12: TLabel
        Left = 9
        Top = 134
        Width = 25
        Height = 15
        Caption = 'Trust'
      end
      object Label28: TLabel
        Left = 9
        Top = 233
        Width = 105
        Height = 15
        Caption = 'Creditors Paid/Woff'
      end
      object Label23: TLabel
        Left = 9
        Top = 267
        Width = 74
        Height = 15
        Caption = 'Tax paid/Woff'
      end
      object Label9: TLabel
        Left = 9
        Top = 84
        Width = 88
        Height = 15
        Caption = 'Sundry Expenses'
      end
      object Label4: TLabel
        Left = 9
        Top = 50
        Width = 142
        Height = 15
        Caption = 'Anticipated Disbursements'
      end
      object Label2: TLabel
        Left = 9
        Top = 33
        Width = 78
        Height = 15
        Caption = 'Disbursements'
      end
      object Label19: TLabel
        Left = 9
        Top = 101
        Width = 17
        Height = 15
        Caption = 'Tax'
      end
      object Label22: TLabel
        Left = 9
        Top = 216
        Width = 199
        Height = 15
        Caption = 'Anticipated Disbursements Paid/Woff'
      end
      object Label20: TLabel
        Left = 9
        Top = 67
        Width = 48
        Height = 15
        Caption = 'Creditors'
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 20
      DesignSize = (
        1388
        614)
      object Label5: TLabel
        Left = 333
        Top = 157
        Width = 75
        Height = 15
        Caption = 'Fees less than '
      end
      object lblPartner: TLabel
        Left = 370
        Top = 209
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'Partner'
      end
      object Label27: TLabel
        Left = 296
        Top = 234
        Width = 112
        Height = 15
        Caption = 'Client name contains'
      end
      object lblAuthor: TLabel
        Left = 4
        Top = 210
        Width = 37
        Height = 15
        Caption = 'Author'
      end
      object Label7: TLabel
        Left = 325
        Top = 107
        Width = 78
        Height = 15
        Caption = 'Bill Number To'
      end
      object Label6: TLabel
        Left = 4
        Top = 106
        Width = 94
        Height = 15
        Caption = 'Bill Number From'
      end
      object Label21: TLabel
        Left = 4
        Top = 287
        Width = 131
        Height = 15
        Caption = 'Search Refresh Rate (sec)'
      end
      object Label18: TLabel
        Left = 4
        Top = 132
        Width = 82
        Height = 15
        Caption = 'Matter Number'
      end
      object Label10: TLabel
        Left = 4
        Top = 261
        Width = 55
        Height = 15
        Caption = 'Master Bill'
      end
      object Label26: TLabel
        Left = 4
        Top = 234
        Width = 124
        Height = 15
        Caption = 'Billed to name contains'
      end
      object Label25: TLabel
        Left = 279
        Top = 183
        Width = 129
        Height = 15
        Caption = 'Amount owing less than'
      end
      object Label24: TLabel
        Left = 4
        Top = 183
        Width = 138
        Height = 15
        Caption = 'Amount owing more than'
      end
      object lblAmountFrom: TLabel
        Left = 4
        Top = 157
        Width = 84
        Height = 15
        Caption = 'Fees more than '
      end
      object lblDateTo: TLabel
        Left = 4
        Top = 80
        Width = 69
        Height = 15
        Caption = 'Generated To'
      end
      object lblDateFrom: TLabel
        Left = 4
        Top = 53
        Width = 85
        Height = 15
        Caption = 'Generated From'
      end
      object lblAuthorName: TLabel
        Left = 261
        Top = 210
        Width = 102
        Height = 14
        AutoSize = False
      end
      object Label3: TLabel
        Left = 329
        Top = 261
        Width = 79
        Height = 15
        Alignment = taRightJustify
        Caption = 'Bills created by'
      end
      object lblPartnerName: TLabel
        Left = 504
        Top = 210
        Width = 3
        Height = 15
      end
      object lblController: TLabel
        Left = 539
        Top = 209
        Width = 53
        Height = 15
        Alignment = taRightJustify
        Caption = 'Controller'
      end
      object edRefnoFrom: TEdit
        Left = 160
        Top = 103
        Width = 96
        Height = 23
        TabOrder = 15
        OnKeyUp = edRefnoFromKeyUp
      end
      object dtpDateTo: TDateTimePicker
        Left = 165
        Top = 77
        Width = 104
        Height = 23
        Date = 23204.847006782400000000
        Time = 23204.847006782400000000
        TabOrder = 4
      end
      object dtpDateFrom: TDateTimePicker
        Left = 165
        Top = 50
        Width = 104
        Height = 23
        Date = 23204.847006782400000000
        Time = 23204.847006782400000000
        TabOrder = 5
      end
      object rgAuthorised: TRadioGroup
        Left = 4
        Top = 315
        Width = 490
        Height = 54
        Caption = 'Authorised'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'All'
          'Authorised Only'
          'Not Authorised')
        TabOrder = 32
      end
      object neSearchRefresh: TNumberEdit
        Left = 160
        Top = 283
        Width = 61
        Height = 23
        Alignment = taLeftJustify
        DecimalPlaces = 0
        DisplayFormat = dfInteger
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
        NoZero = False
        TabOrder = 29
        OnExit = neSearchRefreshExit
      end
      object edRefnoTo: TEdit
        Left = 421
        Top = 103
        Width = 97
        Height = 23
        TabOrder = 16
        OnEnter = edRefnoToEnter
      end
      object dcThisWeek: TDateChangeButton
        Left = 554
        Top = 50
        Width = 86
        Height = 23
        Caption = 'This Week'
        TabOrder = 7
        TabStop = False
        ChangeType = ctThisWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dcThisMonth: TDateChangeButton
        Left = 642
        Top = 50
        Width = 86
        Height = 23
        Caption = 'This Month'
        TabOrder = 8
        TabStop = False
        ChangeType = ctThisMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dcLastYear: TDateChangeButton
        Left = 730
        Top = 77
        Width = 85
        Height = 23
        Caption = 'Last Year'
        TabOrder = 9
        TabStop = False
        ChangeType = ctLastYear
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dcYesterday: TDateChangeButton
        Left = 466
        Top = 77
        Width = 86
        Height = 23
        Caption = 'Yesterday'
        TabOrder = 10
        TabStop = False
        ChangeType = ctYesterday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dcYearToDate: TDateChangeButton
        Left = 730
        Top = 50
        Width = 85
        Height = 23
        Caption = 'Year To Date'
        TabOrder = 11
        TabStop = False
        ChangeType = ctYearToDate
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dcToday: TDateChangeButton
        Left = 466
        Top = 50
        Width = 86
        Height = 23
        Caption = 'Today'
        TabOrder = 12
        TabStop = False
        ChangeType = ctToday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object rgDispatched: TRadioGroup
        Left = 148
        Top = 9
        Width = 644
        Height = 35
        BiDiMode = bdLeftToRight
        Caption = 'Dispatched'
        Columns = 6
        ItemIndex = 0
        Items.Strings = (
          'All Invoices'
          'Draft'
          'Dispatched'
          'Outstanding'
          'Assessed'
          'Credit Notes')
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = rgDispatchedClick
      end
      object tbMasterBill: TEdit
        Left = 160
        Top = 257
        Width = 96
        Height = 23
        TabOrder = 27
      end
      object tbFileID: TEdit
        Left = 160
        Top = 129
        Width = 96
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 17
      end
      object tbClientName: TEdit
        Left = 421
        Top = 231
        Width = 97
        Height = 23
        TabOrder = 26
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 375
        Caption = 'Varied Bills'
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 30
        Transparent = True
        Height = 53
        Width = 491
        object chkShowReducedBills: TcxCheckBox
          Left = 7
          Top = 22
          Hint = 
            'Shows only bills reduced by fees being discounted or excluded at' +
            ' the time of billing. ie billed fees are less than the original ' +
            '(suggested) billable amount.'
          Caption = 'Show only reduced bills'
          TabOrder = 0
        end
      end
      object cbEmployees: TComboBox
        Left = 421
        Top = 258
        Width = 97
        Height = 23
        TabOrder = 28
        OnClick = cbPartnerClick
      end
      object tbMatterSearch: TcxTextEdit
        Left = 771
        Top = 346
        Hint = 'Press Enter for AutoReceipting'
        Properties.OnChange = cxTextEdit1PropertiesChange
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 31
        Visible = False
        OnKeyDown = tbMatterSearchKeyDown
        OnKeyPress = tbMatterSearchKeyPress
        Width = 112
      end
      object tbAmountOwingFrom: TEdit
        Left = 160
        Top = 180
        Width = 96
        Height = 23
        TabOrder = 20
      end
      object tbAmountFrom: TEdit
        Left = 160
        Top = 154
        Width = 96
        Height = 23
        TabOrder = 18
      end
      object rgSearchBy: TcxRadioGroup
        Left = 274
        Top = 44
        Caption = 'Search By'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Generated'
          end
          item
            Caption = 'Dispatched'
          end
          item
            Caption = 'Due Date'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Transparent = True
        Height = 56
        Width = 189
      end
      object tbBilledName: TEdit
        Left = 160
        Top = 231
        Width = 96
        Height = 23
        TabOrder = 25
      end
      object tbAmountTo: TEdit
        Left = 421
        Top = 154
        Width = 97
        Height = 23
        TabOrder = 19
      end
      object tbAmountOwingTo: TEdit
        Left = 421
        Top = 180
        Width = 97
        Height = 23
        TabOrder = 21
      end
      object dcLastWeek: TDateChangeButton
        Left = 554
        Top = 77
        Width = 86
        Height = 23
        Caption = 'Last Week'
        TabOrder = 13
        TabStop = False
        ChangeType = ctLastWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object chkDateFrom: TCheckBox
        Left = 147
        Top = 53
        Width = 16
        Height = 18
        TabOrder = 2
      end
      object cbPartner: TComboBox
        Left = 421
        Top = 206
        Width = 97
        Height = 23
        TabOrder = 23
        OnClick = cbPartnerClick
      end
      object cbAuthor: TComboBox
        Left = 160
        Top = 206
        Width = 96
        Height = 23
        TabOrder = 22
        OnClick = cbAuthorClick
      end
      object dcLastMonth: TDateChangeButton
        Left = 642
        Top = 77
        Width = 86
        Height = 23
        Caption = 'Last Month'
        TabOrder = 14
        TabStop = False
        ChangeType = ctLastMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object chkExcludeReversals: TcxCheckBox
        Left = 3
        Top = 17
        Caption = 'Exclude Reversals'
        Properties.Alignment = taRightJustify
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
      end
      object chkDateTo: TCheckBox
        Left = 148
        Top = 78
        Width = 16
        Height = 18
        TabOrder = 3
      end
      object btnClearAll: TBitBtn
        Left = 1289
        Top = 585
        Width = 87
        Height = 26
        Anchors = [akRight, akBottom]
        Caption = 'Clear &All'
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
        TabOrder = 33
        Visible = False
        OnClick = btnClearAllClick
      end
      object cbController: TcxLookupComboBox
        Left = 598
        Top = 206
        Properties.AutoSelect = False
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsControllers
        TabOrder = 24
        Width = 141
      end
    end
  end
  object dsBills: TUniDataSource
    AutoEdit = False
    DataSet = qryBills
    Left = 793
    Top = 62
  end
  object qryTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT FROM CHEQUE WHER' +
        'E CREATED >= :P_DateFrom AND CREATED <= :P_DateTo AND REVERSED <' +
        '> '#39'Y'#39)
    Left = 564
    Top = 273
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
  object ilstToolbar: TImageList
    Left = 601
    Top = 34
    Bitmap = {
      494C010119001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F600F1E3E300EFDEDE00EFDE
      DE00EFDEDE00EFDFCE00E1D1D100E1D1D100E1D1D100E1D1D100E1D1D100E1D1
      D100E1D1D100E8DDDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9D4D600DCB4A900EED1BE00ECC4
      AD00F1C69100F2BB7400E2977400DD8F6A00D6926800C9936900C9936900CC86
      6C00BD6E5800B186770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECD9DA00E2C2B700EFE5E300FCFF
      FF00F6F7F400FAF4E400FFF3D100FDE6C000FAD5AD00FFCF9E00FFCF9E00F5C8
      9800D9905F00BD82820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD5D600ECE2E000EECECC00EDD8
      DA0000000000F7F9FC00F4F2EF00FAF0DD00FEECCE00FAE3C100EECBA600DBA7
      7C00F7B26C00BB86820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD4D400F0E2E300FEFFFF00ECC4
      B700EBD7D500000000000000000000000000F7F6F200F6DDC400DAA48900F8D9
      B200F5C99A00B9907F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAD2D200F4E5E600F8F3EB00F7EB
      DA00E6DAD800E9C2B300E6C6BB00E6C6BB00E2B8B100DBBAA700E6DADF00F3DD
      C900FEE3BE00C098920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBE0E200E9E6E800F5F1E800F7F9
      FA00F0F3F300E5E3E100DAD3D500DAD3D500E0DADA00EFF0EF00F1F5F600E6E3
      E500DECABB00D0A79400FEFFFF00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EDE300A79C9700B59CA200EEE6
      E600FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFAF100F0F3
      EF0067B1F500A196A500FFFFFD00FFFFFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4936900A48A7700A7896F00AE94
      9300D6EAFF00AEE2FF00A6E5FF0094E5FF008AE2FF0088CCFF0089BFF90064B2
      FC00189CFF00858BAE00FFFFFC00FFFFFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097987600A39F870099858100A392
      9400B1E5FF007DCDFF0072C1FF0059C6FF003EC7FF0031C5FF001DBEFF001A9B
      FD005C83B200E1CAC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BC989A00BDBBB100AAAB9500A79B
      8E00D2F3FB00BDFBFF00A7E9FF009AD4FF0085C8FF0070D1FF0057C4E900929F
      A200E7D4CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5989000D0B7BA00C0B0B000B2B5
      9F00D8D7D900CAF8F800CFFFFF00C7FFFF00AFEFFF0095B7CD00B6A9A500FFF0
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9EBDF00C8B4AF00E4DAD700C4B1
      AF00FBF0EF00DACFC700CAE3E400CBF3F300B1B6BD00DBC4B900FFFDFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DACB00BBB49C00DFD1
      CF0000000000FFF8F800E6D5CE00D2BDBE00E1D6D50000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFE00FEFBFF00F6FCFF00FDFE
      FF00FFFCF200DECDB800CFC2AC00FFFFEF00FFFCFF00FCFBFF00FAFCFF00FFFE
      FF00FFFFF600FFFFF600F6FFFF00E8FEFF000000000000000000000000000000
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFDFF00F8FEFF00F4FFFF00F8F5
      ED00ECCDB800C3977800BA947400E5CFB300FFFFF800FFFFFF00F8FEFF00F9FC
      FF00FFFFFC00FFFFF700FAFAFA00F6FEFF000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000FFFDFD00FBFFFE00F5F6EC00D6C5
      AB00BB8B6700AE704700B1795000BE926D00E6DABE00FFFBEC00FBFFFF00F4FA
      FF00FDFDFF00FFFEFF00FFFCFD00FFFBFE000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000FFFFF800FFF0E000E2C3AA00B48A
      6500A87B4F00C89C6D00CD9E7800AC795900B3956C00EAD5B900FFFFF700FDFE
      FF00F4F9FF00FDFDFF00FFFEFF00FFFFFC000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000FBF5DE00DDB59C00BB7A5B00AE75
      4E00C4AC8200F5ECCA00F6E2C900C69B8A00A6764C00C29C7900EFD7C100FFFE
      F700FDFEFF00F4FAFF00FAFFFE00FFFFFB000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF00000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000F3E8D200CBA38A00BB7F6100D7AB
      8E00F1E9D200F8FFF500FFFFF900EEDAD500CD9F7D00A5785600B48D6D00F0D8
      C200FFFFF800FBFFFF00F7FFFE00F7FEFB00AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFEF700EAE0CF00E2D4C100FDF4
      E600FFFFFE00FDFDFF00FCFEFF00FEFDF900F8DDC800BD9A7800A2784D00C29E
      7600EFD9C000FFFBF400FFFFFF00F9FBFC00BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF0000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF0000000000FFFDFF00F1FFFE00E3FFFA00EDFF
      FF00FFFAFF00FFF2FF00FFFBFF00F8FFF900FFFFF200F2DBBB00C59C6B00A679
      4600BA997800EEDCD100FFFDFF00FFFCFF00BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF0000000000FFFFFF00FAFAFA00FFFFFF00FFFF
      FF00F4F4F400FFFFFF00F7F7F700FFFFFF00FBFAFF00FFFEFB00EBD7C500B68E
      7100AF785900BB8D7500EDDACB00FDFFF900C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF0000000000FCFCFC00FFFFFF00FDFDFD00FBFB
      FB00FFFFFF00FFFFFF00FBFBFB00FFFFFF00FDFDFF00FFFEFA00FFFFF400EBCC
      B700B3897200BB958300EADDCF00F7FCF300C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF0000000000FEFEFE00FAFAFA00FFFFFF00F9F9
      F900FFFFFF00F7F7F700FFFFFF00FAFAFA00F1F5F600FDFFFE00FFFFF900FFFC
      F300F6DED200EDD9CE00F6F0E500FCFFF700C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF00000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD0000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF000000000000000000CCCCCC00C1C1C100FFFFFF00FFFF
      FF00CDCDCD00CDCDCD00D2D2D200B1B1B100C0C5C400B8BDBC00D9DBDB00F7F2
      F300BBB6B500B6B1AE00C5C5BF00ADB2A900C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF00000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000000000000000DCDCDC00A1A1A100CCCCCC00CFCF
      CF009A9A9A00D6D6D600C4C4C400A1A1A100DEE3E100A5AAA900BEC1C500B8BB
      C00094989D00DBE0E100F1F4F200E1E2DE00CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF00000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000FAFAFA00B3B3B300A3A3A300A6A6
      A600A6A6A600F7F7F700BCBCBC0096969600B6BBB90099999900E0DDDF00B5B6
      BA009CA5A900F6FFFF00F9FDFE00FFFEFF00CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF00000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000F8F8F800DEDEDE00A2A2A200A1A1
      A100D3D3D300FFFFFF00C6C6C600A3A3A300DDE2E100A39E9F00EDE2E400CFCA
      CB00989E9D00DAE4E400FBFCFF00E9E2E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000FFFFFF00FAFAFA00989898009A9A
      9A00F7F7F700FFFFFF00C7C7C7008A8A8A009A9C9D00A59D9E00F9EAE800FFFC
      F900B8BCB70089919000A2A3A700918690000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055555500000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000009999
      6600FFFFCC000000000000000000555555005555550055555500555555005555
      550055555500555555005555550000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600DDDDDD00555555000000
      0000000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000009999
      6600FF996600000000009999660000000000F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA6005555550000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086868600DDDDDD0066333300663333005555
      5500000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFCC009999660000000000F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA6005555550000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000086868600DDDDDD0066333300C0C0C000C0C0C000C0C0C0008686
      86005555550000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55000000000000000000FFCCCC00FFFFCC009999660000000000F0CAA600F0CA
      A600F0CAA600F0CAA6005555550000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000086868600DDDDDD0066333300C0C0C000C0C0C000C0C0C000868686008686
      8600663333000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000080800000FFFF00000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000F0FBFF0000000000FFCCCC00FFFFCC009999660000000000F0CA
      A600F0CAA600F0CAA6005555550000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD0066333300C0C0C000C0C0C0005555550055555500868686008686
      8600663333000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000080800000FFFF000000
      0000008080008080800000000000000000000000000000000000000000000000
      0000F0FBFF00F0CAA600F0FBFF0000000000FFCCCC0099FFCC00FF9966000000
      0000F0CAA600F0CAA6005555550000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000008686
      860066333300C0C0C000C0C0C000555555006633330066333300555555008686
      86000000000000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080800000FF
      FF0000808000000000000000000000000000000000000000000000000000FFFF
      CC00FFCCCC00F0FBFF00F0CAA600F0FBFF0000000000FFCCCC00000000000000
      0000F0CAA600F0CAA6005555550000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000005555550086868600DDDD
      DD00C0C0C000C0C0C000C0C0C000555555008686860086868600663333006633
      3300CC9999000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000000000000000000000000000800000000000000099996600FFCCCC000000
      0000FFFFCC0099660000F0FBFF00FFCCCC00FFCCCC0000000000000000000000
      0000FFCCCC00FFCCCC005555550000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000DDDDDD008686
      8600C0C0C000C0C0C000C0C0C000DDDDDD00C0C0C00086868600555555006633
      3300663333009966660000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000000000000FF000000800000000000000099663300999966000000
      0000000000009999660099660000FFFFCC00FFECCC00FF99660000000000FFEC
      CC00FFCCCC00FFCCCC005555550000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000008686
      8600C0C0C000C0C0C000C0C0C000C0C0C000DDDDDD0099666600663333009966
      66009966660066333300996666000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000008000000000000000FF000000000000000000000000000000FFFF
      CC0099663300000000009999660099663300FF9966000000000099663300FFEC
      CC00FFECCC00FFECCC005555550000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000868686009966660099666600CC99
      9900996666009966660066333300000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000080000000FF000000000000000000000000000000000000000000
      0000FFFFCC0099663300000000009999660000000000FF996600FFECCC00FFEC
      CC00FFECCC00FFECCC005555550000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000008686860086868600000000000000000099666600CC999900DDDD
      DD00CC9999009966660066333300000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000080000000FF0000000000000000000000000000000000
      000000000000FFCCCC009999660000000000FFECCC00FFECCC00FFECCC00FFEC
      CC00A4A0A000A4A0A0005555550000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99990099666600FFFF
      CC00CC99990099666600CC999900000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      00000000000000000000FFCCCC009966330000000000FFECCC00FFECCC00FFEC
      CC0099666600FF9933005555550000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9999009966
      660099666600CC99990000000000000000000000000000000000000000008080
      8000000000008080800000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      5500000000000000000000000000FFFFCC0000000000FFECCC00FFECCC00FFEC
      CC0099663300555555000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      5500555555000000000000000000000000005555550055555500555555005555
      55005555550000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000333B3300A5A5A50073737300666666006666660073737300CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      600080606000000000000000000000000000B7A2930063493500634935006349
      3500654B38006349350063493500634935006349350063493500634935006349
      35006349350063493500634935006349350000000000000000000000FF000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000099
      000000600000337733000073000000990000007C0000004D0000333B33008080
      800000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C000806060008060600080606000BCA79800D7B79F00C49E8400B28B
      6F00DABAA300C9A88F00B48F7400D9B9A100C49F8400B28B7000D7B59D00C39E
      8300B28B6F00D1AA8F00BF987B00634935000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000007C0000333B
      3300A5A5A5000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF00BEA89A00FEFEFE00FEFEFE00C099
      7C00FDFAF800FDF8F500C19B7D00FBF2EC00FBF0E900BF977900FAE9DD00FBEA
      E000C19C7F00F9DFCF00D4BDAE00634935000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000FF00000000000000000000000000000000000099
      0000009900000099000000990000109F100040B2400020A52000009900000073
      000040404000F2F2F200000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      000000000000000000008060600080808000C0AB9C00FEFEFE00FEFEFE00CEA5
      8800FEFCFC00FEFAF800CDA38500FDF4F000FBF1EA00CDA38500FBEAE000FAE8
      DD00CDA38500F9E1D100D3BCAF00634935000000000000000000808080000000
      000000000000FFFFFF00FFFFFF00000000000000000080808000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000099
      00000099000000990000008F00003E3E3E00DFDFDF00000000009FD89F00109F
      100033593300B2B2B200000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A000406060008080800080808000C2AE9E00D4AF9500C19A7E00B28B
      6F00CDA38500BF977A00B28B6F00CDA38500BF977A000C40E7000A3BDA000834
      C700052DB400CDA38500BF977A00634935000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000099
      000000990000009900000099000000560000454545000000000000000000BFE5
      BF000069000073737300000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A00080606000C5AFA000FEFEFE00FEFEFE00BF97
      7900FEFEFE00FEFEFE00BF977900FDFAF800FDF7F4002F60F600FDF7F400FDF4
      F0000834C700FAE6DB00D4C1B500634935000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000000000000B2B2B200000000000099
      0000009900000099000000990000009900000099000030303000000000000000
      000060BF6000666D66000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C00080606000C7B1A200FEFEFE00FEFEFE00CDA3
      8500FEFEFE00FEFEFE00CDA38500FEFCFC00FDFAF8005B82FB00FEFCFC00FDF7
      F4000A3BDA00FAEAE000D4C4BA00634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000334A3300B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF00A5C3A50000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C0008060600000000000C9B3A400D4AF9500C19A7E00B28B
      6F00CDA38500BF977A00B28B6F00CDA38500BF977A007A9BFE005B82FB002F60
      F6000C40E700CDA38500C0997C006349350000000000000000000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000000000001078100040404000F2F2
      F20000000000000000003789370013631300114B110011431100113411002435
      2400000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      800080606000806060000000000000000000CBB5A500FEFEFE00FEFEFE00BF97
      7900FEFEFE00FEFEFE00BF977900FEFEFE00FEFEFE00BF977900FDFAF800FDF7
      F400BF977900FBF2EB00E0D8D200664D39000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000060BF6000004300005959
      5900E5E5E50000000000E5F4E500109F10000099000000990000009900001847
      1800000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      000000000000000000000000000000000000CCB6A700FEFEFE00FEFEFE00CDA3
      8500FEFEFE00FEFEFE00CDA38500FEFEFE00FEFEFE00CDA38500FEFCFB00FDFA
      F800CDA38500FDF4F000FBF1EC00634935000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000FF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000FF0000000000BFE5BF0000990000004D
      0000404040008080800099999900105210000099000000990000009900001545
      150000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000EAAA8B00EAAA8B00EAA88700E9A4
      8200E8A07D00E89C7700E6977000E5926900E48D6100E3885A00E2825200E07E
      4B00E0794500DF743F00DF723A00C7612F000000000000000000808080000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000808080000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000050B950000099
      000000860000004D000000560000008F00000099000000990000009900001444
      140000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000EAAA8B00FEEBE200FEEBE100FEEA
      E000FEE9DE00FEE8DD00FDE7DC00F9AF8800F9AB8300F3A77F00F3A77F00F4A3
      7D00F5A17900F6A37800F29E7100CB632F000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000EFF8EF0030AC
      3000009900000099000000990000009900000099000000990000009900001645
      1600000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000EAAA8B00E9A78800E8A48300E6A0
      7E00E49C7800E2977200E0926B00DE8C6500DB875D00D9815700D77C5000D577
      4A00D3734400D16F3F00D06C3A00CF6937000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000000000000000000000000000EFF8
      EF0060BF600000990000009900000099000030AC30007FCB7F00009900001947
      1900000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000008F8C8A00000000008F8C8A000000
      0000808080000000000080808000000000008080800000000000707070000000
      000063636300FDFDFD0058595800D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F003D74
      3D00000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      00000000000000000000000000000000000000000000202520009D9B97002025
      20009D9B970020252000A4A29E00202520008F8F8D00202520008F8F8E002025
      20009596950020252000A9AAA900292D29000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000800000008000000000000000000080000000000080000000FF000000
      FF000000FF000000FF0000008000000080000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000808080008080
      8000000000000000800000008000000000000000000000000000000000000000
      8000808080008080800000000000000080000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C0001015200717171000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF0080808000C0C0C0000000800000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF0080808000C0C0C0000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E450000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      800080808000C0C0C000C0C0C000000000000000000000000000808080008080
      8000808080008080800080808000C0C0C0000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000808080008080
      80008080800080808000C0C0C000000000000000000000000000000000000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000080808000C0C0C0008080
      8000FFFFFF008080800000800000000000000000000000000000000000008080
      8000C0C0C00080808000FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B800111178000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000080808000FFFFFF00C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000008080
      8000FFFFFF00C0C0C000C0C0C000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B900000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA70000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000DCDC
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
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000000000000
      84000000840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000840000008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008400000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000008400000084000000000000000000FFFFFF00848484000000
      000084848400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00008400000084848400000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000840000000000000000000000000084848400FFFF
      0000FFFF0000FFFF000000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF007B7B7B0000000000000000000000000000000000BDBD
      BD00BDBDBD00FFFFFF0000000000000000000000000084848400848484008484
      8400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FFFFFF000000000000000000000000000000000084848400FFFF
      0000FFFF0000FFFF000000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000848484000000
      000084848400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000848484000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084848400000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000003000000000000
      0003000000000000000300000000000008030000000000000703000000000000
      0003000000000000000000000000000000000000000000000000000000000000
      00030000000000000007000000000000000F000000000000001F000000000000
      887F000000000000FFFF000000000000FFFFC007FFFF0000FF1FC007F83F0000
      FF1FC007E00F0000FF1FC007CFC70000FF1FC00787E30000FE0FC007A3F30000
      0007C00731F900000003C00738F900000000C0073C7900000000C0073E390000
      0000C0073F190000000FC0079F8B0000000FC0078FC30000000FC007C7E70000
      000FC007E00F0000FFFFC007F83F0000FFFF800FE3FFC007FE3F0007C001C007
      FC1F7FE7C001C007F80F7CE7E001C007F0070007E401C007E0077F23EA01C007
      C0077F91D101C007800F0000A0A1C00780077FE00061C007C0037FE00001C007
      E00100020001C007F0017FE1B001C007F9817FE4D801C007FF815556EC01C007
      FFC3AAAFE603C007FFFFD55FE007C007FFFFE7FFF03FFFFFC387E01FE0070000
      8103E00FC00000000001E007800000008100E003000000008100E04300000000
      8100E06300000000E1C1A03380000000E3C79FF3E001000081818C0FF0030000
      0000840FF01F00008080800FE03F00008080C00FE03F00008080C00FC03F0000
      E0E0E00FC07F5550E3E3FFCFF8FF8000FFFFF80FFFFFFFFFFFFFE007FFFF07C1
      FFF9C003FFFF0300E7FF8001E0070100C3F38001C0070080C3E70001C00700C0
      E1C70001C00781E0F08F0001C00781E0F81F0001C00783E0FC3F0001C007DFF7
      F81F0001C00FC7E3F09F0001E07FC7E3C1C78003E07F800183E3C003FFFF8001
      8FF1E00FFFFF8001FFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFC007FC7FFE7F3FFB
      8003F83FFC3F07C10001F81FFC3F03030001F007FE7F00030001F003FC3F0003
      0000E003FC3F00070000E003FC3F00078000C003FC1F000FC000C003F20F000F
      E001C003E1070007E007E003E1870003F007F803E0070003F003FC03F00F0003
      F803FF83F81F0001FFFFFFC3FFFF0001FFFF8000FFFF8000E01F0000FFFF0000
      C00F0000FFFF000080070000FFFF000000030000FFFF000000010000FFE70000
      80000000C1F30000C0000000C3FB0000E0000000C7FB8000F0008000CBFBC000
      F801C000DCF3C000F801F000FF07C000F801FC00FFFFC000F807FC01FFFFC000
      F807FC03FFFFC000FC7FFC07FFFFE00100000000000000000000000000000000
      000000000000}
  end
  object qryBills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NMEMO.REFNO, NMEMO.NMEMO, NMEMO.FILEID, NMEMO.NMATTER, NM' +
        'EMO.RV_TYPE,'
      
        '    AllMatters.TITLE, NMEMO.DATE_LAST_RECPT, NMEMO.DISPATCHED, N' +
        'MEMO.FEES, NMEMO.DISB, '
      
        '    NMEMO.ANTD, NMEMO.SUND, NMEMO.TRUST, NMEMO.TAX, NMEMO.FEES_P' +
        'AID, NMEMO.DISB_PAID, '
      
        '    NMEMO.ANTD_PAID, NMEMO.SUND_PAID,NMEMO.UPCRED, NMEMO.UPCRED_' +
        'PAID,'
      
        '    NMEMO.FEES_WOFF, NMEMO.DISB_WOFF, NMEMO.ANTD_WOFF, NMEMO.SUN' +
        'D_WOFF, NMEMO.UPCRED_WOFF,'
      '    TOTAL, OWING,'
      '    decode(DISPATCHED,null,-1,'
      
        '       decode(DATE_LAST_RECPT,null,-1,trunc(DATE_LAST_RECPT) - t' +
        'runc(DISPATCHED))'
      
        '    ) as DELAY, AUTHORISED,SPLIT_BILL,MASTERBILLS.DESCR as MASTE' +
        'R_DESCR, NMEMO.AUTHOR, '
      '    NMEMO.PARTNER, NMEMO.GENERATED, NMEMO.EXPPAYMENT, '
      
        '    NMEMO.Inv_Note, NMEMO.Authorised, NMEMO.MODBY, nmemo.invoice' +
        '_copy, NMEMO.CREATEDBY, NMEMO.DISCOUNT, NMEMO.SPELL_CHK_DONE,'
      
        '    NMEMO.Original_fees, (NMEMO.Original_Fees - NMEMO.Fees) Vari' +
        'ance, (NMEMO.Fees - NMEMO.Original_Fees) Diff, SHORTDESCR, contr' +
        'oller, '#39#39' as email,'
      '    NMEMO.PATH, nmemo.nbill_to, IS_DRAFT,'
      
        '    NMEMO.AUTHORISED_BY, NMEMO.AUTHORISED_DATE, NMEMO.DISPATCHED' +
        '_BY,'
      '    CASE -- WHEN NMEMO.REJECTED = '#39'Y'#39' then '#39'Rejected'#39
      
        '-- WHEN NMEMO.REJECTED = '#39'N'#39' and NMEMO.PRIVATE = '#39'Y'#39' then '#39'Priva' +
        'te'#39
      
        ' WHEN NMEMO.PRIVATE = '#39'N'#39' and NMEMO.IS_DRAFT = '#39'Y'#39' then '#39'Submitt' +
        'ed'#39
      
        ' WHEN NMEMO.PRIVATE = '#39'N'#39' and NMEMO.REFNO = '#39'AUTH'#39' then '#39'Authori' +
        'sed'#39
      ' WHEN NMEMO.IS_DRAFT = '#39'N'#39' then '#39'Posted'#39' END as STATUS'
      'FROM NMEMO, AllMatters, MASTERBILLS'
      'WHERE NMEMO.NMATTER = AllMatters.NMATTER'
      '      AND MASTERBILLS.NMASTER = NMEMO.NMASTER (+)'
      '      AND NMEMO.GENERATED >= :P_DateFrom'
      '      AND NMEMO.GENERATED <= :P_DateTo')
    AfterOpen = qryBillsAfterOpen
    AfterScroll = qryBillsAfterScroll
    OnCalcFields = qryBillsCalcFields
    Left = 680
    Top = 24
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
  object qryBillsCount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT COUNT(*)'
      'FROM NMEMO, AllMatters'
      'WHERE NMEMO.NMATTER = AllMatters.NMATTER'
      '      AND NMEMO.GENERATED >= :P_DateFrom'
      '      AND NMEMO.GENERATED <= :P_DateTo')
    OnCalcFields = qryBillsCalcFields
    Left = 462
    Top = 34
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
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 640
    Top = 35
  end
  object prcDeleteDBill: TUniStoredProc
    StoredProcName = 'DELETE_DRAFT_BILL'
    Connection = dmAxiom.uniInsight
    Left = 516
    Top = 29
    ParamData = <
      item
        DataType = ftFloat
        Name = 'MEMONUMBER'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'DELETE_DRAFT_BILL'
  end
  object procBillReverse: TUniStoredProc
    StoredProcName = 'BILL_REVERSE'
    SQL.Strings = (
      'begin'
      '  BILL_REVERSE(:P_NMEMO, :P_RVDATE, :P_WHO);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 750
    Top = 336
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_RVDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_WHO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'BILL_REVERSE'
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT COUNT(*)'
      'FROM NMEMO, AllMatters'
      'WHERE NMEMO.NMATTER = AllMatters.NMATTER'
      '      AND NMEMO.GENERATED >= :P_DateFrom'
      '      AND NMEMO.GENERATED <= :P_DateTo')
    AfterScroll = qryBillsAfterScroll
    OnCalcFields = qryBillsCalcFields
    Left = 529
    Top = 136
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 770
    Top = 36
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object stySubBill: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientActiveCaption
    end
    object styDefault: TcxStyle
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Print'
      'File'
      'Help'
      'Menus'
      'popMenu'
      'Credit Note'
      'Mail Bills'
      'Delete')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
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
      True
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 687
    Top = 295
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
          ItemName = 'File1'
        end>
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
      FloatClientWidth = 57
      FloatClientHeight = 44
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnOpen'
        end
        item
          Visible = True
          ItemName = 'btnPost'
        end
        item
          Visible = True
          ItemName = 'tbtnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnClearAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barbtnRemoveDiscount'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnAutoReceipt'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDispatched'
        end
        item
          Visible = True
          ItemName = 'btnAuthorise'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnCalculateInterest'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbnOpenMatter'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAddMasterBill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSubBill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnMerge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDebtorTask'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbtnSpellCheck'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lblMatterSearch'
        end
        item
          Visible = True
          ItemName = 'barContMatterSearch'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cxbarPrintAll'
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
    object tbtnDelete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Enabled = False
      Hint = 'Delete Draft Bill'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popDelete
      ImageIndex = 8
      OnClick = popDeleteCurrentClick
    end
    object barContMatterSearch: TdxBarControlContainerItem
      Caption = 'Search for Matter'
      Category = 0
      Hint = 'Search for Matter'
      Visible = ivNever
      Control = tbMatterSearch
    end
    object lblMatterSearch: TdxBarStatic
      Caption = 'Search for Matter'
      Category = 0
      Hint = 'Search for Matter'
      Visible = ivNever
    end
    object btnDebtorTask: TdxBarButton
      Caption = 'Debtor'
      Category = 0
      Enabled = False
      Hint = 'Debtor'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF00FF00FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF00FF00FF00FF00FF00FF
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF00FF00FF00FF00FF00FF00FF
        00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000FF00FF00FF00FF000000FF000000FF00FF
        00FF00FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
        FF00FFFFFF00000000FF000000FFFFFFFF00000000FF000000FF000000FF0000
        00FF000000FF00FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00FF000000FFFFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF000000
        00FFFFFFFF00FFFFFF00000000FF000000FF000000FF000000FF00FF00FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF0000FF00FFFFFFFF00000000FF0000
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00000000FF00FF00FF00FF00FF00FF
        00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF00FF00FF00FF00FF00FF00FF
        00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF00FFFFFF0000FF00FF00FF00FF000000FF000000FF00FF
        00FF00FF00FF00FF00FFFFFFFF00FFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF00000000FFFFFFFF00000000FF000000FF000000FF0000
        00FF000000FF00FF00FF00FF00FFFFFFFF00FFFFFF00000000FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FFFFFFFF00FFFFFF00000000FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FFFFFFFF0000FF00FF00FF00FFFFFFFF00FFFFFF00000000FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFC0C0C0FF000000FF0000
        00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF00FFFFFFFF00FFFFFF000000
        00FF000000FF000000FF000000FF000000FF808080FFC0C0C0FFC0C0C0FF0000
        00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000FF808080FF808080FF808080FF808080FF808080FF0000
        00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = btnDebtorTaskClick
    end
    object tbnOpenMatter: TdxBarButton
      Caption = 'Open Matter'
      Category = 0
      Enabled = False
      Hint = 'Open Matter'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = tbnOpenMatterClick
    end
    object btnAddMasterBill: TdxBarButton
      Caption = 'Master Bill'
      Category = 0
      Enabled = False
      Hint = 'Master Bill'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = btnAddMasterBillClick
    end
    object dxBarButton7: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btnEditMasterBill: TdxBarButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
    end
    object btnSubBill: TdxBarButton
      Caption = 'Split Bill'
      Category = 0
      Enabled = False
      Hint = 'Split Bill'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btnSubBillClick
    end
    object tbtnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = tbtnRefreshClick
    end
    object btnViewBill: TdxBarButton
      Caption = 'View Bill'
      Category = 0
      Hint = 'View Bill'
      Visible = ivAlways
      OnClick = btnViewBillClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Print All'
      Category = 0
      Hint = 'Print All'
      Visible = ivAlways
    end
    object barbtnRemoveDiscount: TdxBarButton
      Caption = 'Remove Discount'
      Category = 0
      Enabled = False
      Hint = 'Remove Discount'
      Visible = ivAlways
      OnClick = barbtnRemoveDiscountClick
    end
    object cxbarPrintAll: TcxBarEditItem
      Caption = 
        'Send directly to Printer (only works with Insight Bill Templates' +
        ')'
      Category = 0
      Enabled = False
      Hint = 
        'Send directly to Printer (only works with Insight Bill Templates' +
        ')'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = False
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 91
    end
    object tbtnCalculateInterest: TdxBarButton
      Caption = 'Calculate Interest'
      Category = 0
      Enabled = False
      Hint = 'Calculate Interest on Outstanding bill(s)'
      Visible = ivAlways
      ImageIndex = 21
      LargeImageIndex = 21
      OnClick = tbtnCalculateInterestClick
    end
    object tbtnPrint: TdxBarSubItem
      Caption = '&Print'
      Category = 1
      Visible = ivAlways
      ImageIndex = 4
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFilePrintReport'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintCurrent'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintSelected'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintAll'
        end>
    end
    object mnuFilePrintReport: TdxBarButton
      Caption = 'Re&port'
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 4
      OnClick = tbtnPrintClick
    end
    object btnPrint: TdxBarButton
      Caption = 'Print'
      Category = 1
      Hint = 'Print'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popPrint
      ImageIndex = 14
      OnClick = tbtnPrintClick
    end
    object mnuFilePrintCurrent: TdxBarButton
      Caption = '&Current'
      Category = 1
      Visible = ivAlways
      OnClick = popPrintCurrentClick
    end
    object mnuFilePrintSelected: TdxBarButton
      Caption = '&Selected'
      Category = 1
      Visible = ivAlways
      OnClick = popPrintSelectedClick
    end
    object mnuFilePrintAll: TdxBarButton
      Caption = '&All'
      Category = 1
      Visible = ivAlways
      OnClick = popPrintAllClick
    end
    object btnExportToExcel: TdxBarButton
      Caption = 'Export to Excel'
      Category = 1
      Enabled = False
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = btnExportToExcelClick
    end
    object btnTotals: TdxBarButton
      Caption = 'Totals'
      Category = 1
      Enabled = False
      Hint = 'Totals'
      Visible = ivAlways
      OnClick = btnTotalsClick
    end
    object tbtnOpen: TdxBarButton
      Caption = 'Open'
      Category = 2
      Enabled = False
      Hint = 'Open Bill'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = tbtnOpenClick
    end
    object tbtnPost: TdxBarSubItem
      Caption = 'P&ost'
      Category = 2
      Visible = ivAlways
      ImageIndex = 1
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFilePostCurrent'
        end
        item
          Visible = True
          ItemName = 'mnuFilePostSelected'
        end
        item
          Visible = True
          ItemName = 'mnuFilePostAll'
        end>
    end
    object mnuFilePostCurrent: TdxBarButton
      Caption = '&Current Bill'
      Category = 2
      Hint = 'Current Bill'
      Visible = ivAlways
      OnClick = popPostCurrentClick
    end
    object mnuFilePostSelected: TdxBarButton
      Caption = '&Selected Bills'
      Category = 2
      Hint = 'Selected Bills'
      Visible = ivAlways
      OnClick = popPostSelectedClick
    end
    object mnuFilePostAll: TdxBarButton
      Caption = '&All Bills'
      Category = 2
      Hint = 'All Bills'
      Visible = ivAlways
      OnClick = popPostAllClick
    end
    object tbtnAutoReceipt: TdxBarButton
      Caption = 'AutoReceipt'
      Category = 2
      Enabled = False
      Hint = 'Create Receipt'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = tbtnAutoReceiptClick
    end
    object tbtnMerge: TdxBarSubItem
      Caption = '&Merge'
      Category = 2
      Visible = ivAlways
      ImageIndex = 5
      ShowCaption = False
      OnClick = tbtnMergeClick
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFileMergeCurrent'
        end
        item
          Visible = True
          ItemName = 'mnuFileMergeSelected'
        end
        item
          Visible = True
          ItemName = 'mnuFileMergeAll'
        end>
    end
    object mnuFileMergeCurrent: TdxBarButton
      Caption = ' Merge Current Bill'
      Category = 2
      Hint = ' Merge Current Bill'
      Visible = ivAlways
      OnClick = popMergeCurrentClick
    end
    object mnuFileMergeSelected: TdxBarButton
      Caption = '&Selected Bills'
      Category = 2
      Hint = 'Selected Bills'
      Visible = ivAlways
      OnClick = popMergeSelectedClick
    end
    object mnuFileMergeAll: TdxBarButton
      Caption = '&All Bills'
      Category = 2
      Hint = 'All Bills'
      Visible = ivAlways
      OnClick = popMergeAllClick
    end
    object tbtnReverse: TdxBarButton
      Caption = 'Reverse Current Bill'
      Category = 2
      Enabled = False
      Hint = 'Reverse Current Bill'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 8308
      OnClick = tbtnReverseClick
    end
    object mnuFileExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 2
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = mnuFileExitClick
    end
    object btnPost: TdxBarButton
      Caption = 'Post'
      Category = 2
      Enabled = False
      Hint = 'Post Bill'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popPost
      ImageIndex = 1
      OnClick = tbtnPostClick
    end
    object btnMerge: TdxBarButton
      Caption = 'Merge'
      Category = 2
      Enabled = False
      Hint = 'Merge'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popMerge
      ImageIndex = 18
      OnClick = popMergeCurrentClick
    end
    object tbtnClearAll: TdxBarButton
      Caption = 'Clear All'
      Category = 2
      Enabled = False
      Hint = 'Clear All'
      Visible = ivAlways
      ImageIndex = 22
      OnClick = btnClearAllClick
    end
    object dxbtnSpellCheck: TdxBarButton
      Caption = 'Spell Check Bills'
      Category = 2
      Enabled = False
      Hint = 'Spell Check Bills'
      Visible = ivAlways
      ImageIndex = 23
      PaintStyle = psCaptionGlyph
      OnClick = dxbtnSpellCheckClick
    end
    object Help2: TdxBarButton
      Caption = 'Help '
      Category = 3
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 112
    end
    object File1: TdxBarSubItem
      Caption = 'File'
      Category = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnOpen'
        end
        item
          Visible = True
          ItemName = 'tbtnPost'
        end
        item
          Visible = True
          ItemName = 'tbtnAutoReceipt'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnPrint'
        end
        item
          Visible = True
          ItemName = 'tbtnMerge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDebtorTask'
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
      Category = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Help2'
        end>
    end
    object btnAuthorise: TdxBarButton
      Caption = 'Authorise'
      Category = 5
      Enabled = False
      Hint = 'Authorise'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btnAuthoriseClick
    end
    object btnDispatched: TdxBarButton
      Caption = 'Change Dispatched Date...'
      Category = 5
      Enabled = False
      Hint = 'Change Dispatched Date'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = btnDispatchedClick
    end
    object btnChangePayDate: TdxBarButton
      Caption = 'Change Payment Date'
      Category = 5
      Enabled = False
      Hint = 'Change Payment Date'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnChangePayDateClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Add Debtor Notes'
      Category = 5
      Hint = 'Add Debtor Notes'
      Visible = ivAlways
      ImageIndex = 17
      OnClick = dxBarButton1Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'View GL Postings'
      Category = 5
      Hint = 'View GL Postings'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object bbtnCreditNote: TdxBarButton
      Caption = 'Reprint Credit Note'
      Category = 6
      Enabled = False
      Hint = 'Reprint Credit Note'
      Visible = ivAlways
      OnClick = bbtnCreditNoteClick
    end
    object dxBarBtnEmail: TdxBarButton
      Caption = 'Email bills'
      Category = 7
      Hint = 'Email bills'
      Visible = ivAlways
      ImageIndex = 24
      OnClick = dxBarBtnEmailClick
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Email Selected'
      Category = 7
      Hint = 'Email Selected'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Email All'
      Category = 7
      Hint = 'Email All'
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Email Bills'
      Category = 7
      Hint = 'Email Bills'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = popEmailBills
      ImageIndex = 24
      OnClick = dxBarButton9Click
    end
    object dxBarButton2: TdxBarButton
      Caption = ' &Bill'
      Category = 8
      Hint = ' Bill'
      Visible = ivAlways
      OnClick = popDeleteCurrentClick
    end
    object dxBarButton3: TdxBarButton
      Caption = '&Selected Bills'
      Category = 8
      Hint = 'Selected Bills'
      Visible = ivAlways
      OnClick = popDeleteSelectedClick
    end
    object dxBarButton4: TdxBarButton
      Caption = '&All Bills'
      Category = 8
      Hint = 'All Bills'
      Visible = ivAlways
      OnClick = popDeleteAllClick
    end
  end
  object popDelete: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 210
    Top = 28
    PixelsPerInch = 96
  end
  object popPost: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'mnuFilePostCurrent'
      end
      item
        Visible = True
        ItemName = 'mnuFilePostSelected'
      end
      item
        Visible = True
        ItemName = 'mnuFilePostAll'
      end>
    UseOwnFont = False
    Left = 291
    Top = 34
    PixelsPerInch = 96
  end
  object popPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'mnuFilePrintReport'
      end
      item
        Visible = True
        ItemName = 'btnTotals'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnExportToExcel'
      end>
    UseOwnFont = False
    OnPopup = popPrintPopup
    Left = 340
    Top = 30
    PixelsPerInch = 96
  end
  object popMerge: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'mnuFileMergeCurrent'
      end
      item
        Visible = True
        ItemName = 'mnuFileMergeSelected'
      end
      item
        Visible = True
        ItemName = 'mnuFileMergeAll'
      end>
    UseOwnFont = False
    Left = 392
    Top = 49
    PixelsPerInch = 96
  end
  object rptBills: TppReport
    AutoStop = False
    DataPipeline = plBills
    NoDataBehaviors = [ndMessageDialog, ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4350
    PrinterSetup.mmMarginLeft = 3350
    PrinterSetup.mmMarginRight = 3350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptBillsBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 839
    Top = 176
    Version = '20.0'
    mmColumnWidth = 197379
    DataPipelineName = 'plBills'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Anchors = [atLeft, atBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 17198
        mmWidth = 290300
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 12542
        mmTop = 1058
        mmWidth = 37888
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed'
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
        mmLeft = 1028
        mmTop = 1058
        mmWidth = 11091
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
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 267505
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bills'
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
        mmLeft = 132027
        mmTop = 794
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label3'
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
        mmLeft = 130482
        mmTop = 6350
        mmWidth = 10499
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 640
        mmTop = 13494
        mmWidth = 4276
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Dispatched'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 17992
        mmTop = 13494
        mmWidth = 16002
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Last Receipt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 35719
        mmTop = 13494
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Generated'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 54240
        mmTop = 13494
        mmWidth = 15071
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 70644
        mmTop = 13494
        mmWidth = 8170
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 117734
        mmTop = 13494
        mmWidth = 8975
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fees'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 151229
        mmTop = 12965
        mmWidth = 7112
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Disburse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 162233
        mmTop = 13494
        mmWidth = 12615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Anticipated'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 176895
        mmTop = 13494
        mmWidth = 15833
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Sundries'
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
        mmLeft = 197602
        mmTop = 13494
        mmWidth = 13843
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'GST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 238919
        mmTop = 13494
        mmWidth = 6477
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 260784
        mmTop = 13494
        mmWidth = 6731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Owing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 280072
        mmTop = 13494
        mmWidth = 8975
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Creditors'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 215107
        mmTop = 13494
        mmWidth = 12954
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
      mmHeight = 11642
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 290300
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
          DataField = 'REFNO'
          DataPipeline = plBills
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 529
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DISPATCHED'
          DataPipeline = plBills
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 17992
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DATE_LAST_RECPT'
          DataPipeline = plBills
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 35719
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'FILEID'
          DataPipeline = plBills
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 117738
          mmTop = 1323
          mmWidth = 23023
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'FEES'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 141555
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DISB'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 159545
          mmTop = 1323
          mmWidth = 15875
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'ANTD'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 176213
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'SUND'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 194205
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TAX'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 228865
          mmTop = 1323
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TOTAL'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 246328
          mmTop = 1323
          mmWidth = 21500
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'OWING'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 268288
          mmTop = 1323
          mmWidth = 21500
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'GENERATED'
          DataPipeline = plBills
          DisplayFormat = 'dd/mm/yy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 54240
          mmTop = 1323
          mmWidth = 15610
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText16'
          Border.mmPadding = 0
          DataField = 'UPCRED'
          DataPipeline = plBills
          DisplayFormat = '#,0.00;(#,0.00);-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 212196
          mmTop = 1323
          mmWidth = 16000
          BandType = 4
          LayerName = Foreground
        end
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo1'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'TITLE'
          DataPipeline = plBills
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3673
          mmLeft = 70643
          mmTop = 1323
          mmWidth = 46298
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
      end
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region2'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion1
        Stretch = True
        Transparent = True
        mmHeight = 6085
        mmLeft = 0
        mmTop = 5292
        mmWidth = 290300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText14'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PARTNER'
          DataPipeline = plBills
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 31750
          mmTop = 6350
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText15'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'AUTHOR'
          DataPipeline = plBills
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 82815
          mmTop = 6350
          mmWidth = 17198
          BandType = 4
          LayerName = Foreground
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Partner:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 17992
          mmTop = 6350
          mmWidth = 10054
          BandType = 4
          LayerName = Foreground
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label19'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Author:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 70379
          mmTop = 6350
          mmWidth = 9525
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText17: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText17'
          Border.mmPadding = 0
          DataField = 'DRAFT_BILL_NO'
          DataPipeline = plBills
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plBills'
          mmHeight = 3598
          mmLeft = 1058
          mmTop = 6350
          mmWidth = 16669
          BandType = 4
          LayerName = Foreground
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Anchors = [atLeft, atBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 529
        mmWidth = 290300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NMATTER'
        DataPipeline = plBills
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 39688
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Invoices'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3705
        mmLeft = 59531
        mmTop = 1058
        mmWidth = 10584
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FEES'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 133617
        mmTop = 1058
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DISB'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 159544
        mmTop = 1058
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ANTD'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 176213
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SUND'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 194205
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 228600
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 246328
        mmTop = 1058
        mmWidth = 21500
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'OWING'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 268288
        mmTop = 1058
        mmWidth = 21500
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'UPCRED'
        DataPipeline = plBills
        DisplayFormat = '#,0.00;(#,0.00);-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBills'
        mmHeight = 3598
        mmLeft = 212196
        mmTop = 1058
        mmWidth = 16000
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
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
  object plBills: TppDBPipeline
    DataSource = dsBillRpt
    OpenDataSource = False
    UserName = 'plBills'
    Left = 792
    Top = 185
    object plBillsppField1: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plBillsppField2: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plBillsppField3: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plBillsppField4: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plBillsppField5: TppField
      FieldAlias = 'RV_TYPE'
      FieldName = 'RV_TYPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plBillsppField6: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plBillsppField7: TppField
      FieldAlias = 'DATE_LAST_RECPT'
      FieldName = 'DATE_LAST_RECPT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plBillsppField8: TppField
      FieldAlias = 'DISPATCHED'
      FieldName = 'DISPATCHED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plBillsppField9: TppField
      FieldAlias = 'FEES'
      FieldName = 'FEES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plBillsppField10: TppField
      FieldAlias = 'DISB'
      FieldName = 'DISB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plBillsppField11: TppField
      FieldAlias = 'ANTD'
      FieldName = 'ANTD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plBillsppField12: TppField
      FieldAlias = 'SUND'
      FieldName = 'SUND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plBillsppField13: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plBillsppField14: TppField
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plBillsppField15: TppField
      FieldAlias = 'FEES_PAID'
      FieldName = 'FEES_PAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plBillsppField16: TppField
      FieldAlias = 'DISB_PAID'
      FieldName = 'DISB_PAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plBillsppField17: TppField
      FieldAlias = 'ANTD_PAID'
      FieldName = 'ANTD_PAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plBillsppField18: TppField
      FieldAlias = 'SUND_PAID'
      FieldName = 'SUND_PAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plBillsppField19: TppField
      FieldAlias = 'UPCRED'
      FieldName = 'UPCRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plBillsppField20: TppField
      FieldAlias = 'UPCRED_PAID'
      FieldName = 'UPCRED_PAID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plBillsppField21: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plBillsppField22: TppField
      FieldAlias = 'OWING'
      FieldName = 'OWING'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plBillsppField23: TppField
      FieldAlias = 'DELAY'
      FieldName = 'DELAY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plBillsppField24: TppField
      FieldAlias = 'AUTHORISED'
      FieldName = 'AUTHORISED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plBillsppField25: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plBillsppField26: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plBillsppField27: TppField
      FieldAlias = 'GENERATED'
      FieldName = 'GENERATED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plBillsppField28: TppField
      FieldAlias = 'DRAFT_BILL_NO'
      FieldName = 'DRAFT_BILL_NO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
  object qryBillRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NMEMO.REFNO, NMEMO.NMEMO, NMEMO.FILEID, NMEMO.NMATTER, NM' +
        'EMO.RV_TYPE,'
      
        '    AllMatters.TITLE, NMEMO.DATE_LAST_RECPT, NMEMO.DISPATCHED, N' +
        'MEMO.FEES, NMEMO.DISB, NMEMO.ANTD, NMEMO.SUND, NMEMO.TRUST, NMEM' +
        'O.TAX,'
      
        '    NMEMO.FEES_PAID, NMEMO.DISB_PAID, NMEMO.ANTD_PAID, NMEMO.SUN' +
        'D_PAID,NMEMO.UPCRED, NMEMO.UPCRED_PAID,'
      
        '    (NMEMO.FEES+NMEMO.DISB+NMEMO.ANTD+NMEMO.SUND+NMEMO.UPCRED) A' +
        'S TOTAL,'
      
        '    (NVL (fees, 0)+ NVL (disb, 0)+ NVL (antd, 0)+ NVL (sund, 0)+' +
        ' NVL (tax, 0)+ NVL (upcred, 0)-'
      
        '     (NVL (fees_paid, 0) + NVL (disb_paid, 0)+ NVL (antd_paid, 0' +
        ')+ NVL (sund_paid, 0))+ NVL (upcred_paid, 0)+ NVL (tax_paid, 0)+' +
        ' '
      
        '      NVL (fees_woff, 0)+ NVL (disb_woff, 0)+ NVL (antd_woff, 0)' +
        '+ NVL (sund_woff, 0)+ NVL (tax_woff, 0+ NVL (upcred_woff, 0))) A' +
        'S OWING,'
      '    decode(DISPATCHED,null,-1,'
      
        '       decode(DATE_LAST_RECPT,null,-1,trunc(DATE_LAST_RECPT) - t' +
        'runc(DISPATCHED))'
      
        '    ) as DELAY, AUTHORISED, nmemo.partner, nmemo.author, nmemo.g' +
        'enerated, '
      
        '    decode(trim(nmemo.refno),'#39'DRAFT'#39', nmemo.DRAFT_BILL_NO, null ' +
        ') as DRAFT_BILL_NO'
      'FROM NMEMO, AllMatters'
      'WHERE NMEMO.NMATTER = AllMatters.NMATTER'
      '      AND NMEMO.GENERATED >= :P_DateFrom'
      '      AND NMEMO.GENERATED <= :P_DateTo')
    Left = 726
    Top = 118
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
  object dsBillRpt: TUniDataSource
    DataSet = qryBillRpt
    Left = 785
    Top = 114
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 695
    Top = 209
  end
  object qrySubBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'order by nmemo')
    Left = 613
    Top = 208
  end
  object dsSubBill: TUniDataSource
    DataSet = qrySubBill
    Left = 601
    Top = 147
  end
  object qryTotalBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUM(AMOUNT) AS AMT, COUNT(AMOUNT) AS CNT FROM CHEQUE WHER' +
        'E CREATED >= :P_DateFrom AND CREATED <= :P_DateTo AND REVERSED <' +
        '> '#39'Y'#39)
    Left = 596
    Top = 338
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
  object popAuthorise: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnAuthorise'
      end
      item
        Visible = True
        ItemName = 'btnDispatched'
      end
      item
        Visible = True
        ItemName = 'btnChangePayDate'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'mnuFileMergeCurrent'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnViewBill'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbtnCreditNote'
      end>
    UseOwnFont = False
    OnPopup = popAuthorisePopup
    Left = 193
    Top = 186
    PixelsPerInch = 96
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 160
    Top = 588
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 439
    Top = 383
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxCustomContainerReportLink
      Component = tabTotals
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Bills Totals')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        'Page [Page #]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Totals'
      ReportDocument.CreationDate = 42838.453496805560000000
      TimeFormat = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsPagination.ControlDetails = False
      PixelsPerInch = 96
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object procBillDiscReverse: TUniStoredProc
    StoredProcName = 'bill_discount_reverse'
    Connection = dmAxiom.uniInsight
    Left = 567
    Top = 465
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_NMEMO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'P_RVDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_WHO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'bill_discount_reverse'
  end
  object UniStoredProc1: TUniStoredProc
    Connection = dmAxiom.uniInsight
    Left = 756
    Top = 460
  end
  object qryControllers: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code, name'
      'from'
      'employee'
      'where active = '#39'Y'#39
      'and iscontroller = '#39'Y'#39
      'order by name')
    Left = 822
    Top = 261
  end
  object dsControllers: TUniDataSource
    DataSet = qryControllers
    Left = 887
    Top = 246
  end
  object qryEmailTemplate: TUniQuery
    UpdatingTable = 'EMAIL_TEMPLATES'
    SQLInsert.Strings = (
      'INSERT INTO EMAIL_TEMPLATES'
      '  (BODY_TEXT)'
      'VALUES'
      '  (:BODY_TEXT)')
    SQLDelete.Strings = (
      'DELETE FROM EMAIL_TEMPLATES'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE EMAIL_TEMPLATES'
      'SET'
      '  BODY_TEXT = :BODY_TEXT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT BODY_TEXT FROM EMAIL_TEMPLATES'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT BODY_TEXT FROM EMAIL_TEMPLATES'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM EMAIL_TEMPLATES'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select body_text '
      'from '
      'email_templates '
      'where id = :id')
    Left = 952
    Top = 485
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object popEmailBills: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarBtnEmail'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end>
    UseOwnFont = False
    Left = 1072
    Top = 130
    PixelsPerInch = 96
  end
end
