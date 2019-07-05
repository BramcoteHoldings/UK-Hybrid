object frmTrustJournal: TfrmTrustJournal
  Left = 428
  Top = 352
  Caption = 'Trust Journal'
  ClientHeight = 539
  ClientWidth = 1005
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1005
    539)
  PixelsPerInch = 106
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 24
    Height = 15
    Caption = '&Date'
  end
  object Label8: TLabel
    Left = 8
    Top = 37
    Width = 79
    Height = 15
    Caption = 'Default Reason'
    FocusControl = tbDesc
  end
  object lblAmountMsg: TLabel
    Left = 763
    Top = 484
    Width = 31
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalCredit: TLabel
    Left = 976
    Top = 484
    Width = 4
    Height = 17
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalDebit: TLabel
    Left = 888
    Top = 484
    Width = 4
    Height = 17
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 261
    Top = 8
    Width = 58
    Height = 15
    Caption = 'Trust &Bank '
    FocusControl = cbBank
  end
  object lblBankName: TLabel
    Left = 388
    Top = 8
    Width = 3
    Height = 15
    ShowAccelChar = False
  end
  object lblWarning: TLabel
    Left = 8
    Top = 516
    Width = 62
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'lblWarning'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object tbDesc: TEdit
    Left = 110
    Top = 34
    Width = 270
    Height = 23
    TabOrder = 2
    OnExit = tbDescExit
    OnKeyPress = tbDescKeyPress
  end
  object cbBank: TComboBox
    Left = 329
    Top = 5
    Width = 51
    Height = 23
    Style = csDropDownList
    Sorted = True
    TabOrder = 1
    OnClick = cbBankClick
  end
  object btnOK: TcxButton
    Left = 827
    Top = 510
    Width = 80
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    LookAndFeel.Kind = lfUltraFlat
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
    OptionsImage.Spacing = 5
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 916
    Top = 510
    Width = 79
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
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
    OptionsImage.Spacing = 5
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object dbgrLedger: TcxGrid
    Left = 8
    Top = 65
    Width = 987
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnEnter = dbgrLedger12Enter
    OnExit = dbgrLedgerExit
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 57
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownRows = 3
        Properties.Items.Strings = (
          'Matter'
          'Protected')
        Properties.ReadOnly = False
        MinWidth = 23
        Width = 51
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
        Properties.OnButtonClick = cxGrid1DBTableView1REFNO1PropertiesButtonClick
        Properties.OnValidate = cxGrid1DBTableView1REFNO1PropertiesValidate
        MinWidth = 23
        Width = 67
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'LONGDESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        MinWidth = 23
        Options.Editing = False
        Options.Focusing = False
        Width = 142
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnValidate = tvLedgerREASON1PropertiesValidate
        MinWidth = 23
        Width = 238
      end
      object tvLedgerDEBIT: TcxGridDBColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DisplayFormat = '$,0.00;'
        Properties.OnValidate = tvLedgerDEBITPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 23
        Width = 79
      end
      object tvLedgerCREDIT: TcxGridDBColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;'
        Properties.OnValidate = tvLedgerCREDITPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 23
        Width = 79
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 110
    Top = 5
    AutoSize = False
    EditValue = 43651.4930112384d
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Height = 26
    Width = 116
  end
  object cbPrintJournal: TCheckBox
    Left = 688
    Top = 515
    Width = 102
    Height = 18
    Anchors = [akRight, akBottom]
    Caption = 'Print Journal'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object qryAllocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, MATTER_DESC,'
      '   SPEC_PURPOSE, PRIVATE, NCHEQUE, NRECEIPT, CLEARED, BANK,'
      '   trust_jnl_descr  )'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   '#39'J3'#39', :NCLIENT, :NJOURNAL, :PAYER, '#39'T'#39', '#39'N'#39', :FILEID,'
      '   :NALLOC, NULL, :CLIENT_NAME, :MATTER_DESC,'
      '   :SPEC_PURPOSE, '#39'N'#39', NULL, NULL, :CLEARED, :BANK,'
      '   :trust_jnl_descr  )')
    Left = 587
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
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
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATTER_DESC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SPEC_PURPOSE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLEARED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trust_jnl_descr'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT L.ROWID, L.CREATED, L.TYPE, L.REFNO, L.LONGDESC, L.REASON' +
        ', L.DEBIT, L.CREDIT, L.UNIQUEID, L.trust_jnl_descr'
      'FROM LGRALLOC L')
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    Left = 523
    Top = 65535
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 424
    Top = 32
  end
  object popGrid: TPopupMenu
    Left = 483
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
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT J.ROWID, J.* FROM JOURNAL J WHERE J.NJOURNAL = -1')
    CachedUpdates = True
    Left = 555
  end
  object qryCheckAlloc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nmatter, sum(priorbalance) as priorbalance, sum(amount) A' +
        'S Total_Amount'
      'from alloc'
      'where FILEID = :FILEID AND Trust = '#39'T'#39
      'group by nmatter')
    Left = 635
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qryCheckMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nmatter, fileid, title, shortdescr, acct'
      'FROM matter'
      'WHERE fileid = :p_fileid')
    Left = 691
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_fileid'
        Value = nil
      end>
  end
  object qrySpecPurposeAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select sum(spec_purpose) as spec_purpose from alloc where fileid' +
        ' = :fileid')
    Left = 746
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fileid'
        Value = nil
      end>
  end
  object qryJournalPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '   REFNO,ACCT, TRUNC(CREATED) AS CREATED, NJOURNAL, AMOUNT, REAS' +
        'ON, TYPE, REV_NJOURNAL, NMEMO, TRUST'
      'FROM'
      '   JOURNAL'
      'WHERE'
      '   NJOURNAL = :NJOURNAL'
      'AND'
      '   NVL(ACCT,:ACCT) = :ACCT')
    Left = 238
    Top = 337
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
  object dsJournalPrint: TUniDataSource
    DataSet = qryJournalPrint
    Left = 310
    Top = 336
  end
  object plJournalPrint: TppDBPipeline
    DataSource = dsJournalPrint
    UserName = 'plJournalPrint'
    Left = 371
    Top = 342
    object plJournalPrintppField1: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 0
      DisplayWidth = 0
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
  end
  object rptJournal: TppReport
    AutoStop = False
    DataPipeline = plAllocPrint
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpVertical
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
    BeforePrint = rptJournalBeforePrint
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
    Left = 444
    Top = 335
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plAllocPrint'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 42598
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
        mmTop = 20108
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
        mmTop = 25400
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
        mmHeight = 4233
        mmLeft = 265
        mmTop = 30692
        mmWidth = 20532
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Caption = 'Matter/Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 21167
        mmTop = 37571
        mmWidth = 19304
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
        mmTop = 37571
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
        mmTop = 37571
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
        mmTop = 37571
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
        mmTop = 42333
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
        mmTop = 20108
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
        mmTop = 20108
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
        mmTop = 20108
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
        mmTop = 25400
        mmWidth = 20108
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
        mmTop = 20108
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
        mmTop = 20108
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
        mmTop = 30692
        mmWidth = 167482
        BandType = 0
        LayerName = Foreground2
      end
      object lblEntity: TppLabel
        DesignLayer = ppDesignLayer4
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
        mmTop = 13494
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
  object plAllocPrint: TppDBPipeline
    DataSource = dsAllocPrint
    UserName = 'plAllocPrint'
    Left = 366
    Top = 394
  end
  object dsAllocPrint: TUniDataSource
    DataSet = qryAllocPrint
    Left = 295
    Top = 385
  end
  object qryAllocPrint: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT njournal, alloc.fileid AS "CODE", alloc.client_name AS "D' +
        'ESCR",'
      '       CASE'
      '          WHEN (alloc.amount < 0)'
      '             THEN (alloc.amount * -1 + NVL (alloc.tax * -1, 0))'
      '          ELSE 0'
      '       END AS debit,'
      '       CASE'
      '          WHEN (alloc.amount > 0)'
      '             THEN (alloc.amount + NVL (alloc.tax, 0))'
      '          ELSE 0'
      '       END AS credit'
      '  FROM alloc'
      ' WHERE njournal = :njournal AND alloc.bank = :acct')
    MasterSource = dsJournalPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 230
    Top = 387
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NJOURNAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'ACCT'
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
      '  TRANSITEM.ACCT = :Acct AND'
      '  TRANSITEM.CHART = CHART.CODE AND'
      '  TRANSITEM.ACCT = CHART.BANK')
    MasterSource = dsJournalPrint
    MasterFields = 'NJOURNAL'
    DetailFields = 'NJOURNAL'
    Left = 222
    Top = 447
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Acct'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end>
  end
  object dsNAccountPrint: TUniDataSource
    DataSet = qryNAccountPrint
    Left = 326
    Top = 441
  end
end
