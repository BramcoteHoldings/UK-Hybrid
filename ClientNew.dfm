object frmClientNew: TfrmClientNew
  Left = 336
  Top = 184
  Width = 520
  Height = 447
  Caption = 'Client Creation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    512
    420)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 73
    Height = 13
    Caption = 'Service Partner'
  end
  object lblPartnerName: TLabel
    Left = 176
    Top = 131
    Width = 107
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
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
    Width = 53
    Height = 13
    Caption = 'Client Type'
  end
  object lblACN: TLabel
    Left = 8
    Top = 80
    Width = 31
    Height = 13
    Caption = 'A.C.N.'
  end
  object Label4: TLabel
    Left = 336
    Top = 32
    Width = 54
    Height = 13
    Caption = 'Client Code'
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Introducer'
  end
  object lblIntroducerName: TLabel
    Left = 176
    Top = 107
    Width = 105
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label6: TLabel
    Left = 288
    Top = 80
    Width = 51
    Height = 13
    Caption = 'Introduced'
  end
  object Label21: TLabel
    Left = 288
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Fee Code'
  end
  object lblFeeCodeDescr: TLabel
    Left = 424
    Top = 107
    Width = 81
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label22: TLabel
    Left = 8
    Top = 152
    Width = 60
    Height = 13
    Caption = 'Bill Template'
  end
  object Label29: TLabel
    Left = 288
    Top = 128
    Width = 114
    Height = 13
    Caption = 'Disbursement Threshold'
  end
  object dblblBilltemplate: TDBText
    Left = 144
    Top = 152
    Width = 75
    Height = 13
    AutoSize = True
    DataField = 'BILLTEMPLATE'
    DataSource = dsClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cbPartner: TComboBox
    Left = 112
    Top = 128
    Width = 57
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 8
    OnChange = cbPartnerChange
    OnClick = cbPartnerChange
  end
  object cbGender: TComboBox
    Left = 112
    Top = 8
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnChange = cbGenderChange
    Items.Strings = (
      'Association'
      'Company'
      'Estate'
      'Female'
      'Government Department'
      'Male'
      'Partnership'
      'Trust'
      'Wife')
  end
  object btnCancel: TBitBtn
    Left = 429
    Top = 388
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    TabOrder = 13
    OnClick = btnCancelClick
    Kind = bkCancel
  end
  object btnOK: TBitBtn
    Left = 341
    Top = 388
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    TabOrder = 12
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
  object cbIntroducer: TComboBox
    Left = 112
    Top = 104
    Width = 57
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 6
    OnChange = cbIntroducerChange
    OnClick = cbIntroducerChange
  end
  object dtpIntroduced: TDateTimePicker
    Left = 352
    Top = 80
    Width = 105
    Height = 21
    CalAlignment = dtaLeft
    Date = 36327.5472735301
    Time = 36327.5472735301
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 5
  end
  object dbtbClientCode: TDBEdit
    Left = 400
    Top = 32
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CODE'
    DataSource = dsClient
    TabOrder = 2
    OnEnter = dbtbClientCodeEnter
    OnExit = dbtbClientCodeExit
  end
  object dbtbName: TDBEdit
    Left = 112
    Top = 32
    Width = 201
    Height = 21
    DataField = 'NAME'
    DataSource = dsClient
    TabOrder = 1
  end
  object dbtbContact: TDBEdit
    Left = 112
    Top = 56
    Width = 201
    Height = 21
    DataField = 'CONTACT'
    DataSource = dsClient
    TabOrder = 3
  end
  object dbtbTaxNo: TDBEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 21
    DataField = 'TAXNO'
    DataSource = dsClient
    TabOrder = 4
  end
  object cbFeeCode: TComboBox
    Left = 352
    Top = 104
    Width = 65
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 7
    OnChange = cbFeeCodeChange
    OnClick = cbFeeCodeChange
  end
  object dbtbDisbThreshold: TDBEdit
    Left = 432
    Top = 128
    Width = 73
    Height = 21
    DataField = 'DISBTHRESHOLD'
    DataSource = dsClient
    TabOrder = 9
  end
  object btnBillTemplate: TBitBtn
    Left = 112
    Top = 152
    Width = 24
    Height = 21
    TabOrder = 10
    OnClick = btnBillTemplateClick
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
  object pagPhonebook: TPageControl
    Left = 8
    Top = 176
    Width = 497
    Height = 206
    ActivePage = tabName
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabIndex = 0
    TabOrder = 11
    object tabName: TTabSheet
      Caption = 'Name'
      object lblSearch: TLabel
        Left = 8
        Top = 8
        Width = 65
        Height = 13
        Caption = 'Search Name'
      end
      object lblSalutation: TLabel
        Left = 8
        Top = 152
        Width = 47
        Height = 13
        Caption = 'Salutation'
      end
      object lblPBName: TLabel
        Left = 8
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Name'
      end
      object lblPBTitle: TLabel
        Left = 8
        Top = 104
        Width = 72
        Height = 13
        Caption = 'Personal Name'
      end
      object lblOccupation: TLabel
        Left = 8
        Top = 128
        Width = 37
        Height = 13
        Caption = 'Position'
      end
      object lblLongName: TLabel
        Left = 8
        Top = 56
        Width = 55
        Height = 13
        Caption = 'Long Name'
      end
      object lblShortName: TLabel
        Left = 8
        Top = 80
        Width = 56
        Height = 13
        Caption = 'Short Name'
      end
      object Label1: TLabel
        Left = 304
        Top = 8
        Width = 82
        Height = 13
        Caption = 'Phonebook code'
        Visible = False
      end
      object Label8: TLabel
        Left = 311
        Top = 156
        Width = 42
        Height = 13
        Caption = 'Birthdate'
      end
      object btnFindPhoneBook: TBitBtn
        Left = 80
        Top = 8
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
      object dbtbKeyName: TDBEdit
        Left = 104
        Top = 8
        Width = 193
        Height = 21
        DataField = 'SEARCH'
        DataSource = dsPhoneBook
        TabOrder = 1
        OnEnter = dbtbKeyNameEnter
      end
      object dbtbPBName: TDBEdit
        Left = 104
        Top = 32
        Width = 193
        Height = 21
        DataField = 'NAME'
        DataSource = dsPhoneBook
        TabOrder = 3
        OnEnter = dbtbPBNameEnter
      end
      object dbtbSalutation: TDBEdit
        Left = 104
        Top = 152
        Width = 121
        Height = 21
        DataField = 'SALUTATION'
        DataSource = dsPhoneBook
        TabOrder = 8
        OnEnter = dbtbSalutationEnter
      end
      object dbtbTitle: TDBEdit
        Left = 104
        Top = 104
        Width = 193
        Height = 21
        DataField = 'TITLE'
        DataSource = dsPhoneBook
        TabOrder = 6
        OnEnter = dbtbTitleEnter
      end
      object dbtbOccupation: TDBEdit
        Left = 104
        Top = 128
        Width = 193
        Height = 21
        DataField = 'OCCUPATION'
        DataSource = dsPhoneBook
        TabOrder = 7
        OnEnter = dbtbTitleEnter
      end
      object dbedLongName: TDBEdit
        Left = 104
        Top = 56
        Width = 377
        Height = 21
        DataField = 'LONGNAME'
        DataSource = dsPhoneBook
        TabOrder = 4
        OnEnter = dbedLongNameEnter
      end
      object dbedShortName: TDBEdit
        Left = 104
        Top = 80
        Width = 193
        Height = 21
        DataField = 'SHORTNAME'
        DataSource = dsPhoneBook
        TabOrder = 5
        OnEnter = dbedShortNameEnter
      end
      object DBEdit2: TDBEdit
        Left = 400
        Top = 8
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CODE'
        DataSource = dsPhoneBook
        TabOrder = 2
        Visible = False
      end
      object dbDOB: TDBDateTimePicker
        Left = 360
        Top = 152
        Width = 105
        Height = 21
        CalAlignment = dtaLeft
        Date = 37481.4675163194
        Time = 37481.4675163194
        ShowCheckbox = True
        Checked = False
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 9
        DataField = 'DOB'
        DataSource = dsPhoneBook
      end
    end
    object tabStreet: TTabSheet
      Caption = 'Street Address'
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 38
        Height = 13
        Caption = 'Address'
      end
      object Label12: TLabel
        Left = 8
        Top = 72
        Width = 34
        Height = 13
        Caption = 'Suburb'
      end
      object Label13: TLabel
        Left = 8
        Top = 96
        Width = 25
        Height = 13
        Caption = 'State'
      end
      object Label14: TLabel
        Left = 168
        Top = 96
        Width = 45
        Height = 13
        Caption = 'Postcode'
      end
      object Label7: TLabel
        Left = 8
        Top = 120
        Width = 36
        Height = 13
        Caption = 'Country'
      end
      object dbmmoAddress: TDBMemo
        Left = 104
        Top = 8
        Width = 193
        Height = 57
        DataField = 'ADDRESS'
        DataSource = dsPhoneBook
        TabOrder = 0
      end
      object dbtbSuburb: TDBEdit
        Left = 128
        Top = 72
        Width = 169
        Height = 21
        DataField = 'SUBURB'
        DataSource = dsPhoneBook
        TabOrder = 2
      end
      object btnSuburbs: TBitBtn
        Left = 104
        Top = 72
        Width = 24
        Height = 21
        TabOrder = 1
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
      object dbtbPostcode: TDBEdit
        Left = 216
        Top = 96
        Width = 81
        Height = 21
        DataField = 'POSTCODE'
        DataSource = dsPhoneBook
        TabOrder = 4
      end
      object dbtbCountry: TDBEdit
        Left = 104
        Top = 120
        Width = 193
        Height = 21
        DataField = 'COUNTRY'
        DataSource = dsPhoneBook
        TabOrder = 5
        OnEnter = dbtbSalutationEnter
      end
      object dbtbState: TDBEdit
        Left = 104
        Top = 96
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        DataField = 'STATE'
        DataSource = dsPhoneBook
        TabOrder = 3
      end
    end
    object tabPostal: TTabSheet
      Caption = 'Postal + DX Address'
      ImageIndex = 2
      object Label23: TLabel
        Left = 8
        Top = 8
        Width = 38
        Height = 13
        Caption = 'Address'
      end
      object Label24: TLabel
        Left = 8
        Top = 72
        Width = 34
        Height = 13
        Caption = 'Suburb'
      end
      object Label25: TLabel
        Left = 8
        Top = 96
        Width = 25
        Height = 13
        Caption = 'State'
      end
      object Label27: TLabel
        Left = 168
        Top = 96
        Width = 45
        Height = 13
        Caption = 'Postcode'
      end
      object Label28: TLabel
        Left = 8
        Top = 120
        Width = 36
        Height = 13
        Caption = 'Country'
      end
      object Label19: TLabel
        Left = 200
        Top = 144
        Width = 59
        Height = 13
        Caption = 'DX Location'
      end
      object Label18: TLabel
        Left = 8
        Top = 144
        Width = 55
        Height = 13
        Caption = 'DX Number'
      end
      object dbmmoPostalAddress: TDBMemo
        Left = 104
        Top = 8
        Width = 193
        Height = 57
        DataField = 'POSTALADDRESS'
        DataSource = dsPhoneBook
        TabOrder = 0
      end
      object dbtbPostalSuburb: TDBEdit
        Left = 128
        Top = 72
        Width = 169
        Height = 21
        DataField = 'POSTALSUBURB'
        DataSource = dsPhoneBook
        TabOrder = 2
      end
      object btnPostalSuburbs: TBitBtn
        Left = 104
        Top = 72
        Width = 24
        Height = 21
        TabOrder = 1
        OnClick = btnPostalSuburbsClick
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
      object dbtbPostalPostcode: TDBEdit
        Left = 216
        Top = 96
        Width = 81
        Height = 21
        DataField = 'POSTALPOSTCODE'
        DataSource = dsPhoneBook
        TabOrder = 4
      end
      object dbtbPostalCountry: TDBEdit
        Left = 104
        Top = 120
        Width = 193
        Height = 21
        DataField = 'POSTALCOUNTRY'
        DataSource = dsPhoneBook
        TabOrder = 5
        OnEnter = dbtbSalutationEnter
      end
      object dbtbPostalState: TDBEdit
        Left = 104
        Top = 96
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        DataField = 'POSTALSTATE'
        DataSource = dsPhoneBook
        TabOrder = 3
      end
      object dbtbDX: TDBEdit
        Left = 104
        Top = 144
        Width = 73
        Height = 21
        DataField = 'DX'
        DataSource = dsPhoneBook
        TabOrder = 6
      end
      object dbtbDXloc: TDBEdit
        Left = 272
        Top = 144
        Width = 209
        Height = 21
        DataField = 'DXLOC'
        DataSource = dsPhoneBook
        TabOrder = 7
      end
    end
    object tabPhone: TTabSheet
      Caption = 'Telephone'
      ImageIndex = 3
      object Label15: TLabel
        Left = 8
        Top = 8
        Width = 60
        Height = 13
        Caption = 'Work Phone'
      end
      object Label17: TLabel
        Left = 8
        Top = 56
        Width = 62
        Height = 13
        Caption = 'Home Phone'
      end
      object Label16: TLabel
        Left = 8
        Top = 32
        Width = 43
        Height = 13
        Caption = 'Facsimile'
      end
      object Label2: TLabel
        Left = 8
        Top = 80
        Width = 31
        Height = 13
        Caption = 'Mobile'
      end
      object dbtbWorkPhone: TDBEdit
        Left = 104
        Top = 8
        Width = 121
        Height = 21
        DataField = 'WORKPHONE'
        DataSource = dsPhoneBook
        TabOrder = 0
      end
      object dbtbFax: TDBEdit
        Left = 104
        Top = 32
        Width = 121
        Height = 21
        DataField = 'FAX'
        DataSource = dsPhoneBook
        TabOrder = 1
      end
      object dbtbHomePhone: TDBEdit
        Left = 104
        Top = 56
        Width = 121
        Height = 21
        DataField = 'HOMEPHONE'
        DataSource = dsPhoneBook
        TabOrder = 2
      end
      object dbtbMobile: TDBEdit
        Left = 104
        Top = 80
        Width = 121
        Height = 21
        DataField = 'MOBILE'
        DataSource = dsPhoneBook
        TabOrder = 3
      end
    end
    object tabInternet: TTabSheet
      Caption = 'Internet'
      ImageIndex = 4
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Email'
      end
      object Label26: TLabel
        Left = 8
        Top = 32
        Width = 42
        Height = 13
        Caption = 'Web site'
      end
      object dbtbEmail: TDBEdit
        Left = 104
        Top = 8
        Width = 377
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsPhoneBook
        TabOrder = 0
        OnEnter = dbtbSalutationEnter
      end
      object dbtbWWW: TDBEdit
        Left = 104
        Top = 40
        Width = 377
        Height = 21
        DataField = 'WWW'
        DataSource = dsPhoneBook
        TabOrder = 1
        OnEnter = dbtbSalutationEnter
      end
    end
    object tabNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 5
      object dbmmoNotes: TDBMemo
        Left = 0
        Top = 0
        Width = 489
        Height = 178
        Align = alClient
        DataField = 'NOTE'
        DataSource = dsPhoneBook
        TabOrder = 0
      end
    end
  end
    object dsClient: TUniDataSource
    DataSet = qryClient
    Left = 442
    Top = 40
  end
  object qryClient: TUniQuery
    SQL.Strings = (
            'SELECT C.*, C.ROWID FROM CLIENT C WHERE C.NCLIENT = :NCLIENT')
    CachedUpdates = True
    LockMode = lmLockImmediate
    Left = 408
    Top = 40
  end
  object qryPhoneBook: TUniQuery
    SQLInsert.Strings = (
            'INSERT INTO PHONEBOOK'
            
              '  (NNAME, NCLIENT, SEARCH, TITLE, GENDER, SALUTATION, ADDRESS, S' +
              'UBURB, STATE, POSTCODE, WORKPHONE, HOMEPHONE, DX, DXLOC, FAX, CO' +
              'DE, SPARTY, SOLICITOR, REAL_ESTATE, REFERRALS, NOTE, NAME, SHORT' +
              'NAME, LONGNAME, MOD_DATE, MOD_BY, TYPE, COUNTRY, ACN, OCCUPATION' +
              ', DOB, EMAIL, WWW, MOBILE, NNAMEMASTER, POSTALADDRESS, POSTALSUB' +
              'URB, POSTALSTATE, POSTALPOSTCODE, POSTALCOUNTRY, WHICHADDRESS, D' +
              'EFAULT_REF, ANTDISBS, ANTDRS)'
            'VALUES'
            
              '  (:NNAME, :NCLIENT, :SEARCH, :TITLE, :GENDER, :SALUTATION, :ADD' +
              'RESS, :SUBURB, :STATE, :POSTCODE, :WORKPHONE, :HOMEPHONE, :DX, :' +
              'DXLOC, :FAX, :CODE, :SPARTY, :SOLICITOR, :REAL_ESTATE, :REFERRAL' +
              'S, :NOTE, :NAME, :SHORTNAME, :LONGNAME, :MOD_DATE, :MOD_BY, :TYP' +
              'E, :COUNTRY, :ACN, :OCCUPATION, :DOB, :EMAIL, :WWW, :MOBILE, :NN' +
              'AMEMASTER, :POSTALADDRESS, :POSTALSUBURB, :POSTALSTATE, :POSTALP' +
              'OSTCODE, :POSTALCOUNTRY, :WHICHADDRESS, :DEFAULT_REF, :ANTDISBS,' +
              ' :ANTDRS)')
    SQLDelete.Strings = (
            'DELETE FROM PHONEBOOK'
            'WHERE'
            '  NNAME = :NNAME')
    SQLUpdate.Strings = (
            'UPDATE PHONEBOOK'
            'SET'
            '  NNAME = :NNAME,'
            '  NCLIENT = :NCLIENT,'
            '  SEARCH = :SEARCH,'
            '  TITLE = :TITLE,'
            '  GENDER = :GENDER,'
            '  SALUTATION = :SALUTATION,'
            '  ADDRESS = :ADDRESS,'
            '  SUBURB = :SUBURB,'
            '  STATE = :STATE,'
            '  POSTCODE = :POSTCODE,'
            '  WORKPHONE = :WORKPHONE,'
            '  HOMEPHONE = :HOMEPHONE,'
            '  DX = :DX,'
            '  DXLOC = :DXLOC,'
            '  FAX = :FAX,'
            '  CODE = :CODE,'
            '  SPARTY = :SPARTY,'
            '  SOLICITOR = :SOLICITOR,'
            '  REAL_ESTATE = :REAL_ESTATE,'
            '  REFERRALS = :REFERRALS,'
            '  NOTE = :NOTE,'
            '  NAME = :NAME,'
            '  SHORTNAME = :SHORTNAME,'
            '  LONGNAME = :LONGNAME,'
            '  MOD_DATE = :MOD_DATE,'
            '  MOD_BY = :MOD_BY,'
            '  TYPE = :TYPE,'
            '  COUNTRY = :COUNTRY,'
            '  ACN = :ACN,'
            '  OCCUPATION = :OCCUPATION,'
            '  DOB = :DOB,'
            '  EMAIL = :EMAIL,'
            '  WWW = :WWW,'
            '  MOBILE = :MOBILE,'
            '  NNAMEMASTER = :NNAMEMASTER,'
            '  POSTALADDRESS = :POSTALADDRESS,'
            '  POSTALSUBURB = :POSTALSUBURB,'
            '  POSTALSTATE = :POSTALSTATE,'
            '  POSTALPOSTCODE = :POSTALPOSTCODE,'
            '  POSTALCOUNTRY = :POSTALCOUNTRY,'
            '  WHICHADDRESS = :WHICHADDRESS,'
            '  DEFAULT_REF = :DEFAULT_REF,'
            '  ANTDISBS = :ANTDISBS,'
            '  ANTDRS = :ANTDRS'
            'WHERE'
            '  NNAME = :OLD_NNAME')
    SQLRefresh.Strings = (
            'WHERE'
            '  P.NNAME = :NNAME')
    SQLLock.Strings = (
            'SELECT * FROM PHONEBOOK'
            'WHERE'
            '  NNAME = :NNAME'
            'FOR UPDATE NOWAIT')
    SQL.Strings = (
            'SELECT P.*, P.ROWID FROM PHONEBOOK P WHERE P.SEARCH = :SEARCH')
    CachedUpdates = True
    LockMode = lmLockImmediate
    Left = 408
    Top = 72
  end
  object dsPhoneBook: TUniDataSource
    DataSet = qryPhoneBook
    Left = 442
    Top = 72
  end
  object qryMatterUpdate: TUniQuery
    SQL.Strings = (
            'UPDATE MATTER SET TITLE = :SEARCH WHERE NCLIENT = :NCLIENT')
    Left = 480
    Top = 40
  end
  object qryClientCheck: TUniQuery
    SQL.Strings = (
            'SELECT SEARCH FROM CLIENT WHERE CODE = :Code')
    Left = 480
    Top = 72
  end
  object qryCodeRules: TUniQuery
    SQL.Strings = (
            'SELECT CLIENTCODE, CLIENTACRONYM, CLIENTPAD, CLIENTLENGTH, ROWID'
            'FROM ENTITY'
            'WHERE CODE = :Entity')
    CachedUpdates = True
    LockMode = lmLockImmediate
    Left = 480
    Top = 104
  end
  object qryGender: TUniQuery
    SQL.Strings = (
            'SELECT * FROM GENDER WHERE DESCR = :Gender')
    LockMode = lmLockImmediate
    Left = 376
    Top = 40
  end
  object qryGetCodes: TUniQuery
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True'
      )
    Left = 408
    Top = 144
  end
end
