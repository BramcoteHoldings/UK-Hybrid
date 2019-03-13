object frmQuickMatter: TfrmQuickMatter
  Left = 168
  Top = 94
  BorderStyle = bsDialog
  Caption = 'Quick Client, Phonebook and Matter Creation'
  ClientHeight = 551
  ClientWidth = 1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 9
    Top = 8
    Caption = 'Client Details'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    DesignSize = (
      515
      539)
    Height = 539
    Width = 515
    object lNamed: TLabel
      Left = 64
      Top = 44
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Named'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lGender: TLabel
      Left = 37
      Top = 22
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Type/Gender:'
    end
    object lSalutation: TLabel
      Left = 52
      Top = 66
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Salutation:'
    end
    object lGivenNames: TLabel
      Left = 38
      Top = 91
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Given Names:'
    end
    object lLastName: TLabel
      Left = 50
      Top = 116
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Last Name:'
    end
    object lName: TLabel
      Left = 24
      Top = 155
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'Name/Company:'
    end
    object lLongName: TLabel
      Left = 47
      Top = 205
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Long Name:'
    end
    object lShortName: TLabel
      Left = 44
      Top = 180
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Short Name:'
    end
    object Bevel1: TBevel
      Left = 6
      Top = 230
      Width = 503
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object lSearch: TLabel
      Left = 67
      Top = 243
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Search:'
    end
    object lSearchMatches: TLabel
      Left = 24
      Top = 267
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Search Conflicts:'
    end
    object lTotalConflicts: TLabel
      Left = 76
      Top = 288
      Width = 8
      Height = 13
      Caption = '0'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 44
      Top = 287
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object Bevel2: TBevel
      Left = 6
      Top = 141
      Width = 504
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object lACN: TLabel
      Left = 78
      Top = 325
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'ACN:'
    end
    object Bevel3: TBevel
      Left = 7
      Top = 318
      Width = 503
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object pbConvertClientFromPhonebook: TcxButton
      Left = 347
      Top = 63
      Width = 124
      Height = 24
      Caption = 'From Phonebook...'
      TabOrder = 0
      OnClick = pbConvertClientFromPhonebookClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF000000FF00000000000000FFFFFF000000
        0000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000000FF00FF0000000000FFFFFF0000000000FFFF
        FF0000000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF0000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
        0000FFFFFF0000000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF0000000000FF000000FF00FF00FF00FF00FF000000FF00
        FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FF000000FF00FF00000000000000
        0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      LookAndFeel.NativeStyle = True
    end
    object cbGender: TcxDBLookupComboBox
      Left = 110
      Top = 19
      DataBinding.DataField = 'GENDER'
      DataBinding.DataSource = dsPhoneBook
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.OnChange = cbGenderPropertiesChange
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 159
    end
    object eSalutation: TDBEdit
      Left = 110
      Top = 62
      Width = 60
      Height = 21
      DataField = 'SALUTATION'
      DataSource = dsPhoneBook
      TabOrder = 2
    end
    object eGivenNames: TDBEdit
      Left = 110
      Top = 87
      Width = 360
      Height = 21
      DataField = 'GIVENNAMES'
      DataSource = dsPhoneBook
      TabOrder = 3
    end
    object eLastName: TDBEdit
      Left = 110
      Top = 111
      Width = 360
      Height = 21
      DataField = 'LASTNAME'
      DataSource = dsPhoneBook
      TabOrder = 4
      OnChange = eLastNameChange
    end
    object eName: TDBEdit
      Left = 110
      Top = 151
      Width = 360
      Height = 21
      DataField = 'NAME'
      DataSource = dsPhoneBook
      TabOrder = 5
    end
    object eShortName: TDBEdit
      Left = 110
      Top = 176
      Width = 360
      Height = 21
      DataField = 'SHORTNAME'
      DataSource = dsPhoneBook
      TabOrder = 6
    end
    object eLongName: TDBEdit
      Left = 110
      Top = 201
      Width = 360
      Height = 21
      DataField = 'LONGNAME'
      DataSource = dsPhoneBook
      TabOrder = 7
    end
    object eSearch: TcxDBTextEdit
      Left = 110
      Top = 238
      DataBinding.DataField = 'SEARCH'
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 8
      Width = 360
    end
    object lbSearchMatches: TListBox
      Left = 110
      Top = 264
      Width = 360
      Height = 52
      TabStop = False
      Style = lbOwnerDrawFixed
      IntegralHeight = True
      ItemHeight = 16
      TabOrder = 9
    end
    object grpAddress: TcxGroupBox
      Left = 11
      Top = 343
      Caption = 'Address'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Height = 192
      Width = 459
      object cxPageControl1: TcxPageControl
        Left = 16
        Top = 15
        Width = 426
        Height = 171
        ActivePage = cxTabSheet1
        ShowFrame = True
        Style = 9
        TabOrder = 0
        TabSlants.Kind = skCutCorner
        ClientRectBottom = 170
        ClientRectLeft = 1
        ClientRectRight = 425
        ClientRectTop = 20
        object cxTabSheet1: TcxTabSheet
          Caption = 'Street'
          ImageIndex = 0
          object lStreetAddress: TLabel
            Left = 51
            Top = 11
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Address:'
          end
          object lStreetSuburb: TLabel
            Left = 26
            Top = 75
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Town/Suburb:'
          end
          object lStreetState: TLabel
            Left = 64
            Top = 101
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'State:'
          end
          object lStreetPostCode: TLabel
            Left = 173
            Top = 101
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Post Code:'
          end
          object lStreetCountry: TLabel
            Left = 55
            Top = 125
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'Country'
          end
          object mStreetAddress: TDBRichEdit
            Left = 100
            Top = 7
            Width = 200
            Height = 60
            Color = clWhite
            DataField = 'ADDRESS'
            DataSource = dsPhoneBook
            TabOrder = 0
          end
          object ckStreetDefault: TCheckBox
            Tag = 1
            Left = 308
            Top = 9
            Width = 64
            Height = 17
            Caption = 'Default'
            TabOrder = 1
          end
          object eStreetSuburb: TcxDBButtonEdit
            Left = 100
            Top = 72
            AutoSize = False
            DataBinding.DataField = 'SUBURB'
            DataBinding.DataSource = dsPhoneBook
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
                Stretchable = False
              end>
            Style.Color = clWhite
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 2
            Height = 21
            Width = 200
          end
          object cbStreetState: TcxDBComboBox
            Left = 100
            Top = 97
            DataBinding.DataField = 'STATE'
            DataBinding.DataSource = dsPhoneBook
            Properties.Items.Strings = (
              'ACT'
              'NSW'
              'NT'
              'QLD'
              'SA'
              'TAS'
              'VIC'
              'WA')
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 3
            Width = 66
          end
          object eStreetPostCode: TDBEdit
            Left = 231
            Top = 98
            Width = 69
            Height = 21
            DataField = 'POSTCODE'
            DataSource = dsPhoneBook
            TabOrder = 4
          end
          object cbStreetCountry: TcxDBComboBox
            Left = 100
            Top = 122
            DataBinding.DataField = 'COUNTRY'
            DataBinding.DataSource = dsPhoneBook
            Properties.DropDownRows = 20
            Properties.Items.Strings = (
              'Afghanistan'
              'Albania'
              'Algeria'
              'American Samoa'
              'Andorra'
              'Angola'
              'Anguilla'
              'Antarctica'
              'Antigua And Barbuda'
              'Argentina'
              'Armenia'
              'Aruba'
              'Australia'
              'Austria'
              'Azerbaijan'
              'Bahamas'
              'Bahrain'
              'Bangladesh'
              'Barbados'
              'Belarus'
              'Belgium'
              'Belize'
              'Benin'
              'Bermuda'
              'Bhutan'
              'Bolivia'
              'Bosnia And Herzegovina'
              'Botswana'
              'Bouvet Island'
              'Brazil'
              'British Indian Ocean Territory'
              'Brunei Darussalam'
              'Bulgaria'
              'Burkina Faso'
              'Burundi'
              'Cambodia'
              'Cameroon'
              'Canada'
              'Cape Verde'
              'Cayman Islands'
              'Central African Republic'
              'Chad'
              'Chile'
              'China'
              'Christmas Island'
              'Cocos (Keeling) Islands'
              'Colombia'
              'Comoros'
              'Congo'
              'Congo, The Democratic Republic Of The'
              'Cook Islands'
              'Costa Rica'
              'C'#244'te D'#39'ivoire'
              'Croatia'
              'Cuba'
              'Cyprus'
              'Czech Republic'
              'Denmark'
              'Djibouti'
              'Dominica'
              'Dominican Republic'
              'East Timor'
              'Ecuador'
              'Egypt'
              'El Salvador'
              'Equatorial Guinea'
              'Eritrea'
              'Estonia'
              'Ethiopia'
              'Falkland Islands (Malvinas)'
              'Faroe Islands'
              'Fiji'
              'Finland'
              'France'
              'French Guiana'
              'French Polynesia'
              'French Southern Territories'
              'Gabon'
              'Gambia'
              'Georgia'
              'Germany'
              'Ghana'
              'Gibraltar'
              'Greece'
              'Greenland'
              'Grenada'
              'Guadeloupe'
              'Guam'
              'Guatemala'
              'Guinea'
              'Guinea-Bissau'
              'Guyana'
              'Haiti'
              'Heard Island And Mcdonald Islands'
              'Holy See (Vatican City State)'
              'Honduras'
              'Hong Kong'
              'Hungary'
              'Iceland'
              'India'
              'Indonesia'
              'Iran, Islamic Republic Of'
              'Iraq'
              'Ireland'
              'Israel'
              'Italy'
              'Jamaica'
              'Japan'
              'Jordan'
              'Kazakstan'
              'Kenya'
              'Kiribati'
              'Korea, Democratic People'#39's Republic Of'
              'Korea, Republic Of'
              'Kuwait'
              'Kyrgyzstan'
              'Lao People'#39's Democratic Republic'
              'Latvia'
              'Lebanon'
              'Lesotho'
              'Liberia'
              'Libyan Arab Jamahiriya'
              'Liechtenstein'
              'Lithuania'
              'Luxembourg'
              'Macau'
              'Macedonia, The Former Yugoslav Republic Of'
              'Madagascar'
              'Malawi'
              'Malaysia'
              'Maldives'
              'Mali'
              'Malta'
              'Marshall Islands'
              'Martinique'
              'Mauritania'
              'Mauritius'
              'Mayotte'
              'Mexico'
              'Micronesia, Federated States Of'
              'Moldova, Republic Of'
              'Monaco'
              'Mongolia'
              'Montserrat'
              'Morocco'
              'Mozambique'
              'Myanmar'
              'Namibia'
              'Nauru'
              'Nepal'
              'Netherlands'
              'Netherlands Antilles'
              'New Caledonia'
              'New Zealand'
              'Nicaragua'
              'Niger'
              'Nigeria'
              'Niue'
              'Norfolk Island'
              'Northern Mariana Islands'
              'Norway'
              'Oman'
              'Pakistan'
              'Palau'
              'Palestinian Territory, Occupied'
              'Panama'
              'Papua New Guinea'
              'Paraguay'
              'Peru'
              'Philippines'
              'Pitcairn'
              'Poland'
              'Portugal'
              'Puerto Rico'
              'Qatar'
              'R'#233'union'
              'Romania'
              'Russian Federation'
              'Rwanda'
              'Saint Helena'
              'Saint Kitts And Nevis'
              'Saint Lucia'
              'Saint Pierre And Miquelon'
              'Saint Vincent And The Grenadines'
              'Samoa'
              'San Marino'
              'Sao Tome And Principe'
              'Saudi Arabia'
              'Senegal'
              'Seychelles'
              'Sierra Leone'
              'Singapore'
              'Slovakia'
              'Slovenia'
              'Solomon Islands'
              'Somalia'
              'South Africa'
              'South Georgia And The South Sandwich Islands'
              'Spain'
              'Sri Lanka'
              'Sudan'
              'Suriname'
              'Svalbard And Jan Mayen'
              'Swaziland'
              'Sweden'
              'Switzerland'
              'Syrian Arab Republic'
              'Taiwan, Province Of China'
              'Tajikistan'
              'Tanzania, United Republic Of'
              'Thailand'
              'Togo'
              'Tokelau'
              'Tonga'
              'Trinidad And Tobago'
              'Tunisia'
              'Turkey'
              'Turkmenistan'
              'Turks And Caicos Islands'
              'Tuvalu'
              'Uganda'
              'Ukraine'
              'United Arab Emirates'
              'United Kingdom'
              'United States'
              'United States Minor Outlying Islands'
              'Uruguay'
              'Uzbekistan'
              'Vanuatu'
              'Vatican City State See Holy See'
              'Venezuela'
              'Viet Nam'
              'Virgin Islands, British'
              'Virgin Islands, U.S.'
              'Wallis And Futuna'
              'Western Sahara'
              'Yemen'
              'Yugoslavia'
              'Zambia'
              'Zimbabwe')
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 5
            Width = 200
          end
          object btnCopyStreetAddress: TcxButton
            Left = 312
            Top = 118
            Width = 85
            Height = 25
            TabOrder = 6
            DropDownMenu = popCopyStreetAddress
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            Kind = cxbkDropDownButton
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = True
            Spacing = 1
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Postal'
          ImageIndex = 1
          object lPostalAddress: TLabel
            Left = 51
            Top = 6
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Address:'
          end
          object lPostalSuburb: TLabel
            Left = 26
            Top = 75
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Town/Suburb:'
          end
          object lPostalState: TLabel
            Left = 64
            Top = 101
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'State:'
          end
          object lPostalPostCode: TLabel
            Left = 173
            Top = 101
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Post Code:'
          end
          object lPostalCountry: TLabel
            Left = 55
            Top = 125
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'Country'
          end
          object mPostalAddress: TDBRichEdit
            Left = 100
            Top = 7
            Width = 200
            Height = 60
            Color = clWhite
            DataField = 'POSTALADDRESS'
            DataSource = dsPhoneBook
            TabOrder = 0
          end
          object ePostalSuburb: TcxDBButtonEdit
            Left = 100
            Top = 72
            DataBinding.DataField = 'POSTALSUBURB'
            DataBinding.DataSource = dsPhoneBook
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 1
            Width = 200
          end
          object cbPostalState: TcxDBComboBox
            Left = 100
            Top = 97
            DataBinding.DataField = 'POSTALSTATE'
            DataBinding.DataSource = dsPhoneBook
            Properties.Items.Strings = (
              'ACT'
              'NSW'
              'NT'
              'QLD'
              'SA'
              'TAS'
              'VIC'
              'WA')
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 2
            Width = 66
          end
          object ePostalPostCode: TDBEdit
            Left = 231
            Top = 98
            Width = 69
            Height = 21
            DataField = 'POSTALPOSTCODE'
            DataSource = dsPhoneBook
            TabOrder = 3
          end
          object cbPostalCountry: TcxDBComboBox
            Left = 100
            Top = 122
            DataBinding.DataField = 'POSTALCOUNTRY'
            DataBinding.DataSource = dsPhoneBook
            Properties.DropDownRows = 20
            Properties.Items.Strings = (
              'Afghanistan'
              'Albania'
              'Algeria'
              'American Samoa'
              'Andorra'
              'Angola'
              'Anguilla'
              'Antarctica'
              'Antigua And Barbuda'
              'Argentina'
              'Armenia'
              'Aruba'
              'Australia'
              'Austria'
              'Azerbaijan'
              'Bahamas'
              'Bahrain'
              'Bangladesh'
              'Barbados'
              'Belarus'
              'Belgium'
              'Belize'
              'Benin'
              'Bermuda'
              'Bhutan'
              'Bolivia'
              'Bosnia And Herzegovina'
              'Botswana'
              'Bouvet Island'
              'Brazil'
              'British Indian Ocean Territory'
              'Brunei Darussalam'
              'Bulgaria'
              'Burkina Faso'
              'Burundi'
              'Cambodia'
              'Cameroon'
              'Canada'
              'Cape Verde'
              'Cayman Islands'
              'Central African Republic'
              'Chad'
              'Chile'
              'China'
              'Christmas Island'
              'Cocos (Keeling) Islands'
              'Colombia'
              'Comoros'
              'Congo'
              'Congo, The Democratic Republic Of The'
              'Cook Islands'
              'Costa Rica'
              'C'#244'te D'#39'ivoire'
              'Croatia'
              'Cuba'
              'Cyprus'
              'Czech Republic'
              'Denmark'
              'Djibouti'
              'Dominica'
              'Dominican Republic'
              'East Timor'
              'Ecuador'
              'Egypt'
              'El Salvador'
              'Equatorial Guinea'
              'Eritrea'
              'Estonia'
              'Ethiopia'
              'Falkland Islands (Malvinas)'
              'Faroe Islands'
              'Fiji'
              'Finland'
              'France'
              'French Guiana'
              'French Polynesia'
              'French Southern Territories'
              'Gabon'
              'Gambia'
              'Georgia'
              'Germany'
              'Ghana'
              'Gibraltar'
              'Greece'
              'Greenland'
              'Grenada'
              'Guadeloupe'
              'Guam'
              'Guatemala'
              'Guinea'
              'Guinea-Bissau'
              'Guyana'
              'Haiti'
              'Heard Island And Mcdonald Islands'
              'Holy See (Vatican City State)'
              'Honduras'
              'Hong Kong'
              'Hungary'
              'Iceland'
              'India'
              'Indonesia'
              'Iran, Islamic Republic Of'
              'Iraq'
              'Ireland'
              'Israel'
              'Italy'
              'Jamaica'
              'Japan'
              'Jordan'
              'Kazakstan'
              'Kenya'
              'Kiribati'
              'Korea, Democratic People'#39's Republic Of'
              'Korea, Republic Of'
              'Kuwait'
              'Kyrgyzstan'
              'Lao People'#39's Democratic Republic'
              'Latvia'
              'Lebanon'
              'Lesotho'
              'Liberia'
              'Libyan Arab Jamahiriya'
              'Liechtenstein'
              'Lithuania'
              'Luxembourg'
              'Macau'
              'Macedonia, The Former Yugoslav Republic Of'
              'Madagascar'
              'Malawi'
              'Malaysia'
              'Maldives'
              'Mali'
              'Malta'
              'Marshall Islands'
              'Martinique'
              'Mauritania'
              'Mauritius'
              'Mayotte'
              'Mexico'
              'Micronesia, Federated States Of'
              'Moldova, Republic Of'
              'Monaco'
              'Mongolia'
              'Montserrat'
              'Morocco'
              'Mozambique'
              'Myanmar'
              'Namibia'
              'Nauru'
              'Nepal'
              'Netherlands'
              'Netherlands Antilles'
              'New Caledonia'
              'New Zealand'
              'Nicaragua'
              'Niger'
              'Nigeria'
              'Niue'
              'Norfolk Island'
              'Northern Mariana Islands'
              'Norway'
              'Oman'
              'Pakistan'
              'Palau'
              'Palestinian Territory, Occupied'
              'Panama'
              'Papua New Guinea'
              'Paraguay'
              'Peru'
              'Philippines'
              'Pitcairn'
              'Poland'
              'Portugal'
              'Puerto Rico'
              'Qatar'
              'R'#233'union'
              'Romania'
              'Russian Federation'
              'Rwanda'
              'Saint Helena'
              'Saint Kitts And Nevis'
              'Saint Lucia'
              'Saint Pierre And Miquelon'
              'Saint Vincent And The Grenadines'
              'Samoa'
              'San Marino'
              'Sao Tome And Principe'
              'Saudi Arabia'
              'Senegal'
              'Seychelles'
              'Sierra Leone'
              'Singapore'
              'Slovakia'
              'Slovenia'
              'Solomon Islands'
              'Somalia'
              'South Africa'
              'South Georgia And The South Sandwich Islands'
              'Spain'
              'Sri Lanka'
              'Sudan'
              'Suriname'
              'Svalbard And Jan Mayen'
              'Swaziland'
              'Sweden'
              'Switzerland'
              'Syrian Arab Republic'
              'Taiwan, Province Of China'
              'Tajikistan'
              'Tanzania, United Republic Of'
              'Thailand'
              'Togo'
              'Tokelau'
              'Tonga'
              'Trinidad And Tobago'
              'Tunisia'
              'Turkey'
              'Turkmenistan'
              'Turks And Caicos Islands'
              'Tuvalu'
              'Uganda'
              'Ukraine'
              'United Arab Emirates'
              'United Kingdom'
              'United States'
              'United States Minor Outlying Islands'
              'Uruguay'
              'Uzbekistan'
              'Vanuatu'
              'Vatican City State See Holy See'
              'Venezuela'
              'Viet Nam'
              'Virgin Islands, British'
              'Virgin Islands, U.S.'
              'Wallis And Futuna'
              'Western Sahara'
              'Yemen'
              'Yugoslavia'
              'Zambia'
              'Zimbabwe')
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 4
            Width = 200
          end
          object btnCopyPostalAddress: TcxButton
            Left = 310
            Top = 118
            Width = 85
            Height = 25
            TabOrder = 5
            DropDownMenu = popCopyPostalAddress
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Kind = cxbkDropDownButton
            LookAndFeel.NativeStyle = True
          end
          object ckPostalDefault: TCheckBox
            Tag = 2
            Left = 308
            Top = 9
            Width = 64
            Height = 17
            Caption = 'Default'
            TabOrder = 6
          end
        end
      end
    end
    object eACN: TDBEdit
      Left = 110
      Top = 322
      Width = 200
      Height = 21
      DataField = 'ACN'
      DataSource = dsPhoneBook
      TabOrder = 11
    end
  end
  object grpMatterDtls: TcxGroupBox
    Left = 532
    Top = 7
    Caption = 'Matter Details'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    DesignSize = (
      545
      301)
    Height = 301
    Width = 545
    object lblMatterNo: TLabel
      Left = 10
      Top = 49
      Width = 32
      Height = 13
      Caption = 'Matter'
    end
    object lblType: TLabel
      Left = 223
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Type *'
    end
    object lblDesc: TLabel
      Left = 10
      Top = 104
      Width = 62
      Height = 13
      Caption = 'Description *'
    end
    object Label6: TLabel
      Left = 10
      Top = 20
      Width = 47
      Height = 13
      Caption = 'Opened *'
    end
    object Label9: TLabel
      Left = 10
      Top = 129
      Width = 72
      Height = 31
      AutoSize = False
      Caption = 'Long Description *'
      WordWrap = True
    end
    object Label4: TLabel
      Left = 223
      Top = 77
      Width = 42
      Height = 13
      Caption = 'Branch *'
    end
    object lblSubType: TLabel
      Left = 223
      Top = 49
      Width = 45
      Height = 13
      Caption = 'Sub Type'
    end
    object lblDept: TLabel
      Left = 10
      Top = 77
      Width = 66
      Height = 13
      Caption = 'Department *'
    end
    object lblTrustBank: TLabel
      Left = 10
      Top = 187
      Width = 60
      Height = 13
      Caption = 'Trust Bank *'
      Transparent = True
    end
    object lblEstFee: TLabel
      Left = 10
      Top = 218
      Width = 73
      Height = 13
      Caption = 'Estimated Fees'
      Transparent = True
    end
    object lblCostsAgreement: TLabel
      Left = 10
      Top = 249
      Width = 83
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Costs Agreement'
    end
    object cbType: TcxDBLookupComboBox
      Left = 280
      Top = 14
      DataBinding.DataField = 'TYPE'
      DataBinding.DataSource = dsMatter
      ParentFont = False
      Properties.DropDownRows = 10
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = 'Description'
          FieldName = 'DESCR'
        end>
      Properties.ListSource = dsMatterType
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 256
    end
    object cmbSubType: TcxDBLookupComboBox
      Left = 280
      Top = 43
      DataBinding.DataField = 'SUBTYPE'
      DataBinding.DataSource = dsMatter
      ParentFont = False
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = 'Description'
          FieldName = 'DESCR'
        end>
      Properties.ListSource = dsMatterSubType
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 256
    end
    object dbcbluBranch: TcxDBLookupComboBox
      Left = 280
      Top = 71
      DataBinding.DataField = 'BRANCH'
      DataBinding.DataSource = dsMatter
      ParentFont = False
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = 'Branch'
          Width = 250
          FieldName = 'DESCR'
        end
        item
          Caption = 'Entity'
          Width = 50
          FieldName = 'entity'
        end>
      Properties.ListSource = dsEntityBranches
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 256
    end
    object dbtbShortDescr: TcxDBTextEdit
      Left = 96
      Top = 100
      DataBinding.DataField = 'SHORTDESCR'
      DataBinding.DataSource = dsMatter
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 438
    end
    object dbmmoLongDescr: TcxDBMemo
      Left = 96
      Top = 129
      DataBinding.DataField = 'LONGDESCR'
      DataBinding.DataSource = dsMatter
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Height = 47
      Width = 438
    end
    object dtpOpen: TcxDBDateEdit
      Left = 96
      Top = 14
      DataBinding.DataField = 'OPENED'
      DataBinding.DataSource = dsMatter
      ParentFont = False
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 121
    end
    object dbtbFileID: TcxDBTextEdit
      Left = 96
      Top = 43
      DataBinding.DataField = 'FILEID'
      DataBinding.DataSource = dsMatter
      Style.Color = clInactiveCaption
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = dbtbFileIDEnter
      OnExit = dbtbFileIDExit
      Width = 121
    end
    object cbDepartment: TcxDBLookupComboBox
      Left = 96
      Top = 71
      DataBinding.DataField = 'DEPT'
      DataBinding.DataSource = dsMatter
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = 'Department'
          Width = 120
          FieldName = 'DESCR'
        end
        item
          Caption = 'Code'
          Width = 70
          FieldName = 'CODE'
        end>
      Properties.ListSource = dsDepartment
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Width = 121
    end
    object cmbBank: TcxDBLookupComboBox
      Left = 96
      Top = 183
      AutoSize = False
      DataBinding.DataField = 'ACCT'
      DataBinding.DataSource = dsMatter
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 10
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.IncrementalFiltering = False
      Properties.KeyFieldNames = 'ACCT'
      Properties.ListColumns = <
        item
          Caption = 'Name'
          Width = 220
          FieldName = 'NAME'
        end
        item
          Caption = 'Code'
          Width = 30
          FieldName = 'ACCT'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.ShowHeader = False
      Properties.PostPopupValueOnTab = True
      Properties.ValidateOnEnter = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Height = 24
      Width = 266
    end
    object dbtbEstFee: TcxDBTextEdit
      Left = 96
      Top = 213
      DataBinding.DataField = 'ESTIMATEDFEE'
      DataBinding.DataSource = dsMatter
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Width = 109
    end
    object cmbCostsAgreement: TcxDBLookupComboBox
      Left = 96
      Top = 241
      Anchors = [akLeft, akBottom]
      DataBinding.DataField = 'WKFLOW_DOC_TEMPL_ID'
      DataBinding.DataSource = dsMatter
      Properties.KeyFieldNames = 'DOCID'
      Properties.ListColumns = <
        item
          FieldName = 'DOCUMENTNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Width = 210
    end
    object chkPrintCostsAgreement: TcxCheckBox
      Left = 7
      Top = 270
      Anchors = [akLeft, akBottom]
      Caption = 'Print Costs Agreement on Save?'
      Properties.Alignment = taLeftJustify
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Width = 186
    end
  end
  object cxButton1: TcxButton
    Left = 998
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = cxButton1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object cxButton2: TcxButton
    Left = 911
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = cxButton2Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000FF000000FF000000FF000000FF000000FF000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000FF000000FF000000FF000000FF000000FF000000FF000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
      000000FF000000FF000000000000FF00FF0000FF000000FF000000FF00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
      000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000080000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000080000000FF000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object ImageList1: TImageList
    Left = 1001
    Top = 276
    Bitmap = {
      494C010122002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000FFFF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFFFF0000FFFF00FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000FFFF00FFFFFF000000000000000000FFFFFF0000FF
      FF000000000000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0084000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C60000000000C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008400000084000000840000008400
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      0000FF00000084000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000000000000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000084000000840000008400000084000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000000000000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6424200C642
      4200C64242000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6424200846300000000
      000000000000844200000000000084000000C642420084634200846300008463
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6424200000000000000
      00000000000000000000C64242008463420084634200C6630000C6634200C663
      4200846300008463000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000042636300C6424200000000008442
      420084424200C642420084634200C6634200C6630000C6634200C6634200C663
      4200C6634200C663420084630000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000042636300C6634200844200008400
      0000C642420084634200C6634200C66300000000000000000000C6424200C663
      4200C6634200C6634200C66342008463000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000084000000
      84000000FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000004263630084A5A500C66342008442
      420084634200C6630000C663420000000000000000000000000000000000C642
      4200C6634200C6634200C663420084630000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000008400000084000000
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840084A5C600C6634200C642
      420084634200C6634200C6630000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000000000000000008400000084000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000000008484840084C6C60084A5C600C663
      420084634200C6634200C6630000C6630000C6630000C6630000C6630000C663
      0000C6630000C6630000C6630000C66300000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000008400000084000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00000000FF000000000000000000008484840084C6C600C663
      6300C6634200C6634200C6634200C6634200C6634200C6A54200C6A54200C6A5
      0000C6A50000C6A50000C6A50000C66300000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF0000FF00000000FF000000000000000000C642420084A5A50084C6
      E700C6634200C6634200C663000000000000000000000000000000000000C642
      4200F7CEA500FFFF0000C6A50000C66300000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008442420084A5
      630084E7E700C6634200C6630000C66300000000000000000000C6424200C6A5
      4200F7CEA500F7CEA500C6630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084000000FF000000FF000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C64242008442
      420084A56300C6C6C600C6630000C6630000C6424200C6424200C6630000FFFF
      0000F7CEA500C6A50000C6630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000FF0000000000000000000000FF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C642
      4200C6630000C6A56300C6C6A500C6630000C6630000C6A54200C6A50000C6A5
      4200C6A50000C663000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000000084000000
      84000000FF00000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6630000C6630000C6634200C6634200C6634200C6634200C6A54200C6A5
      0000C66300000000000000000000C66342000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000000000000084000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6630000C6630000C6630000C6630000C6630000C663
      0000000000000000000000000000C66300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C663
      0000C6630000C6630000C6630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000008484840084848400848484008484840084848400848484008484
      84008484840000000000FFFFFF00000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400848484008484840084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FFFFFF000000
      840000008400000084000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00000084000000
      840000FFFF008484840000FFFF000000840000008400FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000000084008484840000FF
      FF0000FFFF00FFFFFF0000FFFF0000FFFF008484840000008400FFFFFF00FFFF
      FF000000FF0000FF00000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000084000000840000FFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484008484
      840000FFFF008484840084848400FFFFFF0084848400FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000840000FFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000008400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000840084848400FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF008484840000008400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      84000000000000000000000000000000000000000000FFFFFF00848484008484
      840000FFFF0084848400848484008484840000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000840000FFFF0000FFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF0000FFFF0000FFFF0000008400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF0000000000000000000000000000000084000000840000FFFF0000FF
      FF00FFFFFF000000FF00FFFFFF0000FFFF0000FFFF000000840000008400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FF00FF00000084008484840000FF
      FF0000FFFF000000FF0000FFFF0000FFFF008484840000008400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      000000000000000000000000000000000000FF00FF00FF00FF00000084000000
      840000FFFF008484840000FFFF000000840000008400FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
      840000008400000084000000840000008400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840000000000848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000084848400FFFFFF00000000008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF0000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF801F00000000FFFF001F00000000
      FFFF000300000000FFFF000000000000FFFF000000000000FFFF000000000000
      E007000000000000F00F000000000000F81F000000000000FC3F000100000000
      FE7F000700000000FFFF000F00000000FFFF000F00000000FFFF001700000000
      FFFF001700000000FFFFE3FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFC7FFFFF
      FFFFE007FC7FFFFFE007F00FE00FE007E007F81FE00FE007E007FC3FE00FE007
      FFFFFE7FFC7FFFFFFFFFFFFFFC7FFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FF9FF9FFE7E7
      E787FE1FF87FE1E7E607F81FF81FE067E007F01FF80FE007E607F81FF81FE067
      E787FE1FF87FE1E7E7E7FF9FF9FFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8FFFFFFFFFC00FFEBFFFFFFFFFC00
      0380C007FFFF20000080C007FFFF00000000C007FC7F00000000C007FC7F0000
      0000C007FC7F00000000C007E00F00000000C007E00F00000000C007E00F0000
      0000C007FC7FE0000000C007FC7FF8000000C00FFC7FF0000000C01FFFFFE001
      0000C03FFFFFC4030000FFFFFFFFEC07FFFFFFFFFFFFC7FFFFFFFFFFFFFF980F
      F9FFFFFF00003003F0FF9FE700002001F0FF8FC7000000C0E07F8787000001E0
      C07FC30F000001FF843FE01F000000001E3FF03F00008000FE1FF87F000081E0
      FF1FF03F0000C0C1FF8FE01FFFFFC001FFC7C30FFFFFE003FFE38787FFFFF006
      FFF88FC7FFFFFC0EFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFE3FC7F8001FE7FFC41
      F83F8001FC3F8800F81F8001FC3F0000F0078001FE7F0000F0038001FC3F0000
      E0038001FC3F0000E0038001FC3F0000C003001FFC1F0000C0030000F20F0000
      C0030700E1070000E0030000E1870000F8030000E0070001FC030000F00F0001
      FF830000F81F000DFFC30000FFFFD553FFFFFFFFFFFFFFFFFFFFFFFFFFFFC007
      FFFF07C1FFFFBFEBFFFF07C1FC3F0005FFFF07C180017E31E7E7010180017E35
      E1E7000180010006E067020182017FEAE007020181018014E06780038001C00A
      E1E7C1078001E001E7E7C1078001E007FFFFE38FC813F007FFFFE38FFC3FF003
      FFFFE38FFFFFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFFFFFFFE7FFFFFFFFFFFFFFC3F3FFFFFFFFFFFFC3E7E7E7FF9FF9FF
      E1C7E787FE1FF87FF08FE607F81FF81FF81FE007F01FF80FFC3FE607F81FF81F
      F81FE787FE1FF87FF09FE7E7FF9FF9FFC1C7FFFFFFFFFFFF83E3FFFFFFFFFFFF
      8FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFE3E007FE7FFC41FC41
      F00FFC3F88008800F81FF81F00000000FC3FF00F00000000FE7FE00700000000
      E007FE7F00000000F00FFC3F00000000F81FF81F00000000FC3FF00F00000000
      FE7FE00700000000E007FE7F00000000F00FFC3F00010001F81FF81F00010001
      FC3FF00F000D000DFE7FE007D553D55300000000000000000000000000000000
      000000000000}
  end
    object qPhoneBook: TUniQuery
    KeyFields = 'NNAME'
    DMLRefresh = True
    SQLRefresh.Strings = (
            'SELECT * FROM phonebook WHERE search = :new_search')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'SELECT '
            '  p.rowid,  '
            '  NVL(P.SHORTNAME, M.SHORTNAME) as SHORTNAME, '
            '  NVL(P.NAME, M.NAME) as NAME,'
            '  NVL(P.LONGNAME, M.LONGNAME) as LONGNAME,'
            '  NVL(P.HOMEPHONE, M.HOMEPHONE) as HOMEPHONE,'
            '  NVL(P.WORKPHONE, M.WORKPHONE) as WORKPHONE,'
            '  NVL(P.MOBILE, M.MOBILE) as MOBILE,'
            '  NVL(P.FAX, M.FAX) as FAX,       '
            '  NVL(P.ADDRESS, M.ADDRESS) as ADDRESS,'
            
              '  DECODE(P.SUBURB, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB) as S' +
              'UBURB,'
            
              '  DECODE(P.STATE, NULL, NVL(P.STATE, M.STATE), P.STATE) as STATE' +
              ','
            
              '  DECODE(P.POSTCODE, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCO' +
              'DE) as POSTCODE,'
            
              '  DECODE(P.COUNTRY, NULL, NVL(P.COUNTRY, M.COUNTRY), P.COUNTRY) ' +
              'as COUNTRY,'
            '  NVL(P.DX, M.DX) as DX,'
            '  NVL(P.DXLOC, M.DXLOC) as DXLOC,'
            '  NVL(P.POSTALADDRESS, M.POSTALADDRESS) as POSTALADDRESS,'
            
              '  DECODE(P.POSTALSUBURB, NULL, NVL(P.POSTALSUBURB, M.POSTALSUBUR' +
              'B), P.POSTALSUBURB) as POSTALSUBURB,'
            
              '  DECODE(P.POSTALSTATE, NULL, NVL(P.POSTALSTATE, M.POSTALSTATE),' +
              ' P.POSTALSTATE) as POSTALSTATE,'
            
              '  DECODE(P.POSTALPOSTCODE, NULL, NVL(P.POSTALPOSTCODE, M.POSTALP' +
              'OSTCODE), P.POSTALPOSTCODE) as POSTALPOSTCODE,'
            
              '  DECODE(P.POSTALCOUNTRY, NULL, NVL(P.POSTALCOUNTRY, M.POSTALCOU' +
              'NTRY), P.POSTALCOUNTRY) as POSTALCOUNTRY,'
            '  NVL(P.EMAIL, M.EMAIL) as EMAIL,'
            '  NVL(P.WWW, M.WWW) as WWW,'
            '  NVL(P.SALUTATION, M.SALUTATION) as SALUTATION,'
            '  NVL(P.GIVENNAMES, M.GIVENNAMES) as GIVENNAMES,'
            '  NVL(P.LASTNAME, M.LASTNAME) as LASTNAME,'
            '  P.ACN,'
            '  P.ABN,'
            '  P.NNAME,'
            '  P.NCLIENT,'
            '  P.SEARCH,'
            '  P.TITLE,'
            '  P.GENDER,'
            '  P.CODE,'
            '  P.SPARTY,'
            '  P.SOLICITOR,'
            '  P.REAL_ESTATE,'
            '  P.REFERRALS,'
            '  P.NOTE,'
            '  P.MOD_DATE,'
            '  P.MOD_BY,'
            '  P.TYPE,'
            '  P.OCCUPATION,'
            '  P.DOB,'
            '  P.NNAMEMASTER,'
            '  P.WHICHADDRESS,'
            '  P.DEFAULT_REF,'
            '  P.ANTDISBS,'
            '  P.ANTDRS,'
            '  P.REFERRALCODE,'
            '  P.REFERREDBY,'
            '  P.INDUSTRYCODE,'
            '  P.REFERRALMAINTAINER,'
            '  P.CREATED,'
            '  P.MODIFIED,'
            '  P.MODIFIED_BY,'
            '  P.REFERREDBY_NNAME,'
            '  P.REFERREDBY_NCLIENT,'
            '  p.referredby_emp,'
            '  P.LAST_STATEMENT_DATE,'
            '  P.REFERRALTYPE,'
            '  NVL(P.CUST_ADDRESS, M.CUST_ADDRESS) as CUST_ADDRESS,'
            
              '  DECODE(P.CUST_SUBURB, NULL, NVL(P.CUST_SUBURB, M.CUST_SUBURB),' +
              ' P.CUST_SUBURB) as CUST_SUBURB,'
            
              '  DECODE(P.CUST_STATE, NULL, NVL(P.CUST_STATE, M.CUST_STATE), P.' +
              'CUST_STATE) as CUST_STATE,'
            
              '  DECODE(P.CUST_POSTCODE, NULL, NVL(P.CUST_POSTCODE, M.CUST_POST' +
              'CODE), P.CUST_POSTCODE) as CUST_POSTCODE,'
            
              '  DECODE(P.CUST_COUNTRY, NULL, NVL(P.CUST_COUNTRY, M.CUST_COUNTR' +
              'Y), P.CUST_COUNTRY) as CUST_COUNTRY,'
            '  g.descr                AS gender_descr,'
            '  g.searchcaption        AS gender_searchcaption,'
            '  g.namecaption          AS gender_namecaption,'
            '  g.longnamecaption      AS gender_longnamecaption,'
            '  g.shortnamecaption     AS gender_shortnamecaption,'
            '  g.titlecaption         AS gender_titlecaption,'
            '  g.acncaption           AS gender_acncaption,'
            '  g.occupationcaption    AS gender_occupationcaption,'
            '  g.clientnamecaption    AS gender_clientnamecaption,'
            '  g.clientcontactcaption AS gender_clientcontactcaption,'
            '  p.clientid,'
            '  p.archived'
            'FROM'
            '  phonebook p, gender g,'
            '  phonebook m'
            'WHERE'
            '  g.code(+) = p.gender'
            'AND'
            '  p.nname = :nname'
            'AND'
            '  p.nnamemaster = m.nname (+)'
            ''
            ''
            '/*'
            'SELECT'
            '  p.*, p.rowid'
            'FROM'
            '  phonebook p'#9#9'  '
            'WHERE '
            'p.nname = :nname  */')
    CachedUpdates = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Left = 592
    Top = 313
  end
  object dsPhoneBook: TUniDataSource
    DataSet = qPhoneBook
    Left = 671
    Top = 314
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'SELECT M.*, M.ROWID FROM MATTER M WHERE M.NMATTER = :NMATTER')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 844
    Top = 304
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 876
    Top = 304
  end
  object qGender: TUniQuery
    SQL.Strings = (
            'SELECT * FROM GENDER')
    LockMode = lmLockImmediate
    Left = 599
    Top = 384
    object qGenderCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 1
    end
    object qGenderDESCR: TStringField
      FieldName = 'DESCR'
      Required = True
      Size = 60
    end
    object qGenderSEARCHCAPTION: TStringField
      FieldName = 'SEARCHCAPTION'
      Required = True
    end
    object qGenderNAMECAPTION: TStringField
      FieldName = 'NAMECAPTION'
      Required = True
    end
    object qGenderLONGNAMECAPTION: TStringField
      FieldName = 'LONGNAMECAPTION'
      Required = True
    end
    object qGenderSHORTNAMECAPTION: TStringField
      FieldName = 'SHORTNAMECAPTION'
      Required = True
    end
    object qGenderTITLECAPTION: TStringField
      FieldName = 'TITLECAPTION'
      Required = True
    end
    object qGenderACNCAPTION: TStringField
      FieldName = 'ACNCAPTION'
      Required = True
    end
    object qGenderOCCUPATIONCAPTION: TStringField
      FieldName = 'OCCUPATIONCAPTION'
      Required = True
    end
    object qGenderCLIENTNAMECAPTION: TStringField
      FieldName = 'CLIENTNAMECAPTION'
      Required = True
    end
    object qGenderCLIENTCONTACTCAPTION: TStringField
      FieldName = 'CLIENTCONTACTCAPTION'
      Required = True
    end
    object qGenderSALUTATIONCAPTION: TStringField
      FieldName = 'SALUTATIONCAPTION'
    end
  end
