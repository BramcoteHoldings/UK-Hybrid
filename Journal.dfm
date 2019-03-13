object frmJournal: TfrmJournal
  Left = 1083
  Top = 631
  Caption = 'Journal Entry'
  ClientHeight = 422
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    827
    422)
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 35
    Top = 7
    Width = 27
    Height = 15
    Caption = 'Date:'
  end
  object Label8: TLabel
    Left = 21
    Top = 31
    Width = 41
    Height = 15
    Caption = 'Reason:'
  end
  object lblAmountMsg: TLabel
    Left = 479
    Top = 349
    Width = 37
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'Credit:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalCredit: TLabel
    Left = 644
    Top = 349
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 482
    Top = 328
    Width = 34
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'Debit:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalDebit: TLabel
    Left = 585
    Top = 328
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 464
    Top = 370
    Width = 46
    Height = 15
    Anchors = [akRight, akBottom]
    Caption = 'Balance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCreditBalance: TLabel
    Left = 644
    Top = 370
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDebitBalance: TLabel
    Left = 585
    Top = 370
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDebitTax: TLabel
    Left = 755
    Top = 328
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCreditTax: TLabel
    Left = 755
    Top = 349
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 463
    Top = 365
    Width = 334
    Height = 4
    Anchors = [akRight, akBottom]
    Shape = bsTopLine
  end
  object lblTaxTotal: TLabel
    Left = 755
    Top = 370
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Caption = 'XXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 7
    Top = 55
    Width = 55
    Height = 15
    Caption = 'Reference:'
  end
  object tbDesc: TEdit
    Left = 66
    Top = 28
    Width = 239
    Height = 23
    TabOrder = 1
    OnExit = tbDescExit
  end
  object dbgrLedger: TcxGrid
    Left = 7
    Top = 78
    Width = 812
    Height = 244
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnEnter = dbgrLedgerEnter
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Background = cxStyle1
      Styles.Content = cxStyle1
      object tvLedgerREFNO: TcxGridDBColumn
        Caption = 'Ledger'
        DataBinding.FieldName = 'REFNO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = False
        Properties.OnButtonClick = cxGrid1DBTableView1REFNOPropertiesButtonClick
        Properties.OnValidate = cxGrid1DBTableView1REFNOPropertiesValidate
        Width = 74
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Ledger Description'
        DataBinding.FieldName = 'LONGDESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Focusing = False
        Width = 202
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnValidate = cxGrid1DBTableView1REASONPropertiesValidate
        Width = 176
      end
      object tvLedgerDEBIT: TcxGridDBColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = cxGrid1DBTableView1DEBITPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        Width = 62
      end
      object tvLedgerCREDIT: TcxGridDBColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = cxGrid1DBTableView1CREDITPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        Width = 60
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Taxcode'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'NCR')
        Width = 52
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = cxGrid1DBTableView1TAXPropertiesValidate
        Width = 121
      end
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        Width = 48
      end
      object tvLedgerCHART: TcxGridDBColumn
        DataBinding.FieldName = 'CHART'
        Visible = False
        Options.Editing = False
        Options.Moving = False
        VisibleForCustomization = False
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object btnJournalSplit: TcxButton
    Left = 7
    Top = 367
    Width = 84
    Height = 23
    Hint = 
      'This will create a set of journal entries based on the journal s' +
      'plit table maintained'
    Anchors = [akLeft, akBottom]
    Caption = 'Journal Split'
    LookAndFeel.NativeStyle = True
    TabOrder = 4
    OnClick = btnJournalSplitClick
  end
  object ckbKeepOpen: TcxCheckBox
    Left = 7
    Top = 397
    Anchors = [akLeft, akBottom]
    Caption = 'Keep open after posting'
    Properties.NullStyle = nssUnchecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Transparent = True
  end
  object btnOK: TcxButton
    Left = 649
    Top = 391
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Enabled = False
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000FFFFFFFF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000800000FF800000FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000800000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FF008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000800000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000800000FF0080
      00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
      00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
      FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000080800000FF00FF0080800000808000008080000080
      80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000FF00FF008000FF0080
      00FF008000FF800000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000080800000FF
      00FF008000FF008000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000FF00FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 6
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 735
    Top = 391
    Width = 74
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000000FFFF808080FF008080000080800000808000008080000080
      8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000FFFFFFFF00808000008080000080
      8000008080000080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
      80FF008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
      80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
      FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000000
      FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
      8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
      800000808000008080000080800000808000000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
      80FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      800000808000008080000000FFFF000080FF0080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
      8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF0000FFFF0080800000808000008080000080800000808000008080000080
      8000808080FF808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 7
    OnClick = btnCancelClick
  end
  object grpFileImport: TcxGroupBox
    Left = 629
    Top = 4
    Anchors = [akTop, akRight]
    Caption = 'File Import'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Transparent = True
    Height = 67
    Width = 189
    object btnImport: TcxButton
      Left = 99
      Top = 38
      Width = 84
      Height = 23
      Caption = 'Import File'
      Enabled = False
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00999999FFA4A0A0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFA4A0
        A0FF999999FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00999999FFC0C0C0FFF1F1F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CCCCCCFF999999FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
        99FFD7D7D7FFFFFFFF00F0FBFFFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F1FFF0FBFFFFD7D7D7FF999999FFFFFFFF00FFFFFF00FFFFFF00999999FFC0C0
        C0FFF0FBFFFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE3E3
        E3FFF1F1F1FFF0FBFFFFC0C0C0FF999999FFFFFFFF00FFFFFF00A4A0A0FFF0FB
        FFFFF1F1F1FFF1F1F1FFE3E3E3FFD7D7D7FFC0C0C0FFC0C0C0FFD7D7D7FF6699
        66FF669966FFF0FBFFFFF0FBFFFFA4A0A0FFFFFFFF00FFFFFF00C0C0C0FFF0FB
        FFFFF1F1F1FFE3E3E3FFCCCCCCFFA4A0A0FFB2B2B2FFB2B2B2FF336666FF6699
        66FF669966FF669966FFF1F1F1FFC0C0C0FFFFFFFF00999999FFCCCCCCFFF0FB
        FFFFE3E3E3FFE3E3E3FFB2B2B2FFC0C0C0FF999999FF006633FF669966FFC0DC
        C0FFC0DCC0FF669966FF336666FFC0C0C0FF999999FF999999FFCCCCCCFFF1F1
        F1FFE3E3E3FFD7D7D7FFB2B2B2FF666666FF336666FF66CC66FF66CC99FF99CC
        99FFC0DCC0FFC0DCC0FF99CC99FF006633FF999999FFFFFFFF00C0C0C0FFF1F1
        F1FFD7D7D7FFD7D7D7FFB2B2B2FF336666FF006633FF66CC66FF66CC66FF66CC
        99FF99CC99FFC0DCC0FF99CC99FF336666FF336666FFFFFFFF00B2B2B2FFF1F1
        F1FFE3E3E3FFCCCC99FFCCCC99FFB2B2B2FF006633FF66CC66FF66CC66FF66CC
        66FF66CC99FF99CC99FF66CC66FF666666FFFFFFFF00FFFFFF00999999FFD7D7
        D7FFF1F1F1FFD7D7D7FFC0DCC0FFC0DCC0FF006633FF66CC66FF66CC66FF66CC
        66FF66CC66FF66CC99FF66CC66FF336666FFFFFFFF00FFFFFF00FFFFFF009999
        99FFE3E3E3FFF1F1F1FFD7D7D7FFC0DCC0FF006633FF33CC66FF66CC66FF66CC
        66FF66CC66FF66CC66FF66CC66FF336666FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00999999FFD7D7D7FFF1F1F1FFF1F1F1FF006633FF33CC66FF33CC66FF66CC
        66FF66CC66FF66CC66FF66CC66FF006633FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00999999FFB2B2B2FFCCCCCCFF006633FF00CC66FF33CC66FF33CC
        66FF33CC66FF33CC66FF33CC66FF006633FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00999999FF336666FF336666FF336666FF0066
        33FF006633FF006633FF006633FF006633FFFFFFFF00}
      TabOrder = 0
      OnClick = btnImportClick
    end
    object cmbFileType: TcxComboBox
      Left = 53
      Top = 14
      Properties.Items.Strings = (
        'Micropay')
      Properties.OnChange = cmbFileTypePropertiesChange
      Properties.OnCloseUp = cmbFileTypePropertiesCloseUp
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 130
    end
    object cxLabel2: TcxLabel
      Left = 13
      Top = 16
      Caption = 'Type'
    end
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 66
    Top = 4
    EditValue = 43203.4727656713d
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    Style.ButtonStyle = bts3D
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 101
  end
  object dfReference: TEdit
    Left = 66
    Top = 52
    Width = 239
    Height = 23
    TabOrder = 2
    OnExit = tbDescExit
  end
  object chkMarkRecurring: TcxCheckBox
    Left = 165
    Top = 397
    Anchors = [akLeft, akBottom]
    Caption = 'Mark as recurring'
    Properties.NullStyle = nssUnchecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
    Transparent = True
    Visible = False
  end
  object dsJournal: TDataSource
    DataSet = qryJournal
    Left = 529
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT J.*, J.ROWID '
      'FROM JOURNAL J '
      'WHERE J.ACCT = :P_Acct '
      'AND J.NJOURNAL = :P_Njournal')
    CachedUpdates = True
    Left = 490
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Njournal'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT REFNO, LONGDESC, REASON, DEBIT, CREDIT, TAXCODE, TAX, TYP' +
        'E,'
      ' ALLOW_DIRECT_POSTING, RCPTNO, CHART, ROWID '
      'FROM LGRALLOC '
      ' WHERE REFNO = '#39#39)
    CachedUpdates = True
    BeforeInsert = qryLedgerBeforeInsert
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    Left = 422
    Top = 3
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object qryLedgerLONGDESC: TStringField
      FieldName = 'LONGDESC'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 400
    end
    object qryLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
      OnChange = qryLedgerDEBITChange
    end
    object qryLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
      OnChange = qryLedgerCREDITChange
    end
    object qryLedgerROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      OnChange = qryLedgerTAXCODEChange
      Size = 8
    end
    object qryLedgerTAX: TCurrencyField
      FieldName = 'TAX'
    end
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerALLOW_DIRECT_POSTING: TStringField
      FieldName = 'ALLOW_DIRECT_POSTING'
      Size = 1
    end
    object qryLedgerRCPTNO: TStringField
      FieldName = 'RCPTNO'
      Size = 12
    end
    object qryLedgerCHART: TStringField
      FieldName = 'CHART'
      Size = 12
    end
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 456
    Top = 1
  end
  object popGrid: TPopupMenu
    Left = 377
    Top = 2
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 362
    Top = 1
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
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
    Left = 319
    Top = 163
  end
  object OpenDialog: TOpenDialog
    Filter = 'Text Files (*.txt, *.csv)|*.txt;*.csv'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select Import file...'
    Left = 322
    Top = 237
  end
end
