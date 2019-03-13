object frmSundryBatch: TfrmSundryBatch
  Left = 484
  Top = 264
  Caption = 'Sundry Batch Entry'
  ClientHeight = 571
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1093
    571)
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 11
    Top = 12
    Width = 24
    Height = 15
    Caption = 'Date'
  end
  object lblAmountMsg: TLabel
    Left = 419
    Top = 527
    Width = 35
    Height = 20
    Anchors = [akLeft, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblTotal: TLabel
    Left = 479
    Top = 527
    Width = 78
    Height = 17
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblTotalUnits: TLabel
    Left = 257
    Top = 527
    Width = 70
    Height = 17
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object btnOK: TBitBtn
    Left = 920
    Top = 521
    Width = 79
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
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
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnCancel: TBitBtn
    Left = 1006
    Top = 521
    Width = 78
    Height = 27
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object sbarMatter: TStatusBar
    Left = 0
    Top = 552
    Width = 1093
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object chkNoExit: TCheckBox
    Left = 9
    Top = 525
    Width = 187
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = '&Keep form open after posting?'
    TabOrder = 3
  end
  object dbgrSundry: TcxGrid
    Left = 10
    Top = 158
    Width = 1074
    Height = 361
    Anchors = [akLeft, akTop, akRight, akBottom]
    PopupMenu = popGrid
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object tvSundry: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnEditKeyPress = tvSundryEditKeyPress
      DataController.DataSource = dsSundryTmp
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Kind = skSum
          FieldName = 'UNITS'
          Column = tvSundryUNITS
        end
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvSundryAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.PostponedSynchronization = False
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsView.NavigatorOffset = 54
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 21
      Styles.Footer = cxStyle2
      object tvSundryREFNO: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'REFNO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownRows = 20
        Properties.KeyFieldNames = 'FILEID'
        Properties.ListColumns = <
          item
            FieldName = 'FILEID'
          end
          item
            FieldName = 'SEARCH'
          end>
        Properties.ListOptions.GridLines = glHorizontal
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsMRUList
        Properties.OnCloseUp = cxGrid1DBTableView1REFNOPropertiesCloseUp
        Properties.OnInitPopup = cxGrid1DBTableView1REFNOPropertiesInitPopup
        Properties.OnValidate = cxGrid1DBTableView1REFNOPropertiesValidate
        MinWidth = 21
        Width = 81
      end
      object tvSundryUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = False
        Properties.OnValidate = cxGrid1DBTableView1UNITSPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 21
        Width = 50
      end
      object tvSundrySUNDRYTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'SUNDRYTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 20
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSundType
        Properties.OnCloseUp = tvSundrySUNDRYTYPEPropertiesCloseUp
        MinWidth = 21
        Width = 48
      end
      object tvSundryREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxPopupEditProperties'
        Properties.PopupControl = memoReason
        Properties.PopupHeight = 214
        Properties.PopupMinHeight = 107
        Properties.PopupMinWidth = 107
        Properties.PopupWidth = 268
        MinWidth = 21
        Width = 310
      end
      object tvSundryTAXCODE: TcxGridDBColumn
        Caption = 'Tax Code'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTaxTypes
        Properties.OnCloseUp = tvSundryTAXCODEPropertiesCloseUp
        MinWidth = 21
        Width = 79
      end
      object tvSundryRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = tvSundryRATEPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 21
        Options.Editing = False
        Options.Focusing = False
        Width = 63
      end
      object tvSundryAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = tvSundryAMOUNTPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 21
        Width = 83
      end
      object tvSundryTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taRightJustify
        MinWidth = 21
        Width = 59
      end
    end
    object dbgrSundryLevel1: TcxGridLevel
      GridView = tvSundry
    end
  end
  object gbDefaults: TcxGroupBox
    Left = 10
    Top = 32
    Caption = 'Defaults'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Height = 120
    Width = 395
    object Label4: TLabel
      Left = 9
      Top = 21
      Width = 25
      Height = 15
      Caption = 'Type'
    end
    object Units: TLabel
      Left = 9
      Top = 48
      Width = 27
      Height = 15
      Caption = 'Units'
    end
    object Label8: TLabel
      Left = 9
      Top = 74
      Width = 38
      Height = 15
      Caption = 'Reason'
    end
    object Label3: TLabel
      Left = 257
      Top = 48
      Width = 23
      Height = 15
      Caption = 'Rate'
    end
    object cbType: TcxLookupComboBox
      Left = 85
      Top = 17
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end
        item
          Width = 90
          FieldName = 'CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSundType
      Properties.OnCloseUp = cbTypePropertiesCloseUp
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 277
    end
    object neRate: TcxCurrencyEdit
      Left = 302
      Top = 44
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 60
    end
    object neUnits: TcxSpinEdit
      Left = 85
      Top = 44
      Properties.MinValue = 1.000000000000000000
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Value = 1
      Width = 56
    end
    object tbDesc: TcxTextEdit
      Left = 85
      Top = 70
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      OnExit = tbDescExit
      OnKeyPress = tbDescKeyPress
      Width = 277
    end
    object chkDefaultUnits: TcxCheckBox
      Left = 83
      Top = 94
      Caption = 'Default # units into description?'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
  end
  object dtpDate: TcxDateEdit
    Left = 94
    Top = 9
    Properties.DateOnError = deToday
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnValidate = dtpDatePropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 130
  end
  object memoReason: TcxDBRichEdit
    Left = 250
    Top = 229
    DataBinding.DataField = 'REASON'
    DataBinding.DataSource = dsSundryTmp
    Properties.PlainText = True
    Properties.WantTabs = True
    Style.BorderStyle = ebsNone
    TabOrder = 7
    Visible = False
    OnEnter = memoReasonEnter
    OnKeyDown = memoReasonKeyDown
    Height = 128
    Width = 749
  end
  object qrySundry: TUniQuery
    KeyFields = 'NSUNDRY'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY (CREATED, DESCR, UNITS, TYPE, PERUNIT, ACCT,'
      
        '                                         AMOUNT, NMATTER, NCLIEN' +
        'T, FILEID, '
      
        '                                         BILLED, PRIVATE, TAXCOD' +
        'E, TAX)'
      'VALUES (:CREATED, :DESCR, :UNITS, :TYPE, :PERUNIT, :ACCT,'
      '                :AMOUNT, :NMATTER, :NCLIENT, :FILEID, '
      '                 '#39'N'#39', '#39'N'#39', :TAXCODE, :TAX)'
      '')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_NSUNDRY')
    Left = 420
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERUNIT'
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
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
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
      end>
  end
  object qrySundType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR, RATE FROM SUNDRYTYPE'
      'where active = '#39'Y'#39)
    Left = 461
    Top = 8
  end
  object popGrid: TPopupMenu
    Left = 584
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
    end
  end
  object qrySundryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ROWID, REFNO, SUNDRYTYPE, REASON, UNITS, RATE, AMOUNT, TA' +
        'XCODE, TAX'
      'FROM LGRALLOC WHERE REFNO IS NULL')
    CachedUpdates = True
    AfterInsert = qrySundryTmpAfterInsert
    AfterPost = qrySundryTmpAfterPost
    AfterDelete = qrySundryTmpAfterDelete
    AfterScroll = qrySundryTmpAfterScroll
    Left = 561
    Top = 44
  end
  object dsSundryTmp: TUniDataSource
    DataSet = qrySundryTmp
    Left = 594
    Top = 45
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 664
    Top = 18
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
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
    Left = 655
    Top = 92
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
    Left = 724
    Top = 78
  end
  object qryMSearch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT fileid, nmatter, title, shortdescr'
      'FROM matter'
      'WHERE fileid = :p_fileid')
    Left = 565
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_fileid'
        Value = nil
      end>
  end
  object dsSundType: TUniDataSource
    DataSet = qrySundType
    Left = 497
    Top = 12
  end
  object qryTaxTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM TAXTYPE ORDER BY CODE')
    Left = 426
    Top = 51
  end
  object dsTaxTypes: TUniDataSource
    DataSet = qryTaxTypes
    Left = 462
    Top = 48
  end
end
