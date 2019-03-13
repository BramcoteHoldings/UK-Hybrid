object frmFeeListNew: TfrmFeeListNew
  Left = 139
  Top = 56
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Fee Enquiry'
  ClientHeight = 616
  ClientWidth = 1113
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 660
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 1113
    Height = 588
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 4
    object pcFeeList: TcxPageControl
      Left = 1
      Top = 1
      Width = 1111
      Height = 586
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsFilter
      Properties.CustomButtons.Buttons = <>
      Properties.ShowFrame = True
      Properties.TabSlants.Kind = skCutCorner
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      TabSlants.Kind = skCutCorner
      OnChange = pcFeeListChange
      ClientRectBottom = 582
      ClientRectLeft = 4
      ClientRectRight = 1107
      ClientRectTop = 26
      object tsFeeList: TcxTabSheet
        Caption = 'Fees'
        ImageIndex = 0
        OnShow = tsFeeListShow
        object grdFees: TcxGrid
          Left = 0
          Top = 0
          Width = 1103
          Height = 556
          Align = alClient
          PopupMenu = dxBarPopupMenu1
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object tvFees: TcxGridDBTableView
            OnDblClick = aOpenFeeExecute
            OnKeyDown = tvFeesKeyDown
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Visible = True
            OnCanSelectRecord = tvFeesCanSelectRecord
            OnCellClick = tvFeesCellClick
            OnSelectionChanged = tvFeesSelectionChanged
            DataController.DataSource = dmFeeList.dsFees
            DataController.DetailKeyFieldNames = 'NFEE'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '$,0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'AMOUNT'
                Column = tvFeesAMOUNT
              end
              item
                Format = '###,###'
                Kind = skSum
                Position = spFooter
                FieldName = 'UNITS'
                Column = tvFeesUNITS
              end
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'MINS'
                Column = tvFeesMINS
              end
              item
                Format = '$,0.00'
                Kind = skAverage
                Position = spFooter
                FieldName = 'RATE'
                Column = tvFeesRATE
              end
              item
                Format = '0'
                Kind = skCount
                Position = spFooter
                FieldName = 'FILEID'
                Column = tvFeesFILEID
              end
              item
                Kind = skAverage
                Position = spFooter
                FieldName = 'TASK_AMOUNT'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$,.00'
                Kind = skSum
                FieldName = 'AMOUNT'
                Column = tvFeesAMOUNT
              end
              item
                Format = '###,###'
                Kind = skSum
                FieldName = 'UNITS'
                Column = tvFeesUNITS
              end
              item
                Kind = skSum
                FieldName = 'MINS'
                Column = tvFeesMINS
              end
              item
                Format = '$,0.00'
                Kind = skAverage
                FieldName = 'RATE'
                Column = tvFeesRATE
              end
              item
                Kind = skCount
                FieldName = 'FILEID'
                Column = tvFeesFILEID
              end
              item
                Format = '$,.00'
                Kind = skSum
                FieldName = 'PROFORMA'
                Column = tvFeesPROFORMA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.DataRowSizing = True
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 3
            OptionsView.Footer = True
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupRowStyle = grsOffice11
            OptionsView.HeaderEndEllipsis = True
            Preview.AutoHeight = False
            Preview.Visible = True
            Styles.Footer = styFooter
            Styles.Group = styGroupHeader
            Styles.Header = styHeader
            object tvFeesNFEE: TcxGridDBColumn
              Caption = '#'
              DataBinding.FieldName = 'NFEE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 47
            end
            object tvFeesCREATED: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'CREATED'
              Options.Editing = False
              Options.Focusing = False
              Width = 91
            end
            object tvFeesAUTHOR: TcxGridDBColumn
              Caption = 'Fee/Time Author'
              DataBinding.FieldName = 'AUTHORNAME'
              Options.Editing = False
              Options.Focusing = False
              Styles.OnGetHeaderStyle = tvFeesAUTHORStylesGetHeaderStyle
              Width = 78
            end
            object tvFeesPARTNERNAME: TcxGridDBColumn
              Caption = 'Partner'
              DataBinding.FieldName = 'PARTNERNAME'
              Options.Editing = False
              Options.Focusing = False
              Styles.OnGetHeaderStyle = tvFeesPARTNERNAMEStylesGetHeaderStyle
              Width = 95
            end
            object tvFeesFILEID: TcxGridDBColumn
              Caption = 'Matter'
              DataBinding.FieldName = 'FILEID'
              FooterAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Focusing = False
              Styles.Footer = cxStyle3
              Width = 52
            end
            object tvFeesDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 243
            end
            object tvFeesNOTES: TcxGridDBColumn
              Caption = 'Notes'
              DataBinding.FieldName = 'NOTES'
              Width = 94
            end
            object tvFeesAMOUNT: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Styles.Footer = cxStyle3
            end
            object tvFeesColumnTASK_AMOUNT: TcxGridDBColumn
              Caption = 'Item Total'
              DataBinding.FieldName = 'TASK_AMOUNT'
            end
            object tvFeesUNITS: TcxGridDBColumn
              Caption = 'Units'
              DataBinding.FieldName = 'UNITS'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Styles.Footer = cxStyle3
              Width = 44
            end
            object tvFeesColumnITEMS: TcxGridDBColumn
              Caption = 'Items'
              DataBinding.FieldName = 'ITEMS'
            end
            object tvFeesMINS: TcxGridDBColumn
              Caption = 'Minute(s)'
              DataBinding.FieldName = 'MINS'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Styles.Footer = cxStyle3
              Width = 53
            end
            object tvFeesRATE: TcxGridDBColumn
              Caption = 'Rate'
              DataBinding.FieldName = 'RATE'
              Options.Editing = False
              Options.Focusing = False
              Styles.Footer = cxStyle3
              Width = 48
            end
            object tvFeesINVOICEDATE: TcxGridDBColumn
              Caption = 'Billed Date'
              DataBinding.FieldName = 'INVOICEDATE'
              Options.Editing = False
              Options.Focusing = False
              Width = 66
            end
            object tvFeesBILLED: TcxGridDBColumn
              Caption = 'Billed'
              DataBinding.FieldName = 'BILLED'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.IncSearch = False
              Width = 46
            end
            object tvFeesTYPE: TcxGridDBColumn
              Caption = 'Fee Type'
              DataBinding.FieldName = 'TYPE'
              Options.Editing = False
              Options.Focusing = False
              Width = 61
            end
            object tvFeesTASK: TcxGridDBColumn
              Caption = 'Task'
              DataBinding.FieldName = 'TASK'
              Options.Editing = False
              Options.Focusing = False
              Styles.Footer = cxStyle3
              Width = 97
            end
            object tvFeesBILLNO: TcxGridDBColumn
              Caption = 'Bill No'
              DataBinding.FieldName = 'BILLNO'
              Options.Editing = False
              Options.Focusing = False
              Width = 64
            end
            object tvFeesTITLE: TcxGridDBColumn
              Caption = 'Client'
              DataBinding.FieldName = 'TITLE'
              Options.Editing = False
              Options.Focusing = False
              Width = 125
            end
            object tvFeesBRANCH: TcxGridDBColumn
              Caption = 'Branch'
              DataBinding.FieldName = 'BRANCH'
              Options.Editing = False
              Options.Focusing = False
              Width = 70
            end
            object tvFeesDEPARTMENT: TcxGridDBColumn
              Caption = 'Department'
              DataBinding.FieldName = 'DEPT'
              Options.Editing = False
              Options.Focusing = False
              Width = 100
            end
            object tvFeesPARTNERDEPARTMENT: TcxGridDBColumn
              Caption = 'Partner Dept'
              DataBinding.FieldName = 'PARTDEPT'
              Options.Editing = False
              Options.Focusing = False
              Width = 100
            end
            object tvFeesBILLTYPE: TcxGridDBColumn
              Caption = 'Bill Type'
              DataBinding.FieldName = 'BILLTYPE'
              Options.Editing = False
              Options.Focusing = False
              Width = 93
            end
            object tvFeesMATTER_TYPE: TcxGridDBColumn
              Caption = 'Matter Type'
              DataBinding.FieldName = 'MATTER_TYPE'
            end
            object tvFeesTIME_TYPE: TcxGridDBColumn
              Caption = 'Time Type'
              DataBinding.FieldName = 'TIME_TYPE'
              Options.Editing = False
              Options.Focusing = False
              Width = 40
            end
            object tvFeesSTANDARD_COST: TcxGridDBColumn
              Caption = 'Std Cost'
              DataBinding.FieldName = 'STANDARD_COST'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 55
            end
            object tvFeesNOTIONAL_COST: TcxGridDBColumn
              Caption = 'Notional Cost'
              DataBinding.FieldName = 'NOTIONAL_COST'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object tvFeesFEES_POS: TcxGridDBColumn
              Caption = 'Pos Fees'
              DataBinding.FieldName = 'FEES_POS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Styles.Content = dmAxiom.UnreadStyle
              Styles.Header = dmAxiom.UnreadStyle
              VisibleForCustomization = False
            end
            object tvFeesFEES_NEG: TcxGridDBColumn
              Caption = 'Neg Fees'
              DataBinding.FieldName = 'FEES_NEG'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Styles.Content = cxStyle2
              Styles.Header = dmAxiom.UnreadStyle
              VisibleForCustomization = False
            end
            object tvFeesFEES_ZERO: TcxGridDBColumn
              Caption = 'Zero Fees'
              DataBinding.FieldName = 'FEES_ZERO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Visible = False
              Styles.Content = cxStyle2
              Styles.Header = cxStyle2
              VisibleForCustomization = False
            end
            object tvFeesPROFORMA: TcxGridDBColumn
              Caption = 'Proforma Fee'
              DataBinding.FieldName = 'PROFORMA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object tvFeesEMPCODE: TcxGridDBColumn
              Caption = 'Employee'
              DataBinding.FieldName = 'EMPCODE'
            end
            object tvFeesSYSTEM_DATE: TcxGridDBColumn
              Caption = 'System Date'
              DataBinding.FieldName = 'SYSTEM_DATE'
              Options.Editing = False
              Options.Focusing = False
            end
            object tvFeesNMEMO: TcxGridDBColumn
              DataBinding.FieldName = 'NMEMO'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object tvFeesChart: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'CREATED'
            DataController.DataSource = dmFeeList.dsFees
            DiagramColumn.Active = True
            DiagramColumn.AxisCategory.ValueAxisBetweenCategories = False
            Title.Text = 'graph'
            object Amount: TcxGridDBChartSeries
              DataBinding.FieldName = 'AMOUNT'
            end
          end
          object grdFeesLevel1: TcxGridLevel
            Caption = 'Fees'
            GridView = tvFees
          end
          object grdFeesLevel2: TcxGridLevel
            Caption = 'Graph'
            GridView = tvFeesChart
          end
        end
        object edtDescr: TAddictDBRichEdit
          Left = 242
          Top = 246
          Width = 328
          Height = 105
          BevelOuter = bvNone
          DataField = 'DESCR'
          DataSource = dmFeeList.dsFees
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
          Visible = False
          WantTabs = True
          OnEnter = edtDescrEnter
          OnKeyDown = edtDescrKeyDown
          LiveSpelling = True
          LiveCorrect = True
          LiveSpellingColor = clRed
          DoubleBuffered = True
          LiveSpellingOptions = True
          LiveMenuOptions = [spDialog, spAutoCorrect, spChangeAll, spAdd, spIgnoreAll, spIgnore, spReplace]
          LiveSpellingReadOnly = False
          IrregularLeftMargin = True
        end
      end
      object tsStats: TcxTabSheet
        Caption = 'Statistics'
        ImageIndex = 1
        OnHide = tsStatsHide
        OnShow = tsStatsShow
        object cxPageControl2: TcxPageControl
          Left = 0
          Top = 0
          Width = 1103
          Height = 556
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tabStats
          Properties.CustomButtons.Buttons = <>
          Properties.Options = [pcoTopToBottomText]
          Properties.Style = 9
          Properties.TabPosition = tpRight
          Properties.TabSlants.Kind = skCutCorner
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          TabSlants.Kind = skCutCorner
          ClientRectBottom = 556
          ClientRectRight = 1081
          ClientRectTop = 0
          object tabStats: TcxTabSheet
            Caption = 'Statistics'
            ImageIndex = 2
            object gbStats: TcxGroupBox
              Left = 11
              Top = 6
              Caption = 'Billing Statistics'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Height = 216
              Width = 350
              object lAuthorUnitsMoneyMsg: TLabel
                Left = 8
                Top = 24
                Width = 33
                Height = 15
                Caption = '$/Unit'
                Transparent = True
              end
              object lAuthorUnitsMoney: TLabel
                Left = 104
                Top = 24
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label7: TLabel
                Left = 152
                Top = 40
                Width = 29
                Height = 13
                Caption = 'Billed'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsUnderline]
                ParentFont = False
                Transparent = True
              end
              object Label8: TLabel
                Left = 219
                Top = 40
                Width = 44
                Height = 13
                Caption = 'Unbilled'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsUnderline]
                ParentFont = False
                Transparent = True
              end
              object Label9: TLabel
                Left = 313
                Top = 40
                Width = 24
                Height = 13
                Caption = 'Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = [fsUnderline]
                ParentFont = False
                Transparent = True
              end
              object Label4: TLabel
                Left = 8
                Top = 64
                Width = 26
                Height = 15
                Caption = 'Total'
                Transparent = True
              end
              object lBilledTotal: TLabel
                Left = 104
                Top = 64
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledTotal: TLabel
                Left = 184
                Top = 64
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalTotal: TLabel
                Left = 264
                Top = 64
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalNumber: TLabel
                Left = 264
                Top = 80
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledNumber: TLabel
                Left = 184
                Top = 80
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledNumber: TLabel
                Left = 104
                Top = 80
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledAverage: TLabel
                Left = 104
                Top = 96
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledAverage: TLabel
                Left = 184
                Top = 96
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalAverage: TLabel
                Left = 264
                Top = 96
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalPercent: TLabel
                Left = 264
                Top = 112
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledPercent: TLabel
                Left = 184
                Top = 112
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledPercent: TLabel
                Left = 104
                Top = 112
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledUnits: TLabel
                Left = 104
                Top = 128
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledUnits: TLabel
                Left = 184
                Top = 128
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalUnits: TLabel
                Left = 264
                Top = 128
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalUnitsMoney: TLabel
                Left = 264
                Top = 144
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledUnitsMoney: TLabel
                Left = 184
                Top = 144
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledUnitsMoney: TLabel
                Left = 104
                Top = 144
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledMins: TLabel
                Left = 104
                Top = 160
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledMins: TLabel
                Left = 184
                Top = 160
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalMins: TLabel
                Left = 264
                Top = 160
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalMinsMoney: TLabel
                Left = 264
                Top = 176
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lTotalHours: TLabel
                Left = 264
                Top = 192
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledHours: TLabel
                Left = 184
                Top = 192
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lUnbilledMinsMoney: TLabel
                Left = 184
                Top = 176
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledMinsMoney: TLabel
                Left = 104
                Top = 176
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lBilledHours: TLabel
                Left = 104
                Top = 192
                Width = 73
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label18: TLabel
                Left = 8
                Top = 192
                Width = 32
                Height = 15
                Caption = 'Hours'
                Transparent = True
              end
              object Label14: TLabel
                Left = 8
                Top = 176
                Width = 70
                Height = 15
                Caption = '$/Actual Unit'
                Transparent = True
              end
              object Label13: TLabel
                Left = 8
                Top = 160
                Width = 70
                Height = 15
                Caption = 'Mins as Units'
                Transparent = True
              end
              object Label15: TLabel
                Left = 8
                Top = 144
                Width = 33
                Height = 15
                Caption = '$/Unit'
                Transparent = True
              end
              object Label12: TLabel
                Left = 8
                Top = 128
                Width = 27
                Height = 15
                Caption = 'Units'
                Transparent = True
              end
              object Label11: TLabel
                Left = 8
                Top = 112
                Width = 40
                Height = 15
                Caption = 'Percent'
                Transparent = True
              end
              object Label6: TLabel
                Left = 8
                Top = 96
                Width = 43
                Height = 15
                Caption = 'Average'
                Transparent = True
              end
              object Label10: TLabel
                Left = 8
                Top = 80
                Width = 44
                Height = 15
                Caption = 'Number'
                Transparent = True
              end
            end
            object gbBillUnbilled: TcxGroupBox
              Left = 365
              Top = 6
              Caption = 'Billed vs Unbilled'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Height = 216
              Width = 277
              object chBilledvsUnBilled: TChart
                Left = 2
                Top = 20
                Width = 273
                Height = 194
                AllowPanning = pmNone
                BackWall.Brush.Color = clWhite
                BackWall.Brush.Style = bsClear
                BackWall.Pen.Visible = False
                Legend.Visible = False
                Title.Text.Strings = (
                  'TChart')
                Title.Visible = False
                AxisVisible = False
                ClipPoints = False
                Frame.Visible = False
                View3D = False
                View3DOptions.Elevation = 315
                View3DOptions.Orthogonal = False
                View3DOptions.Perspective = 0
                View3DOptions.Rotation = 360
                View3DWalls = False
                Zoom.Allow = False
                Align = alClient
                BevelOuter = bvNone
                Color = clBtnShadow
                TabOrder = 0
                ColorPaletteIndex = 13
                object Series1: TPieSeries
                  Marks.Arrow.Visible = True
                  Marks.Callout.Brush.Color = clBlack
                  Marks.Callout.Arrow.Visible = True
                  Marks.Callout.Length = 1
                  Marks.ShapeStyle = fosRoundRectangle
                  Marks.Visible = True
                  SeriesColor = clRed
                  ShowInLegend = False
                  Title = 'Billed vs Unbilled'
                  XValues.Order = loAscending
                  YValues.Name = 'Pie'
                  YValues.Order = loNone
                  Frame.InnerBrush.BackColor = clRed
                  Frame.InnerBrush.Gradient.EndColor = clGray
                  Frame.InnerBrush.Gradient.MidColor = clWhite
                  Frame.InnerBrush.Gradient.StartColor = 4210752
                  Frame.InnerBrush.Gradient.Visible = True
                  Frame.MiddleBrush.BackColor = clYellow
                  Frame.MiddleBrush.Gradient.EndColor = 8553090
                  Frame.MiddleBrush.Gradient.MidColor = clWhite
                  Frame.MiddleBrush.Gradient.StartColor = clGray
                  Frame.MiddleBrush.Gradient.Visible = True
                  Frame.OuterBrush.BackColor = clGreen
                  Frame.OuterBrush.Gradient.EndColor = 4210752
                  Frame.OuterBrush.Gradient.MidColor = clWhite
                  Frame.OuterBrush.Gradient.StartColor = clSilver
                  Frame.OuterBrush.Gradient.Visible = True
                  Frame.Width = 4
                  OtherSlice.Legend.Visible = False
                  OtherSlice.Text = 'Other'
                end
              end
            end
            object gbWork: TcxGroupBox
              Left = 10
              Top = 230
              Caption = 'Work Done'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 2
              Height = 44
              Width = 633
              object Label16: TLabel
                Left = 8
                Top = 16
                Width = 60
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Days'
                Transparent = True
              end
              object lDaysWorked: TLabel
                Left = 71
                Top = 16
                Width = 60
                Height = 13
                AutoSize = False
                Caption = 'Days'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label17: TLabel
                Left = 135
                Top = 16
                Width = 60
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Hours/Day'
                Transparent = True
              end
              object lHoursWorked: TLabel
                Left = 199
                Top = 16
                Width = 60
                Height = 13
                AutoSize = False
                Caption = 'Days'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label21: TLabel
                Left = 263
                Top = 16
                Width = 60
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Units/Day'
                Transparent = True
              end
              object lUnitsWorked: TLabel
                Left = 327
                Top = 16
                Width = 60
                Height = 13
                AutoSize = False
                Caption = 'Days'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Label19: TLabel
                Left = 391
                Top = 16
                Width = 60
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = '$/Day'
                Transparent = True
              end
              object lMoneyWorked: TLabel
                Left = 455
                Top = 16
                Width = 60
                Height = 13
                AutoSize = False
                Caption = 'Days'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'By Author'
            ImageIndex = 1
            object dbchFeePie: TDBChart
              Left = 316
              Top = 0
              Width = 765
              Height = 556
              AllowPanning = pmNone
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              BackWall.Pen.Visible = False
              MarginBottom = 1
              MarginLeft = 1
              MarginRight = 1
              MarginTop = 1
              Title.Text.Strings = (
                'Fee Distribution')
              AxisVisible = False
              ClipPoints = False
              Frame.Visible = False
              Legend.Alignment = laBottom
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              View3DWalls = False
              Zoom.Allow = False
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              ColorPaletteIndex = 13
              object PieSeries1: TPieSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.ShapeStyle = fosRoundRectangle
                Marks.Style = smsLabelPercent
                Marks.Visible = True
                DataSource = qryFees
                SeriesColor = clRed
                Title = 'Fees'
                XLabelsSource = 'AUTHOR'
                XValues.Order = loAscending
                YValues.Name = 'Pie'
                YValues.Order = loNone
                YValues.ValueSource = 'AMT'
                Frame.InnerBrush.BackColor = clRed
                Frame.InnerBrush.Gradient.EndColor = clGray
                Frame.InnerBrush.Gradient.MidColor = clWhite
                Frame.InnerBrush.Gradient.StartColor = 4210752
                Frame.InnerBrush.Gradient.Visible = True
                Frame.MiddleBrush.BackColor = clYellow
                Frame.MiddleBrush.Gradient.EndColor = 8553090
                Frame.MiddleBrush.Gradient.MidColor = clWhite
                Frame.MiddleBrush.Gradient.StartColor = clGray
                Frame.MiddleBrush.Gradient.Visible = True
                Frame.OuterBrush.BackColor = clGreen
                Frame.OuterBrush.Gradient.EndColor = 4210752
                Frame.OuterBrush.Gradient.MidColor = clWhite
                Frame.OuterBrush.Gradient.StartColor = clSilver
                Frame.OuterBrush.Gradient.Visible = True
                Frame.Width = 4
                OtherSlice.Legend.Visible = False
                OtherSlice.Text = 'Other'
              end
            end
            object dbchTime: TDBChart
              Left = 0
              Top = 0
              Width = 314
              Height = 556
              AllowPanning = pmNone
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              BackWall.Pen.Visible = False
              MarginBottom = 1
              MarginLeft = 1
              MarginRight = 1
              MarginTop = 1
              Title.Text.Strings = (
                'Time Distribution')
              AxisVisible = False
              ClipPoints = False
              Frame.Visible = False
              Legend.Alignment = laBottom
              View3DOptions.Elevation = 315
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              View3DWalls = False
              Zoom.Allow = False
              Align = alLeft
              BevelInner = bvLowered
              TabOrder = 1
              ColorPaletteIndex = 13
              object PieSeries2: TPieSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.ShapeStyle = fosRoundRectangle
                Marks.Style = smsLabelPercent
                Marks.Visible = True
                DataSource = qryTime
                SeriesColor = clRed
                Title = 'Fees'
                XLabelsSource = 'AUTHOR'
                XValues.Order = loAscending
                YValues.Name = 'Pie'
                YValues.Order = loNone
                YValues.ValueSource = 'AMT'
                Frame.InnerBrush.BackColor = clRed
                Frame.InnerBrush.Gradient.EndColor = clGray
                Frame.InnerBrush.Gradient.MidColor = clWhite
                Frame.InnerBrush.Gradient.StartColor = 4210752
                Frame.InnerBrush.Gradient.Visible = True
                Frame.MiddleBrush.BackColor = clYellow
                Frame.MiddleBrush.Gradient.EndColor = 8553090
                Frame.MiddleBrush.Gradient.MidColor = clWhite
                Frame.MiddleBrush.Gradient.StartColor = clGray
                Frame.MiddleBrush.Gradient.Visible = True
                Frame.OuterBrush.BackColor = clGreen
                Frame.OuterBrush.Gradient.EndColor = 4210752
                Frame.OuterBrush.Gradient.MidColor = clWhite
                Frame.OuterBrush.Gradient.StartColor = clSilver
                Frame.OuterBrush.Gradient.Visible = True
                Frame.Width = 4
                OtherSlice.Legend.Visible = False
                OtherSlice.Text = 'Other'
              end
            end
            object cxSplitter1: TcxSplitter
              Left = 314
              Top = 0
              Width = 2
              Height = 556
              Control = dbchTime
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = 'Benchmark'
            ImageIndex = 2
            object DBChart1: TDBChart
              Left = 0
              Top = 0
              Width = 313
              Height = 556
              AllowPanning = pmNone
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              BackWall.Pen.Visible = False
              MarginBottom = 1
              MarginLeft = 1
              MarginRight = 1
              MarginTop = 1
              Title.Text.Strings = (
                'Notional Profit')
              AxisVisible = False
              ClipPoints = False
              Frame.Visible = False
              LeftAxis.AxisValuesFormat = '$#,##0.###'
              Legend.Alignment = laBottom
              View3DOptions.Elevation = 315
              View3DOptions.HorizOffset = 15
              View3DOptions.Orthogonal = False
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              View3DOptions.VertOffset = 4
              View3DOptions.Zoom = 107
              View3DWalls = False
              Zoom.Allow = False
              Align = alLeft
              BevelInner = bvLowered
              TabOrder = 0
              ColorPaletteIndex = 13
              object PieSeries3: TPieSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.ShapeStyle = fosRoundRectangle
                Marks.Style = smsLabelValue
                Marks.Visible = True
                DataSource = qryNotional
                SeriesColor = clRed
                ValueFormat = '$#,##0.###'
                XLabelsSource = 'LEGEND'
                XValues.Order = loAscending
                YValues.Name = 'Pie'
                YValues.Order = loNone
                YValues.ValueSource = 'ROUND(SUM(NOTIONAL_COST))'
                Frame.InnerBrush.BackColor = clRed
                Frame.InnerBrush.Gradient.EndColor = clGray
                Frame.InnerBrush.Gradient.MidColor = clWhite
                Frame.InnerBrush.Gradient.StartColor = 4210752
                Frame.InnerBrush.Gradient.Visible = True
                Frame.MiddleBrush.BackColor = clYellow
                Frame.MiddleBrush.Gradient.EndColor = 8553090
                Frame.MiddleBrush.Gradient.MidColor = clWhite
                Frame.MiddleBrush.Gradient.StartColor = clGray
                Frame.MiddleBrush.Gradient.Visible = True
                Frame.OuterBrush.BackColor = clGreen
                Frame.OuterBrush.Gradient.EndColor = 4210752
                Frame.OuterBrush.Gradient.MidColor = clWhite
                Frame.OuterBrush.Gradient.StartColor = clSilver
                Frame.OuterBrush.Gradient.Visible = True
                Frame.Width = 4
                OtherSlice.Legend.Visible = False
                OtherSlice.Text = 'Other'
              end
            end
            object Benchmark: TDBChart
              Left = 315
              Top = 0
              Width = 766
              Height = 556
              BackWall.Brush.Color = clWhite
              MarginBottom = 1
              MarginLeft = 1
              MarginRight = 1
              MarginTop = 1
              Title.Text.Strings = (
                'Standard vs Actual Fees')
              LeftAxis.AxisValuesFormat = '$#,##0.###'
              LeftAxis.MinorTicks.Visible = False
              LeftAxis.Ticks.Visible = False
              LeftAxis.TicksInner.Visible = False
              Legend.Alignment = laBottom
              View3DOptions.Elevation = 326
              View3DOptions.Perspective = 0
              View3DOptions.Rotation = 360
              View3DOptions.VertOffset = 1
              View3DOptions.Zoom = 93
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 1
              ColorPaletteIndex = 13
              object BarSeries1: TBarSeries
                ColorEachPoint = True
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Callout.Length = 8
                Marks.ShapeStyle = fosRoundRectangle
                Marks.Visible = True
                DataSource = qryBenchmark
                SeriesColor = clRed
                ValueFormat = '$#,##0.###'
                XLabelsSource = 'LEGEND'
                XValues.Name = 'X'
                XValues.Order = loAscending
                XValues.ValueSource = 'ROUND(SUM(BENCH_FEE))'
                YValues.Name = 'Bar'
                YValues.Order = loNone
                YValues.ValueSource = 'ROUND(SUM(BENCH_FEE))'
              end
            end
            object cxSplitter2: TcxSplitter
              Left = 313
              Top = 0
              Width = 2
              Height = 556
              Control = DBChart1
            end
          end
        end
      end
      object tsBudget: TcxTabSheet
        Caption = 'Graphs'
        ImageIndex = 2
        OnShow = tsBudgetShow
        object pcBudgetGraphs: TcxPageControl
          Left = 0
          Top = 0
          Width = 1103
          Height = 556
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tsBudgetMonth
          Properties.CustomButtons.Buttons = <>
          Properties.NavigatorPosition = npLeftTop
          Properties.Options = [pcoTopToBottomText]
          Properties.Style = 9
          Properties.TabPosition = tpRight
          Properties.TabSlants.Kind = skCutCorner
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          TabSlants.Kind = skCutCorner
          ClientRectBottom = 556
          ClientRectRight = 1081
          ClientRectTop = 0
          object tsBudgetMonth: TcxTabSheet
            Caption = 'Month'
            ImageIndex = 0
            object cxPageControl1: TcxPageControl
              Left = 0
              Top = 0
              Width = 1081
              Height = 556
              Align = alClient
              TabOrder = 0
              Properties.ActivePage = tsWIPBudgetMonth
              Properties.CustomButtons.Buttons = <>
              Properties.Style = 9
              Properties.TabSlants.Kind = skCutCorner
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = True
              TabSlants.Kind = skCutCorner
              ClientRectBottom = 556
              ClientRectRight = 1081
              ClientRectTop = 22
              object tsWIPBudgetMonth: TcxTabSheet
                Caption = 'W.I.P.'
                ImageIndex = 0
                OnShow = tsWIPBudgetMonthShow
                object chBudgetMonth: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.Title.Caption = 'Month'
                  LeftAxis.Title.Caption = 'Total $'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries2: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    DataSource = dmFeeList.qBudgetGraphAuthMonthWIP
                    SeriesColor = clRed
                    Title = 'Billed W.I.P.'
                    XLabelsSource = 'VIEWDATE'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'BILLED'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object BarSeries3: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    DataSource = dmFeeList.qBudgetGraphAuthMonthWIP
                    SeriesColor = clYellow
                    Title = 'UnBilled'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'UNBILLED'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'UNBILLED'
                  end
                  object LineSeries1: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    DataSource = dmFeeList.qBudgetGraphAuthMonthWIP
                    SeriesColor = clGreen
                    Title = 'W.I.P. Budget'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'WIPBUDGET'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'WIPBUDGET'
                  end
                end
              end
              object tsFeesBudgetMonth: TcxTabSheet
                Caption = 'Fees'
                ImageIndex = 1
                OnShow = tsFeesBudgetMonthShow
                object chFeeBudgetMonth: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.Title.Caption = 'Month'
                  LeftAxis.Title.Caption = 'Total $'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries8: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    DataSource = dmFeeList.qBudgetGraphAuthMonthWIP
                    SeriesColor = clRed
                    Title = 'Billed Fees'
                    XLabelsSource = 'VIEWDATE'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'BILLED'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object BarSeries10: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    DataSource = dmFeeList.qBudgetGraphAuthMonthWIP
                    SeriesColor = clGreen
                    Title = 'Fees Budget'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'WIPBUDGET'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'WIPBUDGET'
                  end
                end
              end
              object tsTimeBudgetMonth: TcxTabSheet
                Caption = 'Time'
                ImageIndex = 2
                OnShow = tsTimeBudgetMonthShow
                object chTimeBudgetMonth: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.Title.Caption = 'Month'
                  LeftAxis.Title.Caption = 'Total Hours'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries9: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Billable Hours'
                    XLabelsSource = 'VIEWDATE'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'MTIME'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'MTIME'
                  end
                  object Series2: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clYellow
                    Title = 'Non-Billable Hours'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'OTIME'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'OTIME'
                  end
                  object BarSeries11: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'Budget Hours'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'TIMEBUDGET'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'TIMEBUDGET'
                  end
                end
              end
            end
          end
          object tsBudgetQuarter: TcxTabSheet
            Caption = 'Quarter'
            ImageIndex = 1
            TabVisible = False
            object cxPageControl3: TcxPageControl
              Left = 0
              Top = 0
              Width = 1081
              Height = 556
              Align = alClient
              TabOrder = 0
              Properties.CustomButtons.Buttons = <>
              Properties.Style = 9
              ClientRectBottom = 556
              ClientRectRight = 1081
              ClientRectTop = 22
              object tsWIPBudgetQtr: TcxTabSheet
                Caption = 'W.I.P.'
                ImageIndex = 0
                OnShow = tsWIPBudgetQtrShow
                object chWIPBudgetQuarter: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  Gradient.Visible = True
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.LabelStyle = talText
                  BottomAxis.Title.Caption = 'Quarter'
                  LeftAxis.Title.Caption = 'Total $'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries4: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Billed W.I.P.'
                    XLabelsSource = 'VIEWDATE'
                    MultiBar = mbStacked
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'QUARTER'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object BarSeries5: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clYellow
                    Title = 'UnBilled W.I.P.'
                    MultiBar = mbStacked
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'QUARTER'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'UNBILLED'
                  end
                  object LineSeries2: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'W.I.P. Budget'
                    MultiBar = mbStacked
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'QUARTER'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'WIPBUDGET'
                  end
                end
              end
              object tsFeeBudgetQtr: TcxTabSheet
                Caption = 'Fees'
                ImageIndex = 1
                OnShow = tsFeeBudgetQtrShow
                object chFeesBudgetQuarter: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.EndColor = 16744576
                  Gradient.Visible = True
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.LabelStyle = talText
                  BottomAxis.Title.Caption = 'Quarter'
                  LeftAxis.GridCentered = True
                  LeftAxis.Title.Caption = 'Total $'
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object Series3: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Fees'
                    XLabelsSource = 'VIEWDATE'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'BILLED'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object Series4: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'W.I.P. Budget'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                  end
                end
              end
              object tsBudgetHoursQtr: TcxTabSheet
                Caption = 'Time'
                ImageIndex = 2
                TabVisible = False
                OnShow = tsBudgetHoursQtrShow
                object chHoursBudgetQuarter: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  Gradient.Visible = True
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.LabelStyle = talText
                  BottomAxis.Title.Caption = 'Quarter'
                  LeftAxis.Title.Caption = 'Total Hours'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries12: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Billable Hours'
                    XLabelsSource = 'VIEWDATE'
                    MultiBar = mbStacked
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'QUARTER'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object Series5: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clYellow
                    Title = 'Non Billable Hours'
                    XLabelsSource = 'VIEWDATE'
                    MultiBar = mbStacked
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'QUARTER'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'UNBILLED'
                  end
                  object BarSeries14: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'Hours Budget'
                    MultiBar = mbStacked
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'QUARTER'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'WIPBUDGET'
                  end
                end
              end
            end
          end
          object tsBudgetYear: TcxTabSheet
            Caption = 'Year'
            ImageIndex = 2
            object cxPageControl4: TcxPageControl
              Left = 0
              Top = 0
              Width = 1081
              Height = 556
              Align = alClient
              TabOrder = 0
              Properties.ActivePage = tsWIPBudgetYr
              Properties.CustomButtons.Buttons = <>
              Properties.Style = 9
              Properties.TabSlants.Kind = skCutCorner
              TabSlants.Kind = skCutCorner
              ClientRectBottom = 556
              ClientRectRight = 1081
              ClientRectTop = 22
              object tsWIPBudgetYr: TcxTabSheet
                Caption = 'W.I.P.'
                ImageIndex = 0
                OnShow = tsWIPBudgetYrShow
                object chBudgetYear: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.Title.Caption = 'Year'
                  LeftAxis.Title.Caption = 'Total $'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries6: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Billed W.I.P.'
                    XLabelsSource = 'VIEWDATE'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'BUDGET'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object BarSeries7: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clYellow
                    Title = 'UnBilled W.I.P.'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'XFIELD'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'UNBILLED'
                  end
                  object LineSeries3: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'W.I.P. Budget'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'XFIELD'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BUDGET'
                  end
                end
              end
              object tsFeeBudgetYr: TcxTabSheet
                Caption = 'Fees'
                ImageIndex = 1
                OnShow = tsFeeBudgetYrShow
                object chBudgetYearFee: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.Title.Caption = 'Year'
                  LeftAxis.Title.Caption = 'Total $'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries13: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Fees'
                    XLabelsSource = 'VIEWDATE'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'BUDGET'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object BarSeries16: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'Fee Budget'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'XFIELD'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BUDGET'
                  end
                end
              end
              object tsTimeBudgetYr: TcxTabSheet
                Caption = 'Time'
                ImageIndex = 2
                OnShow = tsTimeBudgetYrShow
                object chBudgetYearTime: TDBChart
                  Left = 0
                  Top = 0
                  Width = 1081
                  Height = 534
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Gradient.Direction = gdBottomTop
                  Gradient.EndColor = 16744576
                  LeftWall.Brush.Color = clWhite
                  MarginBottom = 1
                  MarginLeft = 1
                  MarginRight = 1
                  MarginTop = 1
                  Title.Text.Strings = (
                    '')
                  Title.Visible = False
                  BottomAxis.DateTimeFormat = 'MMM yyyy'
                  BottomAxis.Increment = 30.000000000000000000
                  BottomAxis.LabelsAngle = 270
                  BottomAxis.Title.Caption = 'Year'
                  LeftAxis.Title.Caption = 'Total Hours'
                  Legend.ColorWidth = 10
                  Legend.Shadow.HorizSize = 0
                  Legend.Shadow.VertSize = 0
                  Legend.Symbol.Width = 10
                  Legend.TextStyle = ltsPlain
                  Legend.TopPos = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ColorPaletteIndex = 13
                  object BarSeries15: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clRed
                    Title = 'Billable Hours'
                    XLabelsSource = 'VIEWDATE'
                    UseYOrigin = False
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'BUDGET'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BILLED'
                  end
                  object BarSeries17: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clYellow
                    Title = 'Non Billable Hours'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'XFIELD'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'UNBILLED'
                  end
                  object BarSeries18: TBarSeries
                    Marks.Arrow.Visible = True
                    Marks.Callout.Brush.Color = clBlack
                    Marks.Callout.Arrow.Visible = True
                    Marks.Callout.Length = 8
                    Marks.ShapeStyle = fosRoundRectangle
                    Marks.Visible = False
                    SeriesColor = clGreen
                    Title = 'Time Budget'
                    XValues.Name = 'X'
                    XValues.Order = loAscending
                    XValues.ValueSource = 'XFIELD'
                    YValues.Name = 'Bar'
                    YValues.Order = loNone
                    YValues.ValueSource = 'BUDGET'
                  end
                end
              end
            end
          end
        end
      end
      object tsFilter: TcxTabSheet
        Caption = 'Filter'
        ImageIndex = 3
        OnShow = tsFilterShow
        object lblAuthor: TLabel
          Left = 22
          Top = 4
          Width = 53
          Height = 30
          Alignment = taRightJustify
          Caption = 'Fee/Time Author'
          Transparent = True
          WordWrap = True
        end
        object lblPartner: TLabel
          Left = 313
          Top = 11
          Width = 38
          Height = 15
          Alignment = taRightJustify
          Caption = 'Partner'
          Transparent = True
        end
        object Label3: TLabel
          Left = 316
          Top = 38
          Width = 35
          Height = 15
          Alignment = taRightJustify
          Caption = 'Matter'
          Transparent = True
        end
        object Label5: TLabel
          Left = 12
          Top = 38
          Width = 63
          Height = 15
          Alignment = taRightJustify
          Caption = 'Department'
          Transparent = True
        end
        object Label30: TLabel
          Left = 45
          Top = 63
          Width = 30
          Height = 15
          Alignment = taRightJustify
          Caption = 'Entity'
          Transparent = True
        end
        object Label28: TLabel
          Left = 38
          Top = 89
          Width = 37
          Height = 15
          Alignment = taRightJustify
          Caption = 'Branch'
          Transparent = True
        end
        object Label25: TLabel
          Left = 29
          Top = 116
          Width = 46
          Height = 15
          Alignment = taRightJustify
          Caption = 'Fee Type'
          Transparent = True
        end
        object Label27: TLabel
          Left = 44
          Top = 145
          Width = 31
          Height = 15
          Alignment = taRightJustify
          Caption = 'Client'
          Transparent = True
        end
        object Label29: TLabel
          Left = 328
          Top = 116
          Width = 23
          Height = 15
          Alignment = taRightJustify
          Caption = 'Task'
          Transparent = True
        end
        object Label20: TLabel
          Left = 286
          Top = 89
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = 'Author Type'
          Transparent = True
        end
        object Label31: TLabel
          Left = 288
          Top = 63
          Width = 63
          Height = 15
          Alignment = taRightJustify
          Caption = 'Bill Number'
          Transparent = True
        end
        object Label22: TLabel
          Left = 15
          Top = 173
          Width = 60
          Height = 15
          Alignment = taRightJustify
          Caption = 'Description'
          Transparent = True
        end
        object cbAuthor: TcxLookupComboBox
          Left = 80
          Top = 7
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              FieldName = 'NAME'
            end
            item
              Caption = 'Description'
              Width = 90
              FieldName = 'CODE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmployeeList
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          Properties.OnInitPopup = cbAuthorPropertiesInitPopup
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 186
        end
        object cbPartner: TcxLookupComboBox
          Left = 356
          Top = 7
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              FieldName = 'NAME'
            end
            item
              Caption = 'Description'
              FieldName = 'code'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsPartner
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 206
        end
        object eMatter: TcxButtonEdit
          Left = 356
          Top = 32
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
                00000000000000000000000000000000000000000000FF00FF00000000000000
                00000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Kind = bkGlyph
            end>
          Properties.CharCase = ecUpperCase
          Properties.OnButtonClick = eMatterPropertiesButtonClick
          Properties.OnValidate = eMatterPropertiesValidate
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 206
        end
        object cbDept: TcxLookupComboBox
          Left = 80
          Top = 33
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsDepartment
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 186
        end
        object cbEntity: TcxLookupComboBox
          Left = 80
          Top = 59
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Entity'
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsEntity
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 186
        end
        object cbBranch: TcxLookupComboBox
          Left = 80
          Top = 85
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsBranch
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 186
        end
        object cbFeeType: TcxLookupComboBox
          Left = 80
          Top = 112
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsFeeType
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 186
        end
        object edClientCode: TcxButtonEdit
          Left = 80
          Top = 140
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
                00000000000000000000000000000000000000000000FF00FF00000000000000
                00000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = edClientCodePropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 482
        end
        object edBillNum: TcxTextEdit
          Left = 356
          Top = 59
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 206
        end
        object cbAuthorType: TcxLookupComboBox
          Left = 356
          Top = 85
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsAuthorType
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 206
        end
        object cbScale: TcxLookupComboBox
          Left = 356
          Top = 112
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmFeeList.dsScaleCost
          Properties.OnEditValueChanged = cbAuthorPropertiesEditValueChanged
          EditValue = ''
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 206
        end
        object pDate: TLMDSimplePanel
          Left = 8
          Top = 307
          Width = 523
          Height = 62
          Hint = ''
          ParentBackground = True
          Bevel.Mode = bmCustom
          ParentColor = True
          TabOrder = 14
          object Label1: TLabel
            Left = 4
            Top = 14
            Width = 55
            Height = 15
            Caption = 'Date From'
            Transparent = True
          end
          object Label2: TLabel
            Left = 4
            Top = 38
            Width = 40
            Height = 15
            Caption = 'Date To'
            Transparent = True
          end
          object dcToday: TDateChangeButton
            Left = 182
            Top = 11
            Width = 80
            Height = 23
            Caption = 'Today'
            TabOrder = 0
            TabStop = False
            ChangeType = ctToday
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton2: TDateChangeButton
            Left = 182
            Top = 35
            Width = 80
            Height = 22
            Caption = 'Yesterday'
            TabOrder = 1
            TabStop = False
            ChangeType = ctYesterday
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton4: TDateChangeButton
            Left = 263
            Top = 11
            Width = 80
            Height = 23
            Caption = 'This Week'
            TabOrder = 2
            TabStop = False
            ChangeType = ctThisWeek
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton3: TDateChangeButton
            Left = 263
            Top = 35
            Width = 80
            Height = 22
            Caption = 'Last Week'
            TabOrder = 3
            TabStop = False
            ChangeType = ctLastWeek
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton5: TDateChangeButton
            Left = 345
            Top = 11
            Width = 80
            Height = 23
            Caption = 'This Month'
            TabOrder = 4
            TabStop = False
            ChangeType = ctThisMonth
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton6: TDateChangeButton
            Left = 345
            Top = 35
            Width = 80
            Height = 22
            Caption = 'Last Month'
            TabOrder = 5
            TabStop = False
            ChangeType = ctLastMonth
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton7: TDateChangeButton
            Left = 427
            Top = 11
            Width = 80
            Height = 23
            Caption = 'Year To Date'
            TabOrder = 6
            TabStop = False
            ChangeType = ctYearToDate
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object DateChangeButton8: TDateChangeButton
            Left = 427
            Top = 35
            Width = 80
            Height = 22
            Caption = 'Last Year'
            TabOrder = 7
            TabStop = False
            ChangeType = ctLastYear
            DateFrom = dtpDateFrom
            DateTo = dtpDateTo
            CheckBoxFrom = chkDateFrom
            CheckBoxTo = chkDateTo
          end
          object dtpDateTo: TJvDateTimePicker
            Left = 87
            Top = 35
            Width = 88
            Height = 22
            Date = 40646.824038599540000000
            Time = 40646.824038599540000000
            TabOrder = 8
            DropDownDate = 40646.000000000000000000
          end
          object chkDateFrom: TCheckBox
            Left = 69
            Top = 13
            Width = 16
            Height = 17
            Checked = True
            State = cbChecked
            TabOrder = 10
            OnClick = chkDateFromClick
          end
          object chkDateTo: TCheckBox
            Left = 68
            Top = 37
            Width = 16
            Height = 17
            Checked = True
            State = cbChecked
            TabOrder = 9
            OnClick = chkDateToClick
          end
          object dtpDateFrom: TJvDateTimePicker
            Left = 87
            Top = 11
            Width = 88
            Height = 22
            Date = 40646.824038599540000000
            Time = 40646.824038599540000000
            TabOrder = 11
            DropDownDate = 40646.000000000000000000
          end
        end
        object rgBilled: TcxRadioGroup
          Left = 6
          Top = 197
          Caption = 'Select Fees'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'All'
            end
            item
              Caption = 'Unbilled'
            end
            item
              Caption = 'Billed (Invoiced)'
            end
            item
              Caption = 'Non Billable'
            end
            item
              Caption = 'Billable Only'
            end>
          ItemIndex = 0
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Height = 63
          Width = 344
        end
        object rgValue: TcxRadioGroup
          Left = 353
          Top = 197
          Caption = 'Select Values'
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'All'
            end
            item
              Caption = 'Positive Only'
            end
            item
              Caption = 'Negative Only'
            end
            item
              Caption = 'Zero Value'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Height = 63
          Width = 209
        end
        object rgWriteOffs: TcxRadioGroup
          Left = 6
          Top = 261
          Caption = 'Fee Write Offs'
          Properties.Columns = 3
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = 'Exclude'
            end
            item
              Caption = 'Include'
            end
            item
              Caption = 'Only Write Offs'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 15
          Height = 39
          Width = 556
        end
        object edDescription: TEdit
          Left = 80
          Top = 170
          Width = 482
          Height = 23
          TabOrder = 11
        end
      end
    end
  end
  object ilstToolbar: TImageList
    Left = 708
    Top = 40
    Bitmap = {
      494C010117001900700010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7C738F9F9
      F906000000000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF16163DE96262
      629DD4D4D42B0000000000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F40B6060
      909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF000081FF0101
      54FF34343CCBC2C2C23D00000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD025A5A9AA50000
      96FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF00008FFF0000
      88FF000062FF36363EC9D6D6D629000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000008F8FB7700101A3FF0808
      9EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7E3FF2727
      A5FF00008CFF010152FF7171718E000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000000000000000000000000000DDDDEF222828ABD90000ABFF2828
      A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFFF7FF5E5E
      B7FF00009AFF020287FF2E2E45D1000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000009797E5690606B0FD0303B9FF0000
      C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575B9FF0606
      B1FF0101ABFF0202A0FF12135DED000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000005859D0AB0808BBFF0707C8FF0505
      D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000BEFF0101
      C3FF0303B8FF0303ACFF0F0F6EF20000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D669900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000004B4BD2BC0C0CC9FF0D0DD8FF0B0B
      DCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000CAFF0303
      CBFF0606C5FF0606B8FF111178F10000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000007272E6931414D8FF1717EAFF0B0B
      F1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363E5FF0303
      D7FF0A0ACFFF0A0AC3FF21217FE20000000000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7452525E5F22222FBFF3F3F
      E9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFFFEFF6161
      E5FF0808DBFF0F0FCAFF4F4F85B2000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD0C5E5EF1AF3232FFFF5252
      EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADADB0FF4D4D
      E1FF1818EDFF1818B1F5B6B6B9490000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000007F7F7F0000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC293E3EFBE75353
      FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242EBFF3232
      FFFF1F1FE9FF7E7EA7840000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC404848
      FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151FFFF3030
      FBFD7C7CB488FEFEFE0100000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151F2D2A6A6
      CD5C00000000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1F81E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC2000000000000000000000000000000000000000000000000000000000000
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
      0000000000007F7F7F00800000008000000080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F008000000080000000800000007F7F7F007F7F7F0080000000800000008000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00800000008000
      0000800000008000000080000000000000000000000080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000007F7F7F0080000000800000008000000080000000800000008000
      0000800000007F7F7F00000000000000000000000000000000007F7F7F008000
      00008000000080000000800000008000000080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000007F7F
      7F00800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000007F7F7F00800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000FFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000007F7F7F00800000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      00000000000000000000000000000000FF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000FF0000000000000000007F7F
      7F008000000080000000800000007F7F7F000000000000000000000000000000
      00000000000000000000FF0000000000FF008000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000FF0000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      00000000000000000000FF0000000000FF00800000007F7F7F00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF0080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000007F7F7F0000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000FF008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000FF008000000080000000800000007F7F
      7F00000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00000000007F7F7F000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF0080000000800000008000
      00007F7F7F00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000007F7F7F000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF0080000000800000008000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      00007F7F7F00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000FF0080000000800000007F7F
      7F00000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000FF0080000000800000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000800000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000FF00800000007F7F7F000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000000000000000FF000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000FF0080000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      00000000000000000000000000000000FF0000000000000000007F7F7F008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF007F7F7F00000000000000
      000000000000000000000000000000000000FF000000FF000000FF0000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000007F7F7F0080000000000000000000000000000000000000000000
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
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000000000
      FF000000FF000000FF00000000007F7F7F00000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084848400000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      84000000FF000000FF000000FF008484840000FFFF0000FFFF0000FFFF008484
      8400FF000000FF000000FF000000848484000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF00000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF0000000000000000FF000000FF0000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400000000000000000000000000848484008484840084848400848484008484
      8400FF000000FF000000FF00000084848400000000000000000000000000FF00
      0000FF0000000000000000FF000000FF000000FF000000FF0000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF007B7B
      7B00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008400000084000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF007B7B
      7B00BDBDBD00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00BDBDBD007B7B
      7B00FFFFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0084000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00FFFFFF0000000000FFFFFF00BDBDBD0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFF80FE7FF0000FFFFE007E01F0000
      FFFFC003E00F0000E0078001E0070000C0078001E0030000C0070001E0430000
      C0070001E0630000C0070001A0330000C00700019FF30000C00700018C0F0000
      C00F0001840F0000E07F0001800F0000E07F8003C00F0000FFFFC003C00F0000
      FFFFE00FE00F0000FFFFF01FFFCF0000FFFFFFFFBFFFFFFFFFF81FFFBFFFF801
      FFE007FFB049F001FF8181FF807FE001FE03C07FB07FC001F803C01FB9FF8001
      E007E007BFFF0001800FF001B049000100000000807F0003C00FF003B07F0007
      F007E00FB9FF000FFC07E03FBFFF001FFF03C0FF048F003FFFC183FF07FF81FF
      FFF18FFF07FF81FFFFFC3FFF9FFFFFFFFFFF8003BF7CFEFFFFFF80038F78FE7F
      07C18003C760FC7F07C18003C141FC3F07C18003E001F83F01018003E003F81F
      00018003F003F01F02018003F007F00F02018003F807E00F80038003F80FE007
      C1078003FC0FC007C1078003FC1FC003E38F8003FE1F8283E38F8007FE3F8EC1
      E38F800FFF3F1EF1FFFF801FFF7F7EF9EFFFFFFFFFFFFFFFCFFFF83FFFFF0162
      8007E00FFFFFFFE30003CFC7FFFFFE63800187E3FFFFFC03CFF1A3F3FFE7F803
      EFF131F9C1F3F003FFF138F9C3FBF0038FFF3C79C7FBE0038FF73E39CBFBC003
      8FF33F19DCF3800380019F8BFF070003C0008FC3FFFF0003E001C7E7FFFF01E3
      FFF3E00FFFFF83F7FFF7F83FFFFFC7F7F111FC1FFFFFFFFFFFFFF007C007FE7F
      0000E0038003FC3FD111C0010001FC3F9111C0010001FE7FD11180000001FC3F
      000080000000FC3FD11180000000FC3F91F180008000FC1FD1F18000C000F20F
      0000C001E001E107DFF1C001E007E1879FF1E003F007E007DFFFF007F003F00F
      0000FC1FF803F81FFFFFFFFFFFFFFFFF80038003FFFFFFFF80038003FFFFFFFF
      80038003FFFFFFF980038003FFFFE7FF80038003C00FC3F3800380038007C3E7
      800380038003E1C7800380038001F08F800380038001F81F80038003800FFC3F
      80038003800FF81F80038003801FF09F80038003C0FFC1C780078007C0FF83E3
      800F800FFFFF8FF1801F801FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmFees: TPopupMenu
    Images = ilstToolbar
    Left = 522
    Top = 34
    object miNewFee: TMenuItem
      Action = aNewFee
    end
    object miOpenFee: TMenuItem
      Action = aOpenFee
      Default = True
    end
    object miDeleteFee: TMenuItem
      Action = aDeleteFee
    end
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = aNewFee
            Caption = '&New Fee'
            ImageIndex = 0
            ShowCaption = False
          end
          item
            Action = aOpenFee
            Caption = '&Open Fee'
            ImageIndex = 1
            ShowCaption = False
          end
          item
            Action = aOpenMatter
            Caption = 'O&pen Matter'
            ImageIndex = 2
            ShowCaption = False
          end
          item
            Action = aDeleteFee
            Caption = '&Delete Fee'
            ImageIndex = 3
            ShowCaption = False
          end
          item
            Caption = '-'
          end
          item
            Action = aRefresh
            Caption = '&Refresh'
            ImageIndex = 8
            ShowCaption = False
          end
          item
            Action = aClearAll
            Caption = '&Clear All'
            ImageIndex = 9
            ShowCaption = False
          end
          item
            Caption = '-'
          end
          item
            Action = aReportFeeListSummary
            Caption = '&Fee List Summary'
            ImageIndex = 6
            ShowCaption = False
            ShortCut = 16464
          end
          item
            Caption = '-'
          end
          item
            Action = aToday
            Caption = '&Today'
            ImageIndex = 13
          end>
        Visible = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = aNewFee
                Caption = '&New Fee'
                ImageIndex = 0
              end
              item
                Action = aOpenFee
                Caption = '&Open Fee'
                ImageIndex = 1
              end
              item
                Caption = '-'
              end
              item
                Action = aOpenMatter
                Caption = 'O&pen Matter'
                ImageIndex = 2
              end
              item
                Caption = '-'
              end
              item
                Action = aDeleteFee
                Caption = '&Delete Fee'
                ImageIndex = 3
              end
              item
                Caption = '-'
              end
              item
                Items = <
                  item
                    Action = aReportFeeListSummary
                    Caption = '&Fee List Summary'
                    ImageIndex = 6
                    ShortCut = 16464
                  end
                  item
                    Action = aStatisticsReport
                    Caption = '&Statistics'
                    ImageIndex = 6
                  end
                  item
                    Action = aReportAuthorSummary
                    Caption = '&Author Summary'
                  end
                  item
                    Action = aReportGroupedList
                    Caption = '&Grouped List'
                  end>
                Caption = '&Report'
                UsageCount = 1
              end
              item
                Items = <
                  item
                    Action = aGraphFeesByDate
                    Caption = '&Fees By Date'
                    ImageIndex = 4
                  end
                  item
                    Action = aGraphAuthorFees
                    Caption = '&Author Fees'
                    ImageIndex = 5
                  end
                  item
                    Action = aGraphFeeTypes
                    Caption = 'F&ee Types'
                    ImageIndex = 5
                  end
                  item
                    Action = aGraphDepartments
                    Caption = '&Departments'
                    ImageIndex = 5
                  end>
                Caption = '&Graph'
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Action = aExit
                Caption = '&Exit'
                ShortCut = 32883
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = aRefresh
                Caption = '&Refresh'
                ImageIndex = 8
              end
              item
                Action = aClearAll
                Caption = '&Clear All'
                ImageIndex = 9
              end
              item
                Caption = '-'
              end
              item
                Action = actExpGroups
                Caption = '&Expand Groups'
                ImageIndex = 19
              end
              item
                Action = actCollapseGroups
                Caption = 'C&ollapse Groups'
                ImageIndex = 20
              end>
            Caption = '&View'
          end>
      end
      item
      end>
    Images = ilstToolbar
    Left = 599
    Top = 43
    StyleName = 'XP Style'
    object aNewFee: TAction
      Category = 'File'
      Caption = 'New Fee'
      Enabled = False
      Hint = 'New Fee'
      ImageIndex = 0
      OnExecute = aNewFeeExecute
      OnUpdate = aNewFeeUpdate
    end
    object aOpenFee: TAction
      Category = 'File'
      Caption = 'Open Fee'
      Enabled = False
      Hint = 'Open Fee'
      ImageIndex = 1
      OnExecute = aOpenFeeExecute
    end
    object aOpenMatter: TAction
      Category = 'File'
      Caption = 'Open Matter'
      Enabled = False
      Hint = 'Open Matter'
      ImageIndex = 2
      OnExecute = aOpenMatterExecute
    end
    object aDeleteFee: TAction
      Category = 'File'
      Caption = 'Delete Fee'
      Enabled = False
      Hint = 'Delete Fee'
      ImageIndex = 3
      OnExecute = aDeleteFeeExecute
    end
    object aRefresh: TAction
      Category = 'View'
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 8
      OnExecute = aRefreshExecute
    end
    object aClearAll: TAction
      Category = 'View'
      Caption = 'Clear All'
      Hint = 'Clear All'
      ImageIndex = 9
      OnExecute = aClearAllExecute
    end
    object aReportFeeListSummary: TAction
      Category = 'Report'
      Caption = 'Fee List Summary'
      ImageIndex = 6
      ShortCut = 16464
      OnExecute = aReportFeeListSummaryExecute
    end
    object aExit: TAction
      Category = 'File'
      Caption = 'Exit'
      Enabled = False
      Hint = 'Exit Window'
      ShortCut = 32883
      OnExecute = aExitExecute
    end
    object aReportAuthorSummary: TAction
      Category = 'Report'
      Caption = 'Author Summary'
      Hint = 'Author Summary'
      OnExecute = aReportAuthorSummaryExecute
      OnUpdate = aReportAuthorSummaryUpdate
    end
    object aReportGroupedList: TAction
      Category = 'Report'
      Caption = 'Grouped List'
      Hint = 'Grouped List'
      OnExecute = aReportGroupedListExecute
    end
    object aGraphFeesByDate: TAction
      Category = 'Graph'
      Caption = 'Fees By Date'
      Hint = 'Fees By Date'
      ImageIndex = 4
      OnExecute = aGraphFeesByDateExecute
    end
    object aGraphAuthorFees: TAction
      Category = 'Graph'
      Caption = 'Author Fees'
      Hint = 'Author Fees'
      ImageIndex = 5
      OnExecute = aGraphAuthorFeesExecute
      OnUpdate = aGraphAuthorFeesUpdate
    end
    object aGraphFeeTypes: TAction
      Category = 'Graph'
      Caption = 'Fee Types'
      Hint = 'Fee Types'
      ImageIndex = 5
      OnExecute = aGraphFeeTypesExecute
    end
    object aGraphDepartments: TAction
      Category = 'Graph'
      Caption = 'Departments'
      Hint = 'Departments'
      ImageIndex = 5
      OnExecute = aGraphDepartmentsExecute
      OnUpdate = aGraphDepartmentsUpdate
    end
    object aClear: TAction
      Category = 'Buttons'
      ImageIndex = 11
    end
    object aMatterSearch: TAction
      Category = 'Buttons'
      Hint = 'Matter Search'
      ImageIndex = 12
      OnExecute = aMatterSearchExecute
    end
    object aClientSearch: TAction
      Category = 'Buttons'
      Hint = 'Client Search'
      ImageIndex = 12
      OnExecute = aClientSearchExecute
    end
    object aToday: TAction
      Category = 'View'
      Caption = 'Today'
      Hint = 'What have I done today'
      ImageIndex = 13
      OnExecute = aTodayExecute
    end
    object aStatisticsReport: TAction
      Category = 'Report'
      Caption = 'Statistics'
      ImageIndex = 6
      OnExecute = aStatisticsReportExecute
    end
    object aColumnUp: TAction
      Category = 'Columns'
      Caption = 'Up'
      ImageIndex = 14
    end
    object aColumnDown: TAction
      Category = 'Columns'
      Caption = 'Down'
      ImageIndex = 15
    end
    object actExpGroups: TAction
      Category = 'View'
      Caption = 'Expand Groups'
      Enabled = False
      ImageIndex = 19
      OnExecute = actExpGroupsExecute
      OnUpdate = actExpGroupsUpdate
    end
    object actCollapseGroups: TAction
      Category = 'View'
      Caption = 'Collapse Groups'
      Enabled = False
      ImageIndex = 20
      OnExecute = actCollapseGroupsExecute
      OnUpdate = actCollapseGroupsUpdate
    end
    object aQuickEdit: TAction
      Category = 'File'
      Caption = 'Quick Edit'
    end
  end
  object pmColumns: TPopupMenu
    Images = ilstToolbar
    Left = 553
    Top = 31
    object miUp: TMenuItem
      Action = aColumnUp
    end
    object miDown: TMenuItem
      Action = aColumnDown
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 742
    Top = 170
    PixelsPerInch = 96
    object styHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object styFooter: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object styGroupHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmFees
      end>
    Left = 452
    Top = 57
  end
  object cxPropertiesStore: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore'
    Left = 677
    Top = 117
  end
  object qryNotional: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select round(sum(NOTIONAL_COST)),'#39'Cost'#39' as Legend'
      'from ('
      'SELECT nvl(notional_cost,0) as notional_cost'
      'FROM FEE WHERE NMATTER = :P_Matter '
      'AND BILLED = '#39'Y'#39' )'
      'union'
      'select round(sum(notional_profit)), '#39'Profit'#39
      'from ('
      'SELECT AMOUNT - nvl(notional_cost,0) AS notional_profit '
      'FROM FEE WHERE NMATTER = :P_Matter'
      'AND BILLED = '#39'Y'#39' )'
      ''
      ''
      ''
      '')
    Left = 732
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryBenchmark: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select round(sum(bench_fee)),'#39'Standard Fees'#39' as Legend'
      'from ('
      'SELECT STANDARD_COST AS BENCH_FEE '
      'FROM FEE WHERE NMATTER = :P_Matter'
      'AND BILLED = '#39'Y'#39')'
      'union'
      'select round(sum(act_fees)), '#39'Actual Fees'#39
      'from ('
      'SELECT AMOUNT AS ACT_FEES '
      'FROM FEE WHERE NMATTER = :P_Matter'
      'AND BILLED = '#39'Y'#39' )'
      '')
    Left = 693
    Top = 254
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT AUTHOR, SUM(AMOUNT) AS AMT FROM FEE WHERE NMATTER = :P_Ma' +
        'tter GROUP BY AUTHOR')
    Left = 782
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryTime: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT AUTHOR, SUM(UNITS) AS AMT FROM FEE WHERE NMATTER = :P_Mat' +
        'ter GROUP BY AUTHOR')
    Left = 242
    Top = 419
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object dxBarManager1: TdxBarManager
    AllowCallFromAnotherForm = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Menu'
      'File'
      'View'
      'Print'
      'Graph')
    Categories.ItemsVisibles = (
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
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 829
    Top = 38
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowQuickCustomizing = False
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 666
      FloatTop = 322
      FloatClientWidth = 32
      FloatClientHeight = 38
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
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
      FloatLeft = 202
      FloatTop = 326
      FloatClientWidth = 23
      FloatClientHeight = 137
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'tbtnFeeEdit'
        end
        item
          Visible = True
          ItemName = 'tbtnOpenMatter'
        end
        item
          Visible = True
          ItemName = 'tbtnDeleteFee'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnReports'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbGroupExpanded'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton8: TdxBarButton
      Action = aToday
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton17: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 21
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton17Click
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cbGroupExpanded: TcxBarEditItem
      Caption = 'When grouped, maintain grouping expanded. '
      Category = 0
      Hint = 'When grouped, maintain grouping expanded. '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
      Properties.OnChange = cbGroupExpandedPropertiesChange
      InternalEditValue = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '&File'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'tbtnFeeEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnOpenMatter'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnDeleteFee'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = '&View'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = aNewFee
      Category = 2
    end
    object tbtnFeeEdit: TdxBarButton
      Caption = 'Open Fee'
      Category = 2
      Enabled = False
      Hint = 'Open Fee'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = aOpenFeeExecute
    end
    object tbtnOpenMatter: TdxBarButton
      Caption = 'Open Matter'
      Category = 2
      Enabled = False
      Hint = 'Open Matter'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = tbtnOpenMatterClick
    end
    object tbtnDeleteFee: TdxBarButton
      Caption = 'Delete Fee'
      Category = 2
      Enabled = False
      Hint = 'Delete Fee'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = tbtnDeleteFeeClick
    end
    object tbtnReports: TdxBarSubItem
      Caption = 'Report'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'bbtnPrintStats'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnPrintGrid'
        end
        item
          Visible = True
          ItemName = 'btnExportToXL'
        end>
      OnPopup = tbtnReportsPopup
    end
    object tbtnGraphs: TdxBarSubItem
      Caption = 'Graph'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object tbtnQuickEdit: TdxBarButton
      Action = aQuickEdit
      Category = 2
      Enabled = False
    end
    object btnMoveMultiFees: TdxBarButton
      Caption = 'Re Assign Fees'
      Category = 2
      Enabled = False
      Hint = 'Re Assign Fees'
      Visible = ivAlways
      OnClick = btnMoveMultiFeesClick
    end
    object tbtnRefresh: TdxBarButton
      Action = aRefresh
      Category = 3
      Enabled = False
      ImageIndex = 22
    end
    object dxBarButton5: TdxBarButton
      Action = aClearAll
      Category = 3
    end
    object dxBarButton6: TdxBarButton
      Action = actExpGroups
      Category = 3
    end
    object dxBarButton7: TdxBarButton
      Action = actCollapseGroups
      Category = 3
    end
    object dxBarButton9: TdxBarButton
      Action = aReportFeeListSummary
      Category = 4
    end
    object dxBarButton10: TdxBarButton
      Action = aReportAuthorSummary
      Category = 4
    end
    object bbtnPrintStats: TdxBarButton
      Action = aStatisticsReport
      Category = 4
    end
    object dxBarButton12: TdxBarButton
      Action = aReportGroupedList
      Category = 4
    end
    object tbtnPrintGrid: TdxBarButton
      Caption = 'Print Grid'
      Category = 4
      Hint = 'Print Grid'
      Visible = ivAlways
      OnClick = tbtnPrintGridClick
    end
    object btnExportToXL: TdxBarButton
      Caption = 'Export to Excel...'
      Category = 4
      Enabled = False
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = btnExportToXLClick
    end
    object dxBarButton13: TdxBarButton
      Action = aGraphAuthorFees
      Category = 5
    end
    object dxBarButton14: TdxBarButton
      Action = aGraphDepartments
      Category = 5
    end
    object dxBarButton15: TdxBarButton
      Action = aGraphFeesByDate
      Category = 5
    end
    object dxBarButton16: TdxBarButton
      Action = aGraphFeeTypes
      Category = 5
    end
  end
  object dbpipeFeeRpt: TppDBPipeline
    DataSource = dsFeeRpt
    UserName = 'dbpipeFeeRpt'
    Left = 599
    Top = 213
    object dbpipeFeeRptppField1: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object dbpipeFeeRptppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object dbpipeFeeRptppField3: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object dbpipeFeeRptppField4: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object dbpipeFeeRptppField5: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 4
    end
    object dbpipeFeeRptppField6: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 5
    end
    object dbpipeFeeRptppField7: TppField
      FieldAlias = 'NFEE'
      FieldName = 'NFEE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 6
    end
    object dbpipeFeeRptppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dbpipeFeeRptppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbpipeFeeRptppField10: TppField
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 9
    end
    object dbpipeFeeRptppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dbpipeFeeRptppField12: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object dbpipeFeeRptppField13: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object dbpipeFeeRptppField14: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object dbpipeFeeRptppField15: TppField
      FieldAlias = 'TASK'
      FieldName = 'TASK'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object dbpipeFeeRptppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASK_AMOUNT'
      FieldName = 'TASK_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object dbpipeFeeRptppField17: TppField
      FieldAlias = 'BILLNO'
      FieldName = 'BILLNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object dbpipeFeeRptppField18: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 17
    end
    object dbpipeFeeRptppField19: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object dbpipeFeeRptppField20: TppField
      FieldAlias = 'BRANCH'
      FieldName = 'BRANCH'
      FieldLength = 3
      DisplayWidth = 3
      Position = 19
    end
  end
  object qryFeeRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '/*+ ORDERED */FEE.NMEMO, FEE.CREATED, FEE.AUTHOR, FEE.FILEID, FE' +
        'E.NMATTER'
      ', FEE.DESCR, FEE.NFEE, FEE.AMOUNT, FEE.UNITS, FEE.MINS'
      ', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK'
      
        ', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS TI' +
        'TLE'
      ', MATTER.SHORTDESCR, MATTER.BRANCH'
      'FROM FEE, MATTER, NMEMO, PHONEBOOK'
      
        'WHERE FEE.NMATTER = MATTER.NMATTER AND FEE.NMEMO = NMEMO.NMEMO(+' +
        ')'
      'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT')
    Active = True
    Left = 587
    Top = 110
  end
  object dsFeeRpt: TUniDataSource
    DataSet = qryFeeRpt
    Left = 607
    Top = 162
  end
  object feeRpt: TppReport
    AutoStop = False
    DataPipeline = dbpipeFeeRpt
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    BeforePrint = feeRptBeforePrint
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
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 728
    Top = 199
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbpipeFeeRpt'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fee List'
        Color = 13816530
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        mmHeight = 4924
        mmLeft = 2116
        mmTop = 7938
        mmWidth = 280988
        BandType = 1
        LayerName = Foreground1
      end
      object ppReportPeriod: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'ReportPeriod'
        Border.Weight = 1.000000000000000000
        Caption = 'For the period'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 14817
        mmWidth = 21166
        BandType = 1
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 35718
        BandType = 1
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 279136
        mmTop = 1588
        mmWidth = 1852
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265113
        mmTop = 1588
        mmWidth = 7938
        BandType = 1
        LayerName = Foreground1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object pplblDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblDate'
        Border.Weight = 1.000000000000000000
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 2646
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object pplblAuthor: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblAuthor'
        Border.Weight = 1.000000000000000000
        Caption = 'Author'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 2646
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object pplblClient: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblClient'
        Border.Weight = 1.000000000000000000
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 2646
        mmWidth = 9789
        BandType = 0
        LayerName = Foreground1
      end
      object pplblDescr: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblDescr'
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 7673
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground1
      end
      object pplblShortDescr: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblShortDescr'
        Border.Weight = 1.000000000000000000
        Caption = 'Matter Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 112713
        mmTop = 2646
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground1
      end
      object pplblMatterNo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblMatterNo'
        Border.Weight = 1.000000000000000000
        Caption = 'Matter #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 174361
        mmTop = 2646
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground1
      end
      object pplblInvoiceDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Caption = 'Invoice Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 7673
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object pplblInvoiceNo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Caption = 'Invoice #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 203994
        mmTop = 2646
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground1
      end
      object pplblUnits: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.Weight = 1.000000000000000000
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 229659
        mmTop = 2646
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object pplblMinutes: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Caption = 'Minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 245008
        mmTop = 2646
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object pplblAmounts: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Caption = 'Amounts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 268023
        mmTop = 2646
        mmWidth = 14553
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 13758
        mmWidth = 281252
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 14816
        mmWidth = 281252
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppDBCreated: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBCreated'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CREATED'
        DataPipeline = dbpipeFeeRpt
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBAuthor: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBAuthor'
        Border.Weight = 1.000000000000000000
        DataField = 'AUTHOR'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTitle: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBTitle'
        Border.Weight = 1.000000000000000000
        DataField = 'TITLE'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 54769
        mmTop = 1323
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBShortDescr: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBShortDescr'
        Border.Weight = 1.000000000000000000
        DataField = 'SHORTDESCR'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 112713
        mmTop = 1323
        mmWidth = 60854
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMatterNo: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBMatterNo'
        Border.Weight = 1.000000000000000000
        DataField = 'FILEID'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 174361
        mmTop = 1323
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBInvoiceDate: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBInvoiceDate'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'INVOICEDATE'
        DataPipeline = dbpipeFeeRpt
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 174361
        mmTop = 6350
        mmWidth = 794
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBInvoiceNo: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBInvoiceNo'
        Border.Weight = 1.000000000000000000
        DataField = 'NMEMO'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 203994
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBUnits: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBUnits'
        Border.Weight = 1.000000000000000000
        DataField = 'UNITS'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 227278
        mmTop = 1323
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMins: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBMins'
        Border.Weight = 1.000000000000000000
        DataField = 'MINS'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 240775
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBAmounts: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBAmounts'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'AMOUNT'
        DataPipeline = dbpipeFeeRpt
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 270670
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 3969
        mmLeft = 54769
        mmTop = 6350
        mmWidth = 118798
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppDBTotalUnits: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBTotalUnits'
        Border.Weight = 1.000000000000000000
        Color = 13816530
        DataField = 'UNITS'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 4233
        mmLeft = 217223
        mmTop = 4233
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBTotalMins: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBTotalMins'
        Border.Weight = 1.000000000000000000
        Color = 13816530
        DataField = 'MINS'
        DataPipeline = dbpipeFeeRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 4233
        mmLeft = 237596
        mmTop = 4233
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBTotalAmount: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBTotalAmount'
        Border.Weight = 1.000000000000000000
        Color = 13816530
        DataField = 'AMOUNT'
        DataPipeline = dbpipeFeeRpt
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        DataPipelineName = 'dbpipeFeeRpt'
        mmHeight = 4233
        mmLeft = 256647
        mmTop = 4233
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 281253
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 281253
        BandType = 7
        LayerName = Foreground1
      end
      object pplblTotal: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total:'
        Color = 13816530
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        mmHeight = 4191
        mmLeft = 201877
        mmTop = 4233
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'AUTHOR'
      DataPipeline = dbpipeFeeRpt
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpipeFeeRpt'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object pplblGrpAuthor: TppLabel
          OnPrint = pplblGrpAuthorPrint
          DesignLayer = ppDesignLayer2
          UserName = 'Label14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Author'
          Color = 13816530
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Segoe UI'
          Font.Size = 10
          Font.Style = [fsBold]
          FormField = False
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 1588
          mmWidth = 280988
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppDBGrpAmounts: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBGrpAmounts'
          AutoSize = True
          Border.Weight = 1.000000000000000000
          Color = 13816530
          DataField = 'AMOUNT'
          DataPipeline = dbpipeFeeRpt
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpipeFeeRpt'
          mmHeight = 4233
          mmLeft = 257970
          mmTop = 3440
          mmWidth = 24606
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBGrpMins: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBGrpMins'
          AutoSize = True
          Border.Weight = 1.000000000000000000
          Color = 13816530
          DataField = 'MINS'
          DataPipeline = dbpipeFeeRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpipeFeeRpt'
          mmHeight = 4233
          mmLeft = 239452
          mmTop = 3440
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBGrpUnits: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBGrpUnits'
          AutoSize = True
          Border.Weight = 1.000000000000000000
          Color = 13816530
          DataField = 'UNITS'
          DataPipeline = dbpipeFeeRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpipeFeeRpt'
          mmHeight = 4233
          mmLeft = 217753
          mmTop = 3440
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 216430
          mmTop = 1323
          mmWidth = 65617
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 216430
          mmTop = 2117
          mmWidth = 65617
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = GridReportLink
    Version = 1
    Left = 652
    Top = 369
    object GridReportLink: TdxGridReportLink
      Component = grdFees
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
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40977.400057256940000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.LookAndFeelKind = lfStandard
      OptionsView.FilterBar = False
      OnCustomDrawCell = GridReportLinkCustomDrawCell
      BuiltInReportLink = True
    end
  end
  object qryEmployeeList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct e.CODE, e.name '
      'FROM  employee e'
      'where '
      'e.NFEE_AUTHORITY in'
      '(select distinct nfee_authority from fee_authority_relation'
      
        'start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority fr' +
        'om employee where code = :code)'
      'connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      'and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      'UNION'
      'SELECT CODE, NAME '
      'FROM EMPLOYEE '
      'WHERE'
      'ACTIVE = '#39'Y'#39' '
      'AND ISTIME_RECORDER = '#39'Y'#39
      'AND code = :code'
      'ORDER BY 2'
      ''
      '/*'
      'SELECT distinct e.CODE, e.name '
      'FROM  employee e'
      'where '
      'ACTIVE = '#39'Y'#39' AND ISFEEEARNER = '#39'Y'#39
      'and'
      'e.NFEE_AUTHORITY in'
      '(select distinct nfee_authority from fee_authority_relation'
      
        'start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority fr' +
        'om employee where code = :code)'
      'connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      'and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      'order by e.name'
      '*/')
    Left = 389
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dsEmployeeList: TUniDataSource
    DataSet = qryEmployeeList
    Left = 500
    Top = 454
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 59
    Top = 447
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'tbtnFeeEdit'
      end
      item
        Visible = True
        ItemName = 'tbtnQuickEdit'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnMoveMultiFees'
      end>
    UseOwnFont = False
    Left = 171
    Top = 445
  end
  object qryUpdateFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'update fee set nmatter = :nmatter, fileid = :fileid, nclient = :' +
        'nclient'
      'where'
      'nfee = :nfee'
      ''
      '-- and nmatter = :old_nmatter')
    Left = 667
    Top = 476
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nfee'
        Value = nil
      end>
  end
  object ppReportAuthorSummary: TppReport
    AutoStop = False
    DataPipeline = plAuthorSummary
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 966
    Top = 283
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plAuthorSummary'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Author'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 1852
        mmTop = 16140
        mmWidth = 9261
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 126736
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 145786
        mmTop = 16140
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 182034
        mmTop = 16140
        mmWidth = 11112
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 19844
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Author Fee Summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5028
        mmLeft = 77258
        mmTop = 2910
        mmWidth = 42598
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'AUTHOR'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 265
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'NAME'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3969
        mmLeft = 12965
        mmTop = 265
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'UNITS'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3598
        mmLeft = 125148
        mmTop = 265
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'MINS'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3598
        mmLeft = 143669
        mmTop = 265
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'AMOUNT'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3704
        mmLeft = 168275
        mmTop = 265
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        DataField = 'UNITS'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        DataField = 'MINS'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3598
        mmLeft = 139965
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        DataField = 'AMOUNT'
        DataPipeline = plAuthorSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAuthorSummary'
        mmHeight = 3704
        mmLeft = 167482
        mmTop = 794
        mmWidth = 25665
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plAuthorSummary: TppDBPipeline
    DataSource = dsAuthorSummary
    UserName = 'plAuthorSummary'
    Left = 964
    Top = 229
    object plAuthorSummaryppField1: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plAuthorSummaryppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object plAuthorSummaryppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'UNITS'
      FieldName = 'UNITS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plAuthorSummaryppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'MINS'
      FieldName = 'MINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plAuthorSummaryppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object qAuthorSummary: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT fee.author AS author, employee.name AS name, SUM(fee.unit' +
        's) AS units, SUM(fee.mins) AS mins, SUM(fee.amount) AS amount'
      'from fee, employee'
      'where fee.author = employee.code(+)'
      'group by fee.author, employee.name')
    Left = 971
    Top = 124
  end
  object dsAuthorSummary: TUniDataSource
    DataSet = qAuthorSummary
    Left = 971
    Top = 181
  end
  object rptFeeListStatsReport: TppReport
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 619
    Top = 306
    Version = '16.03'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable4'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 5027
        mmWidth = 35719
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        Caption = 'Fee Statistics'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 87577
        mmTop = 4763
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground2
      end
      object ppStatsTitle: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'StatsTitle'
        Caption = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 96838
        mmTop = 13758
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 163248
      mmPrintPosition = 0
      object ppAuthorUnitsMoneyMsg: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppAuthorUnitsMoneyMsg'
        Caption = 'ppAuthorUnitsMoneyMsg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 8467
        mmWidth = 38629
        BandType = 7
        LayerName = Foreground2
      end
      object ppAuthorUnitsMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppAuthorUnitsMoney'
        Caption = 'ppAuthorUnitsMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 8467
        mmWidth = 32014
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        Caption = 'Billed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 21167
        mmWidth = 9789
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Caption = 'Unbilled'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 119327
        mmTop = 21167
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 21167
        mmWidth = 8467
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 27781
        mmTop = 28310
        mmWidth = 11907
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        Caption = 'Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 27517
        mmTop = 34660
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        Caption = 'Average'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 27517
        mmTop = 41010
        mmWidth = 12171
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        Caption = 'Percent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 47361
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 53711
        mmWidth = 7937
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        Caption = '$/Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 60061
        mmWidth = 10848
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label101'
        Caption = 'Mins as Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 66411
        mmWidth = 21166
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label102'
        Caption = '$/Actual Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 72761
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label103'
        Caption = 'Hours'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 27517
        mmTop = 79904
        mmWidth = 8996
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label104'
        Caption = 'Work Done'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 96838
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label105'
        Caption = 'Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 27517
        mmTop = 103452
        mmWidth = 7937
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label106'
        Caption = 'Hours/Day'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 109009
        mmWidth = 16139
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label107'
        Caption = 'Units/Day'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 114565
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label108'
        Caption = '$/Day'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 120386
        mmWidth = 8996
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledAmount: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledAmount'
        Caption = 'ppBilledAmount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 71173
        mmTop = 28310
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledNumber: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledNumber'
        Caption = 'ppBilledNumber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 71173
        mmTop = 34660
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledAmount: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledAmount'
        Caption = 'Label10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 121444
        mmTop = 28310
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalAmount: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalAmount'
        Caption = 'Label10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 149754
        mmTop = 28310
        mmWidth = 11907
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledNumber: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledNumber'
        Caption = 'ppUnbilledNumber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 105569
        mmTop = 34660
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalNumber: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalNumber'
        Caption = 'ppTotalNumber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 138642
        mmTop = 34660
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledAverage: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledAverage'
        Caption = 'ppBilledAverage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 70908
        mmTop = 41010
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledPercent: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledPercent'
        Caption = 'ppBilledPercent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 71173
        mmTop = 47361
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledUnits: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledUnits'
        Caption = 'ppBilledUnits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 53711
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledUnitMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledUnitMoney'
        Caption = 'ppBilledUnitMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 66675
        mmTop = 60061
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledMins: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledMins'
        Caption = 'ppBilledMins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 75671
        mmTop = 66411
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledMinsMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledMinsMoney'
        Caption = 'ppBilledMinsMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 65352
        mmTop = 72761
        mmWidth = 29898
        BandType = 7
        LayerName = Foreground2
      end
      object ppBilledHours: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppBilledHours'
        Caption = 'ppBilledHours'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 74083
        mmTop = 79904
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledAverage: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledAverage'
        Caption = 'ppUnbilledAverage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 105304
        mmTop = 41010
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledPercent: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledPercent'
        Caption = 'ppUnbilledPercent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 47361
        mmWidth = 27781
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledUnits: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledUnits'
        Caption = 'ppUnbilledUnits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 109538
        mmTop = 53711
        mmWidth = 23812
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledUnitMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledUnitMoney'
        Caption = 'ppUnbilledUnitMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 60061
        mmWidth = 32279
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledMins: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledMins'
        Caption = 'ppUnbilledMins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 66411
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledMinsMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledMinsMoney'
        Caption = 'ppUnbilledMinsMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 72761
        mmWidth = 33602
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnbilledHours: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnbilledHours'
        Caption = 'ppUnbilledHours'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 108479
        mmTop = 79904
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalAverage: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalAverage'
        Caption = 'ppTotalAverage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 138377
        mmTop = 41010
        mmWidth = 23284
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalPercent: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalPercent'
        Caption = 'ppTotalPercent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 138642
        mmTop = 47361
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalUnits: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalUnits'
        Caption = 'ppTotalUnits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 142611
        mmTop = 53711
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalUnitMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalUnitMoney'
        Caption = 'ppTotalUnitMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 60061
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalMins: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalMins'
        Caption = 'ppTotalMins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 143140
        mmTop = 66411
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalMinsMoney: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalMinsMoney'
        Caption = 'ppTotalMinsMoney'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 132821
        mmTop = 72761
        mmWidth = 28840
        BandType = 7
        LayerName = Foreground2
      end
      object ppTotalHours: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppTotalHours'
        Caption = 'ppTotalHours'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 141552
        mmTop = 79904
        mmWidth = 20109
        BandType = 7
        LayerName = Foreground2
      end
      object ppDaysWorked: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppDaysWorked'
        Caption = 'ppDaysWorked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 71702
        mmTop = 103452
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground2
      end
      object ppHoursWorked: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppHoursWorked'
        Caption = 'ppHoursWorked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 70644
        mmTop = 109009
        mmWidth = 24606
        BandType = 7
        LayerName = Foreground2
      end
      object ppUnitsWorked: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppUnitsWorked'
        Caption = 'ppUnitsWorked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 71702
        mmTop = 114565
        mmWidth = 23548
        BandType = 7
        LayerName = Foreground2
      end
      object ppMoneyWorked: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'ppMoneyWorked'
        Caption = 'ppMoneyWorked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 69321
        mmTop = 120386
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
