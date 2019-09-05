object frmPettyJournal: TfrmPettyJournal
  Left = 457
  Top = 189
  Caption = 'Matter G/L Office  Journals'
  ClientHeight = 527
  ClientWidth = 870
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
    870
    527)
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 7
    Top = 33
    Width = 24
    Height = 15
    Caption = '&Date'
  end
  object Label8: TLabel
    Left = 7
    Top = 107
    Width = 79
    Height = 15
    Caption = 'Default &Reason'
  end
  object lblAmountMsg: TLabel
    Left = 530
    Top = 503
    Width = 27
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 654
    Top = 503
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 334
    Top = 107
    Width = 44
    Height = 15
    Caption = '&Amount'
  end
  object Label3: TLabel
    Left = 7
    Top = 62
    Width = 79
    Height = 15
    Caption = 'General &Ledger'
  end
  object lblUnallocatedMsg: TLabel
    Left = 352
    Top = 503
    Width = 66
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Unallocated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblUnallocated: TLabel
    Left = 513
    Top = 503
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblTax: TLabel
    Left = 654
    Top = 480
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBalance: TLabel
    Left = 561
    Top = 480
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrLedger: TcxGrid
    Left = 2
    Top = 135
    Width = 858
    Height = 341
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsLedger
      DataController.KeyFieldNames = 'LGRALLOC_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownRows = 3
        Properties.Items.Strings = (
          'Matter'
          'Ledger')
        Properties.ReadOnly = False
        Properties.OnValidate = cxGrid1DBTableView1TYPEPropertiesValidate
        Width = 45
      end
      object tvLedgerREFNO: TcxGridDBColumn
        Caption = 'File'
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
        Properties.OnButtonClick = cxGrid1DBTableView1REFNOPropertiesButtonClick
        Properties.OnValidate = tvLedgerREFNOPropertiesValidate
        Width = 75
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'LONGDESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Width = 180
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnValidate = tvLedgerREASONPropertiesValidate
        Width = 210
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Taxcode'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTaxtype
        Properties.OnCloseUp = tvLedgerTAXCODEPropertiesCloseUp
        Width = 55
      end
      object tvLedgerAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnChange = tvLedgerAMOUNTPropertiesChange
        Properties.OnValidate = tvLedgerAMOUNTPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        Width = 70
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Width = 50
      end
      object tvLedgerSUNDRYTYPE: TcxGridDBColumn
        Caption = 'Exp. Type'
        DataBinding.FieldName = 'SUNDRYTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSundryType
        Width = 50
      end
      object tvLedgerLGRALLOC_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LGRALLOC_ID'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object rgSign: TcxRadioGroup
    Left = 89
    Top = 62
    Caption = 'Post General Ledger as'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Credit'
      end
      item
        Caption = 'Debit'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Transparent = True
    Height = 37
    Width = 165
  end
  object neAmount: TcxCurrencyEdit
    Left = 380
    Top = 104
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    OnExit = neAmountExit
    Width = 86
  end
  object tbDesc: TcxTextEdit
    Left = 89
    Top = 104
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    OnExit = tbDescExit
    OnKeyPress = tbDescKeyPress
    Width = 240
  end
  object tbPettyCash: TcxButtonEdit
    Left = 267
    Top = 72
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
    Properties.OnValidate = tbPettyCashPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Text = 'tbPettyCash'
    OnExit = tbPettyCashExit
    Width = 107
  end
  object lblPettyCashDescr: TcxLabel
    Left = 376
    Top = 72
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    ParentFont = False
    Style.LookAndFeel.NativeStyle = False
    Style.StyleController = dmAxiom.LabelStyle
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Properties.Alignment.Vert = taVCenter
    Height = 24
    Width = 484
    AnchorY = 84
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 89
    Top = 30
    EditValue = 43713.5034762847d
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 113
  end
  object rgType: TcxRadioGroup
    Left = 260
    Top = 28
    Caption = 'Type'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Matter'
      end
      item
        Caption = 'Debtor'
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Transparent = True
    Height = 38
    Width = 165
  end
  object qryAllocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, SYSTEM_DATE, MATTER_DESC, '
      
        '   PRIVATE, NRECEIPT, NCHEQUE, TAXCODE, TAX, SUNDRYTYPE, BILLED_' +
        'TAX_AMOUNT)'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   :TYPE, :NCLIENT, :NJOURNAL, :PAYER, '#39'G'#39', '#39'N'#39', :FILEID,'
      
        '   :NALLOC, 0, :CLIENT_NAME, SysDate, :MATTER_DESC, '#39'N'#39', 0, 0, :' +
        'TAXCODE, :TAX,'
      '   :SUNDRYTYPE, :BILLED_TAX_AMOUNT)')
    Left = 629
    Top = 231
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
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLED_TAX_AMOUNT'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, TYPE, REFNO, LONGDESC, REASON, AMOUNT, TAXCODE, TA' +
        'XRATE, TAX, WITHHOLD, SUNDRYTYPE, CHART, LGRALLOC_ID'
      'FROM LGRALLOC'
      'WHERE REFNO IS NULL')
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    BeforeScroll = qryLedgerBeforeScroll
    Left = 430
    Top = 305
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 490
    Top = 296
  end
  object popGrid: TPopupMenu
    Left = 533
    Top = 231
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
    object popDateStamp: TMenuItem
      Caption = 'Date &Stamp'
      OnClick = popDateStampClick
    end
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT J.*, J.ROWID FROM JOURNAL J WHERE J.NJOURNAL = -1')
    CachedUpdates = True
    Left = 597
    Top = 231
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK')
    Left = 661
    Top = 231
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.FILEID,P.SEARCH, idx'
      'FROM MATTER M, PHONEBOOK P,OPENLIST O'
      'WHERE O.AUTHOR = :P_Author'
      'AND O.TYPE = :P_Type'
      'AND O.CODE = M.FILEID'
      'AND M.NCLIENT = P.NCLIENT'
      'union'
      'SELECT '#39'Search...'#39','#39#39',999'
      'FROM dual'
      'ORDER BY 3')
    Left = 538
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Type'
        Value = nil
      end>
  end
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 605
    Top = 288
  end
  object qryTaxtype: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from taxtype')
    Left = 353
    Top = 225
  end
  object dsTaxtype: TUniDataSource
    DataSet = qryTaxtype
    Left = 426
    Top = 236
  end
  object qrySundryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code from sundrytype '
      'where active = '#39'Y'#39' '
      'order by code')
    Left = 685
    Top = 278
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 742
    Top = 276
  end
  object ImageList1: TImageList
    Left = 189
    Top = 365
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000800080808000000000000000000000000000000000000000
      00000000FF008080800000000000000000000000000000000000000000000000
      000000000000E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7C738F9F9
      F906000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000080000000800000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000080000000800000008000808080000000000000000000000000000000
      FF0000008000000080008080800000000000000000000000000000000000FCFC
      FC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF16163DE96262
      629DD4D4D42B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000008000000080000000800000008000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000800000008000000080000000800080808000000000000000FF000000
      8000000080000000800000008000808080000000000000000000F4F4F40B6060
      909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF000081FF0101
      54FF34343CCBC2C2C23D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000080
      0000008000000080000000800000008000000080000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080000000800080808000000080000000
      80000000800000008000000080008080800000000000FDFDFD025A5A9AA50000
      96FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF00008FFF0000
      88FF000062FF36363EC9D6D6D629000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000008000000080
      00000080000000FF000000800000008000000080000000800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000008000000080000000
      800000008000000080008080800000000000000000008F8FB7700101A3FF0808
      9EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7E3FF2727
      A5FF00008CFF010152FF7171718E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      000000FF00000000000000FF0000008000000080000000800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080000000
      800000008000808080000000000000000000DDDDEF222828ABD90000ABFF2828
      A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFFF7FF5E5E
      B7FF00009AFF020287FF2E2E45D1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000080000000FF
      000000000000000000000000000000FF00000080000000800000008000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000008000000080000000
      8000808080000000000000000000000000009797E5690606B0FD0303B9FF0000
      C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575B9FF0606
      B1FF0101ABFF0202A0FF12135DED000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      00000000000000000000000000000000000000FF000000800000008000000080
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000008000000080000000
      8000808080000000000000000000000000005859D0AB0808BBFF0707C8FF0505
      D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000BEFF0101
      C3FF0303B8FF0303ACFF0F0F6EF2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      0000008000008000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080000000
      8000808080000000000000000000000000004B4BD2BC0C0CC9FF0D0DD8FF0B0B
      DCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000CAFF0303
      CBFF0606C5FF0606B8FF111178F1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800080808000000080000000
      8000000080008080800000000000000000007272E6931414D8FF1717EAFF0B0B
      F1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363E5FF0303
      D7FF0A0ACFFF0A0AC3FF21217FE2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008000000080000000800000800000000000000000000000000000000000
      00000000FF0000008000000080000000800080808000000000000000FF000000
      800000008000000080008080800000000000BBBBF7452525E5F22222FBFF3F3F
      E9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFFFEFF6161
      E5FF0808DBFF0F0FCAFF4F4F85B2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000080000000800000008000000000000000000000000000000000
      00000000FF000000800000008000808080000000000000000000000000000000
      FF0000008000000080000000800080808000F3F3FD0C5E5EF1AF3232FFFF5252
      EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADADB0FF4D4D
      E1FF1818EDFF1818B1F5B6B6B949000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000000000000000000000000000000
      0000000000000000FF0000008000000000000000000000000000000000000000
      00000000FF0000008000000080000000800000000000D6D6FC293E3EFBE75353
      FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242EBFF3232
      FFFF1F1FE9FF7E7EA78400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000080000000FF000000000000000000C2C2FC404848
      FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151FFFF3030
      FBFD7C7CB488FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151F2D2A6A6
      CD5C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1F81E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F9FFE1F3F80F0000F0FFE0E1E0070000
      E07FE040C0030000C03FF00080010000801FF80180010000841FFC0300010000
      8E0FFE0700010000DF07FE0700010000FF83FC0700010000FFC1F80300010000
      FFE0F04100010000FFF0F0E000010000FFF8F9F080030000FFFCFFF8C0030000
      FFFEFFFFE00F0000FFFFFFFFF01F000000000000000000000000000000000000
      000000000000}
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 463
    Top = 161
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
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 492
    Top = 227
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
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 447
      FloatTop = 215
      FloatClientWidth = 38
      FloatClientHeight = 44
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSave'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnClose'
        end>
      NotDocking = [dsNone]
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btnSave: TdxBarButton
      Caption = 'Post'
      Category = 0
      Enabled = False
      Hint = 'Post'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object btnClose: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btnCloseClick
    end
  end
end
