object frmMarketingDetails: TfrmMarketingDetails
  Left = 0
  Top = 0
  Caption = 'Marketing Details'
  ClientHeight = 699
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lName: TLabel
    Left = 14
    Top = 95
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Name/Company:'
  end
  object lShortName: TLabel
    Left = 34
    Top = 120
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Short Name:'
  end
  object lLongName: TLabel
    Left = 37
    Top = 145
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = 'Long Name:'
  end
  object Label1: TLabel
    Left = 879
    Top = 111
    Width = 35
    Height = 13
    Caption = 'Notes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lGender: TLabel
    Left = 27
    Top = 70
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Type/Gender:'
  end
  object Label2: TLabel
    Left = 763
    Top = 255
    Width = 89
    Height = 13
    Caption = 'Relationship Type:'
  end
  object Label3: TLabel
    Left = 763
    Top = 285
    Width = 96
    Height = 13
    Caption = 'Relationship Status:'
  end
  object Label4: TLabel
    Left = 763
    Top = 314
    Width = 95
    Height = 13
    Caption = 'Relationship Action:'
  end
  object Label5: TLabel
    Left = 763
    Top = 340
    Width = 24
    Height = 13
    Caption = 'PMS:'
  end
  object Label6: TLabel
    Left = 763
    Top = 372
    Width = 25
    Height = 13
    Caption = 'DMS:'
  end
  object Label7: TLabel
    Left = 324
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Firm size:'
  end
  object eName: TDBEdit
    Left = 100
    Top = 91
    Width = 340
    Height = 21
    Color = clInfoBk
    DataField = 'NAME'
    DataSource = dsPhonebook
    TabOrder = 0
  end
  object eShortName: TDBEdit
    Left = 100
    Top = 116
    Width = 340
    Height = 21
    Color = clInfoBk
    DataField = 'SHORTNAME'
    DataSource = dsPhonebook
    TabOrder = 1
  end
  object eLongName: TDBEdit
    Left = 100
    Top = 141
    Width = 340
    Height = 21
    Color = clInfoBk
    DataField = 'LONGNAME'
    DataSource = dsPhonebook
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 14
    Top = 171
    Width = 379
    Height = 216
    Caption = 'Addresses'
    TabOrder = 3
    object PageControl1: TPageControl
      Left = 10
      Top = 21
      Width = 360
      Height = 186
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Street'
        object lStreetAddress: TLabel
          Left = 28
          Top = 8
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address:'
        end
        object lStreetSuburb: TLabel
          Left = 3
          Top = 76
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Town/Suburb:'
        end
        object lStreetState: TLabel
          Left = 41
          Top = 101
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'State:'
        end
        object lStreetPostCode: TLabel
          Left = 150
          Top = 101
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Post Code:'
        end
        object lStreetCountry: TLabel
          Left = 32
          Top = 126
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Country'
        end
        object mStreetAddress: TDBRichEdit
          Left = 77
          Top = 8
          Width = 200
          Height = 60
          Color = clWhite
          DataField = 'ADDRESS'
          DataSource = dsPhonebook
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object eStreetSuburb: TcxDBButtonEdit
          Left = 77
          Top = 73
          AutoSize = False
          DataBinding.DataField = 'SUBURB'
          DataBinding.DataSource = dsPhonebook
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
              Stretchable = False
            end>
          Properties.MaxLength = 0
          Style.Color = clWhite
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
          Height = 21
          Width = 200
        end
        object cbStreetState: TcxDBComboBox
          Left = 77
          Top = 97
          DataBinding.DataField = 'STATE'
          DataBinding.DataSource = dsPhonebook
          Properties.Items.Strings = (
            'ACT'
            'NSW'
            'NT'
            'QLD'
            'SA'
            'TAS'
            'VIC'
            'WA')
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 2
          Width = 66
        end
        object eStreetPostCode: TDBEdit
          Left = 208
          Top = 98
          Width = 69
          Height = 21
          DataField = 'POSTCODE'
          DataSource = dsPhonebook
          TabOrder = 3
        end
        object cbStreetCountry: TcxDBComboBox
          Left = 77
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'COUNTRY'
          DataBinding.DataSource = dsPhonebook
          Properties.DropDownListStyle = lsEditFixedList
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
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 4
          Height = 21
          Width = 200
        end
        object ckStreetDefault: TCheckBox
          Tag = 1
          Left = 285
          Top = 10
          Width = 64
          Height = 17
          Caption = 'Default'
          TabOrder = 5
          OnClick = ckDefaultClick
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Postal'
        ImageIndex = 1
        object lPostalAddress: TLabel
          Left = 28
          Top = 8
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address:'
        end
        object lPostalSuburb: TLabel
          Left = 3
          Top = 77
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Town/Suburb:'
        end
        object lPostalState: TLabel
          Left = 41
          Top = 102
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'State:'
        end
        object lPostalPostCode: TLabel
          Left = 150
          Top = 102
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Post Code:'
        end
        object lPostalCountry: TLabel
          Left = 32
          Top = 127
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Country'
        end
        object mPostalAddress: TDBRichEdit
          Left = 77
          Top = 8
          Width = 200
          Height = 60
          Color = clWhite
          DataField = 'POSTALADDRESS'
          DataSource = dsPhonebook
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ckPostalDefault: TCheckBox
          Tag = 2
          Left = 285
          Top = 10
          Width = 64
          Height = 17
          Caption = 'Default'
          TabOrder = 1
          OnClick = ckDefaultClick
        end
        object ePostalSuburb: TcxDBButtonEdit
          Left = 77
          Top = 72
          DataBinding.DataField = 'POSTALSUBURB'
          DataBinding.DataSource = dsPhonebook
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 2
          Width = 200
        end
        object cbPostalState: TcxDBComboBox
          Left = 77
          Top = 97
          DataBinding.DataField = 'POSTALSTATE'
          DataBinding.DataSource = dsPhonebook
          Properties.Items.Strings = (
            'ACT'
            'NSW'
            'NT'
            'QLD'
            'SA'
            'TAS'
            'VIC'
            'WA')
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 3
          Width = 66
        end
        object ePostalPostCode: TDBEdit
          Left = 208
          Top = 97
          Width = 69
          Height = 21
          DataField = 'POSTALPOSTCODE'
          DataSource = dsPhonebook
          TabOrder = 4
        end
        object cbPostalCountry: TcxDBComboBox
          Left = 77
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'POSTALCOUNTRY'
          DataBinding.DataSource = dsPhonebook
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
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 5
          Height = 21
          Width = 200
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Custom'
        ImageIndex = 2
        object Label16: TLabel
          Left = 25
          Top = 10
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address:'
        end
        object Label17: TLabel
          Left = 0
          Top = 76
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Town/Suburb:'
        end
        object Label18: TLabel
          Left = 38
          Top = 101
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'State:'
        end
        object Label19: TLabel
          Left = 150
          Top = 101
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Post Code:'
        end
        object Label20: TLabel
          Left = 25
          Top = 125
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Country:'
        end
        object mCustAddress: TDBRichEdit
          Left = 77
          Top = 8
          Width = 200
          Height = 60
          Color = clWhite
          DataField = 'CUST_ADDRESS'
          DataSource = dsPhonebook
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object eCustSuburb: TcxDBButtonEdit
          Left = 77
          Top = 72
          DataBinding.DataField = 'CUST_SUBURB'
          DataBinding.DataSource = dsPhonebook
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
          Width = 200
        end
        object cmbCustState: TcxDBComboBox
          Left = 77
          Top = 96
          DataBinding.DataField = 'CUST_STATE'
          DataBinding.DataSource = dsPhonebook
          Properties.Items.Strings = (
            'ACT'
            'NSW'
            'NT'
            'QLD'
            'SA'
            'TAS'
            'VIC'
            'WA')
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 2
          Width = 66
        end
        object eCustPostcode: TDBEdit
          Left = 208
          Top = 96
          Width = 69
          Height = 21
          DataField = 'CUST_POSTCODE'
          DataSource = dsPhonebook
          TabOrder = 3
        end
        object cmbCountry: TcxDBComboBox
          Left = 77
          Top = 121
          DataBinding.DataField = 'CUST_COUNTRY'
          DataBinding.DataSource = dsPhonebook
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
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 4
          Width = 200
        end
        object ckCustomDefault: TCheckBox
          Tag = 3
          Left = 285
          Top = 10
          Width = 64
          Height = 17
          Caption = 'Default'
          TabOrder = 5
          OnClick = ckDefaultClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'DX'
        ImageIndex = 3
        object lDXAddress: TLabel
          Left = 4
          Top = 17
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Box / Address:'
        end
        object lDXLocation: TLabel
          Left = 31
          Top = 42
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Location:'
        end
        object eDXAddress: TDBEdit
          Left = 80
          Top = 13
          Width = 200
          Height = 21
          DataField = 'DX'
          DataSource = dsPhonebook
          TabOrder = 0
        end
        object eDXLocation: TDBEdit
          Left = 80
          Top = 38
          Width = 200
          Height = 21
          DataField = 'DXLOC'
          DataSource = dsPhonebook
          TabOrder = 1
        end
        object ckDXDefault: TCheckBox
          Left = 284
          Top = 15
          Width = 70
          Height = 17
          Caption = 'Default'
          TabOrder = 2
          OnClick = ckDefaultClick
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 710
    Top = 66
    Width = 353
    Height = 120
    Caption = 'Email'
    TabOrder = 4
    object lInternetEMail: TLabel
      Left = 6
      Top = 35
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'E-Mail1:'
    end
    object Label28: TLabel
      Left = 6
      Top = 65
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'E-Mail2:'
    end
    object Label29: TLabel
      Left = 6
      Top = 95
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'E-Mail3:'
    end
    object Label30: TLabel
      Left = 299
      Top = 15
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Default'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eInternetEmail: TcxDBButtonEdit
      Left = 48
      Top = 32
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = dsPhonebook
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000FF00FF00A79A
            420080800000CC666600FFFFFF00663333002222220080808000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010607
            0707000000000000000000000001010607070707070000000000000000010102
            0607070707070707070006060606010202060707070707070707000505050505
            0505050505050505070000030404040404040404040404050700000304040404
            0404040404040405070000030404030303030304040404050700000304040404
            0404040404040405070000030404030303030304030304050700000304040404
            0404040403030405060000030404040404040404040404050206000303030303
            0303030303030303020200000000000000000000010202020200000000000000
            0000000000010202000000000000000000000000000001000000}
          Kind = bkGlyph
        end>
      Properties.MaxLength = 0
      Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      Width = 252
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 48
      Top = 62
      DataBinding.DataField = 'EMAIL1'
      DataBinding.DataSource = dsPhonebook
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000FF00FF00A79A
            420080800000CC666600FFFFFF00663333002222220080808000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010607
            0707000000000000000000000001010607070707070000000000000000010102
            0607070707070707070006060606010202060707070707070707000505050505
            0505050505050505070000030404040404040404040404050700000304040404
            0404040404040405070000030404030303030304040404050700000304040404
            0404040404040405070000030404030303030304030304050700000304040404
            0404040403030405060000030404040404040404040404050206000303030303
            0303030303030303020200000000000000000000010202020200000000000000
            0000000000010202000000000000000000000000000001000000}
          Kind = bkGlyph
        end>
      Properties.MaxLength = 0
      Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      Width = 252
    end
    object cxDBButtonEdit2: TcxDBButtonEdit
      Left = 48
      Top = 92
      DataBinding.DataField = 'EMAIL2'
      DataBinding.DataSource = dsPhonebook
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000FF00FF00A79A
            420080800000CC666600FFFFFF00663333002222220080808000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010607
            0707000000000000000000000001010607070707070000000000000000010102
            0607070707070707070006060606010202060707070707070707000505050505
            0505050505050505070000030404040404040404040404050700000304040404
            0404040404040405070000030404030303030304040404050700000304040404
            0404040404040405070000030404030303030304030304050700000304040404
            0404040403030405060000030404040404040404040404050206000303030303
            0303030303030303020200000000000000000000010202020200000000000000
            0000000000010202000000000000000000000000000001000000}
          Kind = bkGlyph
        end>
      Properties.MaxLength = 0
      Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 2
      Width = 252
    end
    object ckEmail2Default: TCheckBox
      Left = 311
      Top = 94
      Width = 16
      Height = 17
      TabOrder = 3
      OnClick = ckEmailDefaultClick
    end
    object ckEmail1Default: TCheckBox
      Left = 311
      Top = 64
      Width = 16
      Height = 17
      TabOrder = 4
      OnClick = ckEmailDefaultClick
    end
    object ckEmailDefault: TCheckBox
      Left = 311
      Top = 34
      Width = 16
      Height = 17
      TabOrder = 5
      OnClick = ckEmailDefaultClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 447
    Top = 66
    Width = 255
    Height = 120
    Caption = 'Phone'
    TabOrder = 5
    object lPhoneWork: TLabel
      Left = 14
      Top = 21
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Work:'
    end
    object lPhoneHome: TLabel
      Left = 12
      Top = 45
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Home:'
    end
    object lPhoneMobile: TLabel
      Left = 9
      Top = 70
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mobile:'
    end
    object lPhoneFax: TLabel
      Left = 21
      Top = 95
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fax:'
    end
    object ePhoneWork: TDBEdit
      Left = 49
      Top = 17
      Width = 200
      Height = 21
      DataField = 'WORKPHONE'
      DataSource = dsPhonebook
      TabOrder = 0
    end
    object ePhoneHome: TDBEdit
      Left = 49
      Top = 42
      Width = 200
      Height = 21
      AutoSize = False
      DataField = 'HOMEPHONE'
      DataSource = dsPhonebook
      TabOrder = 1
    end
    object ePhoneMobile: TDBEdit
      Left = 49
      Top = 66
      Width = 200
      Height = 21
      DataField = 'MOBILE'
      DataSource = dsPhonebook
      TabOrder = 2
    end
    object ePhoneFax: TDBEdit
      Left = 49
      Top = 91
      Width = 200
      Height = 21
      DataField = 'FAX'
      DataSource = dsPhonebook
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 19
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Search'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object cbGender: TDBEdit
    Left = 100
    Top = 66
    Width = 160
    Height = 21
    Color = clInfoBk
    DataField = 'GENDER_DESCR'
    DataSource = dsPhonebook
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 869
    Top = 250
    Width = 236
    Height = 21
    DataField = 'RELATIONSHIP_TYPE'
    DataSource = dsPhonebook
    KeyField = 'ID'
    ListField = 'DESCR'
    ListFieldIndex = 1
    ListSource = dsRelationship_Type
    TabOrder = 8
  end
  object cmbRelationshipStatus: TDBLookupComboBox
    Left = 869
    Top = 279
    Width = 236
    Height = 21
    DataField = 'RELATIONSHIP_STATUS'
    DataSource = dsPhonebook
    KeyField = 'ID'
    ListField = 'DESCR'
    ListFieldIndex = 1
    ListSource = dsRelationshipStatus
    TabOrder = 9
  end
  object cmbRelationshipAction: TDBLookupComboBox
    Left = 869
    Top = 308
    Width = 236
    Height = 21
    DataField = 'RELATIONSHIP_ACTION'
    DataSource = dsPhonebook
    KeyField = 'ID'
    ListField = 'DESCR'
    ListFieldIndex = 1
    ListSource = dsRelationshipAction
    TabOrder = 10
  end
  object grpMarketing: TcxGroupBox
    Left = 399
    Top = 192
    Caption = 'Marketing'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Height = 135
    Width = 345
    object lblReferralType: TLabel
      Left = 10
      Top = 24
      Width = 70
      Height = 13
      Caption = 'Referral Type:'
    end
    object lblReferredBy: TLabel
      Left = 10
      Top = 49
      Width = 62
      Height = 13
      Caption = 'Referred By:'
      Visible = False
    end
    object lblMaintainer: TLabel
      Left = 10
      Top = 74
      Width = 54
      Height = 13
      Caption = 'Maintainer:'
    end
    object edReferredBy: TcxDBLabel
      Left = 90
      Top = 45
      Transparent = True
      Height = 21
      Width = 249
    end
    object cmbReferralOther: TcxDBLookupComboBox
      Left = 89
      Top = 45
      DataBinding.DataField = 'REFERREDBY'
      DataBinding.DataSource = dsPhonebook
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'REFERRAL'
      Properties.ListColumns = <
        item
          FieldName = 'REFERRAL'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsReferralOther
      Properties.MaxLength = 0
      Properties.OnCloseUp = cmbReferralOtherPropertiesCloseUp
      Properties.OnEditValueChanged = cmbReferralOtherPropertiesEditValueChanged
      Style.Color = clWhite
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Visible = False
      Width = 250
    end
    object cmbMaintainer: TcxDBLookupComboBox
      Left = 89
      Top = 71
      DataBinding.DataField = 'REFERRALMAINTAINER'
      DataBinding.DataSource = dsPhonebook
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Width = 200
          FieldName = 'NAME'
        end
        item
          Width = 80
          FieldName = 'CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEmployee
      Properties.MaxLength = 0
      Properties.OnChange = cmbMaintainerPropertiesChange
      Properties.OnCloseUp = cmbMaintainerPropertiesCloseUp
      Style.Color = clWhite
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 250
    end
    object cmbReferral: TcxDBLookupComboBox
      Left = 89
      Top = 20
      DataBinding.DataField = 'REFERRALCODE'
      DataBinding.DataSource = dsPhonebook
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsReferredBy
      Properties.MaxLength = 0
      Properties.OnChange = cmbReferralPropertiesChange
      Properties.OnCloseUp = cmbReferralPropertiesCloseUp
      Style.Color = clWhite
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 250
    end
  end
  object grpIndustry: TcxGroupBox
    Left = 399
    Top = 343
    Caption = 'Industry'
    Style.BorderStyle = ebsSingle
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Height = 44
    Width = 345
    object cmbIndustry: TcxDBLookupComboBox
      Left = 90
      Top = 15
      DataBinding.DataField = 'INDUSTRYCODE'
      DataBinding.DataSource = dsPhonebook
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'INDUSTRY'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsIndustry
      TabOrder = 0
      Width = 249
    end
  end
  object DBEdit1: TDBEdit
    Left = 376
    Top = 66
    Width = 64
    Height = 21
    DataField = 'FIRM_SIZE'
    DataSource = dsPhonebook
    TabOrder = 13
  end
  object cmbSystem1: TDBComboBox
    Left = 869
    Top = 337
    Width = 236
    Height = 21
    DataField = 'SYSTEM1'
    DataSource = dsPhonebook
    TabOrder = 14
    OnDropDown = cmbSystem1DropDown
  end
  object cmbSystem2: TDBComboBox
    Left = 869
    Top = 364
    Width = 236
    Height = 21
    DataField = 'SYSTEM2'
    DataSource = dsPhonebook
    TabOrder = 16
    OnDropDown = cmbSystem2DropDown
  end
  object PageControl2: TPageControl
    Left = 8
    Top = 393
    Width = 1097
    Height = 298
    ActivePage = tabDiary
    TabOrder = 20
    object tabDiary: TTabSheet
      Caption = 'Diary'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 270
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object dbgContactNotes: TcxGrid
          Left = 1
          Top = 29
          Width = 1087
          Height = 240
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvContactNotes: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPhonebookNotes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsView.CellEndEllipsis = True
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 5
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tvContactNotesCREATION_DATE: TcxGridDBColumn
              Caption = 'Create Date'
              DataBinding.FieldName = 'CREATION_DATE'
              Width = 57
            end
            object tvContactNotesSTART_DT: TcxGridDBColumn
              Caption = 'Date Time'
              DataBinding.FieldName = 'START_DT'
              Width = 50
            end
            object tvContactNotesENTEREDBY: TcxGridDBColumn
              Caption = 'Entered by'
              DataBinding.FieldName = 'ENTEREDBY'
              Width = 62
            end
            object tvContactNotesDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              Width = 154
            end
          end
          object dbgContactNotesLevel1: TcxGridLevel
            GridView = tvContactNotes
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 1087
          Height = 28
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
  end
  object qryPhonebook: TUniQuery
    UpdatingTable = 'PHONEBOOK'
    KeyFields = 'NNAME'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  p.rowid,'
      '  '
      '  P.SHORTNAME, '
      '  P.NAME,'
      '  P.LONGNAME,'
      '  P.HOMEPHONE,'
      '  P.WORKPHONE,'
      '  P.MOBILE,'
      '  P.FAX,       '
      '  P.ADDRESS,'
      '  P.SUBURB,'
      '  P.STATE,'
      '  P.POSTCODE,'
      '  P.COUNTRY,'
      '  P.DX,'
      '  P.DXLOC,'
      '  P.POSTALADDRESS,'
      '  P.POSTALSUBURB,'
      '  P.POSTALSTATE,'
      '  P.POSTALPOSTCODE,'
      '  P.POSTALCOUNTRY,'
      '  P.EMAIL,'
      '  P.WWW,'
      '  P.SALUTATION,'
      '  P.GIVENNAMES,'
      '  P.LASTNAME,'
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
      '  P.CUST_ADDRESS,'
      '  P.CUST_SUBURB,'
      '  P.CUST_STATE,'
      '  P.CUST_POSTCODE,'
      '  P.CUST_COUNTRY,'
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
      '  p.archived,'
      '  p.whichemailaddress,'
      '  P.EMAIL1,'
      '  P.EMAIL2,'
      '  P.RELATIONSHIP_TYPE,'
      '  P.RELATIONSHIP_STATUS,'
      '  P.RELATIONSHIP_ACTION,'
      '  P.FIRM_SIZE,'
      '  P.SYSTEM1,'
      '  P.SYSTEM2'
      'FROM'
      '  gender g, phonebook p'
      'WHERE'
      '  g.code(+) = p.gender'
      'AND'
      '  p.nname = :nname'
      ''
      ''
      '/*'
      'SELECT '
      '  p.rowid,'
      '  '
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
      ''
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
      '  p.archived,'
      
        '  NVL(p.whichemailaddress, m.whichemailaddress) as whichemailadd' +
        'ress,'
      '  NVL(P.EMAIL1, M.EMAIL1) as EMAIL1,'
      '  NVL(P.EMAIL2, M.EMAIL2) as EMAIL2,'
      '  P.RELATIONSHIP_TYPE,'
      '  P.RELATIONSHIP_STATUS,'
      '  P.RELATIONSHIP_ACTION'
      'FROM'
      '  phonebook p, gender g,'
      '  phonebook m'
      'WHERE'
      '  g.code(+) = p.gender'
      'AND'
      '  p.nname = :nname'
      'AND'
      '  p.nnamemaster = m.nname (+)'
      '*/')
    AfterScroll = qryPhonebookAfterScroll
    Left = 784
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
      end>
  end
  object dsPhonebook: TUniDataSource
    DataSet = qryPhonebook
    Left = 848
    Top = 180
  end
  object qryPhonebookNotes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.rowid,'
      '  d.ndiary,'
      '  d.nname,'
      '  d.start_dt,'
      '  d.descr,'
      '  d.creation_date,'
      '  e.name as enteredby,'
      '  d.entered_by as enteredbycode'
      'FROM'
      '  diary d, employee e'
      'WHERE'
      '  d.nname = :nname'
      '  and e.code = d.entered_by'
      'ORDER BY d.start_dt desc')
    OnNewRecord = qryPhonebookNotesNewRecord
    Left = 424
    Top = 388
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = Null
      end>
  end
  object dsPhonebookNotes: TUniDataSource
    DataSet = qryPhonebookNotes
    Left = 512
    Top = 388
  end
  object qryRelationship_Type: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from relationship_type'
      'order by descr')
    Left = 944
    Top = 186
  end
  object dsRelationship_Type: TUniDataSource
    DataSet = qryRelationship_Type
    Left = 1032
    Top = 186
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Maint'
      'Notes'
      'Default')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = ImageList
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 688
    Top = 17
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
      FloatLeft = 784
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barbtnSave'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barbtnClose'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Notes'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 853
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Relationship Types'
      Category = 0
      Hint = 'Relationship Types'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Relationship Status'
      Category = 0
      Hint = 'Relationship Status'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Relationship Action'
      Category = 0
      Hint = 'Relationship Action'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Insert'
      Category = 1
      Hint = 'Insert'
      Visible = ivAlways
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Edit'
      Category = 1
      Hint = 'Edit'
      Visible = ivAlways
      ImageIndex = 29
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Delete'
      Category = 1
      Hint = 'Delete'
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton7Click
    end
    object barbtnClose: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 2
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      OnClick = barbtnCloseClick
    end
    object barbtnSave: TdxBarButton
      Action = DataSetPost1
      Caption = 'Save'
      Category = 2
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton1: TdxBarButton
      Action = DataSetEdit1
      Caption = 'Edit'
      Category = 2
      ImageIndex = 20
      PaintStyle = psCaptionGlyph
    end
  end
  object ActionManager1: TActionManager
    Left = 600
    Top = 18
    StyleName = 'Platform Default'
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsPhonebook
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = dsPhonebook
    end
  end
  object qryRelationshipStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from RELATIONSHIP_STATUS'
      'order by descr')
    Left = 936
    Top = 268
  end
  object dsRelationshipStatus: TUniDataSource
    DataSet = qryRelationshipStatus
    Left = 1016
    Top = 268
  end
  object qryRelationshipAction: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from RELATIONSHIP_ACTION'
      'order by descr')
    Left = 920
    Top = 305
  end
  object dsRelationshipAction: TUniDataSource
    DataSet = qryRelationshipAction
    Left = 1016
    Top = 305
  end
  object qryReferredBy: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, referraltype, descr'
      'FROM MarketReferral'
      'ORDER BY descr')
    Left = 624
    Top = 344
  end
  object dsReferredBy: TUniDataSource
    DataSet = qryReferredBy
    Left = 568
    Top = 368
  end
  object dsReferralOther: TUniDataSource
    DataSet = qryReferralOther
    Left = 611
    Top = 281
  end
  object qryReferralOther: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT REFERRAL_SOURCE.*, '
      'REFERRAL_SOURCE.ROWID FROM REFERRAL_SOURCE'
      'ORDER BY REFERRAL')
    Left = 520
    Top = 272
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name'
      'FROM employee'
      'ORDER BY name')
    Left = 520
    Top = 232
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 584
    Top = 232
  end
  object qryIndustry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, industry, descr'
      'FROM MarketIndustry'
      'ORDER BY industry')
    Left = 456
    Top = 600
  end
  object dsIndustry: TUniDataSource
    DataSet = qryIndustry
    Left = 568
    Top = 584
  end
  object qrySystem1: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct(system1) as system1'
      'from phonebook'
      'order by 1')
    Left = 800
    Top = 368
  end
  object qrySystem2: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct(system2) as system2'
      'from phonebook'
      'order by 1')
    Left = 872
    Top = 376
  end
  object ImageList: TImageList
    Left = 722
    Top = 110
    Bitmap = {
      494C010124002900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7C738F9F9
      F906000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000099666600996666009966
      6600996666009966660099666600996666009966660099666600000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      4000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF16163DE96262
      629DD4D4D42B0000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000099666600FFECCC00F0CA
      A600FFCC9900FFCC9900FFCC9900FFCC9900FFCC990099666600000000000000
      00000000000000000000000000000000000000000000000000002B2B2B00E0DB
      D9004267000000787800004E1900004E1900004E1900004E1900004E1900004E
      1900004E1900004E1900004E1900003611000000000000000000F4F4F40B6060
      909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF000081FF0101
      54FF34343CCBC2C2C23D0000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C00080606000806060008060600000000000CC996600FFECCC00FFCC
      CC00F0CAA600FFCC9900FFCC9900FFCC9900FFCC990099666600000000000000
      000000000000000000000000000000000000000000002B2B2B00E0DBD9000000
      000048700000180052008D8DFF000500F4005184020058880000588800005184
      020042007300290094007676FF000000000000000000FDFDFD025A5A9AA50000
      96FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF00008FFF0000
      88FF000062FF36363EC9D6D6D629000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF0000000000CC996600F1F1F100FFEC
      CC00FFCCCC00F0CAA600FFCC9900FFCC9900FFCC990099666600000000000000
      00000000000000000000000000000000000026262600D2CFCE00FFFDFC00CCC7
      C50053830100180052002E0CA5008E8EFF000500F4008FB94100BAE95E001B16
      5D00290094007676FF000B00E40000361100000000008F8FB7700101A3FF0808
      9EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7E3FF2727
      A5FF00008CFF010152FF7171718E0000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      00000000000000000000806060008080800000000000CC996600FFFFFF00EAEA
      EA00FFECCC00FFCCCC00F0CAA600FFCC9900FFCC990099666600996666009966
      660099666600996666009966660099666600B1AEAD00FFFBF800D5CFCB002B2B
      2B000000000010004A00210073002B069C007676FF002900940010004A002900
      94007676FF000800EC000000000000000000DDDDEF222828ABD90000ABFF2828
      A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFFF7FF5E5E
      B7FF00009AFF020287FF2E2E45D10000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A00040606000808080008080800000000000CC996600FFFFFF00F1F1
      F100EAEAEA00FFECCC00FFCCCC00F0CAA600FFCC990099666600CC996600F0CA
      A600F0CAA600F0CAA600F0CAA6009966660000000000CCC7C50000000000E0DB
      D900884D00000080800010004A002100730029009400211E6A00290094007676
      FF000500F400673C0000673C0000503200009797E5690606B0FD0303B9FF0000
      C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575B9FF0606
      B1FF0101ABFF0202A0FF12135DED0000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A0008060600000000000CC996600FFFFFF00F8F8
      F800F1F1F100FFECCC00FFECCC00FFCCCC00FFCC990099666600CC996600CC99
      6600CC996600F0CAA600FFECCC0099666600A6A3A20000000000E0DBD9000000
      0000A75800001CC0C000A758000010004A0021007300290094007676FF005856
      FA00965400009654000094540000000000005859D0AB0808BBFF0707C8FF0505
      D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000BEFF0101
      C3FF0303B8FF0303ACFF0F0F6EF200000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C0008060600000000000CC996600FFFFFF00FFFF
      FF00F8F8F800F1F1F100FFECCC00FFCCCC00B2B2B20099666600CC996600FFCC
      9900FFCC9900F0CAA600F1F1F1009966660026262600D2CFCE00FFFDFC00CCC7
      C500B5630600B6E4E40010004A0021007300290094007676FF005856FA002014
      DC000500F400DC920000F3A84A00503200004B4BD2BC0C0CC9FF0D0DD8FF0B0B
      DCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000CAFF0303
      CBFF0606C5FF0606B8FF111178F1000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C000806060000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFECCC0099666600CC66660099666600CC996600CC99
      6600CC996600FFCCCC00FFFFFF0099666600B1AEAD00FFFBF800D5CFCB002B2B
      2B000000000010004A0021007300290094007676FF000D05EC0010004A003723
      C2006665FA000500F40000000000000000007272E6931414D8FF1717EAFF0B0B
      F1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363E5FF0303
      D7FF0A0ACFFF0A0AC3FF21217FE2000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      80008060600080606000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EAEAEA0099666600CC996600CC996600EAEAEA00FFFF
      FF00F1F1F100F0CAA600F0CAA6009966660000000000CCC7C50000000000E0DB
      D9001B145D0021007300290094008F8FFF006157EA0000005000000050001B14
      5D003723C2007F7FFF006157EA0000005000BBBBF7452525E5F22222FBFF3F3F
      E9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFFFEFF6161
      E5FF0808DBFF0F0FCAFF4F4F85B2000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC99660099666600F0CAA600F1F1F100FFFFFF00FFFF
      FF00FFCCCC00CC666600CC66660099666600A6A3A20000000000E0DBD9000000
      0000201A6F0029009400B4B4FF007469E700530286005A0292005A0292005302
      8600211E6A003723C2007F7FFF0000005000F3F3FD0C5E5EF1AF3232FFFF5252
      EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADADB0FF4D4D
      E1FF1818EDFF1818B1F5B6B6B94900000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099666600FFECCC00DDDDDD00F8F8F800FFFFFF00FFFFFF00FFFF
      FF00F1F1F10096969600969696009966660026262600D2CFCE00FFFDFC00CCC7
      C5005302860000000000F0BEFF00E5A3FF00DE95FF00D787FF00D27DFF00D079
      FF00CA6CFF00C063F400B55AE8001B145D0000000000D6D6FC293E3EFBE75353
      FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242EBFF3232
      FFFF1F1FE9FF7E7EA7840000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099666600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F1F100FFFFFF00F1F1F10099666600B1AEAD00FFFBF800D5CFCB001812
      5400620A9A006810A000620A9A006810A000620A9A006810A000620A9A006810
      A000620A9A005F08950053028600191463000000000000000000C2C2FC404848
      FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151FFFF3030
      FBFD7C7CB488FEFEFE0100000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099666600FFCCCC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DDDDDD00996666000000000000000000CCC7C500181254004B02
      7A000091910000D1D1000096960046057F004F0384004B027A004F0384004B02
      7A0050028100390A77001812540000000000000000000000000000000000DCDC
      FE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151F2D2A6A6
      CD5C000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009966660099666600F1F1F100FFFFFF00F1F1
      F10099666600996666000000000000000000A6A3A20018125400201A6F000096
      960000D1D10000919100201A6F002C14740027106B002C14740027106B002C14
      740027106B001812540000000000000000000000000000000000000000000000
      0000F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1F81E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099666600996666009966
      660000000000000000000000000000000000210F54001B145D00191463001914
      6300191463001914630019146300191463001914630019146300191463001B14
      5D00001D58000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660000000000000000000000
      0000666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000099666600CC996600CC9966009966
      66009966330099666600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B000000000099666600CC996600CC9966009966
      3300CC993300CC993300CC663300CC993300CC993300CC663300CC993300CC99
      3300CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF0000000000996666009966330099663300F1F1
      F100CC996600EAEAEA00F1F1F100CC996600EAEAEA00F1F1F100CC996600EAEA
      EA00CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000006633330099666600F0CAA600FFCC
      CC00CC996600F0CAA600FFCCCC00CC996600F0CAA600FFCCCC00CC996600F0CA
      A600CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC996600CC993300CC66
      3300CC993300CC993300CC663300CC993300CC993300CC663300CC993300CC99
      3300CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC996600EAEAEA00F1F1
      F100CC996600EAEAEA00F1F1F100CC996600EAEAEA00F1F1F100CC996600EAEA
      EA00CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC999900F0CAA600FFCC
      CC00CC996600F0CAA600FFCCCC00CC996600F0CAA600FFCCCC00CC996600F0CA
      A600CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC996600F0CAA600FFCC
      CC00CC996600F0CAA600FFCCCC00CC996600F0CAA600FFCCCC00CC996600F0CA
      A600CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC996600F0CAA600F0CA
      A600CC999900CC999900F0CAA600CC996600CC996600CC999900F0CAA6002222
      2200424242001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC996600CC996600CC99
      660099663300996633009966330099663300996633009966330029292900C6D6
      EF0099CCCC0099CCCC0086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000099666600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC99660039393900F1F1F100D6E7
      E700C6D6EF0099CCCC0099CCCC001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000099666600FFCC9900CC996600CC99
      66000000000099663300CC996600996666005555550033333300F0FBFF001C1C
      1C001C1C1C00D6E7E700C6D6EF00424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000009966660099666600996666009966
      6600000000000000000099666600000000000000000066333300F0FBFF00D6E7
      E700D6E7E70080808000D6E7E700161616000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000008686
      860000000000000000000000000000000000000000008686860016161600F0FB
      FF00F1F1F1001C1C1C0066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000008686860000000000000000003939
      3900161616002222220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6424200846300000000
      000000000000844200000000000084000000C642420084634200846300008463
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF0084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6424200000000000000
      00000000000000000000C64242008463420084634200C6630000C6634200C663
      4200846300008463000000000000000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042636300C6424200000000008442
      420084424200C642420084634200C6634200C6630000C6634200C6634200C663
      4200C6634200C663420084630000000000000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042636300C6634200844200008400
      0000C642420084634200C6634200C66300000000000000000000C6424200C663
      4200C6634200C6634200C6634200846300000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004263630084A5A500C66342008442
      420084634200C6630000C663420000000000000000000000000000000000C642
      4200C6634200C6634200C6634200846300000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084A5C600C6634200C642
      420084634200C6634200C6630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084C6C60084A5C600C663
      420084634200C6634200C6630000C6630000C6630000C6630000C6630000C663
      0000C6630000C6630000C6630000C66300000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084C6C600C663
      6300C6634200C6634200C6634200C6634200C6634200C6A54200C6A54200C6A5
      0000C6A50000C6A50000C6A50000C66300000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C642420084A5A50084C6
      E700C6634200C6634200C663000000000000000000000000000000000000C642
      4200F7CEA500FFFF0000C6A50000C66300000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008442420084A5
      630084E7E700C6634200C6630000C66300000000000000000000C6424200C6A5
      4200F7CEA500F7CEA500C6630000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C64242008442
      420084A56300C6C6C600C6630000C6630000C6424200C6424200C6630000FFFF
      0000F7CEA500C6A50000C6630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C642
      4200C6630000C6A56300C6C6A500C6630000C6630000C6A54200C6A50000C6A5
      4200C6A50000C663000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6630000C6630000C6634200C6634200C6634200C6634200C6A54200C6A5
      0000C66300000000000000000000C66342000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000008484840084848400848484008484840084848400848484008484
      84008484840000000000FFFFFF00000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000084000000
      84000000FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF0000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000008400000084000000
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF0000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000000000000000008400000084000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000000000000000FFFFFF00848484008484
      840000FFFF008484840084848400FFFFFF0084848400FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF00000000000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000008400000084000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00000000FF0000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF0000FF00000000FF000000000000000000FFFFFF00848484008484
      840000FFFF0084848400848484008484840000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084000000FF000000FF000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000FF0000000000000000000000FF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000000084000000
      84000000FF00000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000000000000084000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400848484008484840084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FFFFFF000000
      840000008400000084000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00000084000000
      840000FFFF008484840000FFFF000000840000008400FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000000084008484840000FF
      FF0000FFFF00FFFFFF0000FFFF0000FFFF008484840000008400FFFFFF00FFFF
      FF000000FF0000FF00000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000084000000840000FFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000840000FFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000FFFF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000840084848400FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0084848400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000840000FFFF0000FFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF0000FFFF0000FFFF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF0000000000000000000000000000000084000000840000FFFF0000FF
      FF00FFFFFF000000FF00FFFFFF0000FFFF0000FFFF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF000000000000000000000000000000000000000084008484840000FF
      FF0000FFFF000000FF0000FFFF0000FFFF008484840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000084000000
      840000FFFF008484840000FFFF00000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
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
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
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
      0000000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F80FF03F803FE001E007E007803FC000
      C003C000803F900080018000803F000080010000800000010001000080008000
      000100008000100000018000800000000001E001800000010001F00380008000
      0001F01F800010000001E03FF80004008003E03FF8000000C003C03FFC018001
      E00FC07FFE030003F01FF8FFFF8F0007FFFFFFFFFFE30007FFFFFFFFFC410003
      FFFFFFFF88000003FFFFFFFF00000003FFFFFFFF00000003FFFFFFFF00000003
      FFFFE00700000003E007F00F00000003E007F81F00000003E007FC3F00000003
      FFFFFE7F00000001FFFFFFFF00000000FFFFFFFF00010000FFFFFFFF00010880
      FFFFFFFF000DEA81FFFFFFFFD553F763FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FE7E7FFFFFFFFFC7F
      E1E7FFFFE007FC7FE067E007F00FE00FE007E007F81FE00FE067E007FC3FE00F
      E1E7FFFFFE7FFC7FE7E7FFFFFFFFFC7FFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFC00FFFFFFFFFFFF
      2000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000E7E7FF9FF9FF
      0000E787FE1FF87F0000E607F81FF81F0000E007F01FF80F0000E607F81FF81F
      E000E787FE1FF87FF800E7E7FF9FF9FFF000FFFFFFFFFFFFE001FFFFFFFFFFFF
      C403FFFFFFFFFFFFEC07FFFFFFFFFFFFC7FF0000FFFFFFFF980F0000FFFFFFFF
      30030000C007FFFF2001E007C007FFFF00C0E007C007FC7F01E0E007C007FC7F
      01FFE007C007FC7F0000E007C007E00F8000E007C007E00F81E0E007C007E00F
      C0C1E007C007FC7FC001FFFFC007FC7FE003F81FC00FFC7FF006F81FC01FFFFF
      FC0EF81FC03FFFFFFFE1FFFFFFFFFFFFFFE3FFFFFFFFFFFFFC41FFFFFFFFFFFF
      8800F9FFFFFF00000000F0FF9FE700000000F0FF8FC700000000E07F87870000
      0000C07FC30F00000000843FE01F000000001E3FF03F00000000FE1FF87F0000
      0000FF1FF03F00000000FF8FE01FFFFF0001FFC7C30FFFFF0001FFE38787FFFF
      000DFFF88FC7FFFFD553FFFFFFFFFFFFFFFFFFFF0000FFFFC007FC7F0000FE7F
      BFEBF83F0000FC3F0005F81F0000FC3F7E31F0070000FE7F7E35F0030000FC3F
      0006E0030000FC3F7FEAE0030000FC3F8014C0030000FC1FC00AC003001FF20F
      E001C003001FE107E007E003001FE187F007F803001FE007F003FC03803FF00F
      F803FF83C07FF81FFFFFFFC3E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF07C1FFFFFFFFFFFF07C1FC3FFFFFFFFF07C18001F9FFE7E701018001
      F87FE1E700018001F81FE06702018201F80FE00702018101F81FE06780038001
      F87FE1E7C1078001F9FFE7E7C1078001FFFFFFFFE38FC813FFFFFFFFE38FFC3F
      FFFFFFFFE38FFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFC41FFFFFFFFFFFF
      8800FFF9FFFFFFFF0000E7FFFFFFFFFF0000C3F3FFFFFFFF0000C3E7E7E7FF9F
      0000E1C7E787FE1F0000F08FE607F81F0000F81FE007F01F0000FC3FE607F81F
      0000F81FE787FE1F0000F09FE7E7FF9F0001C1C7FFFFFFFF000183E3FFFFFFFF
      000D8FF1FFFFFFFFD553FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
