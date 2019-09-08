object frmWriteOffDisb: TfrmWriteOffDisb
  Left = 796
  Top = 338
  Caption = 'Disbursement Write Off'
  ClientHeight = 627
  ClientWidth = 1066
  Color = clBtnFace
  Constraints.MinHeight = 456
  Constraints.MinWidth = 723
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1066
    627)
  PixelsPerInch = 106
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 24
    Height = 15
    Caption = '&Date'
  end
  object Label8: TLabel
    Left = 8
    Top = 99
    Width = 79
    Height = 15
    Caption = 'Default &Reason'
  end
  object Label3: TLabel
    Left = 8
    Top = 67
    Width = 36
    Height = 15
    Caption = '&Ledger'
  end
  object lblLedgerDescr: TLabel
    Left = 245
    Top = 65
    Width = 3
    Height = 15
  end
  object lblUnallocated: TLabel
    Left = 166
    Top = 561
    Width = 4
    Height = 17
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object cxGrid1: TcxGrid
    Left = 9
    Top = 185
    Width = 1046
    Height = 438
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    object BandedTableView: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsDisb
      DataController.KeyFieldNames = 'NALLOC'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$##0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = BandedTableViewDBBandedAMOUNT
        end
        item
          Format = '$##0.00'
          Kind = skSum
          FieldName = 'TAX'
          Column = BandedTableViewDBBandedTAX
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 57
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.IndicatorWidth = 14
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.BandHeaders = False
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      Styles.OnGetContentStyle = BandedTableViewStylesGetContentStyle
      Bands = <
        item
          Caption = 'Bound'
          VisibleForCustomization = False
          Width = 551
        end
        item
          Caption = 'Unbound'
          VisibleForCustomization = False
          Width = 187
        end>
      object BandedTableViewDBBandedCREATED: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'created'
        MinWidth = 23
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedDESCR: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 273
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 23
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedTAX: TcxGridDBBandedColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        MinWidth = 23
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedTAXCODE: TcxGridDBBandedColumn
        Caption = 'Taxcode'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxComboBoxProperties'
        MinWidth = 23
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object BandedTableViewColumn1: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedWriteOff: TcxGridDBBandedColumn
        Caption = 'Write Off'
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.OnChange = BandedTableViewDBBandedWriteOffPropertiesChange
        HeaderAlignmentHorz = taCenter
        MinWidth = 23
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedReason: TcxGridDBBandedColumn
        Caption = 'Reason'
        DataBinding.ValueType = 'String'
        PropertiesClassName = 'TcxTextEditProperties'
        MinWidth = 23
        Options.Filtering = False
        Width = 128
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedNALLOC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NALLOC'
        Visible = False
        MinWidth = 23
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedSUNDRYTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUNDRYTYPE'
        Visible = False
        MinWidth = 23
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object BandedTableViewDBBandedNINVOICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NINVOICE'
        Visible = False
        MinWidth = 23
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object Level: TcxGridLevel
      GridView = BandedTableView
    end
  end
  object dblblMatterDescr: TcxDBLabel
    Left = 310
    Top = 124
    DataBinding.DataField = 'LONGDESC'
    DataBinding.DataSource = dsLedger
    ParentFont = False
    Properties.Alignment.Vert = taVCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Height = 27
    Width = 564
    AnchorY = 138
  end
  object cxDBLabel2: TcxDBLabel
    Left = 185
    Top = 154
    DataBinding.DataField = 'AMOUNT'
    DataBinding.DataSource = dsLedger
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Height = 24
    Width = 103
  end
  object cxDBLabel3: TcxDBLabel
    Left = 863
    Top = 76
    DataBinding.DataField = 'DEBIT'
    DataBinding.DataSource = dsLedger
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Visible = False
    Height = 21
    Width = 103
  end
  object cxDBLabel4: TcxDBLabel
    Left = 863
    Top = 48
    DataBinding.DataField = 'TAX'
    DataBinding.DataSource = dsLedger
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Visible = False
    Height = 21
    Width = 103
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 155
    AutoSize = False
    Caption = 'UB Disbursements inc Tax'
    ParentColor = False
    Transparent = True
    Height = 22
    Width = 167
  end
  object cxLabel2: TcxLabel
    Left = 299
    Top = 155
    AutoSize = False
    Caption = 'Amount to W/O ex Tax'
    ParentColor = False
    Transparent = True
    Height = 22
    Width = 145
  end
  object cxLabel3: TcxLabel
    Left = 571
    Top = 155
    Caption = 'Tax to W/O'
    ParentColor = False
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 8
    Top = 127
    Caption = 'Matter'
    Transparent = True
  end
  object tbDesc: TcxTextEdit
    Left = 185
    Top = 95
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Text = 'Write Off'
    OnExit = tbDescExit
    OnKeyPress = tbDescKeyPress
    Width = 283
  end
  object rgledgertype: TcxRadioGroup
    Left = 718
    Top = 38
    Caption = 'Ledger Type'
    Properties.Items = <
      item
        Caption = 'Disb W/O'
      end
      item
        Caption = 'Unrecovered Disb'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Transparent = True
    Visible = False
    OnClick = rgledgertypeClick
    Height = 81
    Width = 139
  end
  object rgType: TcxRadioGroup
    Left = 579
    Top = 38
    Caption = 'Type'
    Properties.Items = <
      item
        Caption = 'Unbilled'
      end
      item
        Caption = 'Creditor Invoices'
      end>
    Properties.OnChange = rgTypePropertiesChange
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Transparent = True
    Height = 81
    Width = 134
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 185
    Top = 36
    EditValue = 43715.2979336343d
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 92
  end
  object tbLedger: TcxButtonEdit
    Left = 185
    Top = 65
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
    Properties.OnButtonClick = beLedgerPropertiesButtonClick
    Properties.OnChange = beLedgerPropertiesChange
    Properties.OnValidate = beLedgerPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 113
  end
  object beMatterNo: TcxButtonEdit
    Left = 185
    Top = 124
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
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnValidate = cxButtonEdit1PropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 119
  end
  object lblLedgerDesc: TcxLabel
    Left = 301
    Top = 65
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.TextColor = clBlue
    Style.IsFontAssigned = True
    Properties.Alignment.Vert = taVCenter
    Height = 26
    Width = 274
    AnchorY = 78
  end
  object cxLabel5: TcxLabel
    Left = 447
    Top = 154
    AutoSize = False
    Caption = '$0.00'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Height = 24
    Width = 103
  end
  object cxLabel6: TcxLabel
    Left = 647
    Top = 154
    AutoSize = False
    Caption = '$0.00'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = dmAxiom.LabelStyle
    Style.IsFontAssigned = True
    Height = 24
    Width = 104
  end
  object qryAllocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, SYSTEM_DATE, MATTER_DESC,'
      '   PRIVATE, TAX,TAXCODE,SUNDRYTYPE, JOURNALTYPE, NINVOICE,'
      '   UPCRED, N_WOFF)'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   :TYPE, :NCLIENT, :NJOURNAL, :PAYER, '#39'G'#39', :BILLED, :FILEID,'
      '   :NALLOC, NULL, :CLIENT_NAME, SysDate, :MATTER_DESC,'
      '   '#39'N'#39', :TAX,:TAXCODE, :SUNDRYTYPE, :JOURNALTYPE, :NINVOICE,'
      '   :UPCRED, :N_WOFF)')
    Left = 102
    Top = 191
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
        Name = 'TYPE'
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
        Name = 'BILLED'
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
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'JOURNALTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UPCRED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'N_WOFF'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT L.ROWID, L.CREATED, L.TYPE, L.REFNO, L.LONGDESC, L.REASON' +
        ', L.DEBIT, L.UNIQUEID, L.TAXCODE, L.TAXRATE, L.TAX, L.WITHHOLD,L' +
        '.AMOUNT, L.NINVOICE'
      'FROM LGRALLOC L'
      'WHERE L.REFNO IS NULL')
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    BeforeScroll = qryLedgerBeforeScroll
    AfterScroll = qryLedgerAfterScroll
    Left = 923
    Top = 65531
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 993
    Top = 45
  end
  object popGrid: TPopupMenu
    Left = 676
    Top = 236
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
    Left = 65
    Top = 313
  end
  object qryCheqReqInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO CHEQREQ'
      '  (FILEID, PAYEE, DESCR, AMOUNT, AUTHOR, REQDATE, BANK,'
      '   HELD, GROUPABLE, ANTICIPATED, BILLED, NMEMO, NCHEQREQ,'
      '   CONVERTED, TRUST, PRIVATE)'
      'VALUES'
      '  (:FILEID, :PAYEE, :DESCR, :AMOUNT, :AUTHOR, :REQDATE, :BANK,'
      '   '#39'N'#39', '#39'N'#39', '#39'Y'#39', '#39'Y'#39', null, :NCHEQREQ,'
      '   '#39'Y'#39', '#39'G'#39', '#39'N'#39')')
    Left = 121
    Top = 262
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTHOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REQDATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 211
    Top = 321
  end
  object qryDisb: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT TRUNC (created) "created", descr, amount * -1 AS amount,'
      '       tax * -1 AS tax, taxcode, nalloc, sundrytype, ninvoice,'
      '       CASE'
      '          WHEN ninvoice IS NOT NULL'
      '             THEN '#39'Invoice'#39
      '          ELSE '#39'Disbursement'#39
      '       END AS TYPE'
      '  FROM alloc'
      ' WHERE nmatter = :p_file'
      '   AND NVL (billed, '#39'N'#39') = '#39'N'#39' '
      '   AND nmemo is null'
      '   AND NVL (trust, '#39'G'#39') <> '#39'T'#39
      
        '   AND ((:w_type = '#39'I'#39' AND ninvoice IS NOT NULL AND rv_nalloc IS' +
        ' NULL)'
      
        '        OR (:w_type = '#39'C'#39' AND (NVL (ncheque, 0) > 0 OR (NVL (njo' +
        'urnal, 0) > 0 AND TYPE = '#39'J2'#39')))'
      '       )'
      ''
      ''
      '/*'
      
        'select trunc(created) "created",descr,amount*-1 as amount,tax*-1' +
        ' as tax, taxcode, nalloc, sundrytype, ninvoice, rowid'
      'from alloc where'
      '   nmatter = :P_File '
      '   AND nvl(billed, '#39'N'#39') = '#39'N'#39
      '   AND nvl(TRUST, '#39'G'#39') <> '#39'T'#39
      '--   AND ninvoice is null'
      '   AND (nvl(ncheque,0) > 0'
      '        or'
      '        (nvl(njournal,0) > 0 and type = '#39'J2'#39')'
      '       )'
      '*/'
      
        '--AND nvl(TRUST,'#39'G'#39') <> '#39'T'#39' and ((ninvoice is null and rv_nalloc' +
        ' is null) or nvl(ncheque,0) > 0 or (nvl(njournal,0) > 0 and type' +
        ' = '#39'J2'#39'))')
    Left = 15
    Top = 257
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'w_type'
        Value = nil
      end>
  end
  object dsDisb: TUniDataSource
    DataSet = qryDisb
    Left = 36
    Top = 209
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 35
    PixelsPerInch = 96
    object styChecked: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16313312
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 97182
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 5298174
      TextColor = 10066329
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 886
    Top = 8
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
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 338
      FloatTop = 512
      FloatClientWidth = 184
      FloatClientHeight = 43
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOK'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkNoExit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbart'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btnOK: TdxBarButton
      Caption = 'Process'
      Category = 0
      Hint = 'Process'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object dxBarButton2: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btnCancelClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object chkNoExit: TcxBarEditItem
      Caption = 'Keep form open after posting '
      Category = 0
      Hint = 'Keep form open after posting '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = False
    end
  end
  object qryAllocUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update alloc '
      'set '
      'billed = '#39'Y'#39','
      'N_WOFF = :NWOFF'
      'where'
      'nalloc = :nalloc')
    Left = 254
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NWOFF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nalloc'
        Value = nil
      end>
  end
  object qryInvoiceUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update invoice set owing = 0'
      'where'
      'ninvoice = :ninvoice')
    Left = 388
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ninvoice'
        Value = nil
      end>
  end
end
