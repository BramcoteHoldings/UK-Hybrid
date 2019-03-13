object frmOtherParty: TfrmOtherParty
  Left = 590
  Top = 184
  Width = 358
  Height = 484
  Caption = 'Matter Contacts'
  Color = clBtnFace
  Constraints.MinHeight = 424
  Constraints.MinWidth = 310
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    342
    448)
  PixelsPerInch = 96
  TextHeight = 13
  object bnClear: TBitBtn
    Left = 10
    Top = 425
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 5
    OnClick = bnClearClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object bnAdd: TBitBtn
    Left = 184
    Top = 425
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = bnAddClick
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
  end
  object bnCancel: TBitBtn
    Left = 264
    Top = 425
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    TabOrder = 4
    OnClick = bnCancelClick
    Kind = bkCancel
  end
  object gbMatter: TGroupBox
    Left = 10
    Top = 10
    Width = 328
    Height = 84
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Matter'
    TabOrder = 0
    object lClientLabel: TLabel
      Left = 10
      Top = 46
      Width = 26
      Height = 13
      Caption = 'Client'
    end
    object lMatterDescLabel: TLabel
      Left = 10
      Top = 62
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object bnMatterFind: TSpeedButton
      Left = 74
      Top = 14
      Width = 21
      Height = 21
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = bnMatterFindClick
    end
    object lClient: TLabel
      Left = 74
      Top = 46
      Width = 35
      Height = 13
      Caption = 'lblclient'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lMatterDesc: TLabel
      Left = 74
      Top = 62
      Width = 62
      Height = 13
      Caption = 'lblmatterdesc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lMatterSearchLabel: TLabel
      Left = 10
      Top = 18
      Width = 34
      Height = 13
      Caption = 'Search'
    end
    object lMatter: TLabel
      Left = 103
      Top = 18
      Width = 32
      Height = 13
      Caption = 'lMatter'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
    end
  end
  object gbParty: TGroupBox
    Left = 10
    Top = 100
    Width = 328
    Height = 148
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Contact / Party'
    TabOrder = 1
    object lPartyType: TLabel
      Left = 10
      Top = 22
      Width = 51
      Height = 13
      Caption = 'Party Type'
    end
    object lPhonebookSearch: TLabel
      Left = 10
      Top = 49
      Width = 92
      Height = 13
      Caption = 'Phonebook Search'
    end
    object bnPhoneBookFind: TSpeedButton
      Left = 110
      Top = 45
      Width = 21
      Height = 21
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = bnPhoneBookFindClick
    end
    object lMatterParty: TLabel
      Left = 144
      Top = 49
      Width = 62
      Height = 13
      Caption = 'lblmatterparty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lReference: TLabel
      Left = 10
      Top = 75
      Width = 50
      Height = 13
      Caption = 'Reference'
    end
    object lSequence: TLabel
      Left = 10
      Top = 120
      Width = 49
      Height = 13
      Caption = 'Sequence'
      Visible = False
    end
    object lActingFor: TLabel
      Left = 10
      Top = 98
      Width = 54
      Height = 13
      Caption = 'Acting For?'
      FocusControl = ckActingFor
      Visible = False
    end
    object cbPartyDescr: TComboBox
      Left = 110
      Top = 18
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnChange = cbPartyDescrChange
      OnEnter = cbPartyDescrEnter
    end
    object eRefNo: TEdit
      Left = 110
      Top = 71
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object ckActingFor: TCheckBox
      Left = 110
      Top = 96
      Width = 93
      Height = 17
      TabOrder = 2
      Visible = False
    end
    object neSequence: TNumberEdit
      Left = 110
      Top = 116
      Width = 25
      Height = 21
      Alignment = taRightJustify
      DecimalPlaces = 0
      DisplayFormat = dfInteger
      EditText = '0'
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 3
      Text = '0'
      Visible = False
    end
  end
  object gbPartyData: TGroupBox
    Left = 10
    Top = 254
    Width = 328
    Height = 164
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Party Data'
    TabOrder = 2
    DesignSize = (
      328
      164)
    object vtData: TVirtualStringTree
      Left = 10
      Top = 18
      Width = 308
      Height = 134
      Anchors = [akLeft, akTop, akRight, akBottom]
      DefaultNodeHeight = 20
      Header.AutoSizeIndex = -1
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Segoe UI'
      Header.Font.Style = []
      Header.Options = [hoAutoResize, hoVisible]
      Header.Style = hsPlates
      HintAnimation = hatNone
      RootNodeCount = 2
      TabOrder = 0
      TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoTristateTracking, toAutoDeleteMovedNodes]
      TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
      TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toUseBlendedImages]
      TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus]
      OnColumnClick = vtDataColumnClick
      OnCreateEditor = vtDataCreateEditor
      OnEditCancelled = vtDataEditCancelled
      OnEdited = vtDataEdited
      OnEditing = vtDataEditing
      OnEnter = vtDataEnter
      OnExit = vtDataExit
      OnFocusChanging = vtDataFocusChanging
      OnGetText = vtDataGetText
      OnPaintText = vtDataPaintText
      OnGetNodeDataSize = vtDataGetNodeDataSize
      OnInitChildren = vtDataInitChildren
      OnNewText = vtDataNewText
      Columns = <
        item
          Options = [coEnabled, coParentBidiMode, coParentColor, coVisible]
          Position = 0
          Width = 150
          WideText = 'Name'
        end
        item
          Options = [coEnabled, coParentBidiMode, coParentColor, coVisible]
          Position = 1
          Width = 154
          WideText = 'Value'
        end>
    end
  end
    object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 202
    Top = 31
  end
  object qDataFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'SELECT'
            '  d.seq,'
            '  f.fieldname,'
            '  t.caption,'
            '  t.type,'
            '  f.textvalue,'
            '  f.nunique,'
            '  f.linktable'
            'FROM'
            '  fieldtypelink f,'
            '  fieldtype t,'
            '  dataformfield d,'
            '  dataform g'
            'WHERE'
            '  t.name = f.fieldname'
            '  AND d.dataform = g.code'
            '  AND d.fieldname = t.name'
            '  AND f.linktable = upper(g.party)'
            '  AND f.nunique = :nunique'
            '  AND g.party = :partytype'
            'UNION'
            'SELECT'
            '  d.seq,'
            '  t.name AS fieldname,'
            '  t.caption,'
            '  t.type,'
            '  NULL AS textvalue,'
            '  -1 AS nunique,'
            '  NULL AS linktable'
            'FROM'
            '  fieldtype t,'
            '  dataformfield d,'
            '  dataform g'
            'WHERE'
            '  d.dataform = g.code'
            '  AND g.party = :partytype'
            '  AND d.fieldname = t.name'
            '  AND t.name NOT IN ('
            '    SELECT t.name'
            '    FROM'
            '      fieldtypelink f,'
            '      fieldtype t,'
            '      dataformfield d,'
            '      dataform g'
            '    WHERE t.name = f.fieldname'
            '     AND d.dataform = g.code'
            '     AND g.party = :partytype'
            '     AND d.fieldname = t.NAME'
            '     AND f.linktable = upper(g.party)'
            '     AND f.nunique = :nunique'
            '  )'
            'ORDER BY 1')
    Left = 259
    Top = 31
    object qDataFieldsSEQ: TFloatField
      FieldName = 'SEQ'
    end
    object qDataFieldsFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 40
    end
    object qDataFieldsCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 120
    end
    object qDataFieldsTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qDataFieldsNUNIQUE: TFloatField
      FieldName = 'NUNIQUE'
    end
    object qDataFieldsLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
    end
    object qDataFieldsTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
  end
object dsFields: TDataSource
    AutoEdit = False
    DataSet = qDataFields
    Left = 316
    Top = 31
  end
end
