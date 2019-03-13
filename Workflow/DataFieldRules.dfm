object frmDataFieldRules: TfrmDataFieldRules
  Left = 415
  Top = 331
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Data Field Rules Definition'
  ClientHeight = 297
  ClientWidth = 241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  DesignSize = (
    241
    297)
  PixelsPerInch = 96
  TextHeight = 14
  object gbRules: TcxGroupBox
    Left = 9
    Top = 10
    Caption = 'Rules'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 248
    Width = 217
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 104
      Height = 14
      Caption = 'Maximum entry length'
    end
    object Label3: TLabel
      Left = 8
      Top = 108
      Width = 57
      Height = 14
      Caption = 'Default Text'
    end
    object Label4: TLabel
      Left = 8
      Top = 84
      Width = 112
      Height = 14
      Caption = 'Number of display lines'
    end
    object dbedWidth: TDBEdit
      Left = 160
      Top = 16
      Width = 49
      Height = 22
      DataField = 'CONSTRAINT_WIDTH'
      DataSource = dsFieldType
      TabOrder = 0
    end
    object dbchkForceUpper: TDBCheckBox
      Left = 8
      Top = 41
      Width = 201
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Force Uppercase'
      DataField = 'CONSTRAINT_UPPERCASE'
      DataSource = dsFieldType
      TabOrder = 1
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
      OnClick = dbchkForceUpperClick
    end
    object dbchkLookupField: TDBCheckBox
      Left = 8
      Top = 59
      Width = 201
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Allow Lookups'
      DataField = 'LOOKUPFIELD'
      DataSource = dsFieldType
      TabOrder = 2
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
      OnClick = dbchkLookupFieldClick
    end
    object dbmmoDefaultText: TDBMemo
      Left = 8
      Top = 124
      Width = 201
      Height = 113
      DataField = 'DEFAULTTEXT'
      DataSource = dsFieldType
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 160
      Top = 81
      Width = 49
      Height = 22
      DataField = 'DISPLAYLINECOUNT'
      DataSource = dsFieldType
      TabOrder = 4
    end
  end
  object btnOK: TBitBtn
    Left = 73
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
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
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 0
  end
  object btnCancel: TBitBtn
    Left = 153
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object gbValues: TcxGroupBox
    Left = 235
    Top = 9
    Caption = 'Lookup Values'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    DesignSize = (
      405
      248)
    Height = 248
    Width = 405
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 20
      Height = 14
      Caption = 'Add'
    end
    object edNewValue: TEdit
      Left = 40
      Top = 16
      Width = 279
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnKeyPress = edNewValueKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 322
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Print'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555500000000000555508888888880805500000000000008050888888AAA88
        0005088888877788080500000000000008800888888888808080500000000008
        0800550FFFFFFFF080805550F00000F000055550FFFFFFFF055555550F00000F
        055555550FFFFFFFF05555555000000000555555555555555555}
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object lbValues: TListBox
      Left = 8
      Top = 40
      Width = 389
      Height = 112
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 14
      TabOrder = 2
      OnClick = lbValuesClick
      OnKeyDown = lbValuesKeyDown
    end
    object dbchkLookupEnforced: TDBCheckBox
      Left = 8
      Top = 159
      Width = 390
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Allow entries other than from lookup list'
      DataField = 'LOOKUPENFORCED'
      DataSource = dsFieldType
      TabOrder = 3
      ValueChecked = 'N'
      ValueUnchecked = 'Y'
    end
    object dbchkAutoAdd: TDBCheckBox
      Left = 8
      Top = 175
      Width = 390
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Automatically add new entries to lookup list'
      DataField = 'LOOKUPAUTOADD'
      DataSource = dsFieldType
      TabOrder = 4
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
    end
  end
  object qryLookups: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 57
    Top = 209
  end
  object dsFieldType: TUniDataSource
    DataSet = qryFieldType
    Left = 8
    Top = 240
  end
  object qryFieldType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  FT.ROWID,'
      '  FT.DEFAULTTEXT,'
      '  FT.LOOKUPENFORCED,'
      '  FT.LOOKUPAUTOADD,'
      '  FT.DISPLAYLINECOUNT,'
      '  FT.MANDATORY,'
      '  FT.NAME,'
      '  FT.CAPTION,'
      '  FT.DESCR,'
      '  FT.TYPE,'
      '  FT.PHONEBOOKGROUP,'
      '  FT.CONSTRAINT_WIDTH,'
      '  FT.CONSTRAINT_UPPERCASE,'
      '  FT.CONSTRAINT_MULTIPLE,'
      '  FT.MULTISELECTCODE,'
      '  FT.FORMAT,'
      '  FT.LOOKUPFIELD'
      'FROM'
      '  FIELDTYPE FT'
      'WHERE'
      '  FT.NAME = :NAME')
    CachedUpdates = True
    Left = 15
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        Value = nil
      end>
    object qryFieldTypeDEFAULTTEXT: TStringField
      FieldName = 'DEFAULTTEXT'
      Size = 2000
    end
    object qryFieldTypeLOOKUPENFORCED: TStringField
      FieldName = 'LOOKUPENFORCED'
      Size = 1
    end
    object qryFieldTypeLOOKUPAUTOADD: TStringField
      FieldName = 'LOOKUPAUTOADD'
      Size = 1
    end
    object qryFieldTypeDISPLAYLINECOUNT: TFloatField
      FieldName = 'DISPLAYLINECOUNT'
    end
    object qryFieldTypeMANDATORY: TStringField
      FieldName = 'MANDATORY'
      Size = 1
    end
    object qryFieldTypeNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 40
    end
    object qryFieldTypeCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 120
    end
    object qryFieldTypeDESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
    object qryFieldTypeTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
    object qryFieldTypePHONEBOOKGROUP: TStringField
      FieldName = 'PHONEBOOKGROUP'
      Size = 25
    end
    object qryFieldTypeCONSTRAINT_WIDTH: TLargeintField
      FieldName = 'CONSTRAINT_WIDTH'
    end
    object qryFieldTypeCONSTRAINT_UPPERCASE: TStringField
      FieldName = 'CONSTRAINT_UPPERCASE'
      Size = 1
    end
    object qryFieldTypeCONSTRAINT_MULTIPLE: TStringField
      FieldName = 'CONSTRAINT_MULTIPLE'
      Size = 1
    end
    object qryFieldTypeMULTISELECTCODE: TStringField
      FieldName = 'MULTISELECTCODE'
      Size = 25
    end
    object qryFieldTypeFORMAT: TStringField
      FieldName = 'FORMAT'
    end
    object qryFieldTypeLOOKUPFIELD: TStringField
      FieldName = 'LOOKUPFIELD'
      Size = 1
    end
  end
end
