object frmCheque: TfrmCheque
  Left = 745
  Top = 204
  Caption = 'Payment Entry'
  ClientHeight = 554
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    971
    554)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 231
    Top = 12
    Width = 43
    Height = 14
    AutoSize = False
    Caption = '&Bank '
  end
  object Label2: TLabel
    Left = 9
    Top = 14
    Width = 56
    Height = 14
    AutoSize = False
    Caption = '&Date'
  end
  object Label8: TLabel
    Left = 9
    Top = 98
    Width = 71
    Height = 13
    AutoSize = False
    Caption = '&Reason'
    FocusControl = tbDesc
  end
  object Label4: TLabel
    Left = 9
    Top = 41
    Width = 82
    Height = 15
    AutoSize = False
    Caption = 'Payment #'
    FocusControl = tbChqno
  end
  object Label5: TLabel
    Left = 9
    Top = 69
    Width = 51
    Height = 15
    AutoSize = False
    Caption = 'Pa&y'
  end
  object Label7: TLabel
    Left = 231
    Top = 41
    Width = 82
    Height = 15
    AutoSize = False
    Caption = 'A&uthorised by'
  end
  object lblBankName: TLabel
    Left = 393
    Top = 14
    Width = 173
    Height = 14
    AutoSize = False
    ShowAccelChar = False
  end
  object lblAuthByName: TLabel
    Left = 393
    Top = 42
    Width = 173
    Height = 16
    AutoSize = False
  end
  object lblAmountMsg: TLabel
    Left = 748
    Top = 467
    Width = 42
    Height = 17
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 659
    ExplicitTop = 454
  end
  object lblTotal: TLabel
    Left = 895
    Top = 467
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 806
    ExplicitTop = 454
  end
  object lblBankTransferMsg: TLabel
    Left = 257
    Top = 157
    Width = 171
    Height = 14
    AutoSize = False
    Caption = '&General Bank for Trust Transfer'
    FocusControl = cbBankTransfer
    Visible = False
  end
  object lblBankTransferName: TLabel
    Left = 496
    Top = 157
    Width = 224
    Height = 14
    AutoSize = False
    Caption = '(Blank for none)'
    ShowAccelChar = False
    Visible = False
  end
  object Label11: TLabel
    Left = 9
    Top = 128
    Width = 70
    Height = 14
    AutoSize = False
    Caption = '&Amount'
  end
  object lblUnallocatedMsg: TLabel
    Left = 548
    Top = 467
    Width = 93
    Height = 17
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'Unallocated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = 459
    ExplicitTop = 454
  end
  object lblUnallocated: TLabel
    Left = 738
    Top = 467
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = 649
    ExplicitTop = 454
  end
  object lblTax: TLabel
    Left = 883
    Top = 441
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 794
    ExplicitTop = 428
  end
  object lblBalance: TLabel
    Left = 784
    Top = 441
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 695
    ExplicitTop = 428
  end
  object Label3: TLabel
    Left = 9
    Top = 157
    Width = 64
    Height = 13
    AutoSize = False
    Caption = 'Printer'
  end
  object lblName: TLabel
    Left = 393
    Top = 69
    Width = 105
    Height = 15
    Caption = '                                   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnQuery: TSpeedButton
    Left = 936
    Top = 476
    Width = 25
    Height = 23
    Anchors = [akRight, akBottom]
    Visible = False
    OnClick = SpeedButton1Click
    ExplicitLeft = 847
    ExplicitTop = 463
  end
  object lblAddress: TLabel
    Left = 393
    Top = 88
    Width = 238
    Height = 54
    AutoSize = False
    ShowAccelChar = False
    WordWrap = True
  end
  object tbChqno: TEdit
    Left = 94
    Top = 39
    Width = 98
    Height = 23
    MaxLength = 8
    TabOrder = 1
    OnExit = tbChqnoExit
  end
  object tbDesc: TEdit
    Left = 94
    Top = 95
    Width = 291
    Height = 23
    MaxLength = 100
    TabOrder = 3
    OnExit = tbPayeeExit
    OnKeyPress = tbDescKeyPress
  end
  object cbBankTransfer: TComboBox
    Left = 436
    Top = 154
    Width = 53
    Height = 23
    Sorted = True
    TabOrder = 16
    Visible = False
    OnClick = cbBankTransferClick
  end
  object neAmount: TNumberEdit
    Left = 94
    Top = 123
    Width = 87
    Height = 25
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clWindowText
    FontAbove.Height = -13
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clWindowText
    FontBelow.Height = -13
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clWindowText
    FontBetween.Height = -13
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = True
    TabOrder = 4
    OnExit = neAmountExit
  end
  object sbarBalances: TStatusBar
    Left = 0
    Top = 535
    Width = 971
    Height = 19
    Panels = <
      item
        Width = 130
      end
      item
        Width = 130
      end
      item
        Width = 130
      end
      item
        Width = 130
      end
      item
        Width = 130
      end
      item
        Width = 110
      end>
    SizeGrip = False
  end
  object cmbPrinter: TComboBox
    Left = 94
    Top = 154
    Width = 147
    Height = 23
    Style = csDropDownList
    TabOrder = 5
    OnChange = cmbPrinterChange
  end
  object edtImport: TEdit
    Left = 840
    Top = 69
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 9
  end
  object btnImport: TcxButton
    Left = 895
    Top = 94
    Width = 66
    Height = 24
    Anchors = [akTop, akRight]
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
    TabOrder = 10
    OnClick = btnImportClick
  end
  object rgType: TcxRadioGroup
    Left = 840
    Top = 1
    Anchors = [akTop, akRight]
    Caption = 'Type'
    Properties.Items = <
      item
        Caption = 'C&heque'
      end
      item
        Caption = 'D&irect Debit'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Transparent = True
    OnClick = rgTypeClick
    Height = 63
    Width = 121
  end
  object dbgrLedger: TcxGrid
    Left = 5
    Top = 182
    Width = 956
    Height = 243
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 11
    OnEnter = cxGrid1Enter
    OnExit = cxGrid1Exit
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      OnEditing = tvLedgerEditing
      OnEditKeyPress = tvLedgerEditKeyPress
      DataController.DataModeController.GridMode = True
      DataController.DataSource = dsLedger
      DataController.KeyFieldNames = 'UNIQUEID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 49
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 11
      Preview.LeftIndent = 19
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownRows = 4
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Matter'
          'Ledger'
          'Account')
        Properties.ReadOnly = False
        Properties.OnCloseUp = tvLedgerTYPEPropertiesCloseUp
        MinWidth = 18
        Width = 50
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
        Properties.ReadOnly = False
        Properties.OnButtonClick = tvLedgerREFNOPropertiesButtonClick
        Properties.OnValidate = tvLedgerREFNOPropertiesValidate
        MinWidth = 18
        Width = 49
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'LONGDESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        MinWidth = 18
        Options.Focusing = False
        Options.ShowEditButtons = isebAlways
        Width = 87
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnEditValueChanged = tvLedgerREASONPropertiesEditValueChanged
        Properties.OnValidate = tvLedgerREASONPropertiesValidate
        MinWidth = 18
        Width = 150
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Tax Rate'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsTaxRate
        MinWidth = 18
      end
      object tvLedgerAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = tvLedgerAMOUNTPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 18
        Width = 56
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 18
        Width = 34
      end
      object tvLedgerSUNDRYTYPE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'SUNDRYTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 15
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSundryType
        MinWidth = 18
        Width = 44
      end
      object tvLedgerANTICIPATED: TcxGridDBColumn
        DataBinding.FieldName = 'ANTICIPATED'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
      end
      object tvLedgerORIGINAL_TX: TcxGridDBColumn
        DataBinding.FieldName = 'ORIGINAL_TX'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
      end
      object tvLedgerFILEID: TcxGridDBColumn
        DataBinding.FieldName = 'FILEID'
        Visible = False
        MinWidth = 18
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object chkPrint: TcxCheckBox
    Left = 730
    Top = 507
    Anchors = [akRight, akBottom]
    Caption = 'Print?'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    OnClick = chkPrintClick
  end
  object btnOK: TcxButton
    Left = 795
    Top = 504
    Width = 79
    Height = 27
    Action = actOK
    Anchors = [akRight, akBottom]
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
      00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008000FF00FF
      00FF00FF00FF000000FFFF00FF0000FF00FF00FF00FF00FF00FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00008000FF00FF00FF0000
      00FFFF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF000000FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF00FF00FF0000
      00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF00FF0000
      00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00FF00FF
      00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
      00FF00FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00008000FF00FF00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF00FF00FF00FF000000FFFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 14
  end
  object btnCancel: TcxButton
    Left = 880
    Top = 504
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
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
    TabOrder = 15
    OnClick = btnCancelClick
  end
  object grpDirectDebit: TcxGroupBox
    Left = 4
    Top = 431
    Anchors = [akLeft, akBottom]
    Caption = 'Direct Debit Payments'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Transparent = True
    Visible = False
    Height = 73
    Width = 345
    object cxLabel1: TcxLabel
      Left = 8
      Top = 18
      Caption = 'BSB'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 44
      Caption = 'Account'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 137
      Top = 18
      Caption = 'Account No'
      Transparent = True
    end
    object dfBSB: TcxTextEdit
      Left = 59
      Top = 17
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 72
    end
    object dfAccount: TcxTextEdit
      Left = 207
      Top = 17
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 133
    end
    object dfAccountName: TcxTextEdit
      Left = 59
      Top = 44
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 281
    end
  end
  object tbPayee: TcxButtonEdit
    Left = 94
    Top = 66
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
          FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
          00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
          00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
          FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
          00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 2
    OnExit = tbPayeeExit
    OnKeyPress = tbDescKeyPress
    Width = 291
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 94
    Top = 10
    AutoSize = False
    EditValue = 43760.7029603588d
    Properties.AutoSelect = False
    Properties.DateButtons = [btnClear, btnNow, btnToday]
    Properties.DateOnError = deToday
    Properties.ImmediatePost = True
    Properties.ShowTime = False
    Properties.WeekNumbers = True
    Properties.OnValidate = dtpDatePropertiesValidate
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Height = 23
    Width = 99
  end
  object cbBankImport: TComboBox
    Left = 840
    Top = 94
    Width = 53
    Height = 23
    Style = csDropDownList
    Anchors = [akTop, akRight]
    Sorted = True
    TabOrder = 8
    OnClick = cbBankClick
  end
  object gbChequeTemplate: TcxGroupBox
    Left = 513
    Top = 483
    Anchors = [akRight, akBottom]
    Caption = 'Template'
    TabOrder = 7
    Height = 50
    Width = 210
    object btnChooseTemplate: TcxButton
      Left = 11
      Top = 20
      Width = 61
      Height = 24
      Caption = 'Add/Edit'
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = btnChooseTemplateClick
    end
    object BtnSave: TcxButton
      Left = 77
      Top = 20
      Width = 62
      Height = 24
      Action = ActSaveTemplte
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
      TabOrder = 1
    end
    object BtnDelete: TcxButton
      Left = 144
      Top = 20
      Width = 62
      Height = 24
      Action = ActDeleteTemplate
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
      TabOrder = 2
    end
  end
  object chkNoExit: TcxCheckBox
    Left = 5
    Top = 509
    Anchors = [akLeft, akBottom]
    Caption = 'Keep cheque form open after posting?'
    TabOrder = 18
    OnContextPopup = chkNoExitContextPopup
  end
  object chkReplacementCheque: TcxCheckBox
    Left = 246
    Top = 509
    Anchors = [akLeft, akBottom]
    Caption = 'Issue replacement cheque'
    TabOrder = 19
    Visible = False
    OnClick = chkReplacementChequeClick
  end
  object cbBank: TcxLookupComboBox
    Left = 312
    Top = 11
    Properties.CharCase = ecUpperCase
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 12
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
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmAxiom.dsBankList
    Properties.OnChange = cbBankPropertiesChange
    TabOrder = 20
    Width = 73
  end
  object cbAuthBy: TcxLookupComboBox
    Left = 312
    Top = 39
    Properties.DropDownAutoSize = True
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmAxiom.dsEmplyeeList
    Properties.OnEditValueChanged = cbAuthByPropertiesEditValueChanged
    TabOrder = 21
    Width = 73
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'C.PRINTER, C.NCHEQUE, C.CREATED, '
      '   C.ACCT, C.TYPE, C.PAYEE, '
      '   C.CHQNO, C.APPROVAL, C.REQBY, '
      '   C.RVBY, C.REVERSED, C.NTRANS, '
      '   C.BANKED, C.TRUST, C.SUFCHQ, '
      '   C.PRESENTED, C.DESCR,'
      '   C.PRINTED, C.RECONDATE, C.NNAME, '
      '   C.AMOUNT, C.EFT, C.CHEQUE_GROUP_ID, '
      '   C.CHEQUE_NO, C.TAKE_ON, C.NJOURNAL, '
      '   C.WHO, C.BILLING_TAXCODE, C.ROWID'
      'FROM CHEQUE C'
      'WHERE C.NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 73
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT FILEID FROM MATTER')
    Left = 104
    Top = 232
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' NAME, CASH_AT_BANK, LASTCHQ, CHEQUE, TRUST,'
      ' CL_BALANCE, BALANCE, CURRENCY, ROWID'
      'FROM'
      ' BANK'
      'WHERE ACCT = :P_Code'
      'AND ENTITY = :P_Entity')
    Left = 168
    Top = 232
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
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.FILEID, DESCR, AMOUNT, ACCT, ALLOC.NMATTER, NRECEIP' +
        'T, '
      
        '              NJOURNAL, NMEMO, CREATED, NCLIENT, PAYER, REFNO, T' +
        'RUST, '
      '              TYPE, BILLED, CLEARED, NALLOC, NCHEQUE,'
      
        '              CLIENT_NAME, MATTER_DESC, OVERDRAWN, SPEC_PURPOSE,' +
        ' TAX, '
      
        '              TAXCODE, SUNDRYTYPE, PRIORBALANCE, NCHEQREQ, BANK,' +
        ' '
      
        '              NINVOICE_PAID, UPCRED, BILLED_AMOUNT, BILLED_TAX_A' +
        'MOUNT, ROWID '
      'FROM ALLOC '
      'WHERE 1 = 2')
    CachedUpdates = True
    AfterInsert = qryAllocsAfterInsert
    Left = 136
    Top = 232
  end
  object qryLedger: TUniQuery
    UpdatingTable = 'LGRALLOC'
    KeyFields = 'lgralloc_id'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT TYPE, REFNO, LONGDESC, REASON, AMOUNT, BILLED, UNIQUEID, ' +
        'TAXCODE, TAX, WITHHOLD, SUNDRYTYPE, '
      
        'NCREDITOR, ACCOUNT_NAME, ACCOUNT, BSB, DEP_ACCOUNT_TYPE, NDEPOSI' +
        'TACCOUNT, ANTICIPATED, ORIGINAL_TX, CHART, BAS_TAX,'
      'FILEID, NINVOICE, lgralloc_id, INV_TAX, ROWID'
      'FROM LGRALLOC'
      'WHERE 1=2')
    CachedUpdates = True
    BeforeInsert = qryLedgerBeforeInsert
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    BeforeScroll = qryLedgerBeforeScroll
    AfterScroll = qryLedgerAfterScroll
    Left = 40
    Top = 232
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
      OnChange = qryLedgerTYPEChange
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 40
    end
    object qryLedgerLONGDESC: TStringField
      FieldName = 'LONGDESC'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      OnChange = qryLedgerREASONChange
      Size = 400
    end
    object qryLedgerAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnChange = qryLedgerAMOUNTChange
    end
    object qryLedgerBILLED: TStringField
      FieldName = 'BILLED'
      Size = 1
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      OnChange = qryLedgerTAXCODEChange
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qryLedgerWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
    object qryLedgerSUNDRYTYPE: TStringField
      FieldName = 'SUNDRYTYPE'
      Size = 5
    end
    object qryLedgerACCOUNT_NAME: TStringField
      FieldName = 'ACCOUNT_NAME'
      Size = 85
    end
    object qryLedgerACCOUNT: TStringField
      FieldName = 'ACCOUNT'
      Size = 12
    end
    object qryLedgerBSB: TStringField
      FieldName = 'BSB'
      Size = 7
    end
    object qryLedgerDEP_ACCOUNT_TYPE: TStringField
      FieldName = 'DEP_ACCOUNT_TYPE'
    end
    object qryLedgerANTICIPATED: TStringField
      FieldName = 'ANTICIPATED'
      Size = 1
    end
    object qryLedgerORIGINAL_TX: TStringField
      FieldName = 'ORIGINAL_TX'
      Size = 1
    end
    object qryLedgerCHART: TStringField
      FieldName = 'CHART'
      Size = 12
    end
    object qryLedgerUNIQUEID: TLargeintField
      FieldName = 'UNIQUEID'
    end
    object qryLedgerNCREDITOR: TLargeintField
      FieldName = 'NCREDITOR'
    end
    object qryLedgerNDEPOSITACCOUNT: TLargeintField
      FieldName = 'NDEPOSITACCOUNT'
    end
    object qryLedgerBAS_TAX: TFloatField
      FieldName = 'BAS_TAX'
    end
    object qryLedgerFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryLedgerNINVOICE: TLargeintField
      FieldName = 'NINVOICE'
    end
    object qryLedgerLGRALLOC_ID: TFloatField
      FieldName = 'LGRALLOC_ID'
    end
    object qryLedgerINV_TAX: TFloatField
      FieldName = 'INV_TAX'
    end
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 40
    Top = 264
  end
  object qryCheckCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CHQNO FROM CHEQUE WHERE ACCT = :P_Acct AND CHQNO = :P_Chq' +
        'no')
    CachedUpdates = True
    Left = 8
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Chqno'
        Value = nil
      end>
  end
  object popGrid: TPopupMenu
    OnPopup = popGridPopup
    Left = 8
    Top = 264
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
    object popGridLine1: TMenuItem
      Caption = '-'
    end
    object popGridOpenMatter: TMenuItem
      Caption = '&Open Matter'
      OnClick = popGridOpenMatterClick
    end
    object popGridDistributeAllocations: TMenuItem
      Caption = '&Distribute Allocations'
      OnClick = popGridDistributeAllocationsClick
    end
  end
  object qryInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NINVOICE,CREDITOR, OWING, LAST_PAYMENT, DESCR, NCHEQUE, T' +
        'YPE, ROWID'
      'FROM INVOICE'
      'WHERE ACCT = :Acct'
      '  AND UPPER(REFNO) = :Refno'
      ' ')
    Left = 203
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Refno'
        Value = nil
      end>
  end
  object qryBankBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.*, B.ROWID FROM BANK B')
    Left = 232
    Top = 232
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK')
    Left = 264
    Top = 232
  end
  object qryAllocNInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.*, R.ROWID FROM ALLOC'
      'WHERE NINVOICE = :NINVOICE'
      '')
    Left = 328
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object qryPrinter: TUniQuery
    UpdatingTable = 'PRINTER'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PRINTER'
      'WHERE CODE = :CODE')
    CachedUpdates = True
    Left = 72
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'CODE'
        Value = nil
      end>
  end
  object qryChequeNallocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CLIENT_NAME, MATTER_DESC, FILEID, AMOUNT, DESCR, ROWID FR' +
        'OM ALLOC WHERE NRECEIPT =:P_NRECEIPT')
    CachedUpdates = True
    Left = 360
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_NRECEIPT'
        Value = nil
      end>
  end
  object qryCheqReqBal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(T.AMOUNT,0) - nvl(A.AMOUNT,0) as AMOUNT,nvl(T.TAX,0) ' +
        '- nvl(A.TAX,0) as TAX '
      
        'FROM (SELECT SUM(AMOUNT*-1) as AMOUNT,SUM(TAX*-1) as TAX FROM AL' +
        'LOC WHERE NCHEQREQ = :NCHEQREQ) A, '
      
        '(SELECT sum(T.AMOUNT - get_tax(T.AMOUNT,c.taxcode)) as AMOUNT ,s' +
        'um(get_tax(T.AMOUNT,c.taxcode)) as TAX '
      
        'FROM CHEQREQ_TRANS T,CHEQREQ C WHERE C.NCHEQREQ = T.NCHEQREQ AND' +
        ' C.NCHEQREQ = :NCHEQREQ ) T')
    Left = 102
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
  object qryGetTaxCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, type'
      'FROM TaxDefault'
      'WHERE type = :p_type')
    Left = 461
    Top = 221
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_type'
        Value = nil
      end>
  end
  object qryTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT naccount, chart, descr, ninvoice, refno, amount, tax'
      'FROM transitem'
      'WHERE ninvoice = :p_ninvoice'
      'and ncheque is null')
    Left = 432
    Top = 264
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
      'SELECT legal_cr_amount, trade_cr_amount, amount, tax'
      'FROM invoice'
      'WHERE ninvoice = :p_ninvoice')
    Left = 539
    Top = 243
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_ninvoice'
        Value = nil
      end>
  end
  object qryBulkCheqReqBal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(T.AMOUNT,0) - nvl(A.AMOUNT,0) as AMOUNT,nvl(T.TAX,0) ' +
        '- nvl(A.TAX,0) as TAX '
      
        'FROM (SELECT SUM(AMOUNT*-1) as AMOUNT,SUM(TAX*-1) as TAX FROM AL' +
        'LOC WHERE NCHEQREQ IN(:NCHEQREQ)) A, '
      
        '(SELECT sum(T.AMOUNT - get_tax(T.AMOUNT,c.taxcode)) as AMOUNT ,s' +
        'um(get_tax(T.AMOUNT,c.taxcode)) as TAX '
      'FROM CHEQREQ_TRANS T,CHEQREQ C '
      'WHERE C.NCHEQREQ = T.NCHEQREQ '
      'AND C.NCHEQREQ IN (:NCHEQREQ)) T')
    Left = 138
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 653
    Top = 22
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 665
    Top = 133
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
  object qryTaxRate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code from taxtype')
    Left = 232
    Top = 337
  end
  object dsTaxRate: TUniDataSource
    DataSet = qryTaxRate
    Left = 265
    Top = 336
  end
  object qrySundryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select descr, code'
      'from sundrytype'
      'where entity = :entity'
      'and active = '#39'Y'#39
      'and code not in ('#39'ia'#39','#39'wo'#39')'
      'order by descr')
    Left = 241
    Top = 381
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 278
    Top = 376
  end
  object qryInvestmentTrans: TUniQuery
    KeyFields = 'NINVTRAN'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'NINVTRAN, NMATTER, NDEPOSITACCOUNT, '
      '   TYPE, CREATED,'
      '   DESCR, AMOUNT,Reference,PayeePayor,REV_NINVTRAN'
      'FROM INVESTMENT_TRANS')
    Left = 357
    Top = 346
  end
  object qryNMEMOUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO '
      'SET '
      '  UPCRED_PAID = UPCRED_PAID + :UpCred_paid,'
      '  UPCREDTAX_PAID = UPCREDTAX_PAID + :UPCREDTAX_PAID,'
      '  TAX_PAID = TAX_PAID + :TAX_PAID'
      'WHERE NMEMO = :NMemo')
    CachedUpdates = True
    Left = 512
    Top = 332
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UpCred_paid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCREDTAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX_PAID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMemo'
        Value = nil
      end>
  end
  object qryJournalInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL'
      
        '    (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TYPE, TRUST, SYSTE' +
        'M_DATE, NMEMO)'
      '  VALUES'
      
        '    (:CREATED, :ACCT, :AMOUNT, :NJOURNAL, :REASON,'#39'1'#39', '#39'G'#39', SysD' +
        'ate, :NMEMO)')
    CachedUpdates = True
    Left = 418
    Top = 337
    ParamData = <
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
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REASON'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
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
    Left = 610
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object QryChequeTmpl: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- Get relevant details for cheque template.'
      'SELECT '
      'PRINTER,'
      'CREATED,'
      'ACCT,'
      'TYPE,'
      'PAYEE,'
      'CHQNO,'
      'DESCR,'
      'SYSTEM_DATE,'
      'AMOUNT,'
      'EFT,'
      'CHEQUE_NO,'
      'WHO,'
      'REQBY,'
      'BANKREC_SAVED,'
      'BANK_TRANSFER'
      'TRANSFER_BANK_NAME,'
      'BANK_IMPORT_NAME,'
      'IMPORT_TEXT,'
      'DD_BSB,'
      'DD_ACCOUNT_NO,'
      'DD_ACCOUNT_NAME,'
      'TEMPLATE_NAME,'
      'TEMPLATE_CREATED,'
      'TEMPLATE_MODIFIED,'
      'TEMPLATE_DESCR,'
      'TEMPLATE_MODBY'
      ''
      'FROM Cheque_Tmpl CT'
      '--WHERE CT.TEMPLATE_NAME = :PTEMPLATE_NAME')
    CachedUpdates = True
    Left = 40
    Top = 328
  end
  object ActionList1: TActionList
    Images = dmAxiom.ilstToolbar
    Left = 824
    Top = 134
    object ActSaveTemplte: TAction
      Category = 'Template'
      Caption = 'Save'
      Enabled = False
      OnExecute = ActSaveTemplteExecute
    end
    object ActDeleteTemplate: TAction
      Category = 'Template'
      Caption = 'Delete'
      OnExecute = ActDeleteTemplateExecute
      OnUpdate = ActDeleteTemplateUpdate
    end
    object ActTemplate: TAction
      Category = 'Template'
      Caption = 'Template'
      OnExecute = btnChooseTemplateClick
      OnUpdate = ActTemplateUpdate
    end
    object actOK: TAction
      Caption = 'Save'
      Enabled = False
      ImageIndex = 8
      OnExecute = actOKExecute
      OnUpdate = actOKUpdate
    end
  end
  object QryTransTmpl: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- Get relevant details for cheque template.'
      'SELECT '
      'AMOUNT,'#9'-- 8'#9#9#9'Y'#9'NUMBER (10,7)'#9#9'None'#9#9#9#9#9#9#9'False'
      'ANTICIPATED,'#9'-- 11'#9#9#9'Y'#9'VARCHAR2 (200 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'FILEID,'#9' -- 13'#9#9#9'Y'#9'VARCHAR2 (100 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'LONGDESC,'#9'-- 5'#9#9#9'Y'#9'VARCHAR2 (500 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'NCHEQUE_TMPL,'#9'-- 2'#9#9#9'Y'#9'NUMBER (10)'#9#9'None'#9#9#9#9#9#9#9'False'
      'ORIGINAL_TX,'#9'-- 12'#9#9#9'Y'#9'VARCHAR2 (200 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'REASON,'#9'  --6'#9#9#9'Y'#9'VARCHAR2 (200 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'REFNO,'#9'--4'#9#9#9'Y'#9'VARCHAR2 (200 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'SUNDRYTYPE,'#9'--10'#9#9#9'Y'#9'VARCHAR2 (5 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      'TAX,'#9'-- 9'#9#9#9'Y'#9'NUMBER (10,7)'#9#9'None'#9#9#9#9#9#9#9'False'
      'TAXCODE,'#9'-- 7'#9#9#9'Y'#9'VARCHAR2 (10 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      '--TRANS_TMPL,'#9'--1'#9#9#9'N'#9'NUMBER (10)'#9#9'None'#9#9#9#9#9#9#9'False'
      'TYPE'#9'--3'#9#9#9'Y'#9'VARCHAR2 (20 Byte)'#9#9'None'#9#9#9#9#9#9#9'False'
      ''
      'FROM TRANS_TMPL'
      ''
      'WHERE NCHEQUE_TMPL = :pChequeTmpl')
    CachedUpdates = True
    Left = 120
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pChequeTmpl'
        Value = nil
      end>
  end
  object QryLastChequeTmplID: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- Get relevant details for cheque template.'
      'SELECT '
      'NCHEQUE_TMPL'
      'from CHEQUE_TMPL'
      'where TEMPLATE_DESCR = :PTemplateDescr')
    CachedUpdates = True
    Left = 184
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PTemplateDescr'
        Value = nil
      end>
  end
  object QryDeleteLastTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- Delete Previous entries from Trans_Tmpl'
      'delete from '
      'Trans_Tmpl'
      'where nCheque_Tmpl = :PChequeTemplateID')
    CachedUpdates = True
    Left = 120
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PChequeTemplateID'
        Value = nil
      end>
  end
  object dsLedgerTemplate: TUniDataSource
    DataSet = QryChequeTmpl
    OnStateChange = dsLedgerTemplateStateChange
    Left = 40
    Top = 368
  end
  object qryInvoiceUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE INVOICE SET'
      '  OWING = OWING - :Amount,'
      '  LAST_PAYMENT = :Last_Payment,'
      '  NCHEQUE = :NCHEQUE,'
      
        '  LEGAL_CR_AMOUNT_OWING = decode(LEGAL_CR_AMOUNT_OWING, 0, 0, LE' +
        'GAL_CR_AMOUNT_OWING - :LegalAmount),'
      
        '  TRADE_CR_AMOUNT_OWING = decode(TRADE_CR_AMOUNT_OWING, 0, 0, TR' +
        'ADE_CR_AMOUNT_OWING - :TradeAmount)'
      'WHERE NINVOICE = :NINVOICE'
      '')
    CachedUpdates = True
    Left = 296
    Top = 234
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
        Name = 'LegalAmount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TradeAmount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
end
