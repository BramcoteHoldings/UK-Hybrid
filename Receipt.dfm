object frmReceipt: TfrmReceipt
  Left = 504
  Top = 296
  Caption = 'Receipt Entry'
  ClientHeight = 539
  ClientWidth = 977
  Color = clBtnFace
  Constraints.MinHeight = 479
  Constraints.MinWidth = 990
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    977
    539)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 6
    Top = 37
    Width = 29
    Height = 15
    Caption = 'Bank:'
  end
  object Label2: TLabel
    Left = 6
    Top = 11
    Width = 69
    Height = 15
    Caption = 'Receipt Date:'
  end
  object Label8: TLabel
    Left = 6
    Top = 138
    Width = 41
    Height = 15
    Caption = 'Reason:'
  end
  object Label4: TLabel
    Left = 6
    Top = 87
    Width = 61
    Height = 15
    Caption = 'Receipt No:'
  end
  object Label5: TLabel
    Left = 6
    Top = 112
    Width = 33
    Height = 15
    Caption = 'Payor:'
  end
  object Label7: TLabel
    Left = 6
    Top = 62
    Width = 77
    Height = 15
    Caption = 'Payment Type:'
  end
  object lblAmountMsg: TLabel
    Left = 818
    Top = 451
    Width = 25
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblTotal: TLabel
    Left = 949
    Top = 419
    Width = 4
    Height = 20
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 6
    Top = 162
    Width = 47
    Height = 15
    Caption = 'Amount:'
  end
  object lblUnallocated: TLabel
    Left = 792
    Top = 450
    Width = 3
    Height = 13
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label12: TLabel
    Left = 6
    Top = 186
    Width = 38
    Height = 15
    Caption = 'Printer:'
    OnDblClick = Label12DblClick
  end
  object Label3: TLabel
    Left = 235
    Top = 62
    Width = 82
    Height = 15
    Caption = 'Clearance Date:'
  end
  object Label6: TLabel
    Left = 235
    Top = 11
    Width = 69
    Height = 15
    Caption = 'Banked Date:'
    Visible = False
  end
  object Label18: TLabel
    Left = 462
    Top = 48
    Width = 120
    Height = 15
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'This is for debugging...'
    Visible = False
  end
  object lblBankName: TLabel
    Left = 206
    Top = 37
    Width = 3
    Height = 15
    ShowAccelChar = False
  end
  object edtSaveNeAmount: TEdit
    Left = 203
    Top = 159
    Width = 91
    Height = 23
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 16
    Visible = False
  end
  object dbgrLedger: TcxGrid
    Left = 9
    Top = 209
    Width = 951
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    OnEnter = dbgrLedgerEnter
    OnExit = dbgrLedgerExit
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedItemChanged = tvLedgerFocusedItemChanged
      OnInitEdit = tvLedgerInitEdit
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsLedger
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total:  $,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = tvLedgerCREDIT
        end
        item
          OnGetText = tvLedgerTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
          Column = tvLedgerDESCR
        end
        item
          Format = 'Total:  $,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'TAX'
          Column = tvLedgerTAX
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.OnAfterSummary = tvLedgerDataControllerSummaryAfterSummary
      DataController.OnDataChanged = tvLedgerDataControllerDataChanged
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Content = cxStyle1
      Styles.Footer = styFooter
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 2
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Ledger'
          'Invoice')
        Properties.ReadOnly = False
        Properties.OnCloseUp = tvLedgerTYPEPropertiesCloseUp
        Options.Filtering = False
        Width = 42
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
        Properties.CharCase = ecUpperCase
        Properties.HideSelection = False
        Properties.ReadOnly = False
        Properties.ValidateOnEnter = False
        Properties.OnButtonClick = cxGrid1DBTableView1REFNOPropertiesButtonClick
        Properties.OnValidate = cxGrid1DBTableView1REFNOPropertiesValidate
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 65
      end
      object tvLedgerNSUBBILL_ID: TcxGridDBColumn
        Caption = 'Subbill'
        DataBinding.FieldName = 'NSUBBILL_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'NSUBBILL_ID'
        Properties.ListColumns = <
          item
            FieldName = 'DEBTOR_NAME'
          end
          item
            FieldName = 'OWING'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsFilterSubBill
        Properties.OnCloseUp = tvLedgerNSUBBILL_IDPropertiesCloseUp
      end
      object tvLedgerDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 186
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Filtering = False
        Width = 209
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Tax Rate'
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
        Properties.OnChange = tvLedgerTAXCODEPropertiesChange
        Visible = False
      end
      object tvLedgerCREDIT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'CREDIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ValidationOptions = [evoAllowLoseFocus]
        Properties.OnChange = tvLedgerCREDITPropertiesChange
        Properties.OnEditValueChanged = tvLedgerCREDITPropertiesEditValueChanged
        Properties.OnValidate = tvLedgerCREDITPropertiesValidate
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        VisibleForCustomization = False
        Width = 108
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Nullstring = '0'
        Visible = False
        VisibleForCustomization = False
      end
      object tvLedgerDEBIT: TcxGridDBColumn
        DataBinding.FieldName = 'DEBIT'
        Visible = False
      end
      object tvLedgerINVOICE: TcxGridDBColumn
        DataBinding.FieldName = 'INVOICE'
        Visible = False
      end
      object tvLedgerNsubbill: TcxGridDBColumn
        Caption = 'Subbill'
        DataBinding.FieldName = 'NSUBBILL_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'NSUBBILL_ID'
        Properties.ListColumns = <
          item
            FieldName = 'DEBTOR_NAME'
          end
          item
            FieldName = 'OWING'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsFilterSubBill
        Properties.PostPopupValueOnTab = True
        Properties.OnCloseUp = tvLedgerNsubbillPropertiesCloseUp
        Properties.OnValidate = tvLedgerNsubbillPropertiesValidate
        Visible = False
        MinWidth = 70
        Options.Filtering = False
      end
      object tvLedgerFILEID: TcxGridDBColumn
        DataBinding.FieldName = 'FILEID'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object dbgrSubBill: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubBills
      DataController.KeyFieldNames = 'NSUBBILL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object dbgrSubBillDBColumn1: TcxGridDBColumn
        Caption = 'Sub Bill'
        DataBinding.FieldName = 'NSUBBILL'
        Options.Sorting = False
        Width = 67
      end
      object dbgrSubBillDBColumn2: TcxGridDBColumn
        Caption = 'Debtor'
        DataBinding.FieldName = 'DEBTOR_NAME'
        Options.Sorting = False
        Width = 110
      end
      object dbgrSubBillDBColumn3: TcxGridDBColumn
        Caption = 'Owing'
        DataBinding.FieldName = 'OWING'
        Options.Sorting = False
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object chkPrint: TcxCheckBox
    Left = 251
    Top = 472
    Anchors = [akLeft, akBottom]
    Caption = 'Print?'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Transparent = True
  end
  object cbTrustCheck: TcxCheckBox
    Left = 9
    Top = 472
    Hint = 'Check receipt value against trust account for trust transfer'
    Anchors = [akLeft, akBottom]
    Caption = 'Check for Overdrawn Trust'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Transparent = True
    OnClick = cbTrustCheckClick
  end
  object chkCheckMultipleMatters: TcxCheckBox
    Left = 9
    Top = 451
    Anchors = [akLeft, akBottom]
    Caption = 'Check for Multiple Matters/Bills'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    Transparent = True
  end
  object chkUpdateStatus: TcxCheckBox
    Left = 251
    Top = 451
    Anchors = [akLeft, akBottom]
    Caption = 'Update Status Bar'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 14
    Transparent = True
  end
  object chkNoExit: TcxCheckBox
    Left = 9
    Top = 494
    Anchors = [akLeft, akBottom]
    Caption = '&Keep receipt form open after posting?'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Transparent = True
  end
  object neAmount: TcxCurrencyEdit
    Tag = 1
    Left = 89
    Top = 160
    EditValue = 0c
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    OnExit = neAmountExit
    Width = 109
  end
  object tbRcptno: TcxTextEdit
    Tag = 1
    Left = 89
    Top = 84
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    OnExit = tbRcptnoExit
    Width = 81
  end
  object tbDesc: TcxTextEdit
    Tag = 1
    Left = 89
    Top = 135
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
    Width = 326
  end
  object tbPayee: TcxButtonEdit
    Tag = 1
    Left = 89
    Top = 109
    Hint = 'Look up Phonebook for Payor'
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000000000FFFFFF
          FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    OnExit = tbPayeeExit
    OnKeyPress = tbPayeeKeyPress
    Width = 326
  end
  object cmbPrinter: TcxComboBox
    Tag = 1
    Left = 89
    Top = 183
    Properties.OnChange = cmbPrinterChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Width = 180
  end
  object gbCheque: TcxGroupBox
    Left = 699
    Top = 2
    Anchors = [akTop, akRight]
    Caption = 'Cheque Details '
    Style.BorderStyle = ebsSingle
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Transparent = True
    Height = 122
    Width = 261
    object lblChequeDrawer: TLabel
      Left = 6
      Top = 19
      Width = 37
      Height = 15
      Caption = 'Drawer'
    end
    object lblChequeBank: TLabel
      Left = 6
      Top = 44
      Width = 26
      Height = 15
      Caption = 'Bank'
    end
    object lblCheque: TLabel
      Left = 6
      Top = 94
      Width = 41
      Height = 15
      Caption = 'Cheque'
    end
    object lblChequeBranch: TLabel
      Left = 6
      Top = 69
      Width = 37
      Height = 15
      Caption = 'Branch'
    end
    object tbDrawer: TcxTextEdit
      Tag = 1
      Left = 51
      Top = 16
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnEnter = tbDrawerEnter
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 206
    end
    object tbChqBank: TcxTextEdit
      Tag = 1
      Left = 51
      Top = 41
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = tbRcptnoExit
      Width = 206
    end
    object tbBranch: TcxTextEdit
      Tag = 1
      Left = 51
      Top = 66
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 98
    end
    object tbChqno: TcxTextEdit
      Tag = 1
      Left = 51
      Top = 91
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      OnExit = tbRcptnoExit
      Width = 121
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 699
    Top = 128
    Anchors = [akTop, akRight]
    Caption = 'Import Cheque '
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 9
    Transparent = True
    Height = 75
    Width = 261
    object Label13: TLabel
      Left = 6
      Top = 48
      Width = 63
      Height = 15
      Caption = 'Cheque No:'
    end
    object Label14: TLabel
      Left = 6
      Top = 21
      Width = 29
      Height = 15
      Caption = 'Bank:'
    end
    object cbBankImport: TcxComboBox
      Tag = 1
      Left = 74
      Top = 18
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 116
    end
    object btnImport: TcxButton
      Left = 191
      Top = 46
      Width = 65
      Height = 22
      Caption = 'Import'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360800000000000036000000280000002000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000008080000080
        8000008080000080800000808000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
        80000080800000808000008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF00808000008080000080
        8000008080000080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
        80000080800000808000008080007F7F7FFFFFFFFFFF00808000008080000080
        8000008080000080800000808000008080007F7F7FFF00808000008080000080
        8000008080000080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
        80000080800000808000008080007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFF
        FFFF00808000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF00808000008080000080
        8000008080000080800000808000000000FFFFFFFFFF000000FF000000FFFFFF
        FFFF000000FF000000FF000000FFFFFFFFFF000000FF00808000008080000080
        800000808000FFFFFFFF008080007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF0080
        80007F7F7FFF7F7F7FFF7F7F7FFF008080007F7F7FFF00808000008080000080
        8000000000FF0080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
        80007F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFF00808000FFFFFFFF0080
        8000FFFFFFFFFFFFFFFF00808000FFFFFFFF7F7F7FFF00808000008080000080
        80000000FFFF000000FF00808000000000FFFFFFFFFF000000FFBFBFBFFF0000
        00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF00808000008080000080
        80007F7F7FFF7F7F7FFFFFFFFFFF7F7F7FFFFFFFFFFF7F7F7FFF008080007F7F
        7FFF7F7F7FFF008080007F7F7FFF008080007F7F7FFF00808000008080000080
        80000000FFFF0000FFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
        FFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF00808000FFFFFFFFFFFF
        FFFF00808000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF000000FF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFFFF000000FF000000FFFFFF
        FFFF000000FF000000FF000000FF000000FF000000FF7F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF0080
        80007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFFFFFFFFFF000000FF008080007F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF0080
        80007F7F7FFFFFFFFFFF008080007F7F7FFF00808000000000FF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFBFBFBFFFFFFF
        FFFF000000FFFFFFFFFF000000FF00808000008080007F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080
        80007F7F7FFFFFFFFFFF7F7F7FFF0080800000808000000000FF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FF000000FF0080800000808000008080007F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F7F7FFF7F7F7FFF008080000080800000808000000000FF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF008080000080800000808000008080007F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF0080800000808000008080000080800000808000008080000080
        80000000FFFF0000FFFF000000FF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80007F7F7FFF7F7F7FFF7F7F7FFF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80007F7F7FFF7F7F7FFF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000FF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80007F7F7FFF0080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      OptionsImage.Spacing = 5
      TabOrder = 1
      OnClick = btnImportClick
    end
    object edImport: TcxButtonEdit
      Tag = 1
      Left = 74
      Top = 45
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edChqImportPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 116
    end
  end
  object sbarBalances: TdxStatusBar
    Left = 0
    Top = 519
    Width = 977
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 111
        Width = 111
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 111
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 111
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 111
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 111
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 111
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 98
      end>
    PaintStyle = stpsFlat
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object cbType: TcxLookupComboBox
    Tag = 1
    Left = 89
    Top = 59
    Properties.DropDownAutoSize = True
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'Code'
    Properties.ListColumns = <
      item
        FieldName = 'DESCRIPTION'
      end
      item
        FieldName = 'CLEARANCE_DAYS'
      end
      item
        FieldName = 'Code'
      end
      item
        FieldName = 'BANK_DEPOSIT'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsPaymentType
    Properties.OnCloseUp = cbTypePropertiesCloseUp
    Properties.OnEditValueChanged = cbTypePropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 139
  end
  object dtClearanceDate: TDateTimePicker
    Left = 322
    Top = 59
    Width = 93
    Height = 23
    Date = 39582.514682291700000000
    Time = 39582.514682291700000000
    TabOrder = 2
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 89
    Top = 8
    AutoSize = False
    EditValue = 43776.5738244907d
    Properties.AutoSelect = False
    Properties.DateOnError = deToday
    Properties.ImmediatePost = True
    Properties.ShowTime = False
    Properties.WeekNumbers = True
    Properties.OnChange = dtpDatePropertiesChange
    Properties.OnValidate = dtpDatePropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Height = 24
    Width = 101
  end
  object btnOk: TBitBtn
    Left = 803
    Top = 488
    Width = 75
    Height = 25
    Action = actOk
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 17
  end
  object btnCancel: TBitBtn
    Left = 883
    Top = 488
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 18
    OnClick = btnCancelClick
  end
  object dtBankedDate: TDateTimePicker
    Left = 322
    Top = 8
    Width = 93
    Height = 23
    Date = 41985.514682291700000000
    Time = 41985.514682291700000000
    TabOrder = 19
    Visible = False
  end
  object gbPayorAddress: TcxGroupBox
    Left = 432
    Top = 84
    Caption = 'Payor Address'
    TabOrder = 20
    Transparent = True
    Height = 119
    Width = 260
    object Label9: TLabel
      Left = 10
      Top = 20
      Width = 33
      Height = 15
      Caption = 'Street:'
    end
    object Label10: TLabel
      Left = 5
      Top = 44
      Width = 41
      Height = 15
      Caption = 'Suburb:'
    end
    object Label15: TLabel
      Left = 14
      Top = 68
      Width = 29
      Height = 15
      Caption = 'State:'
    end
    object Label16: TLabel
      Left = 145
      Top = 68
      Width = 49
      Height = 15
      Caption = 'Postcode'
    end
    object Label17: TLabel
      Left = 11
      Top = 92
      Width = 32
      Height = 15
      Caption = 'Email:'
    end
    object tbStreet: TcxTextEdit
      Tag = 1
      Left = 50
      Top = 17
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnEnter = tbDrawerEnter
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 205
    end
    object tbSuburb: TcxTextEdit
      Tag = 1
      Left = 50
      Top = 41
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = tbRcptnoExit
      Width = 205
    end
    object tbState: TcxTextEdit
      Tag = 1
      Left = 50
      Top = 65
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnExit = tbRcptnoExit
      Width = 65
    end
    object tbPostcode: TcxTextEdit
      Tag = 1
      Left = 200
      Top = 65
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      OnExit = tbRcptnoExit
      Width = 55
    end
    object tbEmail: TcxTextEdit
      Tag = 1
      Left = 50
      Top = 89
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      OnEnter = tbDrawerEnter
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 205
    end
  end
  object gbTemplateOps: TcxGroupBox
    Left = 553
    Top = 470
    Anchors = [akRight, akBottom]
    Caption = 'Template'
    TabOrder = 21
    Height = 51
    Width = 210
    object btnChooseTemplate: TcxButton
      Left = 11
      Top = 18
      Width = 61
      Height = 24
      Action = ActSelectTemplate
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 5
      TabOrder = 0
    end
    object BtnSave: TcxButton
      Left = 77
      Top = 18
      Width = 62
      Height = 24
      Action = ActSave
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000041744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E53657453796D626F6C73333B436F6E646974696F6E616C46
        6F726D617474696E673B9DC5ED720000025449444154785EAD935D6C4B6118C7
        DF2A1BFD38DA4E6DB122D5B5DBAC92CA1CC4B0656CA9CE6ABE3A22662C9DB656
        5F4985359D91655DCC47EDA327CA120417222415DA1925F4424AB6650BDD8A0B
        71C1848CC415B3C7FB9EB4F45CB8907993DFB938CFF3FFE579DEE445003021D8
        CF3F1C1E66322605C3C7FC11D8996C54C768D01EAF06D93A311D1A646D57234B
        7B16DADD96C586153902E10EB7F2AA95A9800D0E8581C81202B6F92BC4D097F1
        281A1D7F813EFF1C409FC6FAD0C71FCFD8B09A164BAA9A95FE5BCF1BA07F8401
        739B9104A7FD16D49E51E1F01037FC9D0D4FCA2DA0E455CDAAF0EDBE2608BF3D
        06CECB4B416F4B77E15A6AF21DF0E3BB4D21A14478CE02816CEBF1798FBB074F
        42E84D3D345D2F84129BFC12AE89493D21E097EFCF5C53E32907936BB69F5E27
        53113B46B4FE50A6FF66A411824307E0ECDD52D0D765448452FE0C124EBEC4A9
        D5A7CBA0F7C33908F47B60674BDE68F1AE9916833DC3D7756F2F04861DC0840C
        603CA878AFA40579E4F25659B123499052B05DEA719C5F043DAF9C303872031A
        2E1AC1D76D879E980BBAC26B61E391B9633945227D7C32DE4A731A47C0C38868
        93A4639F570757222678FAAE13825127F89EE8C17C6A3EE82AA813A4878443AF
        5BD0B26A294780E23B51B891B178B4C03C2A01EFC3D5E0BAB618E8CAE9BDB826
        273D0F626E148C36227A9B842B58827FC425126D99D857D39A0DAD779643716D
        FAB759DAD41564CDFBC36E14787914F9070EA3FC4A8A2BC8DF42111212596EA9
        F04291350DD48582FAC4E80B378B114147D824E60AB8203E868A8F2D62A57F39
        FFE5354E885F4F2C8B1CABF609A90000000049454E44AE426082}
      OptionsImage.Spacing = 5
      TabOrder = 1
    end
    object BtnDelete: TcxButton
      Left = 144
      Top = 18
      Width = 62
      Height = 24
      Action = ActDelete
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000025744558745469746C650052656D6F76655069766F744669656C643B
        44656C6574653B52656D6F76653B768CC6910000020849444154785E85926B48
        935100860F855F53C8A01BA821A8350A216B35A2162D14095611D42A8A0505B2
        08D12E643F4A2BE8C6A08BA51526F647A83FC92408A21F927C4A971F1544422B
        8C925A48514841FFDECE03479A143978C6CB7B61DFBE738CFB4CB5786F36ADED
        07B4F326CF9D080C6D88FAA31D1705683C974D961BEF456C8D9F6D4FE9D7B33E
        101ACF6605F09FDCB398FCFE9A959D1F52CD1A4B5FD7584FBB7EFABD1AB97C56
        8F6A238380C623A343D76E6EB235EE5166A757875B334D75FADAD1A26FDD29FD
        E8BBADE1F3C7018D47263A74D9B8ADC9B3145A8A6EAD587AE5554342A3979AF4
        A5F3A4BEA7DB008D27323A74D9B8AD99E2FECB0C4B4957A8AAED79729B3E9DAE
        57F65C23A0854746C7753DB73580C8E7B1BA97851E3F4D6ED7C8D13ABD3FB40B
        D0C223A343D76D269C734157D5928127F50965538D7AB77F87DEEEDD02683C91
        D1A1FBD73DB85AB9D81FD813D7E713490DEF8B2BB37BA31EAC8B021A8F4C74E8
        4EB807178295FEC3ADEBF5F1C04E6512310DC56B74AF3AA26365C16B80C623A3
        43D76EFEDC8353E50BEFDEAF8DEAF5E66ABD8C45D4BB2AAC23A50B78616580C6
        23A343F74CF9A241B6C67DCD393C6FFE8D9E704877968774B0A482A32AB6CC02
        341E199DE6D2202F73AEDB1A6FFC1E341455B402DA1D55009CCECD8B9DE78D1F
        E134CB74F76B33D1846480CEC9A1904DEE4950CAC304B4F3FE950772F3DF1917
        4D283193A12E0000000049454E44AE426082}
      OptionsImage.Spacing = 5
      TabOrder = 2
    end
  end
  object cbBank: TcxLookupComboBox
    Left = 89
    Top = 34
    Properties.CharCase = ecUpperCase
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'ACCT'
    Properties.ListColumns = <
      item
        FieldName = 'ACCT'
      end
      item
        FieldName = 'NAME'
      end
      item
        FieldName = 'TRUST'
      end
      item
        FieldName = 'CURRENCY'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmAxiom.dsBankList
    Properties.OnChange = cbBankPropertiesChange
    Properties.OnCloseUp = cbBankPropertiesCloseUp
    TabOrder = 23
    OnClick = cbBankClick
    Width = 102
  end
  object dsReceipt: TUniDataSource
    DataSet = qryReceipt
    Left = 15
    Top = 114
  end
  object qryReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.*, R.ROWID FROM RECEIPT R WHERE 1 = 2'
      '')
    CachedUpdates = True
    Left = 21
    Top = 269
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, NMEMO.BILL_TO,DISPATCHED, GENERATED, NMEMO, REFNO' +
        ', FEES, DISB, ANTD, SUND, TAX, TRUST, FEES_PAID, DISB_PAID, '
      
        'ANTD_PAID, SUND_PAID, TAX_PAID, RV_NMEMO, RV_TYPE, FEESTAX, FEES' +
        'TAX_PAID,DISBTAX,DISBTAX_PAID,UPCREDTAX,UPCREDTAX_PAID,'
      'ANTDTAX,ANTDTAX_PAID, SUNDTAX, SUNDTAX_PAID,'
      'NMEMO.TOTAL, NMEMO.OWING,'
      'UPCRED, UPCRED_PAID'
      'FROM NMEMO WHERE NMEMO.NMEMO = :NMEMO'
      'ORDER BY NMEMO DESC'
      ''
      ''
      '/*'
      'SELECT * FROM NMEMO WHERE NMEMO.NMEMO = :NMEMO'
      '*/')
    Left = 92
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, DESCR, AMOUNT, ACCT, NMATTER, CREATED, NCLIENT, P' +
        'AYER,'
      
        '               REFNO, TRUST, TYPE, BILLED, CLEARED, DCLEARDATE, ' +
        'NALLOC,'
      
        '               NRECEIPT, NMEMO, NJOURNAL, NCHEQUE, CLIENT_NAME, ' +
        'MATTER_DESC,'
      '               OVERDRAWN, FEE, OUTLAY, SUNDRY, SPEC_PURPOSE,'
      
        '               TAX, ROWID, DISB, ANTD, UPCRED, NCHEQREQ, BANK,NS' +
        'UBBILL, BILLED_AMOUNT,'
      '               DISB_NALLOC_RECEIPT, TAXCODE'
      'FROM ALLOC'
      'WHERE NRECEIPT = :P_Nreceipt')
    CachedUpdates = True
    Left = 141
    Top = 281
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nreceipt'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    KeyFields = 'ROWID'
    SQLDelete.Strings = (
      'delete from ledger where invoice = :invoice')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, TYPE, REFNO, DESCR, REASON, DEBIT, CREDIT, FEESDR,' +
        ' FEESCR, DISBDR, DISBCR, ANTDDR, ANTDCR, '
      
        'SUNDDR, SUNDCR, INVOICE, UPCREDDR, UPCREDCR,NSUBBILL, NSUBBILL_I' +
        'D, TAXCODE, TAX, FILEID, NALLOC'
      'FROM LEDGER'
      'WHERE 1=2')
    CachedUpdates = True
    BeforeInsert = qryLedgerBeforeInsert
    AfterInsert = qryLedgerAfterInsert
    BeforeScroll = qryLedgerBeforeScroll
    AfterScroll = qryLedgerAfterScroll
    Left = 93
    Top = 360
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      OnChange = qryLedgerREFNOChange
      Size = 40
    end
    object qryLedgerDESCR: TStringField
      FieldName = 'DESCR'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 120
    end
    object qryLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object qryLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object qryLedgerFEESDR: TFloatField
      FieldName = 'FEESDR'
    end
    object qryLedgerFEESCR: TFloatField
      FieldName = 'FEESCR'
    end
    object qryLedgerDISBDR: TFloatField
      FieldName = 'DISBDR'
    end
    object qryLedgerDISBCR: TFloatField
      FieldName = 'DISBCR'
    end
    object qryLedgerANTDDR: TFloatField
      FieldName = 'ANTDDR'
    end
    object qryLedgerANTDCR: TFloatField
      FieldName = 'ANTDCR'
    end
    object qryLedgerSUNDDR: TFloatField
      FieldName = 'SUNDDR'
    end
    object qryLedgerSUNDCR: TFloatField
      FieldName = 'SUNDCR'
    end
    object qryLedgerINVOICE: TLargeintField
      FieldName = 'INVOICE'
    end
    object qryLedgerUPCREDDR: TFloatField
      FieldName = 'UPCREDDR'
    end
    object qryLedgerUPCREDCR: TFloatField
      FieldName = 'UPCREDCR'
    end
    object qryLedgerNSUBBILL: TLargeintField
      FieldName = 'NSUBBILL'
    end
    object qryLedgerNSUBBILL_ID: TLargeintField
      FieldName = 'NSUBBILL_ID'
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryLedgerNALLOC: TLargeintField
      FieldName = 'NALLOC'
    end
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 159
    Top = 358
  end
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ACCT, "NAME", CASH_AT_BANK, RECEIPT, BALANCE, CL_BALANCE,' +
        ' TRUST, LASTRCP, CLEARANCE,BANK_CLEARANCE, CURRENCY, ROWID'
      'FROM BANK '
      'WHERE ACCT = :P_Acct')
    Left = 199
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT M.NCLIENT, FILEID, NMATTER, TITLE, SHORTDESCR, AUTHOR, CL' +
        'IENT_NAME'
      'FROM MATTER M'
      'WHERE FILEID = :P_File')
    Left = 343
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qryCheckReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT RCPTNO FROM RECEIPT WHERE ACCT = :P_Acct AND RCPTNO = :P_' +
        'Rcptno')
    Left = 271
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Rcptno'
        Value = nil
      end>
  end
  object popGrid: TPopupMenu
    OnPopup = popGridPopup
    Left = 359
    Top = 298
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
    object popGridDistribute: TMenuItem
      Caption = '&Distribute'
      OnClick = popGridDistributeClick
    end
    object popGridLine1: TMenuItem
      Caption = '-'
    end
    object popGridOpenMatter: TMenuItem
      Caption = '&Open Matter'
      OnClick = popGridOpenMatterClick
    end
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CHQNO, ACCT, AMOUNT FROM CHEQUE'
      'WHERE NCHEQUE = :P_Ncheque')
    Left = 264
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryChequeNallocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CLIENT_NAME, MATTER_DESC, FILEID, AMOUNT, ROWID FROM ALLO' +
        'C WHERE NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 315
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO SET'
      '  DATE_LAST_RECPT = :DATE_LAST_RECPT,'
      '  FEES_PAID = (FEES_PAID + :FEES_PAID),'
      '  DISB_PAID = (DISB_PAID + :DISB_PAID),'
      '  ANTD_PAID = (ANTD_PAID + :ANTD_PAID),'
      '  UPCRED_PAID = (UPCRED_PAID + :UPCRED_PAID),'
      '  SUND_PAID = (SUND_PAID + :SUND_PAID),'
      '  FEESTAX_PAID = (FEESTAX_PAID + :FEESTAX_PAID),'
      '  DISBTAX_PAID = (DISBTAX_PAID + :DISBTAX_PAID),'
      '  UPCREDTAX_PAID = (UPCREDTAX_PAID + :UPCREDTAX_PAID),'
      '  ANTDTAX_PAID = (ANTDTAX_PAID + :ANTDTAX_PAID),'
      '  SUNDTAX_PAID = (SUNDTAX_PAID + :SUNDTAX_PAID),'
      
        '  TAX_PAID = (TAX_PAID + :FEESTAX_PAID + :DISBTAX_PAID + :UPCRED' +
        'TAX_PAID + :ANTDTAX_PAID + :SUNDTAX_PAID)'
      'WHERE'
      '  NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 481
    Top = 463
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATE_LAST_RECPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEES_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM BANK')
    CachedUpdates = True
    Left = 368
    Top = 248
  end
  object qryBankdepInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO BANKDEP'
      
        '  (ACCT, DEPOSIT_DATE, AMOUNT, LAST_NRECEIPT, NBANKDEP, RECONCIL' +
        'ED)'
      'VALUES'
      
        '  (:ACCT, :DEPOSIT_DATE, :AMOUNT, :LAST_NRECEIPT, :NBANKDEP, '#39'N'#39 +
        ')')
    Left = 401
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPOSIT_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LAST_NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = nil
      end>
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
      'WHERE CODE = :CODE'
      'AND TYPE = '#39'R'#39)
    CachedUpdates = True
    Left = 552
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryCheqNCheqReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NMEMO, BILLNO, DESCR, AMOUNT, ROWID'
      'FROM CHEQREQ WHERE NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 534
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryMatterTotals: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '-- getBillDisbTax(:P_File ) AS TaxDisb,'
      '-- getAntDisbTax(:P_File) AS TaxAntd,'
      '-- getWIP(:P_File ) AS unbill_fees,'
      '-- getWIPAmount(:P_File) AS unbill_fees_no_gst,'
      '-- getUnbillDisb(:P_File ) AS unbill_disb,'
      '-- getUnbillDisbAmount( :P_File ) AS unbill_disb_no_gst,'
      '-- getAntDisb(:P_File ) AS unbill_antd,'
      '-- getAntDisbAmount( :P_File ) AS unbill_antd_no_gst,'
      '-- getSundries(:P_File ) AS unbill_sund,'
      '-- getSundriesAmount( :P_File ) AS unbill_sund_no_gst,'
      ' nvl(getClearedTrustAmount(:P_File),0) AS cl_trust_bal,'
      '-- getTrustBalAmount(:P_File ) AS trust_bal,'
      '-- getDebtorsAmount(:P_File ) AS debtors,'
      '-- getUbilledCheqReqAmount(:P_File ) AS unbilled_cheqreq,'
      '-- getUnconCheqReq(:P_File) AS uncon_cheqreq,'
      '-- getBillDisbAmount(:P_File) AS BILL_DISB,'
      '-- getBillFees(:P_File) AS BILL_FEES,'
      '-- getBillSundriesAmount(:P_File) AS BILL_SUND,'
      '-- getBillCheqReqs(:P_File) AS BILL_CREQ,'
      '-- getReceiptAmount(:P_File) AS RECVD,'
      '-- getUnbillCredAmount(:P_File) AS UNBILL_CRED,'
      '-- getUnbillCredTax(:P_File) AS UNBILL_CRED_TAX,'
      '-- getUnconCheqReqTax(:P_File) AS uncon_cheqreq_tax,'
      '-- getBillCredAmount(:P_File) AS BILL_CRED,'
      '-- getBillCredTax(:P_File) AS BILL_CRED_TAX,'
      '-- getBillFeesTax(:P_File) AS BILL_FEE_TAX,'
      '-- getPaidFees(:P_File) AS RECVD_FEES,'
      '-- getPaidDisbAmount(:P_File) AS RECVD_DISB,'
      '-- getPaidSundries(:P_File) AS RECVD_SUND,'
      '-- getRecvdCheqReqs(:P_File) AS RECVD_CREQ,'
      '-- getBillCheqReqsTax(:P_File) AS BILL_CREQ_TAX,'
      '-- getRecvdCheqReqs(:P_File) AS BILL_NMEMO_CREQ,'
      '-- getRecvdCheqReqsTax(:P_File) AS BILL_NMEMO_CREQ_TAX,'
      '-- getUnbilledCheqReqTax(:P_File ) AS unbilled_cheqreq_tax,'
      ' nvl(getBillCredAmountOwing(:P_Bill),0) as BILL_CRED_OWING'
      ' FROM'
      ' dual')
    Left = 787
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Bill'
        Value = nil
      end>
    object qryMatterTotalsCL_TRUST_BAL: TFloatField
      FieldName = 'CL_TRUST_BAL'
    end
    object qryMatterTotalsBILL_CRED_OWING: TFloatField
      FieldName = 'BILL_CRED_OWING'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 822
    Top = 208
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object styTrustOD: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object styFooter: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = dbgrLedger
    PopupMenus = <
      item
        GridView = tvLedger
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = popGrid
      end>
    UseBuiltInPopupMenus = False
    Left = 49
    Top = 289
  end
  object qrySubBills: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where owing <> 0')
    Left = 386
    Top = 336
  end
  object dsSubBills: TUniDataSource
    DataSet = qrySubBills
    Left = 377
    Top = 385
  end
  object qrySubBillUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE SUBBILLS SET'
      '  --DATE_LAST_RECPT = :DATE_LAST_RECPT,'
      '  FEES_PAID = (FEES_PAID + :FEES_PAID),'
      '  DISB_PAID = (DISB_PAID + :DISB_PAID),'
      '  ANTD_PAID = (ANTD_PAID + :ANTD_PAID),'
      '  UPCRED_PAID = (UPCRED_PAID + :UPCRED_PAID),'
      '  SUND_PAID = (SUND_PAID + :SUND_PAID),'
      '  FEESTAX_PAID = (FEESTAX_PAID + :FEESTAX_PAID),'
      '  DISBTAX_PAID = (DISBTAX_PAID + :DISBTAX_PAID),'
      '  UPCREDTAX_PAID = (UPCREDTAX_PAID + :UPCREDTAX_PAID),'
      '  ANTDTAX_PAID = (ANTDTAX_PAID + :ANTDTAX_PAID),'
      '  SUNDTAX_PAID = (SUNDTAX_PAID + :SUNDTAX_PAID),'
      
        '  TAX_PAID = (TAX_PAID + :FEESTAX_PAID + :DISBTAX_PAID + :UPCRED' +
        'TAX_PAID + :ANTDTAX_PAID + :SUNDTAX_PAID)'
      'WHERE'
      '  NMEMO = :NMEMO'
      '  AND NSUBBILL_ID = :NSUBBILL')
    CachedUpdates = True
    Left = 291
    Top = 394
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FEES_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISB_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTD_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUND_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FEESTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DISBTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ANTDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NSUBBILL'
        Value = nil
      end>
  end
  object qrySubBillLocate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nmemo = :nmemo'
      'and nsubbill_id = :nsubbill')
    Left = 424
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'nsubbill'
        Value = nil
      end>
  end
  object qrySubBilltotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select (FEES + DISB + UPCRED + ANTD + SUND + TAX) as subbilltota' +
        'l from subbills'
      'where nsubbill_id = :nsubbill_id'
      '')
    Left = 535
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nsubbill_id'
        Value = nil
      end>
  end
  object qrySubBillLookup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from subbills'
      'where nsubbill_id = :nsubbill'
      'and nmemo = :nmemo')
    Left = 510
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nsubbill'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryFilterSubBill: TUniQuery
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM SUBBILLS'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select DEBTOR_NAME, OWING, NSUBBILL_ID from subbills'
      'where nmemo = :nmemo'
      'and owing <> 0')
    Left = 453
    Top = 335
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsFilterSubBill: TUniDataSource
    DataSet = qryFilterSubBill
    Left = 462
    Top = 400
  end
  object qryCheqReqTrans: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHEQREQ_TRANS'
      '  (CREATED, AMOUNT, NALLOC, NCHEQREQ, OPERATOR)'
      'VALUES'
      '  (:CREATED, :AMOUNT, :NALLOC, :NCHEQREQ, :OPERATOR)')
    SQLDelete.Strings = (
      'DELETE FROM CHEQREQ_TRANS'
      'WHERE'
      '  NCHEQREQ = :NCHEQREQ')
    SQLUpdate.Strings = (
      'UPDATE CHEQREQ_TRANS'
      'SET'
      '  CREATED = :CREATED,'
      '  AMOUNT = :AMOUNT,'
      '  NALLOC = :NALLOC,'
      '  NCHEQREQ = :NCHEQREQ,'
      '  OPERATOR = :OPERATOR'
      'WHERE'
      '  NCHEQREQ = :OLD_NCHEQREQ')
    SQLLock.Strings = (
      'SELECT * FROM CHEQREQ_TRANS'
      'WHERE'
      '  NCHEQREQ = :NCHEQREQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  T.NCHEQREQ = :NCHEQREQ')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT T.ROWID, T.* FROM CHEQREQ_TRANS T WHERE 1=2')
    CachedUpdates = True
    Left = 630
    Top = 241
  end
  object procgetDebtorsAmount: TUniStoredProc
    StoredProcName = 'getBillDebtorsAmount'
    Connection = dmAxiom.uniInsight
    Left = 747
    Top = 294
  end
  object qryBillPayment: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '   sum(AMOUNT) as payment'
      'FROM'
      '   CHEQREQ'
      'WHERE'
      '   NMEMO= :nmemo'
      'AND'
      '   TRUST = '#39'T'#39
      ''
      ''
      '/*'
      'SELECT'
      '   sum(AMOUNT) as payment'
      'FROM'
      '   BANK ,CHEQREQ'
      'WHERE'
      '   billno = :billno'
      '*/'
      ''
      ''
      '/*'
      'select '
      '  sum(credit) as payment'
      'from'
      '  ledger'
      'where '
      '  refno = :refno'
      'group by refno'
      '*/')
    Left = 549
    Top = 462
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsPaymentType: TUniDataSource
    DataSet = qryPaymentType
    Left = 782
    Top = 251
  end
  object qryPaymentType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from BANK_CLEARANCE_DAYS'
      'order by code')
    Left = 749
    Top = 251
  end
  object qryFeeDist: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feeDIST'
      'where nmemo = :nmemo'
      'and alloc_amt > 0')
    Left = 883
    Top = 244
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
        'name, :created_date)')
    Left = 892
    Top = 313
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
      end
      item
        DataType = ftUnknown
        Name = 'created_date'
        Value = nil
      end>
  end
  object qryTaxRate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code from taxtype')
    Left = 589
    Top = 336
  end
  object dsTaxRate: TUniDataSource
    DataSet = qryTaxRate
    Left = 645
    Top = 329
  end
  object qryBankClearance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'bank_clearance_days'
      'where code = :code')
    Left = 584
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object qryReceiptTax: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select tax, rowid from receipt where nreceipt = :nreceipt')
    CachedUpdates = True
    Left = 413
    Top = 467
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nreceipt'
        Value = nil
      end>
  end
  object ActionManager1: TActionManager
    Left = 683
    Top = 464
    StyleName = 'Platform Default'
    object actOk: TAction
      Caption = 'OK'
      OnExecute = actOkExecute
      OnUpdate = actOkUpdate
    end
  end
  object qryFeeReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select nfee, amount from fee'
      'where nmemo = :nmemo'
      'and type = '#39'N'#39)
    Left = 980
    Top = 267
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryFeeRcptUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update fee'
      'set fees_recvd = :fees_recvd, date_last_recpt = :date_last_recpt'
      'where'
      'nfee = :nfee')
    Left = 992
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fees_recvd'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'date_last_recpt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nfee'
        Value = nil
      end>
  end
  object qryFeeReceiptTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select sum(amount) as total_fees from fee'
      'where nmemo = :nmemo')
    Left = 1033
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object qryReceiptReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'receipt_req'
      'where'
      'NRECEIPTREQ = :NRECEIPTREQ')
    Left = 752
    Top = 529
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPTREQ'
        Value = nil
      end>
  end
  object PropsReceipt: TcxPropertiesStore
    Components = <
      item
        Component = cbBankImport
        Properties.Strings = (
          'Text')
      end
      item
        Component = cbTrustCheck
        Properties.Strings = (
          'Checked')
      end
      item
        Component = chkCheckMultipleMatters
        Properties.Strings = (
          'Checked')
      end
      item
        Component = chkNoExit
        Properties.Strings = (
          'Checked')
      end
      item
        Component = chkPrint
        Properties.Strings = (
          'Checked')
      end
      item
        Component = chkUpdateStatus
        Properties.Strings = (
          'Checked')
      end
      item
        Component = cmbPrinter
        Properties.Strings = (
          'Text')
      end
      item
        Component = edtSaveNeAmount
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbBranch
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbChqBank
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbChqno
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbDesc
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbDrawer
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbEmail
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbPayee
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbPostcode
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbState
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbStreet
        Properties.Strings = (
          'Text')
      end
      item
        Component = tbSuburb
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'PropsReceipt'
    StorageType = stStream
    Left = 952
    Top = 448
  end
  object ActionTemplates: TActionList
    Left = 878
    Top = 446
    object ActSave: TAction
      Caption = 'Save'
      OnExecute = ActSaveExecute
    end
    object ActDelete: TAction
      Caption = 'Delete'
      OnExecute = ActDeleteExecute
    end
    object ActSelectTemplate: TAction
      Caption = 'Template'
      OnExecute = btnChooseTemplateClick
    end
  end
end