object dsGender: TDataSource
    AutoEdit = False
    DataSet = qGender
    Left = 648
    Top = 390
  end
  object popCopyPostalAddress: TPopupMenu
    Left = 611
    Top = 492
    object CopyStreetAddressToCustomAddress: TMenuItem
      Caption = 'Copy Postal Address To Street Address'
    end
    object CopyPostalAddressToCustomAddress: TMenuItem
    end
  end
  object popCopyStreetAddress: TPopupMenu
    Left = 557
    Top = 402
    object CopyToPostalAddress: TMenuItem
      Caption = 'Copy Address To Postal Address'
    end
    object CopyToCustomAddress: TMenuItem
    end
  end
    object qryWorkflowDoctemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'select wd.docid, wd.documentname '
            'from workflowdoctemplates wd, workflowdocgroups wg'
            'where WD.GROUPID = WG.GROUPID'
            'and WG.COSTS_AGREEMENT = '#39'Y'#39
            
              'and (exists (select 1 from workflowdoctemplates wd1 where WD.DOC' +
              'ID = WD1.DOCID and WD1.WORKFLOWTYPECODE = :workflowtypecode)'
            'or WD.WORKFLOWTYPECODE is null)')
    Left = 824
    Top = 390
  end
  object dsWorkflowDoctemplate: TUniDataSource
    DataSet = qryWorkflowDoctemplate
    Left = 927
    Top = 401
  end
  object qryMatterType: TUniQuery
    SQL.Strings = (
            'select * from mattertype'
            'order by descr')
    Left = 956
    Top = 201
  end
  object dsMatterType: TUniDataSource
    DataSet = qryMatterType
    Left = 954
    Top = 251
  end
  object qryMatterSubType: TUniQuery
    SQL.Strings = (
            'select * from mattersubtype'
            'where mattertype = :mattertype'
            'order by descr')
    Left = 1046
    Top = 248
  end
  object dsMatterSubType: TUniDataSource
    DataSet = qryMatterSubType
    Left = 1045
    Top = 201
  end
  object dsEntityBranches: TUniDataSource
    DataSet = qEntityBranches
    Left = 1024
    Top = 392
  end
  object qEntityBranches: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'select code,entity,descr from branch where entity = :entity'
            'order by descr')
    ReadOnly = True
    LockMode = lmNone
    Left = 1020
    Top = 340
    object qEntityBranchesCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object qEntityBranchesENTITY: TStringField
      FieldName = 'ENTITY'
      Required = True
      Size = 2
    end
    object qEntityBranchesDESCR: TStringField
      FieldName = 'DESCR'
      Required = True
      Size = 60
    end
  end
  object qryDepartment: TUniQuery
    SQL.Strings = (
            'SELECT code, descr'
            'FROM empdept'
            'ORDER BY code')
    Left = 1148
    Top = 344
  end
  object dsDepartment: TUniDataSource
    DataSet = qryDepartment
    Left = 1148
    Top = 402
  end
  object dsBanks: TUniDataSource
    DataSet = qryBanks
    Left = 1083
    Top = 389
  end
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'SELECT NAME, ACCT, TRUST '
            'FROM '
            'BANK '
            'WHERE Entity = :Entity '
            'and trust = '#39'T'#39
            'ORDER BY ACCT')
    Left = 1085
    Top = 336
  end
end
