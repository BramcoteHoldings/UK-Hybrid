object frmCreditorNew: TfrmCreditorNew
  Left = 273
  Top = 165
  Width = 502
  Height = 415
  Caption = 'Creditor Creation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 8
    Top = 32
    Width = 91
    Height = 13
    Caption = 'Company/Surname'
  end
  object lblContact: TLabel
    Left = 8
    Top = 56
    Width = 97
    Height = 13
    Caption = 'Contact/First Names'
  end
  object lblGender: TLabel
    Left = 8
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Type'
  end
  object lblGenderDesc: TLabel
    Left = 152
    Top = 11
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 71
    Height = 13
    Caption = 'Terms (in days)'
  end
  object Label3: TLabel
    Left = 200
    Top = 104
    Width = 47
    Height = 13
    Caption = 'Credit limit'
  end
  object Label4: TLabel
    Left = 8
    Top = 82
    Width = 64
    Height = 13
    Caption = 'Creditor Code'
  end
  object Label5: TLabel
    Left = 208
    Top = 82
    Width = 31
    Height = 13
    Caption = 'A.B.N.'
  end
  object tbName: TEdit
    Left = 112
    Top = 32
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object tbContact: TEdit
    Left = 112
    Top = 56
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object cbGender: TComboBox
    Left = 112
    Top = 8
    Width = 33
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnChange = cbGenderChange
    Items.Strings = (
      'C'
      'F'
      'M'
      'P')
  end
  object btnCancel: TBitBtn
    Left = 414
    Top = 360
    Width = 75
    Height = 25
    Caption = '&Cancel'
    TabOrder = 9
    OnClick = btnCancelClick
    Kind = bkCancel
  end
  object gbPhoneBook: TGroupBox
    Left = 8
    Top = 128
    Width = 481
    Height = 225
    Caption = 'PhoneBook Details'
    TabOrder = 7
    object lblPhoneBookKey: TLabel
      Left = 8
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Key Name'
    end
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Name'
    end
    object Label9: TLabel
      Left = 8
      Top = 72
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object Label1: TLabel
      Left = 8
      Top = 96
      Width = 47
      Height = 13
      Caption = 'Salutation'
    end
    object Label10: TLabel
      Left = 8
      Top = 120
      Width = 38
      Height = 13
      Caption = 'Address'
    end
    object Label14: TLabel
      Left = 160
      Top = 192
      Width = 45
      Height = 13
      Caption = 'Postcode'
    end
    object Label13: TLabel
      Left = 8
      Top = 192
      Width = 25
      Height = 13
      Caption = 'State'
    end
    object Label12: TLabel
      Left = 8
      Top = 168
      Width = 34
      Height = 13
      Caption = 'Suburb'
    end
    object Label15: TLabel
      Left = 288
      Top = 24
      Width = 60
      Height = 13
      Caption = 'Work Phone'
    end
    object Label20: TLabel
      Left = 288
      Top = 168
      Width = 28
      Height = 13
      Caption = 'Notes'
    end
    object Label11: TLabel
      Left = 288
      Top = 144
      Width = 25
      Height = 13
      Caption = 'Code'
    end
    object Label19: TLabel
      Left = 288
      Top = 120
      Width = 59
      Height = 13
      Caption = 'DX Location'
    end
    object Label18: TLabel
      Left = 288
      Top = 96
      Width = 15
      Height = 13
      Caption = 'DX'
    end
    object Label17: TLabel
      Left = 288
      Top = 72
      Width = 62
      Height = 13
      Caption = 'Home Phone'
    end
    object Label16: TLabel
      Left = 288
      Top = 48
      Width = 43
      Height = 13
      Caption = 'Facsimile'
    end
    object tbSearch: TEdit
      Left = 104
      Top = 24
      Width = 169
      Height = 21
      TabOrder = 1
      OnEnter = tbSearchEnter
    end
    object tbPBName: TEdit
      Left = 104
      Top = 48
      Width = 169
      Height = 21
      TabOrder = 2
      OnEnter = tbPBNameEnter
    end
    object tbTitle: TEdit
      Left = 104
      Top = 72
      Width = 169
      Height = 21
      TabOrder = 3
      OnEnter = tbTitleEnter
    end
    object tbSalutation: TEdit
      Left = 104
      Top = 96
      Width = 169
      Height = 21
      TabOrder = 4
      OnEnter = tbSalutationEnter
    end
    object cbState: TComboBox
      Left = 104
      Top = 192
      Width = 49
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 8
      Items.Strings = (
        'ACT'
        'NSW'
        'NT'
        'QLD'
        'SA'
        'TAS'
        'VIC'
        'WA')
    end
    object tbPostcode: TEdit
      Left = 208
      Top = 192
      Width = 65
      Height = 21
      TabOrder = 9
    end
    object tbWorkPhone: TEdit
      Left = 352
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object tbFax: TEdit
      Left = 352
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 11
    end
    object tbHomePhone: TEdit
      Left = 352
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 12
    end
    object tbDX: TEdit
      Left = 352
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 13
    end
    object tbDXLoc: TEdit
      Left = 352
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 14
    end
    object tbUserCode: TEdit
      Left = 352
      Top = 144
      Width = 49
      Height = 21
      TabOrder = 15
    end
    object tbNote: TEdit
      Left = 352
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 16
    end
    object btnFindPhoneBook: TBitBtn
      Left = 72
      Top = 24
      Width = 22
      Height = 21
      Hint = 'Locate Existing PhoneBook Entry'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnFindPhoneBookClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
    end
    object mmoAddress: TMemo
      Left = 104
      Top = 120
      Width = 169
      Height = 41
      TabOrder = 5
    end
    object btnSuburbs: TBitBtn
      Left = 104
      Top = 168
      Width = 24
      Height = 21
      TabOrder = 6
      OnClick = btnSuburbsClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
    end
    object tbSuburb: TEdit
      Left = 128
      Top = 168
      Width = 145
      Height = 21
      TabOrder = 7
      OnEnter = tbSalutationEnter
    end
  end
  object btnOK: TBitBtn
    Left = 328
    Top = 360
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 8
    OnClick = btnOKClick
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
  object neTerms: TNumberEdit
    Left = 112
    Top = 104
    Width = 33
    Height = 21
    Alignment = taRightJustify
    DecimalPlaces = 0
    DisplayFormat = dfInteger
    EditText = '30'
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
    TabOrder = 5
    Text = '30'
  end
  object neLimit: TNumberEdit
    Left = 256
    Top = 104
    Width = 73
    Height = 21
    Alignment = taRightJustify
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
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
    TabOrder = 6
    Text = '0'
  end
  object edCreditorCode: TEdit
    Left = 112
    Top = 80
    Width = 86
    Height = 21
    TabOrder = 3
    OnEnter = edCreditorCodeEnter
    OnExit = edCreditorCodeExit
  end
  object edTaxNo: TEdit
    Left = 256
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 4
    OnEnter = edCreditorCodeEnter
    OnExit = edCreditorCodeExit
  end
    object qryCreditor: TUniQuery
    SQL.Strings = (
            'SELECT C.*, C.ROWID FROM CREDITOR C WHERE C.NCREDITOR = -1')
    CachedUpdates = False
    LockMode = lmLockImmediate
    Left = 42
    Top = 355
  end
  object qryPhoneBook: TUniQuery
    SQL.Strings = (
            'SELECT P.*, P.ROWID FROM PHONEBOOK P WHERE P.SEARCH = :P_Search')
    CachedUpdates = False
    LockMode = lmLockImmediate
    Left = 10
    Top = 355
  end
  object qryCodeRules: TUniQuery
    SQL.Strings = (
            
              'SELECT CREDITORCODE, CREDITORACRONYM, CREDITORPAD, CREDITORLENGT' +
              'H, ROWID'
            'FROM ENTITY'
            'WHERE CODE = :Entity')
    CachedUpdates = True
    LockMode = lmLockImmediate
    Left = 73
    Top = 356
  end
  object qryCreditorCheck: TUniQuery
    SQL.Strings = (
            'SELECT SEARCH FROM CREDITOR WHERE CODE = :Code')
    Left = 105
    Top = 356
  end
end
