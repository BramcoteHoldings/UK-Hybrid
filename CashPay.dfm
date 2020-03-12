object frmCashpay: TfrmCashpay
  Left = 489
  Top = 206
  Caption = 'Payments Cashbook'
  ClientHeight = 655
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label19: TLabel
    Left = 12
    Top = 365
    Width = 96
    Height = 15
    Caption = 'Amount less than '
    Transparent = True
  end
  object sbarInfo: TStatusBar
    Left = 0
    Top = 629
    Width = 1118
    Height = 26
    Panels = <
      item
        Alignment = taRightJustify
        Width = 120
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object pagCashbook: TcxPageControl
    Left = 0
    Top = 28
    Width = 1118
    Height = 601
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ilstToolbar
    OnChange = pagCashbookChange
    OnPageChanging = pagCashbookPageChanging
    ClientRectBottom = 597
    ClientRectLeft = 4
    ClientRectRight = 1114
    ClientRectTop = 26
    object tabCashbook: TcxTabSheet
      Caption = 'Cashbook'
      ImageIndex = 0
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 251
        Width = 1110
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 58
        AlignSplitter = salBottom
        Control = Panel3
      end
      object Panel1: TPanel
        Left = 0
        Top = 259
        Width = 1110
        Height = 312
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1110
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label9: TLabel
            Left = 9
            Top = 6
            Width = 78
            Height = 20
            Caption = 'Allocations'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object rbMatters: TcxRadioButton
            Left = 134
            Top = 6
            Width = 66
            Height = 19
            Caption = '&Matters'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbMattersClick
            LookAndFeel.NativeStyle = True
          end
          object rbLedger: TcxRadioButton
            Left = 228
            Top = 6
            Width = 107
            Height = 19
            Caption = 'General &Ledger'
            TabOrder = 1
            OnClick = rbLedgerClick
            LookAndFeel.NativeStyle = True
          end
          object rbCreditors: TcxRadioButton
            Left = 358
            Top = 6
            Width = 110
            Height = 19
            Caption = 'Creditor &Invoices'
            TabOrder = 2
            OnClick = rbCreditorsClick
            LookAndFeel.NativeStyle = True
          end
        end
        object dbgrAllocations: TcxGrid
          Left = 0
          Top = 32
          Width = 1110
          Height = 280
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object tvAllocations: TcxGridDBTableView
            PopupMenu = mMoveMatter
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsAllocs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Background = cxStyle1
            Styles.Content = cxStyle1
            object tvAllocationsCODE: TcxGridDBColumn
              Caption = 'Reference'
              DataBinding.FieldName = 'CODE'
              Width = 100
            end
            object tvAllocationsDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Width = 385
            end
            object tvAllocationsAMOUNT: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 65
            end
            object tvAllocationsMRV_NALLOC: TcxGridDBColumn
              DataBinding.FieldName = 'MRV_NALLOC'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object dbgrAllocationsLevel1: TcxGridLevel
            GridView = tvAllocations
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 251
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1110
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            1110
            32)
          object Label10: TLabel
            Left = 9
            Top = 5
            Width = 69
            Height = 20
            Caption = 'Payments'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 1138
            Top = 8
            Width = 35
            Height = 15
            Anchors = [akTop, akRight]
            Caption = '&Search'
            Transparent = True
            ExplicitLeft = 848
          end
          object tbSearch: TEdit
            Left = 1186
            Top = 5
            Width = 60
            Height = 23
            Anchors = [akTop, akRight]
            TabOrder = 0
            OnChange = tbSearchChange
            OnKeyDown = tbSearchKeyDown
          end
        end
        object dbgrCheques: TcxGrid
          Left = 0
          Top = 32
          Width = 1110
          Height = 219
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object tvCheques: TcxGridDBTableView
            PopupMenu = popCheque
            OnDblClick = dbgrChequesDblClick
            OnKeyDown = dbgrChequesKeyDown
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnFocusedRecordChanged = tvChequesFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dsCheques
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnGroupingChanged = tvChequesDataControllerGroupingChanged
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            Styles.OnGetContentStyle = tvChequesStylesGetContentStyle
            OnColumnHeaderClick = tvChequesColumnHeaderClick
            object tvChequesACCT: TcxGridDBColumn
              Caption = 'Bank'
              DataBinding.FieldName = 'ACCT'
              Options.Grouping = False
              Width = 28
            end
            object tvChequesCREATED: TcxGridDBColumn
              Caption = 'Transaction Date'
              DataBinding.FieldName = 'CREATED'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Grouping = False
              Width = 60
            end
            object tvChequesCHQNO: TcxGridDBColumn
              Caption = 'Cheque#'
              DataBinding.FieldName = 'CHQNO'
              Width = 54
            end
            object tvChequesPAYEE: TcxGridDBColumn
              Caption = 'Payee'
              DataBinding.FieldName = 'PAYEE'
              Options.Grouping = False
              Width = 165
            end
            object tvChequesDESCR: TcxGridDBColumn
              Caption = 'Reason'
              DataBinding.FieldName = 'DESCR'
              Options.Grouping = False
              Width = 170
            end
            object tvChequesAMOUNT: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Options.Grouping = False
              Width = 71
            end
            object tvChequesREVERSED: TcxGridDBColumn
              DataBinding.FieldName = 'REVERSED'
              Visible = False
              Options.Grouping = False
            end
            object tvChequesTYPE: TcxGridDBColumn
              DataBinding.FieldName = 'TYPE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              VisibleForCustomization = False
            end
            object tvChequesPRINTED: TcxGridDBColumn
              DataBinding.FieldName = 'PRINTED'
              Visible = False
              Options.Grouping = False
              Options.Moving = False
            end
            object tvChequesPRINTER: TcxGridDBColumn
              DataBinding.FieldName = 'PRINTER'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
            end
            object tvChequesNCHEQUE: TcxGridDBColumn
              DataBinding.FieldName = 'NCHEQUE'
              Visible = False
            end
            object tvChequesCHEQUE_NO: TcxGridDBColumn
              Caption = 'Cheque'
              DataBinding.FieldName = 'CHEQUE_NO'
              MinWidth = 70
              Width = 70
            end
            object tvChequesPRESENTED: TcxGridDBColumn
              Caption = 'Presented'
              DataBinding.FieldName = 'PRESENTED'
              VisibleForCustomization = False
            end
          end
          object dbgrChequesLevel1: TcxGridLevel
            GridView = tvCheques
          end
        end
      end
    end
    object tabPresent: TcxTabSheet
      Caption = 'Present'
      ImageIndex = 2
      TabVisible = False
      object dblblAcct: TDBText
        Left = 326
        Top = 17
        Width = 52
        Height = 18
        DataField = 'ACCT'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblAmount: TDBText
        Left = 129
        Top = 34
        Width = 69
        Height = 19
        DataField = 'AMOUNT'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblChqno: TDBText
        Left = 129
        Top = 17
        Width = 78
        Height = 18
        DataField = 'CHQNO'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblCreated: TDBText
        Left = 223
        Top = 17
        Width = 89
        Height = 18
        DataField = 'CREATED'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblDesc: TDBText
        Left = 129
        Top = 69
        Width = 215
        Height = 18
        DataField = 'DESCR'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblPayee: TDBText
        Left = 129
        Top = 51
        Width = 215
        Height = 19
        DataField = 'PAYEE'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dblblPresented: TDBText
        Left = 129
        Top = 86
        Width = 215
        Height = 18
        DataField = 'PresentDate'
        DataSource = dsCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 34
        Top = 146
        Width = 71
        Height = 15
        Caption = 'Presented On'
        Transparent = True
      end
      object Label12: TLabel
        Left = 34
        Top = 17
        Width = 41
        Height = 15
        Caption = 'Cheque'
        Transparent = True
      end
      object Label13: TLabel
        Left = 34
        Top = 51
        Width = 31
        Height = 15
        Caption = 'Payee'
        Transparent = True
      end
      object Label14: TLabel
        Left = 34
        Top = 69
        Width = 38
        Height = 15
        Caption = 'Reason'
        Transparent = True
      end
      object Label15: TLabel
        Left = 34
        Top = 34
        Width = 44
        Height = 15
        Caption = 'Amount'
        Transparent = True
      end
      object Label16: TLabel
        Left = 34
        Top = 86
        Width = 52
        Height = 15
        Caption = 'Presented'
        Transparent = True
      end
      object btnPresent: TBitBtn
        Left = 254
        Top = 139
        Width = 78
        Height = 27
        Caption = 'Present'
        Default = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
          030300FEFEFEFEFEFE00030303030303030300000000000000000303030303F9
          000300FBFFFBFFFBFF0003030303F9F9F900FBFFFBFFFBFFFB0003030303F9F9
          F900FF00FFFBFFFBFF00030303F9F9F9F9F90000FBFFFBFF00F90303F9F9F9F9
          F9F90000FF00FF00FC0003A4F9F90003F9F9F900FB0000FC0000A4F900000000
          00F9F900FF00FC000000FFFFFFFFFFFFFFF9F900FB0000FFFF00FFFFFFFFFFFF
          FFFFF9F90000FFFFFF00FEFEFEFEFEFEFEFE00A4F900FEFEFF00FFFFFFFFFFFF
          FFFFFC00A4F900FFFF00FEFEFEFEFEFEFE00FEFEFEFEF9F90000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000}
        ModalResult = 8
        TabOrder = 0
        OnClick = btnPresentClick
      end
      object dbnPresent: TDBNavigator
        Left = 129
        Top = 111
        Width = 136
        Height = 20
        DataSource = dsCheques
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
      object dtpPresent: TDateTimePicker
        Left = 129
        Top = 141
        Width = 120
        Height = 23
        Date = 37582.715492256900000000
        Time = 37582.715492256900000000
        TabOrder = 2
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 12
      object lblBank: TLabel
        Left = 9
        Top = 19
        Width = 26
        Height = 15
        Caption = 'Bank'
        Transparent = True
      end
      object Label1: TLabel
        Left = 9
        Top = 50
        Width = 55
        Height = 15
        Caption = 'Date From'
        Transparent = True
      end
      object Label2: TLabel
        Left = 9
        Top = 76
        Width = 39
        Height = 15
        Caption = 'Date To'
        Transparent = True
      end
      object Label6: TLabel
        Left = 9
        Top = 101
        Width = 119
        Height = 15
        Caption = 'Cheque Number From'
        Transparent = True
      end
      object Label7: TLabel
        Left = 9
        Top = 126
        Width = 103
        Height = 15
        Caption = 'Cheque Number To'
        Transparent = True
      end
      object Label18: TLabel
        Left = 9
        Top = 152
        Width = 145
        Height = 15
        AutoSize = False
        Caption = 'Cheque Number contains'
        Transparent = True
      end
      object Label3: TLabel
        Left = 9
        Top = 178
        Width = 78
        Height = 15
        Caption = 'Payee includes'
        Transparent = True
      end
      object Label4: TLabel
        Left = 9
        Top = 203
        Width = 107
        Height = 15
        Caption = 'Description includes'
        Transparent = True
      end
      object lblAmountFrom: TLabel
        Left = 9
        Top = 229
        Width = 151
        Height = 15
        Caption = 'Amount equal or more than '
        Transparent = True
      end
      object Label5: TLabel
        Left = 9
        Top = 255
        Width = 145
        Height = 15
        Caption = 'Amount equal or  less than '
        Transparent = True
      end
      object Label20: TLabel
        Left = 8
        Top = 281
        Width = 57
        Height = 15
        Caption = 'Matter No.'
        Transparent = True
      end
      object Label8: TLabel
        Left = 9
        Top = 308
        Width = 74
        Height = 15
        Caption = 'Authorized by'
        Transparent = True
      end
      object lblAuthByName: TLabel
        Left = 223
        Top = 311
        Width = 3
        Height = 15
        Transparent = True
      end
      object lblBankName: TLabel
        Left = 251
        Top = 19
        Width = 3
        Height = 15
        Transparent = True
      end
      object Label21: TLabel
        Left = 231
        Top = 288
        Width = 3
        Height = 15
        Transparent = True
      end
      object Label22: TLabel
        Left = 230
        Top = 28
        Width = 3
        Height = 15
        Transparent = True
      end
      object Label23: TLabel
        Left = 337
        Top = 281
        Width = 31
        Height = 15
        Caption = 'Client'
        Transparent = True
      end
      object cbBank: TComboBox
        Left = 180
        Top = 15
        Width = 61
        Height = 23
        TabOrder = 0
        OnChange = cbBankChange
        OnClick = cbBankClick
      end
      object chkDateFrom: TCheckBox
        Left = 180
        Top = 48
        Width = 16
        Height = 18
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object dtpDateFrom: TDateTimePicker
        Left = 197
        Top = 46
        Width = 113
        Height = 23
        Date = 0.847006782409152900
        Time = 0.847006782409152900
        TabOrder = 2
      end
      object chkDateTo: TCheckBox
        Left = 180
        Top = 74
        Width = 16
        Height = 18
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object dtpDateTo: TDateTimePicker
        Left = 197
        Top = 72
        Width = 113
        Height = 23
        Date = 0.847006782409152900
        Time = 0.847006782409152900
        TabOrder = 4
      end
      object dcToday: TDateChangeButton
        Left = 314
        Top = 46
        Width = 86
        Height = 23
        Caption = 'Today'
        TabOrder = 5
        TabStop = False
        ChangeType = ctToday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton2: TDateChangeButton
        Left = 314
        Top = 72
        Width = 86
        Height = 22
        Caption = 'Yesterday'
        TabOrder = 6
        TabStop = False
        ChangeType = ctYesterday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton4: TDateChangeButton
        Left = 401
        Top = 46
        Width = 85
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
      object DateChangeButton3: TDateChangeButton
        Left = 401
        Top = 72
        Width = 85
        Height = 22
        Caption = 'Last Week'
        TabOrder = 8
        TabStop = False
        ChangeType = ctLastWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton5: TDateChangeButton
        Left = 488
        Top = 46
        Width = 85
        Height = 23
        Caption = 'This Month'
        TabOrder = 9
        TabStop = False
        ChangeType = ctThisMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton6: TDateChangeButton
        Left = 488
        Top = 72
        Width = 85
        Height = 22
        Caption = 'Last Month'
        TabOrder = 10
        TabStop = False
        ChangeType = ctLastMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton7: TDateChangeButton
        Left = 575
        Top = 46
        Width = 86
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
      object DateChangeButton8: TDateChangeButton
        Left = 575
        Top = 72
        Width = 86
        Height = 22
        Caption = 'Last Year'
        TabOrder = 12
        TabStop = False
        ChangeType = ctLastYear
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object rgOrderby: TcxRadioGroup
        Left = 420
        Top = 101
        Caption = 'Order by'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Date'
          end
          item
            Caption = 'Cheque Number'
          end>
        ItemIndex = 1
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 13
        Transparent = True
        Height = 43
        Width = 241
      end
      object tbChqnoFrom: TEdit
        Left = 180
        Top = 98
        Width = 130
        Height = 23
        TabOrder = 14
      end
      object tbChqnoTo: TEdit
        Left = 180
        Top = 123
        Width = 130
        Height = 23
        TabOrder = 15
        OnEnter = tbChqnoToEnter
      end
      object tbChqNoLike: TEdit
        Left = 180
        Top = 149
        Width = 130
        Height = 23
        TabOrder = 16
        OnEnter = tbChqnoToEnter
      end
      object tbPayee: TEdit
        Left = 180
        Top = 175
        Width = 130
        Height = 23
        TabOrder = 17
      end
      object tbDesc: TEdit
        Left = 180
        Top = 200
        Width = 130
        Height = 23
        TabOrder = 18
      end
      object tbAmountFrom: TEdit
        Left = 180
        Top = 226
        Width = 130
        Height = 23
        TabOrder = 19
      end
      object tbAmountTo: TEdit
        Left = 180
        Top = 252
        Width = 130
        Height = 23
        TabOrder = 20
      end
      object edtMatter: TEdit
        Left = 180
        Top = 278
        Width = 130
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 21
      end
      object cbAuthby: TComboBox
        Left = 180
        Top = 305
        Width = 61
        Height = 23
        TabOrder = 22
        OnClick = cbAuthbyClick
      end
      object chkUnpresented: TcxCheckBox
        Left = 178
        Top = 331
        Caption = 'Select Unpresented Cheques'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 23
        Transparent = True
      end
      object chkUnprinted: TcxCheckBox
        Left = 178
        Top = 354
        Caption = 'Select Unprinted Cheques'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 24
        Transparent = True
      end
      object chkEFTOnly: TcxCheckBox
        Left = 178
        Top = 375
        Caption = 'E.F.T. only'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 25
        Transparent = True
      end
      object chkPresentedChequesOnly: TcxCheckBox
        Left = 385
        Top = 331
        Caption = 'Select Presented Cheques Only'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 26
        Transparent = True
      end
      object chkNoReversals: TcxCheckBox
        Left = 385
        Top = 354
        Caption = 'Exclude Reversals'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 27
        Transparent = True
      end
      object edClient: TEdit
        Left = 388
        Top = 278
        Width = 130
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 28
      end
    end
  end
  object qryAllocs: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ALLOC'
      '  (TYPE)'
      'VALUES'
      '  (:TYPE)')
    SQLDelete.Strings = (
      'DELETE FROM ALLOC'
      'WHERE'
      '  NALLOC = :NALLOC')
    SQLUpdate.Strings = (
      'UPDATE ALLOC'
      'SET'
      '  TYPE = :TYPE'
      'WHERE'
      '  NALLOC = :OLD_NALLOC')
    SQLLock.Strings = (
      'SELECT * FROM ALLOC'
      'WHERE'
      '  NALLOC = :NALLOC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NALLOC = :NALLOC')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT alloc.fileid AS "CODE",'
      
        '       (alloc.client_name || '#39' '#39' || alloc.matter_desc || '#39' '#39' || ' +
        'alloc.descr'
      '       ) AS descr,'
      
        '       ((alloc.amount + alloc.tax) * -1) AS "AMOUNT", alloc.nall' +
        'oc, alloc.billed, alloc.trust,'
      
        '       alloc.descr AS alloc_descr, tax, TYPE, alloc.taxcode, all' +
        'oc.ncheque,'
      
        '       alloc.nmemo, (alloc.amount * -1) as amount_extax, nvl(mrv' +
        '_nalloc, 0) mrv_nalloc '
      '  FROM alloc'
      ' WHERE ncheque = :p_ncheque AND ncheque <> 0'
      ''
      '/*'
      
        'SELECT ALLOC.FILEID AS "CODE", (ALLOC.CLIENT_NAME || '#39' '#39' || ALLO' +
        'C.MATTER_DESC || '#39' '#39' || ALLOC.DESCR) AS DESCR, ALLOC.AMOUNT AS "' +
        'AMOUNT",'
      
        'ALLOC.NALLOC,ALLOC.BILLED,ALLOC.TRUST,ALLOC.DESCR as ALLOC_DESCR' +
        ',TAX,TYPE, ALLOC.TAXCODE, ALLOC.NCHEQUE, ALLOC.NMEMO'
      'FROM ALLOC WHERE NCHEQUE = :P_Ncheque AND NCHEQUE <> 0'
      '*/')
    Left = 409
    Top = 249
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object dsAllocs: TUniDataSource
    AutoEdit = False
    DataSet = qryAllocs
    Left = 453
    Top = 244
  end
  object dsCheques: TUniDataSource
    AutoEdit = False
    DataSet = qryCheques
    Left = 376
    Top = 248
  end
  object qryTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM(C.AMOUNT) AS AMT, COUNT(C.AMOUNT) AS CNT'
      'FROM CHEQUE C'
      'WHERE C.CREATED >= :P_DateFrom'
      '  AND C.CREATED <= :P_DateTo')
    Left = 351
    Top = 49
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
  object qryCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID '
      'FROM CHEQUE C '
      'WHERE C.CREATED >= :P_DateFrom '
      '  AND C.CREATED <= :P_DateTo')
    AfterScroll = qryChequesAfterScroll
    Left = 313
    Top = 247
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
        ' AS DESCR, TRANSITEM.AMOUNT AS "AMOUNT" , 0 as mrv_nalloc'
      'FROM TRANSITEM, CHART '
      'WHERE TRANSITEM.OWNER_CODE = '#39'CHEQUE'#39' '
      'AND TRANSITEM.NOWNER = :P_Ncheque '
      'AND TRANSITEM.NCHEQUE <> 0 '
      'AND TRANSITEM.CHART = CHART.CODE '
      'AND TRANSITEM.ACCT = CHART.BANK')
    Left = 447
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object dsNaccounts: TUniDataSource
    AutoEdit = False
    DataSet = qryNaccounts
    Left = 364
    Top = 184
  end
  object ilstToolbar: TImageList
    Left = 865
    Top = 85
    Bitmap = {
      494C01010D001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF000000000000000000000000000000000000000000000000000000000000
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
      600080606000000000000000000000000000000000000000000000000000A4A0
      A0003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E00A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C2000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000007A7A
      7A00B1FFFF0048FFFF0048FFFF0048FFFF0048FFFF0048FFFF0048FFFF0048FF
      FF0048FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D600000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000007A7A
      7A00B1FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FF
      FF00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C0001015200717171000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000007A7A
      7A00B1FFFF00D4FFFF007A7A7A00D4FFFF007A7A7A007A7A7A007A7A7A007A7A
      7A00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E45000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000007A7A
      7A00B1FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FF
      FF00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000000000000000
      0000B1FFFF00D4FFFF007A7A7A00D4FFFF007A7A7A007A7A7A007A7A7A007A7A
      7A00D4FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C0008060600000000000000000000000FF000000
      FF0000000000B1FFFF00B1FFFF00B1FFFF00B1FFFF00B1FFFF00B1FFFF00B1FF
      FF00B1FFFF0048FFFF003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B80011117800000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C0008060600000000000000000000000FF000000FF000000
      FF000000FF00000000007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F00000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      80008060600080606000000000000000000000000000000000000000FF000000
      FF00000000007A7A7A000000000048FFFF002626260048FFFF007A7A7A0048FF
      FF007A7A7A0048FFFF007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F8500000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000B1FFFF00B1FFFF00B1FFFF00B1FFFF0000000000B1FFFF00B1FF
      FF00B1FFFF00B1FFFF007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000007A7A7A007A7A7A0000000000000000007A7A7A007A7A
      7A007A7A7A007A7A7A00A4A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE0000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD00000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000009C9CCE009C9CCE009C9CCE009C9CCE009C9CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9CCE009C9CCE009C9CCE009C9CCE009C9CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000009C9CCE009C9CCE00C6D6EF00C6C6C600C6C6C600C6C6C6009C9C
      CE009C9CCE000000000000000000000000008400000084000000840000008400
      0000000000009C9CCE009C9CCE00C6D6EF00C6C6C600C6C6C600C6C6C6009C9C
      CE009C9CCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000CE313100CE313100CE3131008400
      00009C9CCE00C6D6EF00C6D6EF00C6C6C6007373730073737300000000000000
      000000000000000000000000000000000000CE313100CE313100CE3131008400
      00009C9CCE00C6D6EF00C6D6EF00C6C6C6007373730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE633100CE633100CE6331008400
      0000B5B5B500C6D6EF00F7FFFF009C9CCE000000FF0000000000000000000000
      000000000000000000000000000000000000CE633100CE633100CE6331008400
      0000B5B5B500C6D6EF00F7FFFF009C9CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C63008400
      00007373730073737300737373000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C63008400
      0000737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000000000000000000008400000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000FF000000FF0000000000FFFF00000000FF000000FF000000
      FF0000000000FFFF0000FFFFFF0000000000FFFF0000FFFF0000FFFF00008400
      00008400000084000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000084000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF008400
      000084000000FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000FF000000
      FF000000000000000000FFFFFF0000000000FFFF0000FFFF0000FFFF00008400
      0000FFFF0000FFFF0000FFFF00008400000084000000FFFF0000FFFF0000FFFF
      0000FFFF000084000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      000084000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000FF000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000084848400000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00008400000084848400000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000008484840084848400000000008484
      84000000FF000000FF000000FF008484840000FFFF0000FFFF0000FFFF008484
      8400FF000000FF000000FF000000848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000000000000000000000000000848484000000FF000000
      FF0000000000000000000000FF000000FF000000FF000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000848484000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      000084000000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008484840084848400000000008484
      8400000000000000000000000000848484008484840084848400848484008484
      8400FF000000FF000000FF00000084848400FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084848400000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000848484000000FF000000
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000848484000000
      FF0000000000FFFFFF00FFFFFF00000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840084848400000000008484
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
      000000000000000000000000FFFFFF00FFFF000000000000FF1F000000000000
      FF1F000000000000FF1F000000000000FF1F000000000000FE0F000000000000
      0007000000000000000300000000000000000000000000000000000000000000
      0000000000000000000F000000000000000F000000000000000F000000000000
      000F000000000000FFFF000000000000F80FF03FFFFFFFFFE007E007E001FFFF
      C003C000E001FFFF80018000E001FFFF80010000E001FFFF00010000E001BE8D
      00010000C0019EBA0001800080010EDE0001E001000106DD0001F00300010EEE
      0001F01F80019CAA0001E03FC001BEDD8003E03FC03FFFFFC003C03FE07FFFFF
      E00FC07FF0FFFFFFF01FF8FFFFFFFFFFFFFFFFFFFC1FFC1FC007FE7F08070807
      BFEBFC3F000700070005FC3F000700077E31FE7F003F00FF7E35FC3F001F01FF
      0006FC3F0E1F0FFB7FEAFC3FFC0FE0FB8014FC1F00000000C00AF20F00000000
      E001E10700000000E007E18700000000F007E00700000000F003F00F00000000
      F803F81F00000000FFFFFFFF00000000FF00FFFFFF00F111FF00FFFFFF00FFFF
      FF00FFFFF9000000FE00FFFFF000D111FE00FFFFF0009111FE00FFE7E000D111
      FF00C1F3C0000000FF80C3FB8400D1110000C7FB000091F10000CBFB0000D1F1
      0000DCF3000000000000FF070000DFF10000FFFF00009FF10000FFFF0000DFFF
      0000FFFF000000000000FFFF0000FFFF00000000000000000000000000000000
      000000000000}
  end
  object qryBarCheques: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, SUM(AMOUNT) AS TotalChqs FROM CHEQUE WHERE REVER' +
        'SED <> '#39'Y'#39' AND CREATED >= :P_DateFrom AND CREATED <= :P_DateTo G' +
        'ROUP BY CREATED')
    Left = 398
    Top = 184
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
    Left = 430
    Top = 184
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
    Left = 463
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object mMoveMatter: TPopupMenu
    OnPopup = mMoveMatterPopup
    Left = 601
    Top = 102
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
      
        '          :TYPE, a.nclient, a.njournal, a.payer, a.trust, :bille' +
        'd, :fileid,'
      
        '          a.ntrans, a.nmemo, a.client_name, SYSDATE, a.matter_de' +
        'sc,'
      
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
    Left = 496
    Top = 185
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 298
    Top = 144
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyleR: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleG: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clGreen
    end
    object cxStyleD: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindowText
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = mMoveMatter
      end>
    Left = 639
    Top = 252
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
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 297
    Top = 57
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'File1'
        end>
      OldName = 'Main Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = False
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
      FloatLeft = 155
      FloatTop = 279
      FloatClientWidth = 92
      FloatClientHeight = 44
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
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnPresent'
        end
        item
          Visible = True
          ItemName = 'tbtnBatchPresent'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnEFTFile'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrintAllCheques'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'mnuFilePrintCashBookWithAllocs'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Graph'
      Category = 0
      Hint = 'Graph of Cheques vs. Receipts'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = tbtnBarGraphClick
    end
    object tbtnPresent: TdxBarButton
      Caption = 'Present Selected Cheque'
      Category = 0
      Enabled = False
      Hint = 'Present Selected Cheque'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = tbtnPresentClick
    end
    object bbtnEFTFile: TdxBarButton
      Caption = 'Generate EFT File'
      Category = 0
      Enabled = False
      Hint = 'Generate EFT File'
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = bbtnEFTFileClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Export to Excel'
      Category = 0
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarPrintSelectedCheque: TdxBarSubItem
      Caption = 'Print Selected Cheque'
      Category = 0
      Enabled = False
      Hint = 
        'Prints only one cheque - the highlighted one, but only if it has' +
        ' not previously been printed.'
      Visible = ivAlways
      OnClick = mnuFilePrintChequeClick
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFilePrintAllCheques'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintAllocations'
        end>
    end
    object tbtnNew: TdxBarButton
      Caption = 'New Cheque'
      Category = 1
      Hint = 'Create a New Payment Entry (Cheque)'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = mnuFileNewClick
    end
    object mnuFilePrintCheque: TdxBarButton
      Caption = 'Print Selected Cheque'
      Category = 1
      Hint = 
        'Prints only one cheque - the highlighted one, but only if it has' +
        ' not previously been printed.'
      Visible = ivAlways
      OnClick = mnuFilePrintChequeClick
    end
    object mnuFilePrintAllCheques: TdxBarButton
      Caption = 'Print All Cheques'
      Category = 1
      Enabled = False
      Hint = 'Use Filter to Select a Subset'
      Visible = ivAlways
      OnClick = mnuFilePrintAllChequesClick
    end
    object mnuFilePrintAllocations: TdxBarButton
      Caption = 'Print Payment Allocations'
      Category = 1
      Hint = 'Print Payment Allocations'
      Visible = ivAlways
      OnClick = mnuFilePrintAllocationsClick
    end
    object mnuFilePrintCashBook: TdxBarSubItem
      Caption = 'Print All Payments as a Cashbook'
      Category = 1
      Enabled = False
      Hint = 'Use Filter to Specify Bank Account and Date Ranges'
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFilePrintCashBookWithAllocs'
        end
        item
          Visible = True
          ItemName = 'mnuFilePrintCashBookWithoutAllocs'
        end>
    end
    object mnuFilePrintCashBookWithAllocs: TdxBarButton
      Caption = 'Print Payments Cashbook'
      Category = 1
      Enabled = False
      Hint = 'Print All Payments as a Cashbook'
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = tbtnPrintClick
    end
    object mnuFilePrintCashBookWithoutAllocs: TdxBarButton
      Caption = 'Exclude Allocations'
      Category = 1
      Hint = 'Exclude Allocations'
      Visible = ivAlways
    end
    object tbtnBatchPresent: TdxBarButton
      Caption = 'Batch Present Cheques'
      Category = 1
      Enabled = False
      Hint = 'Batch Present Cheques'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = tbtnBatchPresentClick
    end
    object tbtnReverse: TdxBarButton
      Action = actReverse
      Category = 1
    end
    object mnuFileExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close current screen'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = mnuFileExitClick
    end
    object btnRenumberCheque: TdxBarButton
      Caption = 'Re - Number Cheque Selected'
      Category = 1
      Hint = 'Re - Number Cheque Selected'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = btnRenumberChequeClick
    end
    object Help2: TdxBarButton
      Caption = 'Help '
      Category = 2
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 112
    end
    object HowtoCreateaPayment1: TdxBarButton
      Caption = 'How to Create a Payment'
      Category = 2
      Hint = 'Press F5 to create a New Cheque'
      Visible = ivAlways
    end
    object HowtoFindaCheque1: TdxBarButton
      Caption = 'How to Find a Cheque'
      Category = 2
      Hint = 'Use the Filter Tab to Select only some Cheques'
      Visible = ivAlways
    end
    object HowtoCancelaCheque1: TdxBarButton
      Caption = 'How to Cancel a Cheque'
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
          ItemName = 'bbtnEFTFile'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnBatchPresent'
        end
        item
          Visible = True
          ItemName = 'tbtnReverse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
      OnPopup = File1Popup
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
  object plCheqReq: TppDBPipeline
    DataSource = OraDataSource1
    UserName = 'plCheqReq'
    Left = 811
    Top = 212
  end
  object plAlloc: TppDBPipeline
    DataSource = dsAllocs
    SkipWhenNoRecords = False
    UserName = 'plAlloc'
    Left = 602
    Top = 176
  end
  object popCheque: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'mnuFilePrintCheque'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnPresent'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'tbtnReverse'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnRenumberCheque'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    OnPopup = popChequePopup
    Left = 679
    Top = 11
    PixelsPerInch = 96
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = popCheque
      end>
    UseBuiltInPopupMenus = False
    Left = 860
    Top = 13
  end
  object ppPrintpay: TppReport
    AutoStop = False
    DataPipeline = plCheqReq
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
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppPrintpayBeforePrint
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
    Left = 697
    Top = 185
    Version = '20.01'
    mmColumnWidth = 0
    DataPipelineName = 'plCheqReq'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        Shape = stRoundRect
        mmHeight = 6085
        mmLeft = 0
        mmTop = 9260
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date Recorded'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 28046
        mmWidth = 21961
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cheque#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 22228
        mmTop = 23283
        mmWidth = 13230
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.Weight = 1.000000000000000000
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
        mmLeft = 39952
        mmTop = 23548
        mmWidth = 7409
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Payee'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 50271
        mmTop = 23548
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.Weight = 1.000000000000000000
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
        mmLeft = 50271
        mmTop = 28310
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Allocation Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 70644
        mmTop = 32808
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Presented'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 240242
        mmTop = 23548
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cheque Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 205582
        mmTop = 23283
        mmWidth = 23812
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Allocation Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 32808
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        OnGetText = ppLabel14GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Label25'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 17198
        mmWidth = 281517
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cash Payment Book'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 1852
        mmTop = 10054
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        OnGetText = ppLabel27GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'W'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 2117
        mmWidth = 4497
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 36513
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 22490
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
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
        mmHeight = 3968
        mmLeft = 1055
        mmTop = 23538
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plCheqReq
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6093
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CHQNO'
        DataPipeline = plCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 20638
        mmTop = 1323
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ACCT'
        DataPipeline = plCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 1323
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PAYEE'
        DataPipeline = plCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 50536
        mmTop = 1323
        mmWidth = 89694
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = plCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 3979
        mmLeft = 50536
        mmTop = 6085
        mmWidth = 148432
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PresentDate'
        DataPipeline = plCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 240242
        mmTop = 1323
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plCheqReq
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 207434
        mmTop = 1323
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'plAlloc'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12171
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plAlloc
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
          Version = '20.01'
          mmColumnWidth = 0
          DataPipelineName = 'plAlloc'
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppRegion1: TppRegion
              DesignLayer = ppDesignLayer2
              UserName = 'Region1'
              Brush.Style = bsClear
              ParentWidth = True
              Pen.Style = psClear
              Pen.Width = 0
              Stretch = True
              Transparent = True
              mmHeight = 5821
              mmLeft = 0
              mmTop = 0
              mmWidth = 284300
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'TAXCODE'
              DataPipeline = plAlloc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plAlloc'
              mmHeight = 4064
              mmLeft = 11113
              mmTop = 1058
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'CODE'
              DataPipeline = plAlloc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plAlloc'
              mmHeight = 3979
              mmLeft = 33338
              mmTop = 1058
              mmWidth = 22490
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'DESCR'
              DataPipeline = plAlloc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plAlloc'
              mmHeight = 3969
              mmLeft = 57679
              mmTop = 1058
              mmWidth = 120915
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'AMOUNT'
              DataPipeline = plAlloc
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plAlloc'
              mmHeight = 3979
              mmLeft = 181769
              mmTop = 1058
              mmWidth = 18256
              BandType = 4
              LayerName = Foreground1
            end
          end
          object raCodeModule1: TraCodeModule
            object raProgramInfo1: TraProgramInfo
              raClassName = 'TraEventHandler'
              raProgram.ProgramName = 'DBText2OnPrint'
              raProgram.ProgramType = ttProcedure
              raProgram.Source = 
                'procedure DBText2OnPrint;'#13#10'var'#13#10'   LineNo: integer;'#13#10'begin'#13#10'   D' +
                'BText2.Height := 4;'#13#10'   if Length(plAlloc['#39'DESCR'#39']) > 80 then'#13#10' ' +
                '  begin'#13#10'     LineNo := (Length(plAlloc['#39'DESCR'#39'])/80);'#13#10'     DBT' +
                'ext2.Height := 4 * (LineNo+1);'#13#10'   end;'#13#10'end;'#13#10
              raProgram.ComponentName = 'DBText2'
              raProgram.EventName = 'OnPrint'
              raProgram.EventID = 32
            end
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
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'SYSTEM_DATE'
        DataPipeline = plCheqReq
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 228865
        mmTop = 794
        mmWidth = 10319
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 241830
        mmTop = 794
        mmWidth = 34925
        BandType = 8
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 1058
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CHQNO'
        DataPipeline = plCheqReq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plCheqReq'
        mmHeight = 4191
        mmLeft = 16404
        mmTop = 1323
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 27252
        mmTop = 1323
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Presented:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 84931
        mmTop = 1323
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PresentAmount'
        DataPipeline = plCheqReq
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4022
        mmLeft = 167746
        mmTop = 1588
        mmWidth = 32279
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plCheqReq
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReq'
        mmHeight = 4191
        mmLeft = 205317
        mmTop = 1323
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 5027
        mmWidth = 284300
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
  object qryChequesRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT PRINTER, NCHEQUE, CREATED, ACCT, TYPE, PAYEE, CHQNO, APPR' +
        'OVAL, REQBY, '
      
        '   RVBY, REVERSED, NTRANS, BANKED, TRUST, SUFCHQ, PRESENTED, DES' +
        'CR, SYSTEM_DATE, '
      
        '   PRINTED, RECONDATE, NNAME, AMOUNT, EFT, CHEQUE_GROUP_ID, CHEQ' +
        'UE_NO, TAKE_ON, '
      '   NJOURNAL, WHO, '
      '   case when REVERSED = '#39'Y'#39' then '
      '     case when TYPE = '#39'RV'#39' then '#39'Reversal'#39
      '     else '#39'Cancelled'#39
      '     end'
      '   else'
      
        '     case when PRESENTED is not null then to_char(PRESENTED,'#39'dd/' +
        'mm/yyyy'#39')'
      '     else '#39'Unpresented'#39' end '
      '   end as PresentDate,'
      '   case when REVERSED = '#39'Y'#39' then 0.00'
      '   else'
      '     case when PRESENTED is not null then Amount'
      '     else 0.00'
      '     end'
      '   end as PresentAmount'
      'FROM CHEQUE '
      'WHERE CREATED >= :P_DateFrom '
      '  AND CREATED <= :P_DateTo')
    Active = True
    AfterScroll = qryChequesRptAfterScroll
    Left = 518
    Top = 271
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
  object OraDataSource1: TUniDataSource
    DataSet = qryChequesRpt
    Left = 571
    Top = 254
  end
  object qryAllocsRpt: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ALLOC'
      '  (TYPE)'
      'VALUES'
      '  (:TYPE)')
    SQLDelete.Strings = (
      'DELETE FROM ALLOC'
      'WHERE'
      '  NALLOC = :NALLOC')
    SQLUpdate.Strings = (
      'UPDATE ALLOC'
      'SET'
      '  TYPE = :TYPE'
      'WHERE'
      '  NALLOC = :OLD_NALLOC')
    SQLLock.Strings = (
      'SELECT * FROM ALLOC'
      'WHERE'
      '  NALLOC = :NALLOC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NALLOC = :NALLOC')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.FILEID AS "CODE", trim(CLIENT_NAME || '#39' '#39' || MATTER' +
        '_DESC ||'#39' - '#39'|| ALLOC.DESCR) AS DESCR, ALLOC.AMOUNT AS "AMOUNT",'
      
        'ALLOC.NALLOC,ALLOC.BILLED,ALLOC.TRUST,ALLOC.DESCR as ALLOC_DESCR' +
        ',TAX,TYPE, ALLOC.TAXCODE, ALLOC.NCHEQUE'
      'FROM ALLOC WHERE NCHEQUE = :P_Ncheque AND NCHEQUE <> 0'
      '')
    Left = 534
    Top = 342
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object dsAllocsRpt: TUniDataSource
    AutoEdit = False
    DataSet = qryAllocsRpt
    Left = 625
    Top = 344
  end
  object qryNaccountsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CHART.COMPONENT_CODE_DISPLAY AS "CODE", CHART.REPORT_DESC' +
        ' AS DESCR, TRANSITEM.AMOUNT AS "AMOUNT", NCHEQUE '
      'FROM TRANSITEM, CHART '
      
        'WHERE TRANSITEM.OWNER_CODE = '#39'CHEQUE'#39' AND TRANSITEM.NOWNER = :P_' +
        'Ncheque AND '
      'TRANSITEM.NCHEQUE <> 0 AND'
      'TRANSITEM.CHART = CHART.CODE AND TRANSITEM.ACCT = CHART.BANK'
      '')
    Left = 427
    Top = 478
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object dsNaccountsRpt: TUniDataSource
    AutoEdit = False
    DataSet = qryNaccountsRpt
    Left = 555
    Top = 485
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 73
    Top = 461
  end
  object qryCreditors: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select i.creditor as "CODE", '#39'Invoice: '#39'|| i.refno || '#39' Date: '#39' ' +
        '|| to_char(i.invoice_date, '#39'DD/MM/YYYY'#39') || '
      
        #39' Invoice amount: '#39' || to_char(i.amount, '#39'9,999.99'#39') as "DESCR",' +
        ' (t.amount + t.tax) as "AMOUNT", 0 as mrv_nalloc'
      'from cheque c, transitem t, invoice i'
      'where t.ncheque = c.ncheque and i.ninvoice = t.ninvoice'
      'and c.ncheque = :P_Ncheque')
    Left = 388
    Top = 134
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object dsCreditors: TUniDataSource
    DataSet = qryCreditors
    Left = 460
    Top = 134
  end
  object ActionManager1: TActionManager
    Images = ilstToolbar
    Left = 868
    Top = 286
    StyleName = 'Platform Default'
    object actReverse: TAction
      Caption = '&Reverse Selected Cheque'
      Enabled = False
      ImageIndex = 1
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
    end
  end
end
