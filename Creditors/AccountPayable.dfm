object frmAcctPayable: TfrmAcctPayable
  Left = 401
  Top = 132
  Caption = 'Account Payable'
  ClientHeight = 656
  ClientWidth = 1087
  Color = clBtnFace
  Constraints.MinHeight = 514
  Constraints.MinWidth = 698
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pagAcctPayable: TcxPageControl
    Left = 0
    Top = 28
    Width = 1087
    Height = 606
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tsFilter
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ilstToolbar
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    OnChange = pagAcctPayableChange
    ClientRectBottom = 602
    ClientRectLeft = 4
    ClientRectRight = 1083
    ClientRectTop = 26
    object tabAcctPayable: TcxTabSheet
      Caption = 'Accounts Payable'
      ImageIndex = 7
      object dbgrInvoices: TcxGrid
        Left = 0
        Top = 0
        Width = 1079
        Height = 313
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvInvoices: TcxGridDBTableView
          PopupMenu = popGrid
          OnMouseDown = tvInvoicesMouseDown
          Navigator.Buttons.CustomButtons = <>
          OnCanSelectRecord = tvInvoicesCanSelectRecord
          OnCellDblClick = tvInvoicesCellDblClick
          OnFocusedRecordChanged = tvInvoicesFocusedRecordChanged
          DataController.DataSource = dsAccounts
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Total for Cheque = $,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'OWING'
              Column = tvInvoicesOWING
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnGroupingChanged = tvInvoicesDataControllerGroupingChanged
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.FocusRect = False
          OptionsView.ColumnAutoWidth = True
          Styles.Group = cxStyleGroupHeader
          object tvInvoicesNAME: TcxGridDBColumn
            Caption = 'Creditor'
            DataBinding.FieldName = 'NAME'
            Options.Editing = False
            Options.Focusing = False
            Width = 121
          end
          object tvInvoicesCODE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CODE'
            Options.Editing = False
            Options.Focusing = False
            Width = 61
          end
          object tvInvoicesREFNO: TcxGridDBColumn
            Caption = 'Refno'
            DataBinding.FieldName = 'REFNO'
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 59
          end
          object tvInvoicesACCT: TcxGridDBColumn
            Caption = 'Entity'
            DataBinding.FieldName = 'ACCT'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 40
          end
          object tvInvoicesINVOICE_DATE: TcxGridDBColumn
            Caption = 'Invoice Date'
            DataBinding.FieldName = 'INVOICE_DATE'
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 79
          end
          object tvInvoicesDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 75
          end
          object tvInvoicesDUE_DATE: TcxGridDBColumn
            Caption = 'Due'
            DataBinding.FieldName = 'DUE_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 59
          end
          object tvInvoicesOWING: TcxGridDBColumn
            Caption = 'Owing'
            DataBinding.FieldName = 'OWING'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 69
          end
          object tvInvoicesPaid: TcxGridDBColumn
            DataBinding.FieldName = 'Paid'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 49
          end
          object tvInvoicesHeld: TcxGridDBColumn
            Caption = 'Held'
            DataBinding.FieldName = 'HOLD'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Grouping = False
            Options.Moving = False
            Width = 31
          end
          object tvInvoicesAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 46
          end
          object tvInvoicesPAY_BY_EFT: TcxGridDBColumn
            Caption = 'E.F.T.'
            DataBinding.FieldName = 'PAY_BY_EFT'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'Y'
            Properties.DisplayUnchecked = 'N'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Options.Grouping = False
            Width = 46
          end
          object tvInvoicesNINVOICE: TcxGridDBColumn
            DataBinding.FieldName = 'NINVOICE'
            Visible = False
            Options.Focusing = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object tvInvoicesINVOICE_COPY: TcxGridDBColumn
            Caption = 'Invoice'
            DataBinding.FieldName = 'INVOICE_COPY'
            PropertiesClassName = 'TcxBlobEditProperties'
            Width = 42
          end
        end
        object dbgrInvoicesLevel1: TcxGridLevel
          GridView = tvInvoices
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 313
        Width = 1079
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxSimpleStyle'
        HotZone.SizePercent = 55
        AlignSplitter = salTop
        Control = dbgrInvoices
      end
      object dbgrTransactions: TcxGrid
        Left = 0
        Top = 321
        Width = 1079
        Height = 255
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
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object tvTransactionsCHART: TcxGridDBColumn
            Caption = 'Chart'
            DataBinding.FieldName = 'CHART'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 75
          end
          object tvTransactionsFILEID: TcxGridDBColumn
            Caption = 'Matter'
            DataBinding.FieldName = 'FILEID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
          end
          object tvTransactionsOWNER_CODE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'OWNER_CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 85
          end
          object tvTransactionsCHQNO: TcxGridDBColumn
            Caption = 'Cheque'
            DataBinding.FieldName = 'CHQNO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 75
          end
          object tvTransactionsDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Width = 200
          end
          object tvTransactionsAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 59
          end
        end
        object dbgrTransactionsLevel1: TcxGridLevel
          GridView = tvTransactions
        end
      end
    end
    object tsFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 14
      object cxGroupBox1: TcxGroupBox
        Left = 13
        Top = 42
        Caption = 'Search by Date'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 126
        Width = 661
        object lblDateFrom: TLabel
          Left = 9
          Top = 25
          Width = 55
          Height = 15
          Caption = 'Date From'
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 50
          Width = 40
          Height = 15
          Caption = 'Date To'
          Transparent = True
        end
        object dtpDateTo: TDateTimePicker
          Left = 179
          Top = 49
          Width = 100
          Height = 23
          Date = 38199.847006782400000000
          Time = 38199.847006782400000000
          TabOrder = 0
        end
        object dtpDateFrom: TDateTimePicker
          Left = 179
          Top = 24
          Width = 100
          Height = 23
          Date = 38169.466950925890000000
          Time = 38169.466950925890000000
          Checked = False
          TabOrder = 1
        end
        object DateChangeButton1: TDateChangeButton
          Left = 283
          Top = 23
          Width = 86
          Height = 22
          Caption = 'Today'
          TabOrder = 2
          TabStop = False
          ChangeType = ctToday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton2: TDateChangeButton
          Left = 283
          Top = 48
          Width = 86
          Height = 23
          Caption = 'Yesterday'
          TabOrder = 3
          TabStop = False
          ChangeType = ctYesterday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton3: TDateChangeButton
          Left = 377
          Top = 23
          Width = 86
          Height = 22
          Caption = 'This Week'
          TabOrder = 4
          TabStop = False
          ChangeType = ctThisWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton4: TDateChangeButton
          Left = 377
          Top = 48
          Width = 86
          Height = 23
          Caption = 'Last Week'
          TabOrder = 5
          TabStop = False
          ChangeType = ctLastWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton5: TDateChangeButton
          Left = 471
          Top = 23
          Width = 86
          Height = 22
          Caption = 'This Month'
          TabOrder = 6
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton6: TDateChangeButton
          Left = 471
          Top = 48
          Width = 86
          Height = 23
          Caption = 'Last Month'
          TabOrder = 7
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton7: TDateChangeButton
          Left = 566
          Top = 23
          Width = 85
          Height = 22
          Caption = 'Year To Date'
          TabOrder = 8
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
          CheckBoxFrom = chkDateFrom
          CheckBoxTo = chkDateTo
        end
        object DateChangeButton8: TDateChangeButton
          Left = 566
          Top = 48
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
        object rgShowBy: TcxRadioGroup
          Left = 11
          Top = 76
          Caption = 'Show by'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Due Date'
            end
            item
              Caption = 'Invoice Date'
            end
            item
              Caption = 'Intended Payment Date'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Height = 40
          Width = 640
        end
        object chkDateFrom: TCheckBox
          Left = 160
          Top = 25
          Width = 18
          Height = 18
          TabOrder = 11
        end
        object chkDateTo: TCheckBox
          Left = 160
          Top = 50
          Width = 18
          Height = 19
          Checked = True
          State = cbChecked
          TabOrder = 12
        end
      end
      object rgShowOnly: TcxGroupBox
        Left = 13
        Top = 176
        Caption = 'Show Only'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 47
        Width = 334
        object cbOutstanding: TcxCheckBox
          Left = 16
          Top = 16
          Caption = 'Outstanding'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
        end
        object cbNotHeld: TcxCheckBox
          Left = 141
          Top = 16
          Caption = 'Not Held'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
        end
        object cbPaid: TcxCheckBox
          Left = 266
          Top = 16
          Caption = 'Paid'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 372
        Top = 176
        Caption = 'Payment Type'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 47
        Width = 303
        object cbCheque: TcxCheckBox
          Left = 25
          Top = 17
          Caption = 'Cheque'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
        end
        object cbEFT: TcxCheckBox
          Left = 165
          Top = 17
          Caption = 'E.F.T.'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 13
        Top = 230
        Caption = 'Search for'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 108
        Width = 395
        object cxLabel1: TcxLabel
          Left = 4
          Top = 26
          Caption = 'Creditor'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 19
          Top = 69
          Caption = 'Code'
          Transparent = True
        end
        object dfCreditorCode: TcxTextEdit
          Left = 57
          Top = 68
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 130
        end
        object cxLabel3: TcxLabel
          Left = 197
          Top = 27
          Caption = 'Invoice Ref'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 220
          Top = 70
          Caption = 'Matter'
          Transparent = True
        end
        object dfInvoiceRef: TcxTextEdit
          Left = 259
          Top = 25
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 130
        end
        object dfMatter: TcxButtonEdit
          Left = 259
          Top = 68
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.CharCase = ecUpperCase
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 130
        end
        object dfCreditor: TcxButtonEdit
          Left = 57
          Top = 23
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.CharCase = ecUpperCase
          Properties.OnButtonClick = dfCreditorPropertiesButtonClick
          Properties.OnChange = dfCreditorPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 130
        end
      end
      object cxLabel5: TcxLabel
        Left = 12
        Top = 14
        Caption = 'Bank'
        Transparent = True
      end
      object cbBank: TcxComboBox
        Left = 55
        Top = 12
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 129
      end
      object GLComponentFilter: TGLComponentFilterGroup
        Left = 414
        Top = 229
        Width = 260
        Height = 109
        Caption = 'GLComponentFilter'
        TabOrder = 6
        hideEmpty = False
      end
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 634
    Width = 1087
    Height = 22
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarStateIndicatorPanelStyle'
        PanelStyle.Indicators = <
          item
          end
          item
          end>
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container0
        Width = 201
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    object dxStatusBar1Container0: TdxStatusBarContainerControl
      Left = 870
      Top = 4
      Width = 199
      Height = 16
      object progBarProcess: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        Properties.BarStyle = cxbsLEDs
        Properties.PeakValue = 50.000000000000000000
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Visible = False
        Width = 199
      end
    end
  end
  object ilstToolbar: TImageList
    Left = 507
    Top = 25
    Bitmap = {
      494C01010F001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000008080800000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000808080000000000000FF00000080
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000080808000C0C0C0000000
      00000000000000000000C0C0C000C0C0C000FFFF0000C0C0C000FFFF0000C0C0
      C00080808000C0C0C0008080800000000000AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF0000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFF0000C0C0C000FFFF0000C0C0C000FFFF
      0000FFFF0000808080008080800000000000BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      0000C0C0C000FFFF00008080800000000000BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      000000000000000000000000000000000000C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C00080808000C0C0C000808080008080
      800080808000808080000000000000000000C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000C0C0C0008080
      8000C0C0C000000000000000000000000000C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF0000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      000000000000000000000000000000000000CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
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
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FF000000FF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000084000000840000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C60000FF000000FF000000FF000000FF0000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000840000008400000084000000840000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C60000FF000000FF000000FF000000FF0000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000840000008400000084000000840000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF0000FF000000FF0000FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084000000840000FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000840000008400
      00008400000084000000840000008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000840000008400
      00008400000084000000840000008400000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000084848400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000C6C6C600C6C6C6000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000840000008400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000FF000000FF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000C6C6C60000008400000084000000840000008400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000FF000000FF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000008400000084000000840000008400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000FF000000FF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000840000008400000084000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000840000008400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000FF000000FF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700B5B5B500949494008C8C8C009C9C9C00C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000007373
      7300B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0094949C0029296B0000006300000063000000630000004A00101039006363
      6300D6D6D600000000000000000000000000000000000000000000000000009C
      000031393100A5A5A50073737300636363006363630073737300CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000009C6363009C6363009C63
      63009C6363009C6363009C636300636331006363310063633100633131006363
      3100000000000000000000000000000000000000000000000000F7F7F7006363
      94000000840000008C0000008C0000008C0000008C0000008C00000084000000
      520031313900C6C6C6000000000000000000000000000000000000000000009C
      0000006300003173310000730000009C0000007B0000004A0000313931008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000009C9C6300F7F7F700D6D6D600CECE
      CE00CECE9C00B5B5B500CE9C9C00CE9C9C00A5A5A500A5A5A500848484009C63
      63006331310000000000000000000000000000000000FFFFFF005A5A9C000000
      94000000940000009C0000009C000000A50000009C000000940000008C000000
      8C000000630031313900D6D6D60000000000000000000000000000000000009C
      0000009C0000009C0000009C0000009C0000009C0000009C0000007B00003139
      3100A5A5A500000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000009C9C630000000000F7F7F700F7F7
      F700F7F7F700FFEFCE00FFEFCE00FFCECE00F7CEA500F7CEA500FFCE9C009494
      940063633100633131000000000000000000000000008C8CB5000000A5000808
      9C009C9CD6006B6BD6000000AD000000AD000000AD004A4ABD00B5B5E7002121
      A50000008C00000052007373730000000000000000000000000000000000009C
      0000009C0000009C0000009C0000109C100042B5420021A52100009C00000073
      000042424200F7F7F700000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000009C9C630000000000000000000000
      00000000000000000000FFFFFF00F7F7F700EFEFEF00EFEFEF00FFCECE00CE9C
      9C0063636300636331006363310000000000DEDEEF002929AD000000AD002929
      A500DEDED600FFFFFF006363D6000000B5004242C600E7E7EF00FFFFF7005A5A
      B50000009C00000084002929420000000000000000000000000000000000009C
      0000009C0000009C0000008C000039393900DEDEDE00000000009CDE9C00109C
      1000315A3100B5B5B500000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000A5A5A5009C9C63009C9C63009C9C
      63009C9C63009C9C63009C9C63009C9C63009C63630084848400848484009C63
      63009C6363005A5A5A0063633100636331009494E7000000B5000000BD000000
      C6004A4AA500E7E7DE00FFFFFF009C9CE700EFEFF700FFFFF7007373BD000000
      B5000000AD000000A50010105A0000000000000000000000000000000000009C
      0000009C0000009C0000009C000000520000424242000000000000000000BDE7
      BD00006B000073737300000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000094ADAD00CEFFFF009CFF
      FF009CFFFF009CCEFF0063CEFF0063CEFF0063CEFF0031CECE00319CCE006363
      6300848484009C63630063633100633131005A5AD6000808BD000000CE000000
      D6000000CE005252B500F7F7EF00FFFFFF00FFFFFF007373CE000000BD000000
      C6000000BD000000AD0008086B000000000000000000B5B5B50000000000009C
      0000009C0000009C0000009C0000009C0000009C000031313100000000000000
      000063BD6300636B6300000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000094ADAD00CEFFFF00CEFF
      FF009CFFFF009CCEFF009CCEFF0063CEFF0063CEFF0031CEFF00319CCE003163
      9C00319C9C009C6363009C636300636331004A4AD6000808CE000808DE000808
      DE000000D6003939CE00EFEFEF00FFFFFF00FFFFFF005A5ADE000000CE000000
      CE000000C6000000BD0010107B000000000000000000314A3100B5B5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEF7DE00A5C6A500000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000094ADAD00CEFFFF00CEFF
      FF00CEFFFF009CFFFF009CFFFF009CCEFF009CCEFF0063CEFF0063CEFF00639C
      9C00319CCE0063636300737373009C6363007373E7001010DE001010EF000808
      F7004242DE00E7E7EF00FFFFF700BDBDD600EFEFEF00FFFFFF006363E7000000
      D6000808CE000808C60021217B000000000000000000107B100042424200F7F7
      F7000000000000000000318C310010631000104A100010421000103110002131
      21000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000094ADAD0094ADAD0094AD
      AD0094ADAD0094ADAD0094ADAD0094ADAD0094ADAD0094ADAD0094ADAD0063CE
      FF00319CCE0031639C00319C9C0073737300BDBDF7002121E7002121FF003939
      EF00DEDEE700FFFFEF007373C6000000D6005252B500E7E7D600FFFFFF006363
      E7000808DE000808CE004A4A8400000000000000000063BD6300004200005A5A
      5A00E7E7E70000000000E7F7E700109C1000009C0000009C0000009C00001842
      18000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000094ADAD00C6D6EF00CEFF
      FF009CCEFF0094ADAD009CCECE009CFFFF009CFFFF009CCEFF009CCEFF0063CE
      FF0063CEFF0063639C00319CCE0031636300F7F7FF005A5AF7003131FF005252
      EF00B5B5C6007373CE000000EF000000EF000000EF005252B500ADADB5004A4A
      E7001818EF001818B500B5B5BD000000000000000000BDE7BD00009C0000004A
      000042424200848484009C9C9C0010521000009C0000009C0000009C00001042
      10000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000094ADAD0094AD
      AD0094ADAD009CCECE0094ADAD0094ADAD0094ADAD0094ADAD0094ADAD0094AD
      AD0094ADAD0063CEFF00319CCE0031639C0000000000D6D6FF003939FF005252
      FF006B6BEF005252FF003939FF002121FF002929FF003939FF004242EF003131
      FF001818EF007B7BA5000000000000000000000000000000000052BD5200009C
      000000840000004A000000520000008C0000009C0000009C0000009C00001042
      10000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094AD
      AD00C6D6EF00CEFFFF009CCEFF0094ADAD009CCECE009CFFFF009CFFFF009CCE
      FF009CCEFF0063CEFF0063CEFF0063639C000000000000000000C6C6FF004A4A
      FF006B6BFF009494FF009494FF008484FF007373FF006363FF005252FF003131
      FF007B7BB500FFFFFF0000000000000000000000000000000000EFFFEF0031AD
      3100009C0000009C0000009C0000009C0000009C0000009C0000009C00001042
      10000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094ADAD0094ADAD0094ADAD009CCECE0094ADAD0094ADAD0094ADAD0094AD
      AD0094ADAD00949494009494940000000000000000000000000000000000DEDE
      FF006B6BFF006B6BFF008484FF009494FF007373FF005252FF005252F700A5A5
      CE0000000000000000000000000000000000000000000000000000000000EFFF
      EF0063BD6300009C0000009C0000009C000031AD31007BCE7B00009C00001842
      18000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094ADAD00C6D6EF00CEFFFF009CCEFF0094ADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00BDBDFF008C8CFF007B7BFF007B7BFF00ADADFF00E7E7FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CD68C003973
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094ADAD0094ADAD0094ADAD0000000000000000000000
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
      00000000000000000000FFFFFF00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FF00801FFFFF0000FF00000FFF1F0000
      FF004007FF1F0000FE004003FF1F0000FE007FE1FF1F0000FE000000FE0F0000
      FF009C0000070000FF80C000000300000000E000000000000000F00000000000
      0000F800000000000000F001000F00000000E003000F00000000C007000F0000
      0000800F000F00000000001FFFFF0000FFFF8000FC3FFC3FFFC00000F81FF81F
      FFDE0000E007E007FFD20000C003C003FF9E0000800180010200000000000000
      78400000E007E00749FF0000C003C00379FF8000800180010040C00000000000
      021EC000E007E007FF92C000C003C003FFDEC00080018001FFC0C00000000000
      FFC0C000F00FF00FFFFFE001F81FF81FF80FE7FFFC00FFFFE007E01FF000800F
      C003E00FC00000078001E007000040038001E00300007C010001E04300000000
      0001E063000080000001A0330000800000019FF30000800000018C0F00008000
      0001840F000180000001800F0003C0008003C00F0007E000C003C00F001FF001
      E00FE00F007FF83FF01FFFCF01FFFC7FFFFFFFFFFFFFFFFFFFFFC007FE7FFFFF
      FFF98003FC3FFFFFE7FF0001FC3FFFFFC3F30001FE7FFFFFC3E70001FC3FFFE7
      E1C70000FC3FC1F3F08F0000FC3FC3FBF81F8000FC1FC7FBFC3FC000F20FCBFB
      F81FE001E107DCF3F09FE007E187FF07C1C7F007E007FFFF83E3F003F00FFFFF
      8FF1F803F81FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    Images = ilstToolbar
    Left = 462
    Top = 33
    StyleName = 'XP Style'
    object actCreditNote: TAction
      Category = 'Credit'
      Caption = 'Credit Note'
      Enabled = False
      ImageIndex = 9
      OnExecute = actCreditNoteExecute
      OnUpdate = actCreditNoteUpdate
    end
    object actReverse: TAction
      Category = 'Credit'
      Caption = 'Reverse'
      ImageIndex = 3
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
    end
    object actConvert: TAction
      Caption = 'Convert'
      Hint = 'Convert Invoices'
      ImageIndex = 8
      OnExecute = mnuFileConvertInvoicesClick
      OnUpdate = actConvertUpdate
    end
    object actCheqReqEdit: TAction
      Caption = 'Edit Cheque Requisition'
      ImageIndex = 1
    end
    object actHold: TAction
      Caption = 'Hold'
      Hint = 'Hold'
      ImageIndex = 10
      OnExecute = actHoldExecute
      OnUpdate = actHoldUpdate
    end
    object Scan: TAction
      Caption = 'Scan Invoice'
      ImageIndex = 13
      OnExecute = ScanExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 5
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
    object actDelete: TAction
      Caption = 'Delete'
      ImageIndex = 0
    end
    object actPaySelected: TAction
      Caption = 'Pay Selected'
      Enabled = False
      ImageIndex = 12
      OnExecute = actPaySelectedExecute
      OnUpdate = actPaySelectedUpdate
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'File'
      'Default'
      'Help'
      'Menus'
      'pmReports')
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
    Left = 396
    Top = 22
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
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 40
      FloatClientHeight = 38
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFile'
        end>
      OldName = 'Main Menu'
      OneOnRow = False
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
      FloatLeft = 312
      FloatTop = 367
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnAccountNew'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnHold'
        end
        item
          Visible = True
          ItemName = 'tbtnCreditNote'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileConvertInvoices'
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
    object tbtnAccountNew: TdxBarButton
      Caption = 'Account Payable'
      Category = 0
      Hint = 'Create a Account Payable'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = tbtnAccountNewClick
    end
    object mnuFileDelete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Enabled = False
      Hint = 'Delete Invoice'
      Visible = ivAlways
      ImageIndex = 0
    end
    object mnuFileConvertInvoices: TdxBarButton
      Action = actConvert
      Category = 0
      Enabled = False
      Hint = 'Convert grouped Invoices'
    end
    object mnuFileExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Exit any screen by clicking on the red X circle'
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = mnuFileExitClick
    end
    object dxBarButton1: TdxBarButton
      Action = actReverse
      Category = 0
    end
    object tbtnCreditNote: TdxBarButton
      Action = actCreditNote
      Category = 0
      Hint = 'Create Credit Note for selected Invoice'
    end
    object bbtnHold: TdxBarButton
      Action = actHold
      Category = 0
      Enabled = False
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Attach Invoice'
      Category = 0
      Hint = 'Attach Invoice'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Action = Scan
      Category = 0
    end
    object btnRemoveAttachment: TdxBarButton
      Caption = 'Remove Attached Invoice'
      Category = 0
      Hint = 'Remove Attached Invoice'
      Visible = ivAlways
      OnClick = btnRemoveAttachmentClick
    end
    object btnViewAttachment: TdxBarButton
      Caption = 'View Attached Invoice'
      Category = 0
      Hint = 'View Attached Invoice'
      Visible = ivAlways
      OnClick = btnViewAttachmentClick
    end
    object dxBarButton3: TdxBarButton
      Action = actRefresh
      Category = 1
      Enabled = False
    end
    object dxBarButton2: TdxBarButton
      Action = actPaySelected
      Category = 1
    end
    object mnuHelpHelp: TdxBarButton
      Caption = '&Help '
      Category = 2
      Visible = ivAlways
      ImageIndex = 10
      ShortCut = 112
    end
    object mnuFile: TdxBarSubItem
      Caption = '&File'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnAccountNew'
        end
        item
          Visible = True
          ItemName = 'mnuFileDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileConvertInvoices'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
    end
    object mnuHelp: TdxBarSubItem
      Caption = '&Help'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuHelpHelp'
        end>
    end
    object miReportChequeRequests: TdxBarButton
      Caption = 'Cheque Requests'
      Category = 4
      Visible = ivAlways
    end
    object miReportEffectofRequests: TdxBarButton
      Caption = 'Effect of Requests'
      Category = 4
      Visible = ivAlways
    end
  end
  object pmReports: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'miReportChequeRequests'
      end
      item
        Visible = True
        ItemName = 'miReportEffectofRequests'
      end>
    UseOwnFont = False
    Left = 559
    Top = 27
    PixelsPerInch = 96
  end
  object qryAccounts: TUniQuery
    UpdatingTable = 'INVOICE'
    KeyFields = 'ninvoice'
    SQLInsert.Strings = (
      'INSERT INTO INVOICE'
      
        '  (NINVOICE, ACCT, CREDITOR, NCREDITOR, NCHEQUE, REFNO, DESCR, H' +
        'OLD, BILLED, AMOUNT, OWING, TAX, CHEQUE_GROUP_ID, TAKE_ON, INVOI' +
        'CE_COPY, INVOICE_COPY_EXT)'
      'VALUES'
      
        '  (:NINVOICE, :ACCT, :CREDITOR, :NCREDITOR, :NCHEQUE, :REFNO, :D' +
        'ESCR, :HOLD, :BILLED, :AMOUNT, :OWING, :TAX, :CHEQUE_GROUP_ID, :' +
        'TAKE_ON, :INVOICE_COPY, :INVOICE_COPY_EXT)')
    SQLDelete.Strings = (
      'DELETE FROM INVOICE'
      'WHERE'
      '  NINVOICE = :Old_NINVOICE')
    SQLUpdate.Strings = (
      'UPDATE INVOICE'
      'SET'
      
        '  NINVOICE = :NINVOICE, ACCT = :ACCT, CREDITOR = :CREDITOR, NCRE' +
        'DITOR = :NCREDITOR, NCHEQUE = :NCHEQUE, REFNO = :REFNO, DESCR = ' +
        ':DESCR, HOLD = :HOLD, BILLED = :BILLED, AMOUNT = :AMOUNT, OWING ' +
        '= :OWING, TAX = :TAX, CHEQUE_GROUP_ID = :CHEQUE_GROUP_ID, TAKE_O' +
        'N = :TAKE_ON, INVOICE_COPY = :INVOICE_COPY, INVOICE_COPY_EXT = :' +
        'INVOICE_COPY_EXT'
      'WHERE'
      '  NINVOICE = :Old_NINVOICE')
    SQLLock.Strings = (
      
        'SELECT NINVOICE, ACCT, CREDITOR, NCREDITOR, NCHEQUE, REFNO, DESC' +
        'R, HOLD, BILLED, AMOUNT, OWING, TAX, CHEQUE_GROUP_ID, TAKE_ON, I' +
        'NVOICE_COPY, INVOICE_COPY_EXT FROM INVOICE'
      'WHERE'
      '  NINVOICE = :Old_NINVOICE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT NINVOICE, ACCT, CREDITOR, NCREDITOR, NCHEQUE, REFNO, DESC' +
        'R, HOLD, BILLED, AMOUNT, OWING, TAX, CHEQUE_GROUP_ID, TAKE_ON, I' +
        'NVOICE_COPY, INVOICE_COPY_EXT FROM INVOICE'
      'WHERE'
      '  NINVOICE = :Old_NINVOICE')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM INVOICE'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  I.NCHEQUE, TRUNC(I.INVOICE_DATE) AS INVOICE_DATE, I.CHEQUE_GRO' +
        'UP_ID,'
      
        '  I.OWING, I.REFNO, I.DESCR, TRUNC(I.DUE_DATE) AS DUE_DATE, I.HO' +
        'LD, I.BILLED,'
      
        '  I.NINVOICE, I.AMOUNT, I.ACCT, C.NAME, C.CODE, I.NCREDITOR, I.C' +
        'REDITOR, I.TAX, C.PAY_BY_EFT,I.TAKE_ON,'
      
        '  I.INVOICE_COPY, I.INVOICE_COPY_EXT, I.AMOUNT - I.OWING AS Paid' +
        ', TAKE_ON, I.HOLD as Held, I.ROWID '
      'FROM CREDITOR C, INVOICE I'
      'WHERE I.OWING <> 0'
      'ORDER BY I.DUE_DATE ASC')
    CachedUpdates = True
    BeforeScroll = qryAccountsBeforeScroll
    AfterScroll = qryAccountsAfterScroll
    Left = 212
    Top = 176
  end
  object dsAccounts: TUniDataSource
    DataSet = qryAccounts
    Left = 311
    Top = 175
  end
  object qryTransactions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  T.CHART, DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', '#39'Chq'#39', '#39#39', T.OWNER_COD' +
        'E, '#39'INVOICE'#39', '#39'Inv'#39', '#39#39', T.OWNER_CODE, '#39'CREDIT_NOTE'#39', '#39'C/N'#39', '#39#39')' +
        ' as OWNER_CODE, DECODE(T.OWNER_CODE, '#39'CHEQUE'#39', C.CHQNO, '#39#39') AS C' +
        'HQNO, T.DESCR, T.AMOUNT, M.FILEID'
      'FROM'
      '  TRANSITEM T, CHEQUE C, MATTER M'
      'WHERE'
      '  T.ACCT = :ACCT'
      'AND'
      '  T.NINVOICE = :NINVOICE'
      'AND'
      '  T.NOWNER = C.NCHEQUE(+)'
      'AND'
      '  T.NMATTER = M.NMATTER(+)'
      'order by t.owner_code desc, t.chart  ')
    BeforeOpen = qryTransactionsBeforeOpen
    Left = 668
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
    object qryTransactionsCHART: TStringField
      FieldName = 'CHART'
      Required = True
      Size = 12
    end
    object qryTransactionsOWNER_CODE: TStringField
      FieldName = 'OWNER_CODE'
    end
    object qryTransactionsCHQNO: TStringField
      FieldName = 'CHQNO'
      Size = 12
    end
    object qryTransactionsDESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
    object qryTransactionsAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      currency = True
    end
    object qryTransactionsFILEID: TStringField
      FieldName = 'FILEID'
    end
  end
  object dsTransactions: TUniDataSource
    DataSet = qryTransactions
    Left = 669
    Top = 220
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT TYPE, REFNO, LONGDESC, REASON, AMOUNT, BILLED, UNIQUEID, ' +
        'TAXCODE, TAX, WITHHOLD, SUNDRYTYPE, CHEQUE_GROUP_ID,'
      
        'PAYEE, BANK, NCHEQUE, NNAME, CREATED, FILEID, NCHEQREQ_LIST, PRO' +
        'CESS, NCREDITOR'
      'FROM LGRALLOC'
      'WHERE 1=2')
    CachedUpdates = True
    Left = 222
    Top = 397
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 292
    Top = 398
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' NAME, CASH_AT_BANK, LASTCHQ, CHEQUE, TRUST,'
      ' CL_BALANCE, BALANCE, ROWID'
      'FROM'
      ' BANK'
      'WHERE ACCT = :P_Code'
      'AND ENTITY = :P_Entity')
    Left = 509
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID FROM CHEQUE C WHERE C.NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 457
    Top = 385
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryBankBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.*, B.ROWID FROM BANK B')
    Left = 566
    Top = 399
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.FILEID, DESCR, AMOUNT, ACCT, ALLOC.NMATTER, NRECEIP' +
        'T, '
      
        '              NJOURNAL, NMEMO, CREATED, NCLIENT, PAYER, REFNO, T' +
        'RUST, '
      
        '              TYPE, BILLED, CLEARED, NALLOC, NCHEQUE, SYSTEM_DAT' +
        'E, '
      
        '              CLIENT_NAME, MATTER_DESC, OVERDRAWN, SPEC_PURPOSE,' +
        ' TAX, '
      
        '              TAXCODE, SUNDRYTYPE, PRIORBALANCE, NCHEQREQ, BANK,' +
        ' ROWID '
      'FROM ALLOC '
      'WHERE 1 = 2')
    CachedUpdates = True
    Left = 644
    Top = 395
  end
  object qryTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT naccount, chart, descr, ninvoice, refno, amount'
      'FROM transitem'
      'WHERE ninvoice = :p_ninvoice'
      'and ncheque is null')
    Left = 513
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_ninvoice'
        Value = nil
      end>
  end
  object qryInvoiceCRAmount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT legal_cr_amount, trade_cr_amount'
      'FROM invoice'
      'WHERE ninvoice = :p_ninvoice')
    Left = 585
    Top = 447
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_ninvoice'
        Value = nil
      end>
  end
  object qryInvoiceUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE INVOICE SET'
      '  OWING = OWING - :Amount,'
      '  LAST_PAYMENT = :Last_Payment,'
      '  NCHEQUE = :NCHEQUE'
      'WHERE NINVOICE = :NINVOICE'
      ' ')
    Left = 623
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Amount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Last_Payment'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 235
    Top = 64
    PixelsPerInch = 96
    object cxStyleGroupHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 372
    Top = 176
  end
  object qryPrinter: TUniQuery
    UpdatingTable = 'PRINTER'
    SQLInsert.Strings = (
      'INSERT INTO PRINTER'
      
        '  (CODE, BANK_ACCT, BRANCH_CODE, PATH, TRAY, TYPE, NUM_FROM, NUM' +
        '_TO, NUM_LAST, TEMPLATE)'
      'VALUES'
      
        '  (:CODE, :BANK_ACCT, :BRANCH_CODE, :PATH, :TRAY, :TYPE, :NUM_FR' +
        'OM, :NUM_TO, :NUM_LAST, :TEMPLATE)')
    SQLDelete.Strings = (
      'DELETE FROM PRINTER'
      'WHERE'
      '  CODE = :CODE')
    SQLUpdate.Strings = (
      'UPDATE PRINTER'
      'SET'
      '  CODE = :CODE,'
      '  BANK_ACCT = :BANK_ACCT,'
      '  BRANCH_CODE = :BRANCH_CODE,'
      '  PATH = :PATH,'
      '  TRAY = :TRAY,'
      '  TYPE = :TYPE,'
      '  NUM_FROM = :NUM_FROM,'
      '  NUM_TO = :NUM_TO,'
      '  NUM_LAST = :NUM_LAST,'
      '  TEMPLATE = :TEMPLATE'
      'WHERE'
      '  CODE = :OLD_CODE')
    SQLLock.Strings = (
      'SELECT * FROM PRINTER'
      'WHERE'
      '  CODE = :CODE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PRINTER'
      'WHERE CODE = :CODE')
    CachedUpdates = True
    Left = 93
    Top = 418
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryCheqreqUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '')
    Left = 392
    Top = 400
  end
  object qryTemp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 578
    Top = 283
  end
  object qryAccountTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 130
    Top = 175
  end
  object popGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbtnHold'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnViewAttachment'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnRemoveAttachment'
      end>
    UseOwnFont = False
    OnPopup = popGridPopup
    Left = 635
    Top = 27
    PixelsPerInch = 96
  end
  object dlFile: TOpenDialog
    Filter = '*.*|*.*'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select document template'
    Left = 524
    Top = 289
  end
end
