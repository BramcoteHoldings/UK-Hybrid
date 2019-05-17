object frmPhoneBook: TfrmPhoneBook
  Left = 152
  Top = 52
  BorderStyle = bsSingle
  Caption = 'Contact'
  ClientHeight = 753
  ClientWidth = 1164
  Color = clBtnFace
  Constraints.MinWidth = 756
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pBottom: TPanel
    Left = 0
    Top = 196
    Width = 1164
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pBottom'
    TabOrder = 0
    DesignSize = (
      1164
      557)
    object pcBottom: TcxPageControl
      Left = 5
      Top = 5
      Width = 1149
      Height = 542
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Properties.ActivePage = tsAddress
      Properties.CustomButtons.Buttons = <>
      OnChange = pcBottomChange
      ClientRectBottom = 538
      ClientRectLeft = 4
      ClientRectRight = 1145
      ClientRectTop = 26
      object tsAddress: TcxTabSheet
        Caption = 'Addresses'
        ImageIndex = 0
        DesignSize = (
          1141
          512)
        object lStreetPostCode: TLabel
          Left = 44
          Top = 136
          Width = 57
          Height = 15
          Alignment = taRightJustify
          Caption = 'Post Code:'
          Transparent = True
        end
        object lStreetCountry: TLabel
          Left = 58
          Top = 160
          Width = 43
          Height = 15
          Alignment = taRightJustify
          Caption = 'Country'
          Transparent = True
        end
        object lStreetState: TLabel
          Left = 72
          Top = 111
          Width = 29
          Height = 15
          Alignment = taRightJustify
          Caption = 'State:'
          Transparent = True
        end
        object lStreetSuburb: TLabel
          Left = 26
          Top = 87
          Width = 75
          Height = 15
          Alignment = taRightJustify
          Caption = 'Town/Suburb:'
          Transparent = True
        end
        object Label4: TLabel
          Left = 377
          Top = 306
          Width = 57
          Height = 15
          Alignment = taRightJustify
          Caption = 'Post Code:'
          Transparent = True
        end
        object lCustomState: TLabel
          Left = 405
          Top = 282
          Width = 29
          Height = 15
          Alignment = taRightJustify
          Caption = 'State:'
          Transparent = True
        end
        object Label5: TLabel
          Left = 391
          Top = 330
          Width = 43
          Height = 15
          Alignment = taRightJustify
          Caption = 'Country'
          Transparent = True
        end
        object lAddressPostalDefault: TLabel
          Left = 480
          Top = 2
          Width = 83
          Height = 13
          Caption = 'Default Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lAddressCustomDefault: TLabel
          Left = 107
          Top = 240
          Width = 83
          Height = 13
          Caption = 'Default Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel4: TBevel
          Left = 11
          Top = 183
          Width = 935
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Bevel3: TBevel
          Left = 332
          Top = 6
          Width = 3
          Height = 179
          Shape = bsLeftLine
        end
        object Bevel9: TBevel
          Left = 11
          Top = 237
          Width = 935
          Height = 3
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Label2: TLabel
          Left = 359
          Top = 258
          Width = 75
          Height = 15
          Alignment = taRightJustify
          Caption = 'Town/Suburb:'
          Transparent = True
        end
        object Label1: TLabel
          Left = 56
          Top = 258
          Width = 45
          Height = 15
          Alignment = taRightJustify
          Caption = 'Address:'
          Transparent = True
        end
        object lPostalState: TLabel
          Left = 405
          Top = 110
          Width = 29
          Height = 15
          Alignment = taRightJustify
          Caption = 'State:'
          Transparent = True
        end
        object lPostalPostCode: TLabel
          Left = 377
          Top = 135
          Width = 57
          Height = 15
          Alignment = taRightJustify
          Caption = 'Post Code:'
          Transparent = True
        end
        object lPostalSuburb: TLabel
          Left = 359
          Top = 86
          Width = 75
          Height = 15
          Alignment = taRightJustify
          Caption = 'Town/Suburb:'
          Transparent = True
        end
        object lStreetAddress: TLabel
          Left = 56
          Top = 21
          Width = 45
          Height = 15
          Alignment = taRightJustify
          Caption = 'Address:'
          Transparent = True
        end
        object lStreet: TLabel
          Left = 3
          Top = -2
          Width = 98
          Height = 27
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Client Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object lblCustomAddress: TLabel
          Left = 16
          Top = 240
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Custom Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lAddressStreetDefault: TLabel
          Left = 107
          Top = 2
          Width = 83
          Height = 13
          Caption = 'Default Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lPostal: TLabel
          Left = 345
          Top = 2
          Width = 130
          Height = 13
          Alignment = taRightJustify
          Caption = 'Correspondence Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lPostalCountry: TLabel
          Left = 391
          Top = 161
          Width = 43
          Height = 15
          Alignment = taRightJustify
          Caption = 'Country'
          Transparent = True
        end
        object lPostalAddress: TLabel
          Left = 389
          Top = 21
          Width = 45
          Height = 15
          Alignment = taRightJustify
          Caption = 'Address:'
          Transparent = True
        end
        object cbStreetCountry: TDBEdit
          Left = 107
          Top = 157
          Width = 214
          Height = 23
          Color = clInfoBk
          DataField = 'COUNTRY'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
        object cbPostalState: TDBEdit
          Left = 440
          Top = 107
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'POSTALSTATE'
          DataSource = dsPhoneBook
          TabOrder = 1
        end
        object cbStreetState: TDBEdit
          Left = 107
          Top = 107
          Width = 214
          Height = 23
          Color = clInfoBk
          DataField = 'STATE'
          DataSource = dsPhoneBook
          TabOrder = 2
        end
        object eCustomPostcode: TDBEdit
          Left = 440
          Top = 303
          Width = 135
          Height = 23
          Color = clInfoBk
          DataField = 'CUST_POSTCODE'
          DataSource = dsPhoneBook
          TabOrder = 3
        end
        object eCustomCountry: TDBEdit
          Left = 440
          Top = 327
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'CUST_COUNTRY'
          DataSource = dsPhoneBook
          TabOrder = 4
        end
        object cbPostalCountry: TDBEdit
          Left = 440
          Top = 157
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'POSTALCOUNTRY'
          DataSource = dsPhoneBook
          TabOrder = 5
        end
        object mCustomAddress: TDBRichEdit
          Left = 107
          Top = 255
          Width = 214
          Height = 71
          Color = clInfoBk
          DataField = 'CUST_ADDRESS'
          DataSource = dsPhoneBook
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 6
          Zoom = 100
        end
        object eStreetSuburb: TDBEdit
          Left = 107
          Top = 82
          Width = 214
          Height = 23
          Color = clInfoBk
          DataField = 'SUBURB'
          DataSource = dsPhoneBook
          TabOrder = 7
        end
        object mPostalAddress: TDBRichEdit
          Left = 440
          Top = 18
          Width = 215
          Height = 62
          Color = clInfoBk
          DataField = 'POSTALADDRESS'
          DataSource = dsPhoneBook
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 8
          Zoom = 100
        end
        object pnlDX: TPanel
          Left = 0
          Top = 186
          Width = 971
          Height = 41
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 9
          object lDXAddress: TLabel
            Left = 27
            Top = 20
            Width = 75
            Height = 15
            Alignment = taRightJustify
            Caption = 'Box / Address:'
            Transparent = True
          end
          object lDX: TLabel
            Left = 77
            Top = 2
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'DX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lAddressDXDefault: TLabel
            Left = 107
            Top = 1
            Width = 83
            Height = 13
            Caption = 'Default Address'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lDXLocation: TLabel
            Left = 331
            Top = 20
            Width = 49
            Height = 15
            Alignment = taRightJustify
            Caption = 'Location:'
            Transparent = True
          end
          object eDXAddress: TDBEdit
            Left = 107
            Top = 16
            Width = 214
            Height = 23
            Color = clInfoBk
            DataField = 'DX'
            DataSource = dsPhoneBook
            TabOrder = 0
          end
          object eDXLocation: TDBEdit
            Left = 389
            Top = 16
            Width = 214
            Height = 23
            Color = clInfoBk
            DataField = 'DXLOC'
            DataSource = dsPhoneBook
            TabOrder = 1
          end
        end
        object mStreetAddress: TDBRichEdit
          Left = 107
          Top = 18
          Width = 214
          Height = 62
          Color = clInfoBk
          DataField = 'ADDRESS'
          DataSource = dsPhoneBook
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 10
          Zoom = 100
        end
        object eCustomSuburb: TDBEdit
          Left = 440
          Top = 255
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'CUST_SUBURB'
          DataSource = dsPhoneBook
          TabOrder = 11
        end
        object eCustomState: TDBEdit
          Left = 440
          Top = 279
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'CUST_STATE'
          DataSource = dsPhoneBook
          TabOrder = 12
        end
        object ePostalPostCode: TDBEdit
          Left = 440
          Top = 132
          Width = 136
          Height = 23
          Color = clInfoBk
          DataField = 'POSTALPOSTCODE'
          DataSource = dsPhoneBook
          TabOrder = 13
        end
        object eStreetPostCode: TDBEdit
          Left = 107
          Top = 132
          Width = 136
          Height = 23
          Color = clInfoBk
          DataField = 'POSTCODE'
          DataSource = dsPhoneBook
          TabOrder = 14
        end
        object ePostalSuburb: TDBEdit
          Left = 440
          Top = 82
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'POSTALSUBURB'
          DataSource = dsPhoneBook
          TabOrder = 15
        end
      end
      object tsClient: TcxTabSheet
        Caption = 'Client'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1141
          512)
        object Label10: TLabel
          Left = 24
          Top = 82
          Width = 77
          Height = 15
          Alignment = taRightJustify
          Caption = 'Introduced By:'
          Transparent = True
        end
        object Label11: TLabel
          Left = 20
          Top = 110
          Width = 81
          Height = 15
          Alignment = taRightJustify
          Caption = 'Service Partner:'
          Transparent = True
        end
        object Label12: TLabel
          Left = 49
          Top = 136
          Width = 52
          Height = 15
          Alignment = taRightJustify
          Caption = 'Fee Code:'
          Transparent = True
        end
        object Label13: TLabel
          Left = 16
          Top = 162
          Width = 85
          Height = 15
          Alignment = taRightJustify
          Caption = 'Disb'#39' Threshold:'
          Transparent = True
        end
        object Label14: TLabel
          Left = 30
          Top = 189
          Width = 71
          Height = 15
          Alignment = taRightJustify
          Caption = 'Bill Template:'
          Transparent = True
        end
        object Label15: TLabel
          Left = 30
          Top = 215
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Client Groups'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 33
          Top = 6
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Client Details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 36
          Top = 29
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = 'Client Code:'
          Transparent = True
        end
        object Label9: TLabel
          Left = 40
          Top = 56
          Width = 61
          Height = 15
          Alignment = taRightJustify
          Caption = 'Introduced:'
          Transparent = True
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 111
          Top = 160
          DataBinding.DataField = 'DISBTHRESHOLD'
          DataBinding.DataSource = dsClient
          Properties.AutoSelect = False
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseThousandSeparator = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.BorderColor = clWindowFrame
          StyleDisabled.Color = clInfoBk
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.TextColor = clBlack
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 130
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 111
          Top = 26
          DataBinding.DataField = 'CODE'
          DataBinding.DataSource = dsClient
          Properties.ReadOnly = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 250
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 111
          Top = 53
          DataBinding.DataField = 'INTRODUCED'
          DataBinding.DataSource = dsClient
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 131
        end
        object dfBillTemplate: TcxTextEdit
          Left = 111
          Top = 186
          Properties.ReadOnly = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 251
        end
        object dfFeeCode: TcxTextEdit
          Left = 111
          Top = 134
          Properties.ReadOnly = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 250
        end
        object dfIntroducedBy: TcxTextEdit
          Left = 111
          Top = 80
          Properties.ReadOnly = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 250
        end
        object dfPartner: TcxTextEdit
          Left = 111
          Top = 106
          Properties.ReadOnly = True
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 250
        end
        object lbClientGroups: TcxCheckListBox
          Left = 111
          Top = 215
          Width = 846
          Height = 185
          AllowDblClickToggle = False
          AllowGrayed = True
          Anchors = [akLeft, akTop, akRight, akBottom]
          EditValueFormat = cvfStatesString
          Items = <>
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
        end
      end
      object tsAdditional: TcxTabSheet
        Caption = 'Additional'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1141
          512)
        object Bevel13: TBevel
          Left = 11
          Top = 419
          Width = 935
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Bevel12: TBevel
          Left = 11
          Top = 355
          Width = 935
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object lOccupation: TLabel
          Left = 39
          Top = 265
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = 'Occupation:'
          Transparent = True
        end
        object lblABN: TLabel
          Left = 68
          Top = 207
          Width = 36
          Height = 15
          Alignment = taRightJustify
          Caption = 'A.B.N.:'
          Transparent = True
        end
        object Bevel8: TBevel
          Left = 11
          Top = 321
          Width = 935
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Label18: TLabel
          Left = 16
          Top = 81
          Width = 88
          Height = 15
          Alignment = taRightJustify
          Caption = 'E-Mail Address2:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 16
          Top = 51
          Width = 88
          Height = 15
          Alignment = taRightJustify
          Caption = 'E-Mail Address1:'
          Transparent = True
        end
        object Bevel5: TBevel
          Left = 11
          Top = 162
          Width = 935
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Bevel10: TBevel
          Left = 11
          Top = 230
          Width = 935
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Bevel7: TBevel
          Left = 11
          Top = 288
          Width = 935
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object Bevel6: TBevel
          Left = 11
          Top = 196
          Width = 935
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 936
        end
        object lInternet: TLabel
          Left = 75
          Top = 0
          Width = 29
          Height = 15
          Alignment = taRightJustify
          Caption = 'Email'
          Transparent = True
        end
        object lDefaultRef: TLabel
          Left = 43
          Top = 331
          Width = 61
          Height = 15
          Alignment = taRightJustify
          Caption = 'Default Ref:'
          Transparent = True
        end
        object lInternetWWW: TLabel
          Left = 10
          Top = 136
          Width = 94
          Height = 15
          Alignment = taRightJustify
          Caption = 'Web Site Address:'
          Transparent = True
        end
        object lInternetEMail: TLabel
          Left = 22
          Top = 20
          Width = 82
          Height = 15
          Alignment = taRightJustify
          Caption = 'E-Mail Address:'
          Transparent = True
        end
        object Label6: TLabel
          Left = 63
          Top = 111
          Width = 41
          Height = 15
          Alignment = taRightJustify
          Caption = 'Internet'
          Transparent = True
        end
        object Label21: TLabel
          Left = 33
          Top = 239
          Width = 71
          Height = 15
          Alignment = taRightJustify
          Caption = 'Contact Title:'
        end
        object lCode: TLabel
          Left = 334
          Top = 331
          Width = 31
          Height = 15
          Alignment = taRightJustify
          Caption = 'Code:'
          Transparent = True
        end
        object lACN: TLabel
          Left = 67
          Top = 173
          Width = 37
          Height = 15
          Alignment = taRightJustify
          Caption = 'A.C.N.:'
          Transparent = True
        end
        object eABN: TDBEdit
          Left = 108
          Top = 203
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'ABN'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
        object eDefaultRef: TDBEdit
          Left = 108
          Top = 327
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'DEFAULT_REF'
          DataSource = dsPhoneBook
          TabOrder = 1
        end
        object eCode: TDBEdit
          Left = 372
          Top = 327
          Width = 214
          Height = 23
          Color = clInfoBk
          DataField = 'CODE'
          DataSource = dsPhoneBook
          TabOrder = 2
        end
        object cxDBButtonEdit2: TcxDBButtonEdit
          Left = 108
          Top = 78
          DataBinding.DataField = 'EMAIL2'
          DataBinding.DataSource = dsPhoneBook
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
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF808080FFFF00
                FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
                00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
                00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 3
          Width = 322
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 108
          Top = 48
          DataBinding.DataField = 'EMAIL1'
          DataBinding.DataSource = dsPhoneBook
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
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF808080FFFF00
                FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
                00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
                00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 4
          Width = 322
        end
        object grpCLLData: TGroupBox
          Left = 513
          Top = 5
          Width = 351
          Height = 90
          Caption = 'CLL Data'
          TabOrder = 5
          Visible = False
          object Label23: TLabel
            Left = 14
            Top = 27
            Width = 57
            Height = 15
            Caption = 'Client Title'
          end
          object Label24: TLabel
            Left = 14
            Top = 55
            Width = 66
            Height = 15
            Caption = 'Client Name'
          end
          object DBEdit5: TDBEdit
            Left = 98
            Top = 21
            Width = 229
            Height = 23
            Color = clInfoBk
            DataField = 'CLIENTTITLE'
            DataSource = dsPhoneBook
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 98
            Top = 51
            Width = 229
            Height = 23
            Color = clInfoBk
            DataField = 'CLIENTNAME'
            DataSource = dsPhoneBook
            ReadOnly = True
            TabOrder = 1
          end
        end
        object pnlDOB: TPanel
          Left = 0
          Top = 290
          Width = 995
          Height = 27
          BevelOuter = bvNone
          TabOrder = 6
          object lDateOfBirth: TLabel
            Left = 33
            Top = 9
            Width = 71
            Height = 15
            Alignment = taRightJustify
            Caption = 'Date Of Birth:'
            Transparent = True
          end
          object dDateOfBirth: TDBEdit
            Left = 108
            Top = 5
            Width = 131
            Height = 23
            Color = clInfoBk
            DataField = 'DOB'
            DataSource = dsPhoneBook
            TabOrder = 0
          end
        end
        object pnlNRIC: TPanel
          Left = 0
          Top = 421
          Width = 1017
          Height = 31
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 7
          object Label47: TLabel
            Left = 75
            Top = 10
            Width = 30
            Height = 15
            Caption = 'NRIC:'
            WordWrap = True
          end
          object dbedNRIC: TDBEdit
            Left = 110
            Top = 7
            Width = 213
            Height = 23
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'NRIC'
            DataSource = dsPhoneBook
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlContacts: TPanel
          Left = 12
          Top = 360
          Width = 557
          Height = 67
          BevelOuter = bvNone
          TabOrder = 8
          object Label43: TLabel
            Left = 13
            Top = 3
            Width = 80
            Height = 15
            Caption = 'Contact Name:'
          end
          object Label44: TLabel
            Left = 12
            Top = 25
            Width = 80
            Height = 30
            Alignment = taRightJustify
            Caption = 'Additional Contact Name:'
            WordWrap = True
          end
          object DBEdit7: TDBEdit
            Left = 96
            Top = 1
            Width = 214
            Height = 23
            Color = clInfoBk
            DataField = 'CONTACT_NAME'
            DataSource = dsPhoneBook
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 96
            Top = 30
            Width = 214
            Height = 23
            Color = clInfoBk
            DataField = 'ADDITIONAL_CONTACT_NAME'
            DataSource = dsPhoneBook
            TabOrder = 1
          end
        end
        object eInternetWWW: TcxDBButtonEdit
          Left = 107
          Top = 130
          DataBinding.DataField = 'WWW'
          DataBinding.DataSource = dsPhoneBook
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00CC33
                33FFCC3333FFCC3333FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC3333FF9966
                00FFFFFFFF00FFFFFF00993300FF161616FF990000FFCC3333FF996633FF9966
                00FF996600FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00777777FFCC3333FFFFFF
                FF00FFFFFF00161616FF161616FFCC3333FF996633FF996633FFCC6600FFFF66
                33FFFF6633FF996600FF996600FFFFFFFF00FFFFFF005F5F5FFFCC3333FFFFFF
                FF00663333FF993333FFCC3333FF996633FFFF6633FFCC6600FFFF6633FFFF66
                33FFFF6633FFFF6633FFFF6633FF996600FFFFFFFF005F5F5FFFCC6633FF9933
                00FF800000FFCC3333FF996633FFFF6633FFCC6600FFFFFFFF00FFFFFF00CC33
                33FFFF6633FFFF6633FFFF6633FFFF6633FF996600FF5F5F5FFF669999FFCC66
                33FF993333FF996633FFCC6600FFFF6633FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00CC3333FFFF6633FFFF6633FFFF6633FF996600FF777777FF6699CCFFFF66
                33FFCC3333FF996633FFFF6633FFCC6600FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777FF99CCCCFF6699
                CCFFCC6633FF996633FFFF6633FFCC6600FFCC6600FFCC6600FFCC6600FFCC66
                00FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFFFFFFF00777777FF99CC
                CCFFCC6666FFCC6633FFFF6633FFFF6633FFFF6633FFFF6633FFCC9933FFCC99
                33FFFF9900FFFF9900FFFF9900FFFF9900FFCC6600FFFFFFFF00CC3333FF6699
                99FF99CCFFFFFF6633FFFF6633FFCC6600FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00CC3333FFFFFF66FFFFCC00FFFF9900FFCC6600FFFFFFFF00FFFFFF009933
                33FF999966FF99FFFFFFFF6633FFCC6600FFCC6600FFFFFFFF00FFFFFF00CC33
                33FFCC9933FFFFFF99FFFFFF66FFCC6600FFFFFFFF00FFFFFF00FFFFFF00CC33
                33FF993333FF999966FFC0C0C0FFCC6600FFCC6600FFCC3333FFCC3333FFCC66
                00FFFFCC00FFFFFF66FFFF9900FFCC6600FFFFFFFF00FFFFFF00FFFFFF00FFFF
                FF00CC3333FFCC6600FFCC9966FFCCCC99FFCC6600FFCC6600FFCC9933FFFF99
                00FFCC9933FFFF9900FFCC6600FFFFFFFF00FF6633FFFFFFFF00FFFFFF00FFFF
                FF00FFFFFF00CC6600FFCC6600FFFF6633FFFF6633FFFF6633FFFF6633FFCC99
                33FFFF9900FFCC6600FFFFFFFF00FFFFFF00FF6633FFFFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00CC6600FFCC6600FFCC6600FFCC6600FFCC66
                00FFCC6600FFFFFFFF00FFFFFF00FFFFFF00CC6600FFFFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00CC6600FFCC6600FFCC6600FFCC6600FFFFFFFF00}
              Kind = bkGlyph
              Stretchable = False
            end>
          Properties.OnButtonClick = eInternetWWWPropertiesButtonClick
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 9
          Width = 322
        end
        object eInternetEmail: TcxDBButtonEdit
          Left = 108
          Top = 17
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dsPhoneBook
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
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00808080FF808080FFFF00
                FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
                00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF8000
                00FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000080FF000080FFC0C0C0FF000000FF808080FF808080FFFF00
                FF00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF000000FFFF00FF00FF00FF00FF00
                FF00808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
                80FF808080FF808080FF808080FF808080FF000000FFFF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 10
          Width = 322
        end
        object eTitle: TDBEdit
          Left = 108
          Top = 235
          Width = 215
          Height = 23
          Color = clInfoBk
          TabOrder = 11
        end
        object eOccupation: TDBEdit
          Left = 108
          Top = 260
          Width = 215
          Height = 23
          Color = clInfoBk
          DataField = 'OCCUPATION'
          DataSource = dsPhoneBook
          TabOrder = 12
        end
        object eACN: TcxDBTextEdit
          Left = 110
          Top = 170
          DataBinding.DataField = 'ACN'
          DataBinding.DataSource = dsPhoneBook
          Style.Color = clInfoBk
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Width = 214
        end
        object pnlPassportNo: TPanel
          Left = 0
          Top = 451
          Width = 1017
          Height = 30
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 14
          object Label3: TLabel
            Left = 35
            Top = 10
            Width = 70
            Height = 20
            AutoSize = False
            Caption = 'Passport No:'
            WordWrap = True
          end
          object DBEdit9: TDBEdit
            Left = 110
            Top = 7
            Width = 213
            Height = 23
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'PASSPORT_NO'
            DataSource = dsPhoneBook
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object tsNotes: TcxTabSheet
        Caption = 'Notes'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object mlNotes: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'NOTE'
          DataBinding.DataSource = dsPhoneBook
          Style.BorderStyle = ebs3D
          Style.Color = clInfoBk
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 512
          Width = 1141
        end
      end
      object tsGroups: TcxTabSheet
        Caption = 'Groups'
        ImageIndex = 4
        OnShow = tsGroupsShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dgGroups: TcxGrid
          Left = 0
          Top = 0
          Width = 1141
          Height = 512
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvGroups: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsGroups
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 37
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 8
            Preview.LeftIndent = 14
            Styles.Background = cxStyle1
            Styles.Content = cxStyle1
            object tvGroupsCATEGORY: TcxGridDBColumn
              DataBinding.FieldName = 'CATEGORY'
              MinWidth = 18
              Width = 404
            end
            object tvGroupsOTHERPARTY: TcxGridDBColumn
              DataBinding.FieldName = 'OTHERPARTY'
              PropertiesClassName = 'TcxTextEditProperties'
              MinWidth = 18
              Width = 192
            end
          end
          object dgGroupsLevel1: TcxGridLevel
            GridView = tvGroups
          end
        end
      end
      object rsRelationships: TcxTabSheet
        Caption = 'Relationships'
        ImageIndex = 5
        OnShow = rsRelationshipsShow
        object dbgrRelationship: TcxGrid
          Left = 0
          Top = 0
          Width = 1141
          Height = 484
          Align = alClient
          PopupMenu = popRelationPrint
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvRelationship: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsRelationships
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 11
            object tvRelationshipNCHILD: TcxGridDBColumn
              DataBinding.FieldName = 'NCHILD'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.ReadOnly = True
              Visible = False
              MinWidth = 18
              Width = 18
            end
            object tvRelationshipRELATIONSHIP: TcxGridDBColumn
              Caption = 'Relationship'
              DataBinding.FieldName = 'RELATIONSHIP'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              MinWidth = 18
              Width = 164
            end
            object tvRelationshipBACKWARD: TcxGridDBColumn
              Caption = 'Name'
              DataBinding.FieldName = 'BACKWARD'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              MinWidth = 18
              Width = 423
            end
            object tvRelationshipDBColumn1: TcxGridDBColumn
              Caption = 'Address'
              DataBinding.FieldName = 'ADDRESS'
              MinWidth = 18
              Width = 297
            end
          end
          object dbgrRelationshipLevel1: TcxGridLevel
            GridView = tvRelationship
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 484
          Width = 1141
          Height = 28
          Align = dalBottom
          BarManager = dxBarManager1
        end
      end
      object tsCustomData: TcxTabSheet
        Caption = 'Custom Data'
        ImageIndex = 6
        OnShow = tsCustomDataShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object vtCustomData: TVirtualStringTree
          Left = 0
          Top = 0
          Width = 1141
          Height = 512
          Align = alClient
          ButtonStyle = bsTriangle
          Color = clInfoBk
          Colors.UnfocusedColor = clMedGray
          DefaultNodeHeight = 20
          Header.AutoSizeIndex = -1
          Header.Options = [hoAutoResize, hoVisible]
          Header.Style = hsPlates
          LineMode = lmBands
          TabOrder = 0
          TreeOptions.AnimationOptions = [toAnimatedToggle]
          TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
          TreeOptions.MiscOptions = [toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
          TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toShowButtons, toShowDropmark, toUseBlendedImages]
          TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus]
          OnCollapsing = vtTreeCollapsing
          OnGetText = vtCustomDataGetText
          OnPaintText = vtTreePaintText
          OnGetNodeDataSize = vtTreeGetNodeDataSize
          Columns = <
            item
              Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible]
              Position = 0
              Text = 'Group/Field'
              Width = 280
            end
            item
              Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
              Position = 1
              Text = 'Value'
              Width = 861
            end>
        end
      end
      object tsMatterData: TcxTabSheet
        Caption = 'Matter Data'
        ImageIndex = 7
        OnShow = tsMatterDataShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object vtMatterData: TVirtualStringTree
          Left = 0
          Top = 0
          Width = 1141
          Height = 512
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          ButtonStyle = bsTriangle
          Color = clInfoBk
          Colors.UnfocusedColor = clMedGray
          DefaultNodeHeight = 20
          Header.AutoSizeIndex = -1
          Header.Options = [hoAutoResize, hoVisible]
          Header.Style = hsPlates
          TabOrder = 0
          TreeOptions.AnimationOptions = [toAnimatedToggle]
          TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
          TreeOptions.MiscOptions = [toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
          TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toShowButtons, toUseBlendedImages]
          TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus]
          OnCollapsing = vtTreeCollapsing
          OnGetText = vtCustomDataGetText
          OnPaintText = vtTreePaintText
          OnGetNodeDataSize = vtTreeGetNodeDataSize
          Columns = <
            item
              Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
              Position = 0
              Text = 'Group/Matter/Field'
              Width = 300
            end
            item
              Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
              Position = 1
              Text = 'Value'
              Width = 841
            end>
        end
      end
      object tsPartyMatter: TcxTabSheet
        Caption = 'Matter Party'
        ImageIndex = 8
        OnShow = tsPartyMatterShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdMatterParty: TcxGrid
          Left = 0
          Top = 0
          Width = 1141
          Height = 512
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvMatterParty: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPartyMatters
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 11
            object tvMatterPartyMATTER: TcxGridDBColumn
              Caption = 'Matter'
              DataBinding.FieldName = 'MATTER'
              MinWidth = 18
              Width = 84
            end
            object tvMatterPartyDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              MinWidth = 18
              Width = 485
            end
            object tvMatterPartyNMATTER: TcxGridDBColumn
              DataBinding.FieldName = 'NMATTER'
              Visible = False
              MinWidth = 18
              VisibleForCustomization = False
            end
          end
          object grdMatterPartyLevel1: TcxGridLevel
            GridView = tvMatterParty
          end
        end
      end
      object tsTracking: TcxTabSheet
        Caption = 'Tasks'
        ImageIndex = 9
        OnShow = tsTrackingShow
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1141
          Height = 26
          Align = dalTop
          BarManager = dxBarManager1
        end
        object dbgContactNotes: TcxGrid
          Left = 0
          Top = 26
          Width = 1141
          Height = 486
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object tvContactNotes: TcxGridDBTableView
            Navigator.Buttons.OnButtonClick = tvContactNotesNavigatorButtonsButtonClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Hint = 'New Entry'
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Delete.Hint = 'Delete'
            Navigator.Buttons.Edit.Hint = 'Edit'
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Cancel.Hint = 'Cancel'
            Navigator.Buttons.Refresh.Hint = 'Refresh'
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsContactNotes
            DataController.KeyFieldNames = 'NDIARY'
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
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 11
            object tvContactNotesCREATION_DATE: TcxGridDBColumn
              Caption = 'Create Date'
              DataBinding.FieldName = 'CREATION_DATE'
              MinWidth = 18
              Width = 80
            end
            object tvContactNotesSTART_DT: TcxGridDBColumn
              Caption = 'Start Date'
              DataBinding.FieldName = 'START_DT'
              MinWidth = 18
              Width = 75
            end
            object tvContactNotesENTEREDBY: TcxGridDBColumn
              Caption = 'By'
              DataBinding.FieldName = 'ENTEREDBY'
              MinWidth = 18
              Width = 89
            end
            object tvContactNotesDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              MinWidth = 18
              Width = 596
            end
          end
          object dbgContactNotesLevel1: TcxGridLevel
            GridView = tvContactNotes
          end
        end
      end
      object tsEventList: TcxTabSheet
        Caption = 'Event'
        ImageIndex = 10
        OnShow = tsEventListShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdParticipantEvents: TcxGrid
          Left = 0
          Top = 0
          Width = 1141
          Height = 512
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object tvParticipantEvents: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsParticipantEvents
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 11
            Styles.ContentOdd = styAlternateColor
            object tvParticipantEventsEVENT: TcxGridDBColumn
              Caption = 'Event'
              DataBinding.FieldName = 'EVENT'
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 141
            end
            object tvParticipantEventsEVENT_DATE: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'EVENT_DATE'
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 68
            end
            object tvParticipantEventsEVENT_TIME: TcxGridDBColumn
              Caption = 'Time'
              DataBinding.FieldName = 'EVENT_TIME'
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 56
            end
            object tvParticipantEventsACCEPTED: TcxGridDBColumn
              Caption = 'Accepted'
              DataBinding.FieldName = 'ACCEPTED'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taLeftJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 57
            end
            object tvParticipantEventsATTENDED: TcxGridDBColumn
              Caption = 'Attended'
              DataBinding.FieldName = 'ATTENDED'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taLeftJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 57
            end
            object tvParticipantEventsDECLINED: TcxGridDBColumn
              Caption = 'Declined'
              DataBinding.FieldName = 'DECLINED'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taLeftJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 57
            end
            object tvParticipantEventsPRINTED: TcxGridDBColumn
              Caption = 'Printed'
              DataBinding.FieldName = 'PRINTED'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taLeftJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 57
            end
            object tvParticipantEventsSEARCH: TcxGridDBColumn
              Caption = 'Search'
              DataBinding.FieldName = 'SEARCH'
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 80
            end
            object tvParticipantEventsNOTES: TcxGridDBColumn
              Caption = 'Notes'
              DataBinding.FieldName = 'NOTES'
              MinWidth = 18
              Options.Filtering = False
              Options.Moving = False
              Width = 81
            end
          end
          object grdParticipantEventsLevel1: TcxGridLevel
            GridView = tvParticipantEvents
          end
        end
      end
      object tsMarketing: TcxTabSheet
        Caption = 'Marketing'
        ImageIndex = 11
        OnShow = tsMarketingShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 426
          Top = 6
          Width = 314
          Height = 162
          Caption = 'Firm Contacts'
          TabOrder = 0
          object lstFirmContacts: TcxListBox
            Left = 16
            Top = 20
            Width = 285
            Height = 130
            ItemHeight = 15
            Style.BorderStyle = cbs3D
            Style.Color = clInfoBk
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 0
          end
        end
        object grpCRM: TGroupBox
          Left = 12
          Top = 290
          Width = 407
          Height = 217
          Caption = 'CRM'
          TabOrder = 1
          object Label19: TLabel
            Left = 65
            Top = 158
            Width = 49
            Height = 15
            Alignment = taRightJustify
            Caption = 'Firm size:'
          end
          object Label31: TLabel
            Left = 18
            Top = 23
            Width = 96
            Height = 15
            Alignment = taRightJustify
            Caption = 'Relationship Type:'
          end
          object Label32: TLabel
            Left = 11
            Top = 50
            Width = 103
            Height = 15
            Alignment = taRightJustify
            Caption = 'Relationship Status:'
          end
          object Label33: TLabel
            Left = 8
            Top = 77
            Width = 106
            Height = 15
            Alignment = taRightJustify
            Caption = 'Relationship Action:'
          end
          object Label34: TLabel
            Left = 87
            Top = 104
            Width = 27
            Height = 15
            Alignment = taRightJustify
            Caption = 'PMS:'
          end
          object Label35: TLabel
            Left = 86
            Top = 131
            Width = 28
            Height = 15
            Alignment = taRightJustify
            Caption = 'DMS:'
          end
          object Label20: TLabel
            Left = 63
            Top = 185
            Width = 51
            Height = 15
            Alignment = taRightJustify
            Caption = 'Turnover:'
          end
          object edRelationshipType: TEdit
            Left = 123
            Top = 20
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 92
            Top = 116
            Width = 129
            Height = 23
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Color = clInfoBk
            DataField = 'FIRM_SIZE'
            DataSource = dsPhoneBook
            TabOrder = 1
          end
          object edRelationshipStatus: TEdit
            Left = 123
            Top = 46
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 2
          end
          object edRelationshipAction: TEdit
            Left = 123
            Top = 74
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit2: TDBEdit
            Left = 123
            Top = 101
            Width = 172
            Height = 23
            Color = clInfoBk
            DataField = 'SYSTEM1'
            DataSource = dsPhoneBook
            TabOrder = 4
          end
          object DBEdit3: TDBEdit
            Left = 123
            Top = 128
            Width = 172
            Height = 23
            Color = clInfoBk
            DataField = 'SYSTEM2'
            DataSource = dsPhoneBook
            TabOrder = 5
          end
          object DBEdit4: TDBEdit
            Left = 123
            Top = 181
            Width = 172
            Height = 23
            Color = clInfoBk
            DataField = 'TURNOVER'
            DataSource = dsPhoneBook
            TabOrder = 6
          end
        end
        object grpIndustry: TGroupBox
          Left = 12
          Top = 110
          Width = 407
          Height = 51
          Caption = 'Industry'
          TabOrder = 2
          object dbIndustry: TEdit
            Left = 123
            Top = 17
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 0
          end
        end
        object grpInterest: TGroupBox
          Left = 9
          Top = 122
          Width = 305
          Height = 90
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Interest'
          TabOrder = 3
          object lstInterest: TcxListBox
            Left = 92
            Top = 11
            Width = 207
            Height = 74
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            ItemHeight = 15
            Style.Color = clInfoBk
            Style.LookAndFeel.Kind = lfStandard
            Style.StyleController = cxEditStyleController1
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 0
          end
        end
        object grpReferral: TGroupBox
          Left = 12
          Top = 6
          Width = 407
          Height = 102
          Caption = 'Referrals'
          TabOrder = 4
          object lblReferral: TLabel
            Left = 20
            Top = 21
            Width = 71
            Height = 15
            Caption = 'Referral Type:'
            Transparent = True
          end
          object lblReferredBy: TLabel
            Left = 30
            Top = 47
            Width = 63
            Height = 15
            Caption = 'Referred By:'
            Transparent = True
          end
          object lblMaintainer: TLabel
            Left = 31
            Top = 74
            Width = 60
            Height = 15
            Caption = 'Maintainer:'
            Transparent = True
          end
          object edMaintainer: TEdit
            Left = 123
            Top = 68
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 0
          end
          object edReferredBy: TEdit
            Left = 123
            Top = 42
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 1
          end
          object edReferralType: TEdit
            Left = 123
            Top = 16
            Width = 276
            Height = 23
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
      object tsOtherNames: TcxTabSheet
        Caption = 'Child Records'
        ImageIndex = 12
        OnShow = tsOtherNamesShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdOtherNames: TcxGrid
          Left = 0
          Top = 0
          Width = 1141
          Height = 512
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object grdOtherNamesDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsListChildren
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.IndicatorWidth = 11
            object grdOtherNamesDBTableView1NNAME: TcxGridDBColumn
              DataBinding.FieldName = 'NNAME'
              Visible = False
              MinWidth = 18
            end
            object grdOtherNamesDBTableView1NAME: TcxGridDBColumn
              Caption = 'Name'
              DataBinding.FieldName = 'NAME'
              MinWidth = 18
              Options.Filtering = False
              Width = 311
            end
            object grdOtherNamesDBTableView1SEARCH: TcxGridDBColumn
              Caption = 'Search'
              DataBinding.FieldName = 'SEARCH'
              MinWidth = 18
              Options.Filtering = False
              Width = 296
            end
          end
          object grdOtherNamesLevel1: TcxGridLevel
            GridView = grdOtherNamesDBTableView1
          end
        end
      end
      object tsDocuments: TcxTabSheet
        Caption = 'Documents'
        ImageIndex = 13
        object grdDocs: TcxGrid
          Left = 0
          Top = 0
          Width = 1141
          Height = 480
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvDocs: TcxGridDBBandedTableView
            OnDblClick = tvDocsDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDocs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 11
            Bands = <
              item
                Width = 147
              end
              item
                Caption = 'Document Created'
                Width = 190
              end
              item
                Width = 107
              end
              item
                Caption = 'Document Modified'
                Width = 158
              end
              item
                Caption = 'EMail'
                Width = 290
              end
              item
                Width = 290
              end>
            object tvDocsIMAGEINDEX: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'IMAGEINDEX'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ilstDocuments
              Properties.Items = <
                item
                  Description = 'Workflow'
                  ImageIndex = 3
                  Value = 1
                end
                item
                  Description = 'Word (doc)'
                  ImageIndex = 2
                  Value = 2
                end
                item
                  Description = 'Excel (xsl)'
                  ImageIndex = 0
                  Value = 3
                end
                item
                  Description = 'Email (msg)'
                  ImageIndex = 4
                  Value = 4
                end
                item
                  Description = 'Unknown'
                  ImageIndex = 5
                end
                item
                  Description = 'PDF'
                  ImageIndex = 1
                  Value = 5
                end
                item
                  Description = 'Internet URL'
                  ImageIndex = 6
                  Value = 6
                end>
              Properties.ShowDescriptions = False
              MinWidth = 29
              Options.HorzSizing = False
              Width = 29
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tvDocsDOC_NAME: TcxGridDBBandedColumn
              Caption = 'Document Name'
              DataBinding.FieldName = 'DOC_NAME'
              MinWidth = 18
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tvDocsD_CREATE: TcxGridDBBandedColumn
              Caption = 'On'
              DataBinding.FieldName = 'D_CREATE'
              MinWidth = 18
              Width = 97
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tvDocsAUTH1: TcxGridDBBandedColumn
              Caption = 'By'
              DataBinding.FieldName = 'AUTH1'
              MinWidth = 18
              Width = 54
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tvDocsDESCR: TcxGridDBBandedColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              MinWidth = 18
              Width = 86
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tvDocsD_MODIF: TcxGridDBBandedColumn
              Caption = 'On'
              DataBinding.FieldName = 'D_MODIF'
              MinWidth = 18
              Width = 96
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tvDocsAUTH2: TcxGridDBBandedColumn
              Caption = 'By'
              DataBinding.FieldName = 'AUTH2'
              MinWidth = 18
              Width = 30
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tvDocsEMAIL_SENT_TO: TcxGridDBBandedColumn
              Caption = 'Sent To'
              DataBinding.FieldName = 'EMAIL_SENT_TO'
              MinWidth = 18
              Width = 170
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tvDocsEMAIL_FROM: TcxGridDBBandedColumn
              Caption = 'From'
              DataBinding.FieldName = 'EMAIL_FROM'
              MinWidth = 18
              Width = 173
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tvDocsKEYWORDS: TcxGridDBBandedColumn
              Caption = 'Keywords'
              DataBinding.FieldName = 'KEYWORDS'
              MinWidth = 18
              Width = 86
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tvDocsDOC_NOTES: TcxGridDBBandedColumn
              Caption = 'Notes'
              DataBinding.FieldName = 'DOC_NOTES'
              MinWidth = 18
              Width = 138
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tvDocsEXTERNAL_ACCESS: TcxGridDBBandedColumn
              Caption = 'Portal Access'
              DataBinding.FieldName = 'EXTERNAL_ACCESS'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              MinWidth = 66
              Width = 66
              Position.BandIndex = 5
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object tvDocsDOCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DOCID'
              Visible = False
              MinWidth = 18
              VisibleForCustomization = False
              Width = 18
              Position.BandIndex = 5
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object tvDocsSEARCH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SEARCH'
              Visible = False
              MinWidth = 18
              VisibleForCustomization = False
              Width = 119
              Position.BandIndex = 5
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object tvDocsIs_Conflict: TcxGridDBBandedColumn
              Caption = 'Conflict Search'
              DataBinding.FieldName = 'Is_conflict'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              MinWidth = 15
              Position.BandIndex = 5
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object tvDocsDOCUMENT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DOCUMENT'
              Visible = False
              MinWidth = 14
              VisibleForCustomization = False
              Width = 38
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object lvDocs: TcxGridLevel
            GridView = tvDocs
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 480
          Width = 1141
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            1141
            32)
          object btnDocDelete: TBitBtn
            Left = 967
            Top = 5
            Width = 81
            Height = 26
            Anchors = [akRight, akBottom]
            Caption = '&Delete'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333333333333333333333333333333333F3333333333333
              30F33333F333333337333330F333333333333337FF3333333F3333000F333333
              0F3333777F333333733333000F333330F33333777FF33337F333333000F33300
              F333333777FF337733333333000F300F33333333777FF77333333333300000F3
              33333333377777333333333333000F333333333333777FF333333333300000F3
              33333333377777F333333333000F30F33333333F7773373FF333330000F33300
              F333337777333377FF3330000F3333300F333777733333377FF3300F33333333
              00F3377333333333773333333333333333333333333333333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = btnDocDeleteClick
          end
          object btnPrecSearch: TBitBtn
            Left = 1052
            Top = 5
            Width = 80
            Height = 26
            Anchors = [akRight, akBottom]
            Caption = '&Search'
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
            TabOrder = 1
          end
          object btnDocAdd: TBitBtn
            Left = 886
            Top = 5
            Width = 80
            Height = 26
            Anchors = [akRight, akBottom]
            Caption = '&Add'
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
              0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
              0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
              8888880FFFFFF008888888000000008888888888888888888888}
            TabOrder = 2
            OnClick = btnDocAddClick
          end
          object btnDocEdit: TcxButton
            Left = 802
            Top = 5
            Width = 81
            Height = 26
            Anchors = [akRight, akBottom]
            Caption = '&Edit'
            LookAndFeel.Kind = lfStandard
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF003333
              CCFF3333CCFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3399
              FFFF3399FFFF3399FFFF3333CCFF3333CCFF3333CCFFFFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3399FFFF66CC
              FFFF3399FFFF3399FFFF3399FFFF3399FFFF3399FFFF3333CCFF3333CCFF3333
              CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF6699FFFF66CC
              FFFF6699FFFF6699FFFF6699CCFF6699CCFF6699FFFF3399FFFF3399FFFF3399
              FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
              FFFF3399FFFF6699CCFF996633FF996633FF996633FF6699CCFF66CCFFFF66CC
              FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF6699FFFF3399
              FFFF3399FFFF3399FFFF969696FFFFCC99FFFF9966FF996633FF996633FF9966
              33FF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
              FFFF3399FFFF3399FFFF3399FFFF3399CCFF999999FFFFCC99FFFFCC66FFFF99
              33FFCC6633FFCC6633FFFFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
              FFFF3366FFFF3399FFFF3399FFFF3399FFFF3399FFFF3399CCFF999999FFFFCC
              99FFFFCC99FFFF9966FFCC6633FFCC6633FFFFFFFF003333CCFF66CCFFFF3399
              FFFF3399FFFF3366FFFF6699FFFF6699FFFF3399FFFF3399FFFF3399CCFFCC66
              33FFCC6633FFFFCC99FFFFCC99FFFFCC99FFCC6633FF3333CCFF66CCFFFF66CC
              FFFF3399FFFF3366FFFF99CCFFFFF8F8F8FFD6E7E7FFC6D6EFFF66CCFFFF3399
              CCFF666699FFCC6633FFCC6633FFCC6633FFCC6633FF3333CCFF66CCFFFF3399
              FFFF3366FFFF3366FFFF66CCFFFF99CCFFFFCCFFFFFFFFFFCCFFC6D6EFFF3399
              FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF3399
              FFFF3399FFFF3366FFFF3366FFFF0066FFFF3366FFFF3399FFFF6699FFFF3399
              FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF66CCFFFF99CC
              FFFFCCFFFFFFC6D6EFFF99CCFFFF66CCFFFF6699FFFF3399FFFF3399FFFF3399
              FFFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3333
              CCFF3333CCFF6699CCFF6699FFFF99CCFFFF66CCFFFF99CCFFFF66CCFFFF3333
              CCFF3333CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF003333CCFF3333CCFF3333CCFFC6D6EFFF99CCFFFF3333CCFFFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333CCFF3333CCFF3333CCFFFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            OptionsImage.Spacing = 5
            TabOrder = 3
            OnClick = btnDocEditClick
          end
          object btnDocPrint: TcxButton
            Left = 700
            Top = 5
            Width = 100
            Height = 26
            Anchors = [akRight, akBottom]
            Caption = 'Print Doc List'
            LookAndFeel.Kind = lfStandard
            OptionsImage.Spacing = 5
            TabOrder = 4
            OnClick = btnDocPrintClick
          end
          object edDocSearch: TcxTextEdit
            Left = 173
            Top = 6
            Properties.OnChange = edDocSearchPropertiesChange
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            Width = 237
          end
          object cbGroupExpanded: TcxCheckBox
            Left = 417
            Top = 6
            Caption = 'When grouped, maintain grouping expanded.'
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 6
          end
          object cxLabel3: TcxLabel
            Left = 0
            Top = 6
            Caption = 'Search Name or description:'
            Transparent = True
          end
        end
      end
      object tsContactNotes: TcxTabSheet
        Caption = 'Contact Notes'
        ImageIndex = 14
        TabVisible = False
        object ContactNotesDock: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1141
          Height = 28
          Align = dalTop
          BarManager = dxBarManager1
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 28
          Width = 1141
          Height = 484
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsContactNotes
            DataController.KeyFieldNames = 'NDIARY'
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
            OptionsView.IndicatorWidth = 11
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Create Date'
              DataBinding.FieldName = 'CREATION_DATE'
              MinWidth = 18
              Width = 80
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Date Time'
              DataBinding.FieldName = 'START_DT'
              MinWidth = 18
              Width = 75
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Entered By'
              DataBinding.FieldName = 'ENTEREDBY'
              MinWidth = 18
              Width = 89
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Note'
              DataBinding.FieldName = 'DESCR'
              MinWidth = 18
              Width = 596
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object tsContacts: TcxTabSheet
        Caption = 'Contacts'
        ImageIndex = 14
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  object pTopInfo: TPanel
    Left = 0
    Top = 28
    Width = 1164
    Height = 168
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 5
      Top = 56
      Width = 507
      Height = 3
      Shape = bsTopLine
    end
    object lLongName: TLabel
      Left = 45
      Top = 117
      Width = 65
      Height = 15
      Alignment = taRightJustify
      Caption = 'Long Name:'
    end
    object lShortName: TLabel
      Left = 44
      Top = 91
      Width = 66
      Height = 15
      Alignment = taRightJustify
      Caption = 'Short Name:'
    end
    object lName: TLabel
      Left = 18
      Top = 65
      Width = 92
      Height = 15
      Alignment = taRightJustify
      Caption = 'Name/Company:'
    end
    object lNamed: TLabel
      Left = 69
      Top = 33
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Named:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lGender: TLabel
      Left = 39
      Top = 6
      Width = 71
      Height = 15
      Alignment = taRightJustify
      Caption = 'Type/Gender:'
    end
    object Bevel1: TBevel
      Left = 510
      Top = 11
      Width = 2
      Height = 155
      Shape = bsLeftLine
    end
    object lPhone: TLabel
      Left = 513
      Top = 7
      Width = 42
      Height = 32
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Contact Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object lPhoneHome: TLabel
      Left = 586
      Top = 106
      Width = 36
      Height = 15
      Alignment = taRightJustify
      Caption = 'Home:'
    end
    object lPhoneWork: TLabel
      Left = 591
      Top = 6
      Width = 31
      Height = 15
      Alignment = taRightJustify
      Caption = 'Work:'
    end
    object lPhoneMobile: TLabel
      Left = 582
      Top = 32
      Width = 40
      Height = 15
      Alignment = taRightJustify
      Caption = 'Mobile:'
    end
    object lPhoneFax: TLabel
      Left = 602
      Top = 82
      Width = 20
      Height = 15
      Alignment = taRightJustify
      Caption = 'Fax:'
    end
    object lPhoneDirect: TLabel
      Left = 587
      Top = 57
      Width = 34
      Height = 15
      Alignment = taRightJustify
      Caption = 'Direct:'
    end
    object Bevel11: TBevel
      Left = 806
      Top = 11
      Width = 2
      Height = 116
      Shape = bsLeftLine
    end
    object Label22: TLabel
      Left = 827
      Top = 24
      Width = 44
      Height = 15
      Caption = 'Created:'
    end
    object DBText1: TDBText
      Left = 879
      Top = 24
      Width = 41
      Height = 15
      AutoSize = True
      DataField = 'CREATED'
      DataSource = dsPhoneBook
    end
    object Label25: TLabel
      Left = 65
      Top = 146
      Width = 45
      Height = 15
      Alignment = taRightJustify
      Caption = 'Contact:'
    end
    object eLongName: TDBEdit
      Left = 114
      Top = 115
      Width = 386
      Height = 23
      Color = clInfoBk
      DataField = 'LONGNAME'
      DataSource = dsPhoneBook
      TabOrder = 0
    end
    object eShortName: TDBEdit
      Left = 114
      Top = 89
      Width = 386
      Height = 23
      Color = clInfoBk
      DataField = 'SHORTNAME'
      DataSource = dsPhoneBook
      TabOrder = 1
    end
    object eName: TDBEdit
      Left = 114
      Top = 61
      Width = 386
      Height = 23
      Color = clInfoBk
      DataField = 'NAME'
      DataSource = dsPhoneBook
      TabOrder = 2
    end
    object eLastName: TDBEdit
      Left = 347
      Top = 29
      Width = 151
      Height = 23
      Color = clInfoBk
      DataField = 'LASTNAME'
      DataSource = dsPhoneBook
      TabOrder = 3
    end
    object eGivenNames: TDBEdit
      Left = 182
      Top = 29
      Width = 162
      Height = 23
      Color = clInfoBk
      DataField = 'GIVENNAMES'
      DataSource = dsPhoneBook
      TabOrder = 4
    end
    object eSalutation: TDBEdit
      Left = 114
      Top = 29
      Width = 65
      Height = 23
      Color = clInfoBk
      DataField = 'SALUTATION'
      DataSource = dsPhoneBook
      TabOrder = 5
    end
    object ePhoneHome: TDBEdit
      Left = 629
      Top = 104
      Width = 171
      Height = 23
      Color = clInfoBk
      DataField = 'HOMEPHONE'
      DataSource = dsPhoneBook
      TabOrder = 7
    end
    object ePhoneWork: TDBEdit
      Left = 629
      Top = 3
      Width = 171
      Height = 23
      Color = clInfoBk
      DataField = 'WORKPHONE'
      DataSource = dsPhoneBook
      TabOrder = 8
    end
    object ePhoneMobile: TDBEdit
      Left = 629
      Top = 29
      Width = 171
      Height = 23
      Color = clInfoBk
      DataField = 'MOBILE'
      DataSource = dsPhoneBook
      TabOrder = 9
    end
    object ePhoneFax: TDBEdit
      Left = 629
      Top = 79
      Width = 171
      Height = 23
      Color = clInfoBk
      DataField = 'FAX'
      DataSource = dsPhoneBook
      TabOrder = 10
    end
    object cbGender: TDBEdit
      Left = 114
      Top = 3
      Width = 171
      Height = 23
      Color = clInfoBk
      DataField = 'GENDER_DESCR'
      DataSource = dsPhoneBook
      TabOrder = 6
    end
    object cxDBLabel1: TcxDBLabel
      Left = 347
      Top = 2
      DataBinding.DataField = 'NNAME'
      DataBinding.DataSource = dsPhoneBook
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = dmAxiom.LabelStyle
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsFlat
      StyleHot.BorderStyle = ebsFlat
      Height = 23
      Width = 150
      AnchorY = 14
    end
    object ePhoneDirect: TDBEdit
      Left = 629
      Top = 54
      Width = 171
      Height = 23
      Color = clInfoBk
      DataField = 'DIRECTPHONE'
      DataSource = dsPhoneBook
      TabOrder = 12
    end
    object eContactName: TDBEdit
      Left = 114
      Top = 143
      Width = 386
      Height = 23
      Color = clInfoBk
      DataField = 'CONTACT'
      DataSource = dsPhoneBook
      TabOrder = 13
    end
  end
  object ImageList: TImageList
    Left = 642
    Top = 70
    Bitmap = {
      494C010125002900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFF000000000000FE3F000000000000
      F81F000000000000F40F000000000000E0070000000000008003000000000000
      4001000000000000000000000000000000000000000000008001000000000000
      C003000000000000E00F000000000000F07F000000000000F8FF000000000000
      FFFF000000000000FFFF000000000000F80FF03F803FE001E007E007803FC000
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
  object qPhoneBook: TUniQuery
    SQLDelete.Strings = (
      'delete from phonebook where nname = :nname')
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
      '  p.Archived,'
      
        '  NVL(p.whichemailaddress, m.whichemailaddress) as whichemailadd' +
        'ress,'
      '  NVL(P.EMAIL1, M.EMAIL1) as EMAIL1,'
      '  NVL(P.EMAIL2, M.EMAIL2) as EMAIL2,'
      
        '  NVL(P.RELATIONSHIP_TYPE, M.RELATIONSHIP_TYPE) as RELATIONSHIP_' +
        'TYPE,'
      
        '  NVL(P.RELATIONSHIP_STATUS, M.RELATIONSHIP_STATUS) as RELATIONS' +
        'HIP_STATUS,'
      
        '  NVL(P.RELATIONSHIP_ACTION, M.RELATIONSHIP_ACTION) as RELATIONS' +
        'HIP_ACTION,'
      '  NVL(P.FIRM_SIZE, M.FIRM_SIZE) as FIRM_SIZE,'
      '  NVL(P.SYSTEM1, M.SYSTEM1) as SYSTEM1,'
      '  NVL(P.SYSTEM2, M.SYSTEM2) as SYSTEM2,'
      '  NVL(P.TURNOVER, M.TURNOVER) as TURNOVER,'
      '  P.IS_CLIENT,'
      '  P.IS_CREDITOR,'
      '  P.NCREDITOR,'
      '  NVL(P.DIRECTPHONE, M.DIRECTPHONE) as DIRECTPHONE,'
      '  P.CREATED, P.CLIENTTITLE, P.CLIENTNAME,'
      '  NVL(P.CONTACT, M.CONTACT) AS CONTACT,'
      '  NVL(P.CONTACT_NAME, M.CONTACT_NAME) as CONTACT_NAME,'
      
        '  NVL(P.additional_contact_name, M.additional_contact_name) as A' +
        'DDITIONAL_CONTACT_NAME,'
      '  P.NRIC,'
      '  P.PASSPORT_NO'
      'FROM'
      '  phonebook p, gender g,'
      '  phonebook m'
      'WHERE'
      '  g.code(+) = p.gender'
      'AND'
      '  p.nname = :nname'
      'AND'
      '  p.nnamemaster = m.nname (+)')
    AfterScroll = qPhoneBookAfterScroll
    Left = 1151
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsPhoneBook: TUniDataSource
    AutoEdit = False
    DataSet = qPhoneBook
    Left = 1172
    Top = 383
  end
  object qGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT  /*+ first_rows */ distinct g.category, '
      
        '  decode(g.otherparty,'#39'Y'#39','#39'Yes'#39','#39'No'#39') as otherparty, g.actingfor' +
        ', g.fieldname'
      'FROM'
      '  pbgroup g, pbgroupings p'
      'WHERE'
      '  g.category = p.category(+)'
      'AND p.nname = :nname'
      'ORDER BY g.category ')
    Left = 758
    Top = 146
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qGroupsCATEGORY: TStringField
      DisplayLabel = 'Group'
      FieldName = 'CATEGORY'
      Size = 25
    end
    object qGroupsOTHERPARTY: TStringField
      DisplayLabel = 'Other Party'
      FieldName = 'OTHERPARTY'
      Size = 1
    end
    object qGroupsACTINGFOR: TStringField
      FieldName = 'ACTINGFOR'
      Size = 1
    end
    object qGroupsFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 32
    end
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
      '  f.nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party'
      'FROM'
      '  fieldtypelink f,'
      '  fieldtype t,'
      '  dataformfield d,'
      '  dataform g'
      'WHERE'
      '  t.name = f.fieldname'
      '  AND d.dataform = g.code'
      '  AND d.fieldname = t.name'
      '  AND f.linktable = g.code'
      '  AND f.nunique = :nunique'
      '  AND f.nunique2 IS NULL'
      '  AND g.party = :partytype'
      '  AND g.partyismatterspecific = '#39'N'#39
      'UNION'
      'SELECT'
      '  d.seq,'
      '  t.name AS fieldname,'
      '  t.caption,'
      '  t.type,'
      '  NULL AS textvalue,'
      '  -1 AS nunique,'
      '  -1 AS nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party'
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
      '      AND d.dataform = g.code'
      '      AND g.party = :partytype'
      '      AND d.fieldname = t.NAME'
      '      AND f.linktable = g.code'
      '      AND f.nunique = :nunique'
      '      AND f.nunique2 IS NULL'
      '      AND g.partyismatterspecific = '#39'N'#39
      '  )'
      '  AND g.partyismatterspecific = '#39'N'#39
      'ORDER BY dataform, seq')
    Left = 896
    Top = 397
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
    object qDataFieldsFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 40
    end
    object qDataFieldsCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 120
    end
    object qDataFieldsTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
    object qDataFieldsTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qDataFieldsDATAFORM: TStringField
      FieldName = 'DATAFORM'
      Size = 32
    end
    object qDataFieldsPARTY: TStringField
      FieldName = 'PARTY'
      Size = 25
    end
    object qDataFieldsDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      Size = 60
    end
    object qDataFieldsSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object qDataFieldsNUNIQUE: TFloatField
      FieldName = 'NUNIQUE'
    end
    object qDataFieldsNUNIQUE2: TFloatField
      FieldName = 'NUNIQUE2'
    end
  end
  object qMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  m.nmatter,'
      '  m.fileid,'
      '  m.shortdescr'
      'FROM'
      '  matterparty mp, matter m'
      'WHERE'
      '  m.nmatter = mp.nmatter'
      'AND mp.nname = :nname'
      'AND mp.category = :partytype'
      'ORDER BY m.nmatter')
    Left = 898
    Top = 179
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end>
    object qMattersFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
    end
    object qMattersSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qMattersNMATTER: TLargeintField
      FieldName = 'NMATTER'
      ReadOnly = True
      Required = True
    end
  end
  object qDeleteCheck: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      
        '(SELECT COUNT(*) FROM CLIENT             WHERE search IN (SELECT' +
        ' search FROM PHONEBOOK WHERE nname =  :nname)) +'
      '(SELECT COUNT(*) FROM CREDITOR           WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM A_CHEQUE           WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM A_RECEIPT          WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM CHEQUE             WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM CREDITOR           WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM MATTER             WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM MATTERPARTY        WHERE nname = :nname) +'
      '(SELECT COUNT(*) FROM RECEIPT            WHERE nname = :nname)'
      'AS total FROM dual')
    Left = 841
    Top = 154
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qDeleteCheckTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object qRecent: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT o.*, p.search, p.nname'
      'FROM openlist o, phonebook p'
      'WHERE o.author = :author'
      '  AND o.type = '#39'PHONEBOOK'#39
      '  AND p.nname = o.code'
      'ORDER BY idx')
    Left = 896
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
    object qRecentAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qRecentTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qRecentCODE: TStringField
      FieldName = 'CODE'
      Size = 60
    end
    object qRecentSEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qRecentNNAME: TLargeintField
      FieldName = 'NNAME'
      ReadOnly = True
      Required = True
    end
    object qRecentIDX: TSmallintField
      FieldName = 'IDX'
    end
  end
  object qRelationships: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  r.forward, r.relationship, pb.search as backward, r.rowid, '#39'Y'#39 +
        ' as deleteable, r.backwardCategory, r.backwardSeq,'
      
        '  r.forwardCategory, r.forwardSeq, r.linkTable, r.nunique, r.bac' +
        'kward as search, r.nchild, address'
      'FROM'
      '  relationship r, phonebook pb'
      'WHERE'
      '  r.nparent = :search'
      'AND'
      '  pb.nname = r.nchild'
      'UNION'
      
        '  SELECT null, '#39'Parent'#39' as relationship, search as backward, row' +
        'id, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'FROM '
      '  PHONEBOOK'
      'where'
      ' nname = :nnamemaster'
      'UNION'
      
        '  SELECT null, '#39'Child'#39' as relationship, search as backward, rowi' +
        'd, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'from'
      '  phonebook'
      'where'
      '  nnamemaster = :nname '
      'ORDER BY relationship, backward')
    Left = 825
    Top = 62
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'search'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nnamemaster'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qRelationshipsFORWARD: TStringField
      FieldName = 'FORWARD'
      Size = 85
    end
    object qRelationshipsRELATIONSHIP: TStringField
      FieldName = 'RELATIONSHIP'
      Size = 35
    end
    object qRelationshipsBACKWARD: TStringField
      FieldName = 'BACKWARD'
      Size = 85
    end
    object qRelationshipsROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qRelationshipsDELETEABLE: TStringField
      FieldName = 'DELETEABLE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qRelationshipsBACKWARDCATEGORY: TStringField
      FieldName = 'BACKWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsFORWARDCATEGORY: TStringField
      FieldName = 'FORWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
    end
    object qRelationshipsSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Size = 85
    end
    object qRelationshipsADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipsBACKWARDSEQ: TFloatField
      FieldName = 'BACKWARDSEQ'
    end
    object qRelationshipsFORWARDSEQ: TFloatField
      FieldName = 'FORWARDSEQ'
    end
    object qRelationshipsNUNIQUE: TLargeintField
      FieldName = 'NUNIQUE'
    end
    object qRelationshipsNCHILD: TLargeintField
      FieldName = 'NCHILD'
    end
  end
  object dsRelationships: TUniDataSource
    AutoEdit = False
    DataSet = qRelationships
    Left = 810
    Top = 116
  end
  object dsGroups: TUniDataSource
    AutoEdit = False
    DataSet = qGroups
    Left = 743
    Top = 271
  end
  object qMatterDataFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  p.nmatter,'
      '  p.dataform,'
      '  p.dataformcaption,'
      '  p.seq,'
      '  p.fieldname,'
      '  p.fieldtype,'
      '  k.textvalue,'
      '  DECODE(k.fieldname,NULL,'#39'T'#39','#39'F'#39') AS new,'
      '  p.caption,'
      '  m.fileid,'
      '  m.shortdescr AS matterdesc'
      'FROM'
      '  ('
      '    SELECT'
      '      z.nmatter,'
      '      z.dataform,'
      '      z.dataformcaption,'
      '      y.seq,'
      '      y.fieldname,'
      '      y.type AS fieldtype,'
      '      y.caption'
      '    FROM'
      '      ('
      '        SELECT'
      '          UNIQUE(f.nunique2) AS nmatter,'
      '          g.code AS dataform,'
      '          g.caption AS dataformcaption'
      '        FROM'
      '          fieldtypelink f,'
      '          dataform g'
      '        WHERE'
      '          f.linktable = g.code AND'
      '          g.party = :partytype AND'
      '          g.partyismatterspecific ='#39'Y'#39' AND'
      '          f.nunique = :nunique'
      '        UNION'
      '        SELECT'
      '          m.nmatter,'
      '          g.code AS dataform,'
      '          g.caption AS dataformcaption'
      '        FROM'
      '          matterparty p,'
      '          matter m,'
      '          dataform g'
      '        WHERE'
      '          p.nname = :nunique AND'
      '          m.nmatter = p.nmatter AND'
      '          g.party = :partytype AND'
      '          g.partyismatterspecific ='#39'Y'#39' AND'
      
        '          (g.workflowtypecode IS NULL OR g.workflowtypecode = m.' +
        'workflow)'
      '        ORDER BY nmatter, dataform'
      '      ) z,'
      '      ('
      '        SELECT'
      '          d.fieldname,'
      '          d.dataform,'
      '          d.seq,'
      '          t.type,'
      '          t.caption'
      '        FROM'
      '          dataformfield d,'
      '          fieldtype t'
      '        WHERE'
      '          t.name = d.fieldname'
      '        ORDER BY dataform,fieldname,seq'
      '      ) y'
      '    WHERE'
      '      y.dataform = z.dataform'
      '    ORDER BY nmatter, dataform, seq'
      '  ) p,'
      '  ('
      '    SELECT'
      '      nunique AS nname,'
      '      nunique2 AS nmatter,'
      '      fieldname,'
      '      textvalue,'
      '      linktable AS dataform'
      '    FROM'
      '      fieldtypelink'
      '    WHERE'
      '      nunique = :nunique AND'
      '      nunique2 IS NOT NULL'
      '    ORDER BY nname, nmatter, dataform, fieldname'
      '  ) k,'
      '  matter m'
      'WHERE'
      '  p.nmatter = k.nmatter(+) AND'
      '  p.dataform = k.dataform(+) AND'
      '  p.fieldname = k.fieldname(+) AND'
      '  m.nmatter = p.nmatter'
      'ORDER BY p.dataform, p.nmatter, p.seq'
      ''
      '')
    Left = 894
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'partytype'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nunique'
        Value = nil
      end>
    object qMatterDataFieldsDATAFORM: TStringField
      FieldName = 'DATAFORM'
      Size = 32
    end
    object qMatterDataFieldsFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 32
    end
    object qMatterDataFieldsFIELDTYPE: TStringField
      FieldName = 'FIELDTYPE'
      Size = 2
    end
    object qMatterDataFieldsTEXTVALUE: TStringField
      FieldName = 'TEXTVALUE'
      Size = 2000
    end
    object qMatterDataFieldsCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 120
    end
    object qMatterDataFieldsFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
    end
    object qMatterDataFieldsMATTERDESC: TStringField
      FieldName = 'MATTERDESC'
      Size = 60
    end
    object qMatterDataFieldsDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      Size = 60
    end
    object qMatterDataFieldsNEW: TStringField
      FieldName = 'NEW'
      Size = 1
    end
    object qMatterDataFieldsNMATTER: TFloatField
      FieldName = 'NMATTER'
      ReadOnly = True
    end
    object qMatterDataFieldsSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
  end
  object dsContactNotes: TUniDataSource
    AutoEdit = False
    DataSet = qContactNotes
    Left = 709
    Top = 114
  end
  object qContactNotes: TUniQuery
    UpdatingTable = 'DIARY'
    KeyFields = 'ndiary'
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
      'and '
      '  e.code = d.entered_by')
    Left = 356
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 934
    Top = 296
  end
  object strPhoneBook: TStringz
    Strings.Strings = (
      'SELECT p.rowid, p.*,'
      '  g.descr                AS gender_descr,'
      '  g.searchcaption        AS gender_searchcaption,'
      '  g.namecaption          AS gender_namecaption,'
      '  g.longnamecaption      AS gender_longnamecaption,'
      '  g.shortnamecaption     AS gender_shortnamecaption,'
      '  g.titlecaption         AS gender_titlecaption,'
      '  g.acncaption           AS gender_acncaption,'
      '  g.occupationcaption    AS gender_occupationcaption,'
      '  g.clientnamecaption    AS gender_clientnamecaption,'
      '  g.clientcontactcaption AS gender_clientcontactcaption'
      'FROM'
      '  phonebook p, gender g'
      'WHERE'
      '  g.code(+) = p.gender'
      'AND'
      '  p.search = :search')
    Left = 419
    Top = 103
  end
  object strCheckForMasterLink: TStringz
    Strings.Strings = (
      'SELECT'
      '  P.NNAMEMASTER AS MASTER,'
      '  P.SHORTNAME AS CHILDSHORTNAME,'
      '  M.SHORTNAME AS PARENTSHORTNAME, '
      '  P.NAME AS CHILDNAME,'
      '  M.NAME AS PARENTNAME,'
      '  P.LONGNAME AS CHILDLONGNAME,'
      '  M.LONGNAME AS PARENTLONGNAME,'
      '  P.HOMEPHONE AS CHILDHOMEPHONE,'
      '  M.HOMEPHONE AS PARENTHOMEPHONE,'
      '  P.WORKPHONE AS CHILDWORKPHONE,'
      '  M.WORKPHONE AS PARENTWORKPHONE,'
      '  P.MOBILE AS CHILDMOBILE,'
      '  M.MOBILE AS PARENTMOBILE,'
      '  P.FAX AS CHILDFAX,'
      '  M.FAX AS PARENTFAX,'
      ''
      '  P.ADDRESS AS CHILDADDRESS,'
      '  M.ADDRESS AS PARENTADDRESS,'
      ''
      '  DECODE(P.SUBURB, NULL, P.SUBURB, '#39'SUBURB'#39') AS CHILDSUBURB,'
      '  M.SUBURB AS PARENTSUBURB,'
      '  DECODE(P.STATE, NULL, P.STATE, '#39'STATE'#39') AS CHILDSTATE,'
      '  M.STATE AS PARENTSTATE,'
      
        '  DECODE(P.POSTCODE, NULL, P.POSTCODE, '#39'POSTCODE'#39') AS CHILDPOSTC' +
        'ODE,'
      '  M.POSTCODE AS PARENTPOSTCODE,'
      '  DECODE(P.COUNTRY, NULL, P.COUNTRY, '#39'COUNTRY'#39') AS CHILDCOUNTRY,'
      '  M.COUNTRY AS PARENTCOUNTRY, '
      ''
      '  P.DX AS CHILDDX,'
      '  M.DX AS PARENTDX,'
      '  P.DXLOC AS CHILDDXLOC,'
      '  M.DXLOC AS PARENTDXLOC,'
      ''
      '  P.POSTALADDRESS AS CHILDPOSTALADDRESS,'
      '  M.POSTALADDRESS AS PARENTPOSTALADDRESS,'
      ''
      
        '  DECODE(P.POSTALSUBURB, NULL, P.POSTALSUBURB, '#39'POSTALSUBURB'#39') A' +
        'S CHILDPOSTALSUBURB,'
      '  M.POSTALSUBURB AS PARENTPOSTALSUBURB,'
      
        '  DECODE(P.POSTALSTATE, NULL, P.POSTALSTATE, '#39'POSTALSTATE'#39') AS C' +
        'HILDPOSTALSTATE,'
      '  M.POSTALSTATE AS PARENTPOSTALSTATE,'
      
        '  DECODE(P.POSTALPOSTCODE, NULL, P.POSTALPOSTCODE, '#39'POSTALPOSTCO' +
        'DE'#39') AS CHILDPOSTALPOSTCODE,'
      '  M.POSTALPOSTCODE AS PARENTPOSTALPOSTCODE,'
      
        '  DECODE(P.POSTALCOUNTRY, NULL, P.POSTALCOUNTRY, '#39'POSTALCOUNTRY'#39 +
        ') AS CHILDPOSTALCOUNTRY,'
      '  M.POSTALCOUNTRY AS PARENTPOSTALCOUNTRY,'
      ''
      '  P.CUST_ADDRESS AS CHILDCUSTADDRESS,'
      '  M.CUST_ADDRESS AS PARENTCUSTADDRESS,'
      ''
      
        '  DECODE(P.CUST_SUBURB, NULL, P.CUST_SUBURB, '#39'CUSTSUBURB'#39') AS CH' +
        'ILDCUSTSUBURB,'
      '  M.CUST_SUBURB AS PARENTCUSTSUBURB,'
      
        '  DECODE(P.CUST_STATE, NULL, P.CUST_STATE, '#39'CUSTSTATE'#39') AS CHILD' +
        'CUSTSTATE,'
      '  M.CUST_STATE AS PARENTCUSTSTATE,'
      
        '  DECODE(P.CUST_POSTCODE, NULL, P.CUST_POSTCODE, '#39'CUSTPOSTCODE'#39')' +
        ' AS CHILDCUSTPOSTCODE,'
      '  M.CUST_POSTCODE AS PARENTCUSTPOSTCODE,'
      
        '  DECODE(P.CUST_COUNTRY, NULL, P.CUST_COUNTRY, '#39'CUSTCOUNTRY'#39') AS' +
        ' CHILDCUSTCOUNTRY,'
      '  M.CUST_COUNTRY AS PARENTCUSTCOUNTRY,'
      ''
      '  P.EMAIL AS CHILDEMAIL,'
      '  M.EMAIL AS PARENTEMAIL,'
      '  P.WWW AS CHILDWWW,'
      '  M.WWW AS PARENTWWW,'
      '  P.SALUTATION AS CHILDSALUTATION,'
      '  M.SALUTATION AS PARENTSALUTATION,'
      '  P.GIVENNAMES AS CHILDGIVENNAMES,'
      '  M.GIVENNAMES AS PARENTGIVENNAMES,'
      '  P.LASTNAME AS CHILDLASTNAME,'
      '  M.LASTNAME AS PARENTLASTNAME'
      'FROM'
      '  phonebook p,'
      '  phonebook m'
      'WHERE'
      '  p.search = :search'
      'AND'
      '  p.nnamemaster = m.nname (+)')
    Left = 462
    Top = 256
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 566
    Top = 267
    PixelsPerInch = 96
    object styAlternateColor: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
  end
  object qryReferral: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 585
    Top = 619
  end
  object qryPhoneBookInterest: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT i.interest'
      'FROM PhoneBookInterest p, MarketInterest i'
      'WHERE p.nname = :p_nname'
      'AND   p.interestcode = i.code')
    Left = 633
    Top = 586
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nname'
        Value = nil
      end>
  end
  object qryMarketing: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 577
    Top = 680
  end
  object qryIndustry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, industry, descr'
      'FROM MarketIndustry')
    Left = 685
    Top = 558
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name'
      'FROM employee')
    Left = 574
    Top = 583
  end
  object qryParticipantEvents: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select ep.event_part_id,e.event,e.event_date,e.event_time,'
      'ep.attended,ep.accepted,ep.declined,ep.printed,p.search,'
      'ep.notes'
      'from'
      'event e, event_participant ep, phonebook p'
      'where e.event_id = ep.event_id'
      'and ep.nname = :nname'
      'and ep.alt_name = p.nname (+)')
    Left = 669
    Top = 410
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qryParticipantEventsEVENT_PART_ID: TLargeintField
      FieldName = 'EVENT_PART_ID'
      ReadOnly = True
      Required = True
    end
    object qryParticipantEventsEVENT: TStringField
      FieldName = 'EVENT'
      Required = True
      Size = 60
    end
    object qryParticipantEventsEVENT_DATE: TDateTimeField
      FieldName = 'EVENT_DATE'
    end
    object qryParticipantEventsEVENT_TIME: TStringField
      FieldName = 'EVENT_TIME'
      FixedChar = True
      Size = 5
    end
    object qryParticipantEventsATTENDED: TStringField
      FieldName = 'ATTENDED'
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsACCEPTED: TStringField
      FieldName = 'ACCEPTED'
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsDECLINED: TStringField
      FieldName = 'DECLINED'
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsPRINTED: TStringField
      FieldName = 'PRINTED'
      FixedChar = True
      Size = 1
    end
    object qryParticipantEventsSEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qryParticipantEventsNOTES: TStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object dsParticipantEvents: TUniDataSource
    DataSet = qryParticipantEvents
    Left = 665
    Top = 494
  end
  object qryListChildren: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nname, search, name from phonebook where nnamemaster = :n' +
        'name')
    ReadOnly = True
    Left = 784
    Top = 499
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsListChildren: TUniDataSource
    DataSet = qryListChildren
    Left = 743
    Top = 450
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Relationship'
      'Activities'
      'Search'
      'Recent'
      'View'
      'File'
      'Menu'
      'ContactNotes'
      'Diary'
      'Default')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = ImageList
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 753
    Top = 79
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowQuickCustomizing = False
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 62
      FloatClientHeight = 95
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemRecent'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end>
      OldName = 'Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
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
      FloatLeft = 189
      FloatTop = 264
      FloatClientWidth = 23
      FloatClientHeight = 238
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCreate'
        end
        item
          Visible = True
          ItemName = 'btnEditPhonebook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDeletePhonebook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbarbtnOpenClient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnArchive'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItemRecent'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'txtArchived'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar3: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Relationship Toolbar'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 94
      FloatClientHeight = 141
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnRelationshipMerge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      NotDocking = [dsNone]
      OldName = 'Relationship Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'ContactNotes Toolbar'
      CaptionButtons = <>
      DockControl = ContactNotesDock
      DockedDockControl = ContactNotesDock
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 39
      FloatClientHeight = 72
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'ContactNotes Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar5: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Diary'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1061
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbShowMatterTasks'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton15: TdxBarButton
      Action = aRelationshipOpen
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton16: TdxBarButton
      Action = aRelationshipNew
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton17: TdxBarButton
      Action = actEdit
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = aRelationshipDelete
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = aPrintSelected
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object bbtnRelationshipMerge: TdxBarButton
      Action = actRelationshipMerge
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Caption = '&Letter'
      Category = 1
      Hint = 'Letter|Write Letter'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = aLetterExecute
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Send &E-Mail'
      Category = 1
      Hint = 'Send E-Mail'
      Visible = ivAlways
      ImageIndex = 34
      OnClick = aSendEMailExecute
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Browse &URL'
      Category = 1
      Hint = 'Browse URL'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = aBrowseURLExecute
    end
    object dxBarButton12: TdxBarButton
      Caption = '&PIM'
      Category = 1
      Hint = 'PIM|Insert entry into PIM'
      Visible = ivAlways
      ImageIndex = 31
      OnClick = aPIMExecute
    end
    object dxBarButton13: TdxBarButton
      Caption = '&Print'
      Category = 1
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 33
      OnClick = aPrintExecute
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Find'
      Category = 2
      Hint = 'Find'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = aFindExecute
    end
    object dxBarButton14: TdxBarButton
      Caption = 'New Item'
      Category = 3
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Show All Matters'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = aViewShowAllMattersDataExecute
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Show Matter Data'
      Category = 4
      Hint = 'Show Matter Data|Show The Matter Data Tab'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = aViewShowMatterDataExecute
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Show Field Names'
      Category = 4
      Hint = 'Show Field Names in Hints'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = aShowFieldNamesExecute
    end
    object btnCreate: TdxBarButton
      Caption = '&New'
      Category = 5
      Hint = 'New|Create New Contact Entry'
      Visible = ivAlways
      ImageIndex = 30
      OnClick = aNewExecute
    end
    object btnEditPhonebook: TdxBarButton
      Caption = '&Edit'
      Category = 5
      Hint = 'Edit this Contact'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = aEditExecute
    end
    object btnDeletePhonebook: TdxBarButton
      Caption = '&Delete'
      Category = 5
      Hint = 'Delete Phonebook Record'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = aDeleteExecute
    end
    object dxBarButton4: TdxBarButton
      Caption = '&Snapshot'
      Category = 5
      Hint = 'Snapshot'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = aSnapshotExecute
    end
    object dxBarButton20: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 5
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton20Click
    end
    object btnArchive: TdxBarButton
      Caption = 'Close'
      Category = 5
      Hint = 'Close Phonebook Record'
      Visible = ivAlways
      ImageIndex = 35
      OnClick = btnArchiveClick
    end
    object txtArchived: TdxBarStatic
      Caption = '< Closed >'
      Category = 5
      Hint = '< Closed >'
      Visible = ivNever
      BorderStyle = sbsBump
    end
    object tbarbtnOpenClient: TdxBarButton
      Caption = 'Open Client'
      Category = 5
      Hint = 'Open Client'
      Visible = ivAlways
      ImageIndex = 36
      OnClick = tbarbtnOpenClientClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '&File'
      Category = 6
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCreate'
        end
        item
          Visible = True
          ItemName = 'btnEditPhonebook'
        end
        item
          Visible = True
          ItemName = 'btnDeletePhonebook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
    end
    object dxBarSubItemRecent: TdxBarSubItem
      Caption = 'Recent'
      Category = 6
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'View'
      Category = 6
      Visible = ivAlways
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
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = '&Search'
      Category = 6
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = '&Activities'
      Category = 6
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end>
    end
    object dxBarButton21: TdxBarButton
      Action = aContactNotesInsert
      Category = 7
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton22: TdxBarButton
      Action = aContactNotesEdit
      Category = 7
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Action = aContactNotesDelete
      Category = 7
      PaintStyle = psCaptionGlyph
    end
    object dxBCShowMatterDiary: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 7
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Include Matter Tasks'
      Category = 8
      Hint = 'Include Matter Tasks'
      Visible = ivAlways
    end
    object cbShowMatterTasks: TcxBarEditItem
      Caption = 'Include Matter Tasks '
      Category = 9
      Hint = 'Include Matter Tasks '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      OnClick = cxBarEditItem1Click
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
  end
  object popRelationPrint: TPopupMenu
    Left = 722
    Top = 113
    object PrintDetails1: TMenuItem
      Caption = 'Print Selected'
      ImageIndex = 8
      OnClick = aPrintSelectedExecute
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 867
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Action = aContactNotesInsert
            ImageIndex = 27
          end
          item
            Action = aContactNotesEdit
            ImageIndex = 29
          end
          item
            Action = aContactNotesDelete
            ImageIndex = 28
          end>
      end
      item
        Items = <
          item
            Action = aRelationshipOpen
            Caption = '&Open'
            ImageIndex = 12
          end
          item
            Caption = '-'
          end
          item
            Action = aRelationshipNew
            Caption = '&New'
            ImageIndex = 18
          end
          item
            Caption = '-'
          end
          item
            Action = actEdit
            ImageIndex = 20
          end
          item
            Caption = '-'
          end
          item
            Action = aRelationshipDelete
            Caption = '&Delete'
            ImageIndex = 1
          end
          item
            Action = Action1
          end
          item
            Action = aPrintSelected
            Caption = '&Print Selected'
            ImageIndex = 8
          end>
        Visible = False
      end>
    Images = ImageList
    Left = 595
    Top = 160
    StyleName = 'XP Style'
    object aNew: TAction
      Category = 'File'
      Caption = '&New'
      Hint = 'New|Create New Phone Book Entry'
      ImageIndex = 0
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Category = 'File'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 12
      OnExecute = aEditExecute
    end
    object aFind: TAction
      Category = 'Search'
      Caption = 'Find'
      Hint = 'Find'
      ImageIndex = 6
      OnExecute = aFindExecute
    end
    object aDelete: TAction
      Category = 'File'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 1
      OnExecute = aDeleteExecute
      OnUpdate = aDeleteUpdate
    end
    object aSnapshot: TAction
      Category = 'File'
      Caption = '&Snapshot'
      Hint = 'Snapshot'
      ImageIndex = 7
      OnExecute = aSnapshotExecute
      OnUpdate = aDeleteUpdate
    end
    object aLetter: TAction
      Category = 'Activities'
      Caption = '&Letter'
      Hint = 'Letter|Write Letter'
      ImageIndex = 9
      OnExecute = aLetterExecute
      OnUpdate = aDeleteUpdate
    end
    object aSendEMail: TAction
      Category = 'Activities'
      Caption = 'Send &E-Mail'
      Hint = 'Send E-Mail'
      ImageIndex = 15
      OnExecute = aSendEMailExecute
      OnUpdate = aSendEMailUpdate
    end
    object aBrowseURL: TAction
      Category = 'Activities'
      Caption = 'Browse &URL'
      ImageIndex = 16
      OnExecute = aBrowseURLExecute
      OnUpdate = aBrowseURLUpdate
    end
    object aPIM: TAction
      Category = 'Activities'
      Caption = '&PIM'
      Hint = 'PIM|Insert entry into PIM'
      ImageIndex = 31
      OnExecute = aPIMExecute
      OnUpdate = aDeleteUpdate
    end
    object aExit: TAction
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exit'
      ImageIndex = 17
      OnExecute = aExitExecute
    end
    object aRecentHolder: TAction
      Category = 'Recent'
      Caption = 'RecentHolder'
      OnExecute = aRecentHolderExecute
    end
    object aRelationshipNew: TAction
      Category = 'Relationship'
      Caption = 'New'
      ImageIndex = 18
      OnExecute = aRelationshipNewExecute
    end
    object aRelationshipDelete: TAction
      Category = 'Relationship'
      Caption = 'Delete'
      ImageIndex = 1
      OnExecute = aRelationshipDeleteExecute
      OnUpdate = aRelationshipDeleteUpdate
    end
    object aViewShowMatterData: TAction
      Category = 'View'
      Caption = 'Show Matter Data'
      Hint = 'Show Matter Data|Show The Matter Data Tab'
      OnExecute = aViewShowMatterDataExecute
      OnUpdate = aViewShowMatterDataUpdate
    end
    object aViewShowAllMattersData: TAction
      Category = 'View'
      Caption = 'Show All Matters'
      OnExecute = aViewShowAllMattersDataExecute
      OnUpdate = aViewShowAllMattersDataUpdate
    end
    object aPrint: TAction
      Category = 'File'
      Caption = '&Print'
      ImageIndex = 8
      OnExecute = aPrintExecute
    end
    object aShowFieldNames: TAction
      Category = 'View'
      Caption = 'Show Field Names'
      Hint = 'Show Field Names in Hints'
      OnExecute = aShowFieldNamesExecute
      OnUpdate = aShowFieldNamesUpdate
    end
    object aContactNotesInsert: TDataSetInsert
      Category = 'Contact Notes'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 27
      OnUpdate = aContactNotesInsertUpdate
      DataSource = dsContactNotes
    end
    object aContactNotesEdit: TDataSetEdit
      Category = 'Contact Notes'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 29
      OnUpdate = aContactNotesEditUpdate
      DataSource = dsContactNotes
    end
    object aContactNotesDelete: TDataSetDelete
      Category = 'Contact Notes'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 28
      OnUpdate = aContactNotesDeleteUpdate
      DataSource = dsContactNotes
    end
    object aRelationshipOpen: TAction
      Category = 'Relationship'
      Caption = 'Open'
      Hint = 'Open'
      ImageIndex = 12
      OnExecute = aRelationshipOpenExecute
      OnUpdate = aRelationshipOpenUpdate
    end
    object actEdit: TAction
      Category = 'Relationship'
      Caption = '&Edit'
      Hint = 'Edit Relationship'
      ImageIndex = 20
      OnExecute = actEditExecute
      OnUpdate = actEditUpdate
    end
    object Action1: TAction
      Caption = '-'
    end
    object aPrintSelected: TAction
      Category = 'Relationship'
      Caption = 'Print Selected'
      ImageIndex = 8
      OnExecute = aPrintSelectedExecute
      OnUpdate = aPrintSelectedUpdate
    end
    object actRelationshipMerge: TAction
      Category = 'Relationship'
      Caption = 'Merge File'
      ImageIndex = 9
      OnExecute = actRelationshipMergeExecute
      OnUpdate = actRelationshipMergeUpdate
    end
  end
  object qClient: TUniQuery
    KeyFields = 'NCLIENT'
    SQLRefresh.Strings = (
      '')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  c.*'
      'FROM'
      '  client c'
      'WHERE c.nclient = :nclient')
    ReadOnly = True
    DMLRefresh = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Left = 676
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object dsClient: TDataSource
    DataSet = qClient
    Left = 807
    Top = 281
  end
  object qActiveEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NAME, CODE FROM EMPLOYEE WHERE ACTIVE = '#39'Y'#39' ORDER BY NAME')
    Left = 803
    Top = 385
    object qActiveEmployeesNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qActiveEmployeesCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
  end
  object dsActiveEmployees: TDataSource
    AutoEdit = False
    DataSet = qActiveEmployees
    Left = 872
    Top = 442
  end
  object qClientGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct g.category, g.supergroup,'
      '  DECODE(p.nclient,NULL,'#39'False'#39','#39'True'#39') AS hasgroup'
      'FROM'
      '  clientgroup g, clientgroupings p'
      'WHERE'
      '  g.category = p.category(+)'
      'AND p.nclient(+) = :nclient'
      'ORDER BY g.category')
    Left = 666
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
    object qClientGroupsCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 25
    end
    object qClientGroupsSUPERGROUP: TStringField
      FieldName = 'SUPERGROUP'
      Size = 1
    end
    object qClientGroupsHASGROUP: TStringField
      FieldName = 'HASGROUP'
      Size = 5
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    StyleDisabled.BorderColor = clWindowFrame
    StyleDisabled.BorderStyle = ebsFlat
    StyleDisabled.Color = clInfoBk
    StyleDisabled.TextColor = clBlack
    StyleDisabled.ButtonStyle = btsDefault
    Left = 931
    Top = 11
    PixelsPerInch = 96
  end
  object qRelationshipDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  P.GIVENNAMES AS PRIME_GIVENNAMES,'
      '  P.LASTNAME AS PRIME_LASTNAME,'
      '  p.search  AS PRIME_SEARCH,'
      '  p.title AS PRIME_TITLE,'
      '  p.gender AS PRIME_GENDER,'
      '  p.WHICHADDRESS AS PRIME_WHICHADDRESS,'
      '  P.ADDRESS AS PRIME_ADDRESS,'
      '  P.SUBURB AS PRIME_SUBURB,'
      '  P.STATE AS PRIME_STATE, '
      '  P.POSTCODE AS PRIME_POSTCODE, '
      '  P.COUNTRY AS PRIME_COUNTRY,'
      '  P.POSTALADDRESS AS PRIME_POSTALADDRESS,'
      '  P.POSTALSUBURB AS PRIME_POSTALSUBURB,'
      '  P.POSTALSTATE AS PRIME_POSTALSTATE,'
      '  P.POSTALPOSTCODE AS PRIME_POSTALPOSTCODE,'
      '  P.POSTALCOUNTRY AS PRIME_POSTALCOUTRY,'
      '  P.DX AS PRIME_DX,'
      '  P.DXLOC AS PRIME_DXLOC,'
      '  P.SALUTATION AS PRIME_SALUTATION,'
      '  P.WORKPHONE AS PRIME_WORKPHONE,'
      '  P.HOMEPHONE AS PRIME_HOMEPHONE,'
      '  P.FAX AS PRIME_FAX,'
      '  p.code AS PRIME_CODE,'
      '  p.sparty AS PRIME_SPARTY,'
      '  p.solicitor AS PRIME_SOLICITOR,'
      '  p.real_estate AS PRIME_REALESTATE,'
      '  p.referrals AS PRIME_REFERRALS,'
      '  p.note AS PRIME_NOTE,'
      '  P.NAME AS PRIME_NAME,'
      '  P.SHORTNAME AS PRIME_SHORTNAME,'
      '  P.LONGNAME AS PRIME_LONGNAME,'
      '  p.type AS PRIME_TYPE,'
      '  p.acn AS PRIME_ACN,'
      '  p.occupation AS PRIME_OCCUPATION,'
      '  p.dob AS PRIME_DOB,'
      '  P.EMAIL AS PRIME_EMAIL,'
      '  P.WWW AS PRIME_WWW,'
      '  P.MOBILE AS PRIME_MOBILE,'
      '  P.CUST_ADDRESS AS PRIME_CUST_ADDRESS,'
      '  P.CUST_SUBURB AS PRIME_CUST_SUBURB,'
      '  P.CUST_STATE AS PRIME_CUST_STATE,'
      '  P.CUST_POSTCODE AS PRIME_CUST_POSTCODE,'
      '  P.CUST_COUNTRY AS PRIME_CUST_COUNTRY,  '
      '  p.whichaddress AS PRIME_WHICHADDRESS,'
      '  TRIM(DECODE(p.WHICHADDRESS,'
      '  '#39'S'#39', P.ADDRESS ||'
      '     chr(13) || chr(10) || '
      #9' P.SUBURB || '#39' '#39' || '
      #9' P.STATE || '#39' '#39' || '
      #9' P.POSTCODE ||'
      '         chr(13) || chr(10) || '
      '         P.COUNTRY,'
      '  '#39'P'#39', P.POSTALADDRESS ||'
      '         chr(13) || chr(10) || '
      #9' P.POSTALSUBURB || '#39' '#39' || '
      #9' P.POSTALSTATE || '#39' '#39' || '
      #9' P.POSTALPOSTCODE ||'
      '         chr(13) || chr(10) || '
      '         P.POSTALCOUNTRY,'
      
        '  '#39'D'#39', '#39'DX '#39' || P.DX || chr(13) || chr(10) || P.DXLOC )) AS PRIM' +
        'E_partyaddress,'
      '  m.GIVENNAMES AS RELATED_GIVENNAMES,'
      '  m.LASTNAME AS RELATED_LASTNAME,'
      '  m.search AS RELATED_SEARCH,'
      '  m.title AS RELATED_TITLE,'
      '  m.gender AS RELATED_GENDER,'
      '  m.WHICHADDRESS AS RELATED_WHICHADDRESS,'
      '  m.ADDRESS AS RELATED_ADDRESS,'
      '  m.SUBURB AS RELATED_SUBURB,'
      '  m.STATE AS RELATED_STATE, '
      '  m.POSTCODE AS RELATED_POSTCODE, '
      '  m.COUNTRY AS RELATED_COUNTRY,'
      '  m.POSTALADDRESS AS RELATED_POSTALADDRESS,'
      '  m.POSTALSUBURB AS RELATED_POSTALSUBURB,'
      '  m.POSTALSTATE AS RELATED_POSTALSTATE,'
      '  m.POSTALPOSTCODE AS RELATED_POSTALPOSTCODE,'
      '  m.POSTALCOUNTRY AS RELATED_POSTALCOUNTRY,'
      '  m.DX AS RELATED_DX,'
      '  m.DXLOC AS RELATED_DXLOC,'
      '  m.SALUTATION AS RELATED_SALUTATION,'
      '  m.WORKPHONE AS RELATED_WORKPHONE,'
      '  m.HOMEPHONE AS RELATED_HOMEPHONE,'
      '  m.FAX AS RELATED_FAX,'
      '  m.code AS RELATED_CODE,'
      '  m.sparty AS RELATED_SPARTY,'
      '  m.solicitor AS RELATED_SOLICITOR,'
      '  m.real_estate AS RELATED_REAL_ESTATE,'
      '  m.referrals AS RELATED_REFERRALS,'
      '  m.note AS RELATED_NOTE,'
      '  m.NAME AS RELATED_NAME,'
      '  m.SHORTNAME AS RELATED_SHORTNAME,'
      '  m.LONGNAME AS RELATED_LONGNAME,'
      '  m.type AS RELATED_TYPE,'
      '  m.acn AS RELATED_ACN,'
      '  m.occupation AS RELATED_OCCUPATION,'
      '  m.dob AS RELATED_DOB,'
      '  m.EMAIL AS RELATED_EMAIL,'
      '  m.WWW AS RELATED_WWW,'
      '  m.MOBILE AS RELATED_MOBILE,'
      '  m.CUST_ADDRESS AS RELATED_CUST_ADDRESS,'
      '  m.CUST_SUBURB AS RELATED_CUST_SUBURB,'
      '  m.CUST_STATE AS RELATED_CUST_STATE,'
      '  m.CUST_POSTCODE AS RELATED_CUST_POSTCODE,'
      '  m.CUST_COUNTRY AS RELATED_CUST_COUNTRY,  '
      '  m.whichaddress AS RELATED_WHICHADDRESS,'
      '  TRIM(DECODE(M.WHICHADDRESS,'
      '  '#39'S'#39', M.ADDRESS ||'
      '     chr(13) || chr(10) || '
      #9' M.SUBURB || '#39' '#39' || '
      #9' M.STATE || '#39' '#39' || '
      #9' M.POSTCODE ||'
      '         chr(13) || chr(10) || '
      '         M.COUNTRY,'
      '  '#39'P'#39', M.POSTALADDRESS ||'
      '     chr(13) || chr(10) || '
      #9' M.POSTALSUBURB || '#39' '#39' || '
      #9' M.POSTALSTATE || '#39' '#39' || '
      #9' M.POSTALPOSTCODE ||'
      '         chr(13) || chr(10) || '
      '         M.POSTALCOUNTRY,'
      
        '  '#39'D'#39', '#39'DX '#39' || M.DX || chr(13) || chr(10) || M.DXLOC )) AS RELA' +
        'TED_partyaddress'
      'FROM'
      '  PHONEBOOK P,'
      '  PHONEBOOK M'
      'WHERE'
      '  p.nname = :NNAME '
      'AND'
      '  M.NNAME = :REL_NNAME')
    Left = 198
    Top = 565
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REL_NNAME'
        Value = nil
      end>
    object qRelationshipDetailsPARTYGIVENNAMES: TStringField
      FieldName = 'PARTYGIVENNAMES'
      Size = 60
    end
    object qRelationshipDetailsPARTYLASTNAME: TStringField
      FieldName = 'PARTYLASTNAME'
      Size = 60
    end
    object qRelationshipDetailsPARTYSEARCH: TStringField
      FieldName = 'PARTYSEARCH'
      Size = 85
    end
    object qRelationshipDetailsPARTYTITLE: TStringField
      FieldName = 'PARTYTITLE'
      Size = 40
    end
    object qRelationshipDetailsPARTYGENDER: TStringField
      FieldName = 'PARTYGENDER'
      Size = 1
    end
    object qRelationshipDetailsPARTYADDRESS: TStringField
      FieldName = 'PARTYADDRESS'
      Size = 246
    end
    object qRelationshipDetailsPARTYSALUTATION: TStringField
      FieldName = 'PARTYSALUTATION'
      Size = 40
    end
    object qRelationshipDetailsPARTYWORKPHONE: TStringField
      FieldName = 'PARTYWORKPHONE'
      Size = 30
    end
    object qRelationshipDetailsPARTYHOMEPHONE: TStringField
      FieldName = 'PARTYHOMEPHONE'
      Size = 30
    end
    object qRelationshipDetailsPARTYDX: TStringField
      FieldName = 'PARTYDX'
      Size = 6
    end
    object qRelationshipDetailsPARTYDXLOC: TStringField
      FieldName = 'PARTYDXLOC'
      Size = 50
    end
    object qRelationshipDetailsPARTYFAX: TStringField
      FieldName = 'PARTYFAX'
      Size = 30
    end
    object qRelationshipDetailsPARTYCODE: TStringField
      FieldName = 'PARTYCODE'
    end
    object qRelationshipDetailsPARTYSPARTY: TStringField
      FieldName = 'PARTYSPARTY'
      Size = 1
    end
    object qRelationshipDetailsPARTYSOLICITOR: TStringField
      FieldName = 'PARTYSOLICITOR'
      Size = 1
    end
    object qRelationshipDetailsPARTYREAL_ESTATE: TStringField
      FieldName = 'PARTYREAL_ESTATE'
      Size = 1
    end
    object qRelationshipDetailsPARTYREFERRALS: TIntegerField
      FieldName = 'PARTYREFERRALS'
    end
    object qRelationshipDetailsPARTYNOTE: TStringField
      FieldName = 'PARTYNOTE'
      Size = 400
    end
    object qRelationshipDetailsPARTYNAME: TStringField
      FieldName = 'PARTYNAME'
      Size = 85
    end
    object qRelationshipDetailsPARTYSHORTNAME: TStringField
      FieldName = 'PARTYSHORTNAME'
      Size = 40
    end
    object qRelationshipDetailsPARTYLONGNAME: TStringField
      FieldName = 'PARTYLONGNAME'
      Size = 150
    end
    object qRelationshipDetailsPARTYMOD_DATE: TDateTimeField
      FieldName = 'PARTYMOD_DATE'
    end
    object qRelationshipDetailsPARTYMOD_BY: TStringField
      FieldName = 'PARTYMOD_BY'
      Size = 3
    end
    object qRelationshipDetailsPARTYTYPE: TStringField
      FieldName = 'PARTYTYPE'
      Size = 1
    end
    object qRelationshipDetailsPARTYCOUNTRY: TStringField
      FieldName = 'PARTYCOUNTRY'
      Size = 30
    end
    object qRelationshipDetailsPARTYACN: TStringField
      FieldName = 'PARTYACN'
      Size = 30
    end
    object qRelationshipDetailsPARTYOCCUPATION: TStringField
      FieldName = 'PARTYOCCUPATION'
      Size = 35
    end
    object qRelationshipDetailsPARTYDOB: TDateTimeField
      FieldName = 'PARTYDOB'
    end
    object qRelationshipDetailsPARTYEMAIL: TStringField
      FieldName = 'PARTYEMAIL'
      Size = 60
    end
    object qRelationshipDetailsPARTYWWW: TStringField
      FieldName = 'PARTYWWW'
      Size = 60
    end
    object qRelationshipDetailsPARTYMOBILE: TStringField
      FieldName = 'PARTYMOBILE'
      Size = 30
    end
    object qRelationshipDetailsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 120
    end
    object qRelationshipDetailsSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qRelationshipDetailsSTATE: TStringField
      FieldName = 'STATE'
    end
    object qRelationshipDetailsPOSTCODE: TStringField
      FieldName = 'POSTCODE'
    end
    object qRelationshipDetailsCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
    object qRelationshipDetailsPOSTALADDRESS: TStringField
      FieldName = 'POSTALADDRESS'
      Size = 120
    end
    object qRelationshipDetailsPOSTALSUBURB: TStringField
      FieldName = 'POSTALSUBURB'
      Size = 50
    end
    object qRelationshipDetailsPOSTALSTATE: TStringField
      FieldName = 'POSTALSTATE'
    end
    object qRelationshipDetailsPOSTALPOSTCODE: TStringField
      FieldName = 'POSTALPOSTCODE'
    end
    object qRelationshipDetailsPOSTALCOUNTRY: TStringField
      FieldName = 'POSTALCOUNTRY'
      Size = 30
    end
    object qRelationshipDetailsCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      Size = 120
    end
    object qRelationshipDetailsCUST_SUBURB: TStringField
      FieldName = 'CUST_SUBURB'
      Size = 50
    end
    object qRelationshipDetailsCUST_STATE: TStringField
      FieldName = 'CUST_STATE'
    end
    object qRelationshipDetailsCUST_POSTCODE: TStringField
      FieldName = 'CUST_POSTCODE'
    end
    object qRelationshipDetailsCUST_COUNTRY: TStringField
      FieldName = 'CUST_COUNTRY'
      Size = 30
    end
    object qRelationshipDetailsWHICHADDRESS: TStringField
      FieldName = 'WHICHADDRESS'
      Size = 1
    end
    object qRelationshipDetailsHESHE: TStringField
      FieldName = 'HESHE'
      Size = 3
    end
    object qRelationshipDetailsHIMHER: TStringField
      FieldName = 'HIMHER'
      Size = 3
    end
    object qRelationshipDetailsHISHER: TStringField
      FieldName = 'HISHER'
      Size = 3
    end
    object qRelationshipDetailsSIRMADAM: TStringField
      FieldName = 'SIRMADAM'
      Size = 5
    end
    object qRelationshipDetailsCLIENT_NUMBER: TFloatField
      FieldName = 'CLIENT_NUMBER'
      Required = True
    end
    object qRelationshipDetailsCLIENT_CODE: TStringField
      FieldName = 'CLIENT_CODE'
      Required = True
    end
    object qRelationshipDetailsPARTNER_CODE: TStringField
      FieldName = 'PARTNER_CODE'
      Size = 3
    end
    object qRelationshipDetailsPRIME_GIVENNAMES: TStringField
      FieldName = 'PRIME_GIVENNAMES'
      Size = 60
    end
    object qRelationshipDetailsPRIME_LASTNAME: TStringField
      FieldName = 'PRIME_LASTNAME'
      Size = 60
    end
    object qRelationshipDetailsPRIME_SEARCH: TStringField
      FieldName = 'PRIME_SEARCH'
      Required = True
      Size = 85
    end
    object qRelationshipDetailsPRIME_TITLE: TStringField
      FieldName = 'PRIME_TITLE'
      Size = 40
    end
    object qRelationshipDetailsPRIME_GENDER: TStringField
      FieldName = 'PRIME_GENDER'
      Size = 1
    end
    object qRelationshipDetailsPRIME_WHICHADDRESS: TStringField
      FieldName = 'PRIME_WHICHADDRESS'
      Size = 1
    end
    object qRelationshipDetailsPRIME_ADDRESS: TStringField
      FieldName = 'PRIME_ADDRESS'
      Size = 120
    end
    object qRelationshipDetailsPRIME_SUBURB: TStringField
      FieldName = 'PRIME_SUBURB'
      Size = 50
    end
    object qRelationshipDetailsPRIME_STATE: TStringField
      FieldName = 'PRIME_STATE'
    end
    object qRelationshipDetailsPRIME_POSTCODE: TStringField
      FieldName = 'PRIME_POSTCODE'
    end
    object qRelationshipDetailsPRIME_COUNTRY: TStringField
      FieldName = 'PRIME_COUNTRY'
      Size = 30
    end
    object qRelationshipDetailsPRIME_POSTALADDRESS: TStringField
      FieldName = 'PRIME_POSTALADDRESS'
      Size = 120
    end
    object qRelationshipDetailsPRIME_POSTALSUBURB: TStringField
      FieldName = 'PRIME_POSTALSUBURB'
      Size = 50
    end
    object qRelationshipDetailsPRIME_POSTALSTATE: TStringField
      FieldName = 'PRIME_POSTALSTATE'
    end
    object qRelationshipDetailsPRIME_POSTALPOSTCODE: TStringField
      FieldName = 'PRIME_POSTALPOSTCODE'
    end
    object qRelationshipDetailsPRIME_POSTALCOUTRY: TStringField
      FieldName = 'PRIME_POSTALCOUTRY'
      Size = 30
    end
    object qRelationshipDetailsPRIME_DX: TStringField
      FieldName = 'PRIME_DX'
    end
    object qRelationshipDetailsPRIME_DXLOC: TStringField
      FieldName = 'PRIME_DXLOC'
      Size = 50
    end
    object qRelationshipDetailsPRIME_SALUTATION: TStringField
      FieldName = 'PRIME_SALUTATION'
      Size = 40
    end
    object qRelationshipDetailsPRIME_WORKPHONE: TStringField
      FieldName = 'PRIME_WORKPHONE'
      Size = 30
    end
    object qRelationshipDetailsPRIME_HOMEPHONE: TStringField
      FieldName = 'PRIME_HOMEPHONE'
      Size = 30
    end
    object qRelationshipDetailsPRIME_FAX: TStringField
      FieldName = 'PRIME_FAX'
      Size = 30
    end
    object qRelationshipDetailsPRIME_CODE: TStringField
      FieldName = 'PRIME_CODE'
    end
    object qRelationshipDetailsPRIME_SPARTY: TStringField
      FieldName = 'PRIME_SPARTY'
      Size = 1
    end
    object qRelationshipDetailsPRIME_SOLICITOR: TStringField
      FieldName = 'PRIME_SOLICITOR'
      Size = 1
    end
    object qRelationshipDetailsPRIME_REALESTATE: TStringField
      FieldName = 'PRIME_REALESTATE'
      Size = 1
    end
    object qRelationshipDetailsPRIME_REFERRALS: TSmallintField
      FieldName = 'PRIME_REFERRALS'
    end
    object qRelationshipDetailsPRIME_NOTE: TStringField
      FieldName = 'PRIME_NOTE'
      Size = 2000
    end
    object qRelationshipDetailsPRIME_NAME: TStringField
      FieldName = 'PRIME_NAME'
      Size = 100
    end
    object qRelationshipDetailsPRIME_SHORTNAME: TStringField
      FieldName = 'PRIME_SHORTNAME'
      Size = 60
    end
    object qRelationshipDetailsPRIME_LONGNAME: TStringField
      FieldName = 'PRIME_LONGNAME'
      Size = 150
    end
    object qRelationshipDetailsPRIME_TYPE: TStringField
      FieldName = 'PRIME_TYPE'
      Size = 1
    end
    object qRelationshipDetailsPRIME_ACN: TStringField
      FieldName = 'PRIME_ACN'
      Size = 30
    end
    object qRelationshipDetailsPRIME_OCCUPATION: TStringField
      FieldName = 'PRIME_OCCUPATION'
      Size = 250
    end
    object qRelationshipDetailsPRIME_DOB: TDateTimeField
      FieldName = 'PRIME_DOB'
    end
    object qRelationshipDetailsPRIME_EMAIL: TStringField
      FieldName = 'PRIME_EMAIL'
      Size = 60
    end
    object qRelationshipDetailsPRIME_WWW: TStringField
      FieldName = 'PRIME_WWW'
      Size = 60
    end
    object qRelationshipDetailsPRIME_MOBILE: TStringField
      FieldName = 'PRIME_MOBILE'
      Size = 30
    end
    object qRelationshipDetailsPRIME_CUST_ADDRESS: TStringField
      FieldName = 'PRIME_CUST_ADDRESS'
      Size = 120
    end
    object qRelationshipDetailsPRIME_CUST_SUBURB: TStringField
      FieldName = 'PRIME_CUST_SUBURB'
      Size = 50
    end
    object qRelationshipDetailsPRIME_CUST_STATE: TStringField
      FieldName = 'PRIME_CUST_STATE'
    end
    object qRelationshipDetailsPRIME_CUST_POSTCODE: TStringField
      FieldName = 'PRIME_CUST_POSTCODE'
    end
    object qRelationshipDetailsPRIME_CUST_COUNTRY: TStringField
      FieldName = 'PRIME_CUST_COUNTRY'
      Size = 30
    end
    object qRelationshipDetailsPRIME_WHICHADDRESS_1: TStringField
      FieldName = 'PRIME_WHICHADDRESS_1'
      Size = 1
    end
    object qRelationshipDetailsPRIME_PARTYADDRESS: TStringField
      FieldName = 'PRIME_PARTYADDRESS'
      ReadOnly = True
      Size = 246
    end
    object qRelationshipDetailsRELATED_GIVENNAMES: TStringField
      FieldName = 'RELATED_GIVENNAMES'
      ReadOnly = True
      Size = 60
    end
    object qRelationshipDetailsRELATED_LASTNAME: TStringField
      FieldName = 'RELATED_LASTNAME'
      ReadOnly = True
      Size = 60
    end
    object qRelationshipDetailsRELATED_SEARCH: TStringField
      FieldName = 'RELATED_SEARCH'
      ReadOnly = True
      Required = True
      Size = 85
    end
    object qRelationshipDetailsRELATED_TITLE: TStringField
      FieldName = 'RELATED_TITLE'
      ReadOnly = True
      Size = 40
    end
    object qRelationshipDetailsRELATED_GENDER: TStringField
      FieldName = 'RELATED_GENDER'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_WHICHADDRESS: TStringField
      FieldName = 'RELATED_WHICHADDRESS'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_ADDRESS: TStringField
      FieldName = 'RELATED_ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipDetailsRELATED_SUBURB: TStringField
      FieldName = 'RELATED_SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qRelationshipDetailsRELATED_STATE: TStringField
      FieldName = 'RELATED_STATE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_POSTCODE: TStringField
      FieldName = 'RELATED_POSTCODE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_COUNTRY: TStringField
      FieldName = 'RELATED_COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_POSTALADDRESS: TStringField
      FieldName = 'RELATED_POSTALADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipDetailsRELATED_POSTALSUBURB: TStringField
      FieldName = 'RELATED_POSTALSUBURB'
      ReadOnly = True
      Size = 50
    end
    object qRelationshipDetailsRELATED_POSTALSTATE: TStringField
      FieldName = 'RELATED_POSTALSTATE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_POSTALPOSTCODE: TStringField
      FieldName = 'RELATED_POSTALPOSTCODE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_POSTALCOUNTRY: TStringField
      FieldName = 'RELATED_POSTALCOUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_DX: TStringField
      FieldName = 'RELATED_DX'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_DXLOC: TStringField
      FieldName = 'RELATED_DXLOC'
      ReadOnly = True
      Size = 50
    end
    object qRelationshipDetailsRELATED_SALUTATION: TStringField
      FieldName = 'RELATED_SALUTATION'
      ReadOnly = True
      Size = 40
    end
    object qRelationshipDetailsRELATED_WORKPHONE: TStringField
      FieldName = 'RELATED_WORKPHONE'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_HOMEPHONE: TStringField
      FieldName = 'RELATED_HOMEPHONE'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_FAX: TStringField
      FieldName = 'RELATED_FAX'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_CODE: TStringField
      FieldName = 'RELATED_CODE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_SPARTY: TStringField
      FieldName = 'RELATED_SPARTY'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_SOLICITOR: TStringField
      FieldName = 'RELATED_SOLICITOR'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_REAL_ESTATE: TStringField
      FieldName = 'RELATED_REAL_ESTATE'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_REFERRALS: TSmallintField
      FieldName = 'RELATED_REFERRALS'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_NOTE: TStringField
      FieldName = 'RELATED_NOTE'
      ReadOnly = True
      Size = 2000
    end
    object qRelationshipDetailsRELATED_NAME: TStringField
      FieldName = 'RELATED_NAME'
      ReadOnly = True
      Size = 100
    end
    object qRelationshipDetailsRELATED_SHORTNAME: TStringField
      FieldName = 'RELATED_SHORTNAME'
      ReadOnly = True
      Size = 60
    end
    object qRelationshipDetailsRELATED_LONGNAME: TStringField
      FieldName = 'RELATED_LONGNAME'
      ReadOnly = True
      Size = 150
    end
    object qRelationshipDetailsRELATED_TYPE: TStringField
      FieldName = 'RELATED_TYPE'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_ACN: TStringField
      FieldName = 'RELATED_ACN'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_OCCUPATION: TStringField
      FieldName = 'RELATED_OCCUPATION'
      ReadOnly = True
      Size = 250
    end
    object qRelationshipDetailsRELATED_DOB: TDateTimeField
      FieldName = 'RELATED_DOB'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_EMAIL: TStringField
      FieldName = 'RELATED_EMAIL'
      ReadOnly = True
      Size = 60
    end
    object qRelationshipDetailsRELATED_WWW: TStringField
      FieldName = 'RELATED_WWW'
      ReadOnly = True
      Size = 60
    end
    object qRelationshipDetailsRELATED_MOBILE: TStringField
      FieldName = 'RELATED_MOBILE'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_CUST_ADDRESS: TStringField
      FieldName = 'RELATED_CUST_ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipDetailsRELATED_CUST_SUBURB: TStringField
      FieldName = 'RELATED_CUST_SUBURB'
      ReadOnly = True
      Size = 50
    end
    object qRelationshipDetailsRELATED_CUST_STATE: TStringField
      FieldName = 'RELATED_CUST_STATE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_CUST_POSTCODE: TStringField
      FieldName = 'RELATED_CUST_POSTCODE'
      ReadOnly = True
    end
    object qRelationshipDetailsRELATED_CUST_COUNTRY: TStringField
      FieldName = 'RELATED_CUST_COUNTRY'
      ReadOnly = True
      Size = 30
    end
    object qRelationshipDetailsRELATED_WHICHADDRESS_1: TStringField
      FieldName = 'RELATED_WHICHADDRESS_1'
      ReadOnly = True
      Size = 1
    end
    object qRelationshipDetailsRELATED_PARTYADDRESS: TStringField
      FieldName = 'RELATED_PARTYADDRESS'
      ReadOnly = True
      Size = 246
    end
  end
  object qryFirmContacts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT e.name'
      'FROM employee e, firm_contacts fc'
      'WHERE fc.nname = :p_nname'
      'AND   fc.emp_code = e.code')
    Left = 563
    Top = 391
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nname'
        Value = nil
      end>
  end
  object rptPhonebook: TppReport
    AutoStop = False
    DataPipeline = plPhoneBookRpt
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter (8.5 x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
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
    Left = 928
    Top = 48
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plPhoneBookRpt'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6646
        mmLeft = 3969
        mmTop = 2117
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 125942
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Color = clSilver
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 32279
        mmLeft = 794
        mmTop = 7673
        mmWidth = 200819
        BandType = 4
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Color = clSilver
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Phone Book Entry'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 3969
        mmTop = 1058
        mmWidth = 30438
        BandType = 4
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 187325
        mmTop = 1058
        mmWidth = 11303
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Type / Gender:'
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
        mmLeft = 4498
        mmTop = 9260
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'First Name:'
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
        mmLeft = 4498
        mmTop = 19315
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Last Name:'
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
        mmLeft = 4498
        mmTop = 24342
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Home:'
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
        mmLeft = 114872
        mmTop = 9260
        mmWidth = 9864
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Work:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 112977
        mmTop = 14552
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Mobile:'
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
        mmLeft = 113506
        mmTop = 19844
        mmWidth = 11134
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Fax:'
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
        mmLeft = 118004
        mmTop = 25665
        mmWidth = 6519
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Street Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 6350
        mmTop = 45773
        mmWidth = 26035
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Postal Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 106892
        mmTop = 45773
        mmWidth = 26628
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Address:'
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
        mmLeft = 12732
        mmTop = 54769
        mmWidth = 13716
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Town:'
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
        mmLeft = 16933
        mmTop = 60061
        mmWidth = 9398
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Post Code:'
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
        mmLeft = 9790
        mmTop = 65352
        mmWidth = 16764
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'State:'
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
        mmLeft = 17727
        mmTop = 70644
        mmWidth = 8805
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Country:'
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
        mmLeft = 13494
        mmTop = 76200
        mmWidth = 13039
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 54769
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = 'Town:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 60061
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = 'Post Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 108479
        mmTop = 65352
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'State:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 70644
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'Country:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 76200
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'MOBILE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 19579
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'FAX'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 25400
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'WORKPHONE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 14288
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'HOMEPHONE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 8996
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'LONGNAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 128059
        mmTop = 34131
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GENDER_DESCR'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 8731
        mmWidth = 20362
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SALUTATION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 13758
        mmWidth = 19854
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GIVENNAMES'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 34660
        mmTop = 19050
        mmWidth = 24088
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'LASTNAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 34660
        mmTop = 24077
        mmWidth = 27263
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 29104
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SHORTNAME'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 34660
        mmTop = 34396
        mmWidth = 25146
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29369
        mmTop = 54504
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'SUBURB'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 28840
        mmTop = 59796
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTCODE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29369
        mmTop = 65088
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'STATE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29104
        mmTop = 70379
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'COUNTRY'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 29104
        mmTop = 75936
        mmWidth = 72517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALADDRESS'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 54504
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALSUBURB'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 59796
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALPOSTCODE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 65088
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALSTATE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 70379
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'POSTALCOUNTRY'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 128059
        mmTop = 75936
        mmWidth = 72517
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 83873
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'DOB'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 30427
        mmTop = 86784
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ACN'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 92604
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'EMAIL'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 30427
        mmTop = 98425
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'WWW'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 30427
        mmTop = 104775
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'DEFAULT_REF'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 100013
        mmTop = 86784
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'OCCUPATION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 100013
        mmTop = 92604
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 159015
        mmTop = 86784
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = 'Date of Birth:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 8467
        mmTop = 87048
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'Email Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 5556
        mmTop = 98690
        mmWidth = 23114
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = 'Web Site Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 105040
        mmWidth = 28067
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Default Ref:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 80433
        mmTop = 87048
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 147373
        mmTop = 87048
        mmWidth = 8975
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'plGroupingsRpt'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 112713
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plGroupingsRpt
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '19.02'
          mmColumnWidth = 0
          DataPipelineName = 'plGroupingsRpt'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label32'
              Border.mmPadding = 0
              Caption = 'Groupings:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 2910
              mmTop = 2646
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line3'
              Border.mmPadding = 0
              Pen.Width = 2
              ParentWidth = True
              Position = lpBottom
              Weight = 1.500000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 6085
              mmWidth = 203200
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText29'
              Border.mmPadding = 0
              DataField = 'CATEGORY'
              DataPipeline = plGroupingsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plGroupingsRpt'
              mmHeight = 3969
              mmLeft = 28310
              mmTop = 1588
              mmWidth = 60590
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText30'
              Border.mmPadding = 0
              DataField = 'OTHERPARTY'
              DataPipeline = plGroupingsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plGroupingsRpt'
              mmHeight = 3969
              mmLeft = 128588
              mmTop = 1588
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground1
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label33'
              Border.mmPadding = 0
              Caption = 'Category:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 9959
              mmTop = 1852
              mmWidth = 14647
              BandType = 4
              LayerName = Foreground1
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label34'
              Border.mmPadding = 0
              Caption = 'Other Party:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 106363
              mmTop = 1852
              mmWidth = 18161
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        OnGetText = ppDBText32GetText
        Border.mmPadding = 0
        DataField = 'GENDER_OCCUPATIONCAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 70644
        mmTop = 92604
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GENDER_ACNCAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 8731
        mmTop = 92604
        mmWidth = 19854
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'plRelationshipsRpt'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 118798
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plRelationshipsRpt
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '19.02'
          mmColumnWidth = 0
          DataPipelineName = 'plRelationshipsRpt'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label26'
              Border.mmPadding = 0
              Caption = 'Relationships:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Segoe UI'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4191
              mmLeft = 2911
              mmTop = 3175
              mmWidth = 24257
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line4'
              Border.mmPadding = 0
              Pen.Width = 2
              ParentWidth = True
              Position = lpBottom
              Weight = 1.500000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 7144
              mmWidth = 203200
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8996
            mmPrintPosition = 0
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText33'
              Border.mmPadding = 0
              DataField = 'SEARCH'
              DataPipeline = plRelationshipsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plRelationshipsRpt'
              mmHeight = 3969
              mmLeft = 72496
              mmTop = 794
              mmWidth = 50800
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText38'
              Border.mmPadding = 0
              DataField = 'RELATIONSHIP'
              DataPipeline = plRelationshipsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plRelationshipsRpt'
              mmHeight = 3969
              mmLeft = 27252
              mmTop = 794
              mmWidth = 31221
              BandType = 4
              LayerName = Foreground2
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label7'
              Border.mmPadding = 0
              Caption = 'Relationship:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 6085
              mmTop = 794
              mmWidth = 20151
              BandType = 4
              LayerName = Foreground2
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label12'
              Border.mmPadding = 0
              Caption = 'Name:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 61913
              mmTop = 794
              mmWidth = 9694
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText39: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText39'
              Border.mmPadding = 0
              DataField = 'ADDRESS'
              DataPipeline = plRelationshipsRpt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plRelationshipsRpt'
              mmHeight = 7673
              mmLeft = 138377
              mmTop = 794
              mmWidth = 62706
              BandType = 4
              LayerName = Foreground2
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label30'
              Border.mmPadding = 0
              Caption = 'Address:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Segoe UI'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3810
              mmLeft = 124090
              mmTop = 794
              mmWidth = 13716
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText34'
        OnGetText = ppDBText34GetText
        Border.mmPadding = 0
        DataField = 'GENDER_CLIENTNAMECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 4498
        mmTop = 29104
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText35'
        OnGetText = ppDBText35GetText
        Border.mmPadding = 0
        DataField = 'GENDER_SHORTNAMECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 3704
        mmTop = 34396
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        OnGetText = ppDBText36GetText
        Border.mmPadding = 0
        DataField = 'GENDER_TITLECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 4498
        mmTop = 14023
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        OnGetText = ppDBText37GetText
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'GENDER_LONGNAMECAPTION'
        DataPipeline = plPhoneBookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plPhoneBookRpt'
        mmHeight = 3979
        mmLeft = 99484
        mmTop = 34396
        mmWidth = 25146
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 160602
        mmTop = 2117
        mmWidth = 33486
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3683
        mmLeft = 3969
        mmTop = 1852
        mmWidth = 10033
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plGroupingsRpt: TppDBPipeline
    DataSource = dsGroupingsRpt
    UserName = 'plGroupingsRpt'
    Left = 1001
    Top = 133
    object plGroupingsRptppField1: TppField
      FieldAlias = 'CATEGORY'
      FieldName = 'CATEGORY'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plGroupingsRptppField2: TppField
      FieldAlias = 'OTHERPARTY'
      FieldName = 'OTHERPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object plGroupingsRptppField3: TppField
      FieldAlias = 'ACTINGFOR'
      FieldName = 'ACTINGFOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object plGroupingsRptppField4: TppField
      FieldAlias = 'FIELDNAME'
      FieldName = 'FIELDNAME'
      FieldLength = 32
      DisplayWidth = 32
      Position = 3
    end
  end
  object plPhoneBookRpt: TppDBPipeline
    DataSource = dsPhoneBookRpt
    UserName = 'plPhoneBookRpt'
    Left = 1071
    Top = 128
    object plPhoneBookRptppField1: TppField
      FieldAlias = 'SHORTNAME'
      FieldName = 'SHORTNAME'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plPhoneBookRptppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plPhoneBookRptppField3: TppField
      FieldAlias = 'LONGNAME'
      FieldName = 'LONGNAME'
      FieldLength = 150
      DisplayWidth = 150
      Position = 2
    end
    object plPhoneBookRptppField4: TppField
      FieldAlias = 'HOMEPHONE'
      FieldName = 'HOMEPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object plPhoneBookRptppField5: TppField
      FieldAlias = 'WORKPHONE'
      FieldName = 'WORKPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plPhoneBookRptppField6: TppField
      FieldAlias = 'MOBILE'
      FieldName = 'MOBILE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object plPhoneBookRptppField7: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object plPhoneBookRptppField8: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 7
    end
    object plPhoneBookRptppField9: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plPhoneBookRptppField10: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plPhoneBookRptppField11: TppField
      FieldAlias = 'POSTCODE'
      FieldName = 'POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plPhoneBookRptppField12: TppField
      FieldAlias = 'COUNTRY'
      FieldName = 'COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object plPhoneBookRptppField13: TppField
      FieldAlias = 'DX'
      FieldName = 'DX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plPhoneBookRptppField14: TppField
      FieldAlias = 'DXLOC'
      FieldName = 'DXLOC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object plPhoneBookRptppField15: TppField
      FieldAlias = 'POSTALADDRESS'
      FieldName = 'POSTALADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 14
    end
    object plPhoneBookRptppField16: TppField
      FieldAlias = 'POSTALSUBURB'
      FieldName = 'POSTALSUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object plPhoneBookRptppField17: TppField
      FieldAlias = 'POSTALSTATE'
      FieldName = 'POSTALSTATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object plPhoneBookRptppField18: TppField
      FieldAlias = 'POSTALPOSTCODE'
      FieldName = 'POSTALPOSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object plPhoneBookRptppField19: TppField
      FieldAlias = 'POSTALCOUNTRY'
      FieldName = 'POSTALCOUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 18
    end
    object plPhoneBookRptppField20: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object plPhoneBookRptppField21: TppField
      FieldAlias = 'WWW'
      FieldName = 'WWW'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object plPhoneBookRptppField22: TppField
      FieldAlias = 'SALUTATION'
      FieldName = 'SALUTATION'
      FieldLength = 40
      DisplayWidth = 40
      Position = 21
    end
    object plPhoneBookRptppField23: TppField
      FieldAlias = 'GIVENNAMES'
      FieldName = 'GIVENNAMES'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
    object plPhoneBookRptppField24: TppField
      FieldAlias = 'LASTNAME'
      FieldName = 'LASTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object plPhoneBookRptppField25: TppField
      FieldAlias = 'ACN'
      FieldName = 'ACN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 24
    end
    object plPhoneBookRptppField26: TppField
      FieldAlias = 'ABN'
      FieldName = 'ABN'
      FieldLength = 14
      DisplayWidth = 14
      Position = 25
    end
    object plPhoneBookRptppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object plPhoneBookRptppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object plPhoneBookRptppField29: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 85
      DisplayWidth = 85
      Position = 28
    end
    object plPhoneBookRptppField30: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object plPhoneBookRptppField31: TppField
      FieldAlias = 'GENDER'
      FieldName = 'GENDER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object plPhoneBookRptppField32: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object plPhoneBookRptppField33: TppField
      FieldAlias = 'SPARTY'
      FieldName = 'SPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 32
    end
    object plPhoneBookRptppField34: TppField
      FieldAlias = 'SOLICITOR'
      FieldName = 'SOLICITOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object plPhoneBookRptppField35: TppField
      FieldAlias = 'REAL_ESTATE'
      FieldName = 'REAL_ESTATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object plPhoneBookRptppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALS'
      FieldName = 'REFERRALS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object plPhoneBookRptppField37: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 36
    end
    object plPhoneBookRptppField38: TppField
      FieldAlias = 'MOD_DATE'
      FieldName = 'MOD_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 37
    end
    object plPhoneBookRptppField39: TppField
      FieldAlias = 'MOD_BY'
      FieldName = 'MOD_BY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 38
    end
    object plPhoneBookRptppField40: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 39
    end
    object plPhoneBookRptppField41: TppField
      FieldAlias = 'OCCUPATION'
      FieldName = 'OCCUPATION'
      FieldLength = 35
      DisplayWidth = 35
      Position = 40
    end
    object plPhoneBookRptppField42: TppField
      FieldAlias = 'DOB'
      FieldName = 'DOB'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 41
    end
    object plPhoneBookRptppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNAMEMASTER'
      FieldName = 'NNAMEMASTER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object plPhoneBookRptppField44: TppField
      FieldAlias = 'WHICHADDRESS'
      FieldName = 'WHICHADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 43
    end
    object plPhoneBookRptppField45: TppField
      FieldAlias = 'DEFAULT_REF'
      FieldName = 'DEFAULT_REF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object plPhoneBookRptppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDISBS'
      FieldName = 'ANTDISBS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object plPhoneBookRptppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDRS'
      FieldName = 'ANTDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 46
    end
    object plPhoneBookRptppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALCODE'
      FieldName = 'REFERRALCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object plPhoneBookRptppField49: TppField
      FieldAlias = 'REFERREDBY'
      FieldName = 'REFERREDBY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 48
    end
    object plPhoneBookRptppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSTRYCODE'
      FieldName = 'INDUSTRYCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object plPhoneBookRptppField51: TppField
      FieldAlias = 'REFERRALMAINTAINER'
      FieldName = 'REFERRALMAINTAINER'
      FieldLength = 3
      DisplayWidth = 3
      Position = 50
    end
    object plPhoneBookRptppField52: TppField
      FieldAlias = 'CUST_ADDRESS'
      FieldName = 'CUST_ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 51
    end
    object plPhoneBookRptppField53: TppField
      FieldAlias = 'CUST_SUBURB'
      FieldName = 'CUST_SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object plPhoneBookRptppField54: TppField
      FieldAlias = 'CUST_STATE'
      FieldName = 'CUST_STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 53
    end
    object plPhoneBookRptppField55: TppField
      FieldAlias = 'CUST_POSTCODE'
      FieldName = 'CUST_POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 54
    end
    object plPhoneBookRptppField56: TppField
      FieldAlias = 'CUST_COUNTRY'
      FieldName = 'CUST_COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 55
    end
    object plPhoneBookRptppField57: TppField
      FieldAlias = 'GENDER_DESCR'
      FieldName = 'GENDER_DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 56
    end
    object plPhoneBookRptppField58: TppField
      FieldAlias = 'GENDER_SEARCHCAPTION'
      FieldName = 'GENDER_SEARCHCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 57
    end
    object plPhoneBookRptppField59: TppField
      FieldAlias = 'GENDER_NAMECAPTION'
      FieldName = 'GENDER_NAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 58
    end
    object plPhoneBookRptppField60: TppField
      FieldAlias = 'GENDER_LONGNAMECAPTION'
      FieldName = 'GENDER_LONGNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 59
    end
    object plPhoneBookRptppField61: TppField
      FieldAlias = 'GENDER_SHORTNAMECAPTION'
      FieldName = 'GENDER_SHORTNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 60
    end
    object plPhoneBookRptppField62: TppField
      FieldAlias = 'GENDER_TITLECAPTION'
      FieldName = 'GENDER_TITLECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 61
    end
    object plPhoneBookRptppField63: TppField
      FieldAlias = 'GENDER_ACNCAPTION'
      FieldName = 'GENDER_ACNCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 62
    end
    object plPhoneBookRptppField64: TppField
      FieldAlias = 'GENDER_OCCUPATIONCAPTION'
      FieldName = 'GENDER_OCCUPATIONCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
    object plPhoneBookRptppField65: TppField
      FieldAlias = 'GENDER_CLIENTNAMECAPTION'
      FieldName = 'GENDER_CLIENTNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object plPhoneBookRptppField66: TppField
      FieldAlias = 'GENDER_CLIENTCONTACTCAPTION'
      FieldName = 'GENDER_CLIENTCONTACTCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 65
    end
    object plPhoneBookRptppField67: TppField
      FieldAlias = 'ARCHIVED'
      FieldName = 'ARCHIVED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 66
    end
  end
  object qryGroupingsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ''
      'g.category, '
      'g.otherparty,'
      'g.actingfor,'
      'g.fieldname'
      ''
      'FROM'
      ''
      'pbgroup g,'
      'pbgroupings p'
      ''
      'WHERE'
      ''
      'g.category = p.category(+) AND'
      'p.nname = :nname AND'
      'g.otherparty = '#39'Y'#39
      ''
      'ORDER BY'
      ''
      'g.category')
    Left = 1000
    Top = 23
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qryPhoneBookRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '  NVL(P.SHORTNAME, M.SHORTNAME) as SHORTNAME, '
      '  NVL(P.NAME, M.NAME) as NAME,'
      '  NVL(P.LONGNAME, M.LONGNAME) as LONGNAME,'
      '  NVL(P.HOMEPHONE, M.HOMEPHONE) as HOMEPHONE,'
      '  NVL(P.WORKPHONE, M.WORKPHONE) as WORKPHONE,'
      '  NVL(P.MOBILE, M.MOBILE) as MOBILE,'
      '  NVL(P.FAX, M.FAX) as FAX,       '
      '  NVL(P.ADDRESS, M.ADDRESS) as ADDRESS,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, M.SUBURB), P.SUBURB) as ' +
        'SUBURB,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.STATE, M.STATE), P.STATE) as STA' +
        'TE,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, M.POSTCODE), P.POSTCOD' +
        'E) as POSTCODE,'
      
        '  DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, M.COUNTRY), P.COUNTRY) ' +
        'as COUNTRY,'
      '  NVL(P.DX, M.DX) as DX,'
      '  NVL(P.DXLOC, M.DXLOC) as DXLOC,'
      '  NVL(P.POSTALADDRESS, M.POSTALADDRESS) as POSTALADDRESS,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, M.POSTALSUBU' +
        'RB), P.POSTALSUBURB) as POSTALSUBURB,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, M.POSTALSTATE' +
        '), P.POSTALSTATE) as POSTALSTATE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, M.POSTALPO' +
        'STCODE), P.POSTALPOSTCODE) as POSTALPOSTCODE,'
      
        '  DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, M.POSTALCOU' +
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
      '  NVL(P.CUST_ADDRESS, M.CUST_ADDRESS) as CUST_ADDRESS,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_SUBURB, M.CUST_SUBURB)' +
        ', P.CUST_SUBURB) as CUST_SUBURB,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_STATE, M.CUST_STATE), ' +
        'P.CUST_STATE) as CUST_STATE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_POSTCODE, M.CUST_POSTC' +
        'ODE), P.CUST_POSTCODE) as CUST_POSTCODE,'
      
        '  DECODE(P.CUST_ADDRESS, NULL, NVL(P.CUST_COUNTRY, M.CUST_COUNTR' +
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
      '  p.Archived'
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
      ''
      ''
      '/*'
      ''
      'SELECT'
      'p.rowid,'
      'p.*,'
      'g.descr                AS gender_descr,'
      'g.searchcaption        AS gender_searchcaption,'
      'g.namecaption          AS gender_namecaption,'
      'g.longnamecaption      AS gender_longnamecaption,'
      'g.shortnamecaption     AS gender_shortnamecaption,'
      'g.titlecaption         AS gender_titlecaption,'
      'g.acncaption           AS gender_acncaption,'
      'g.occupationcaption    AS gender_occupationcaption,'
      'g.clientnamecaption    AS gender_clientnamecaption,'
      'g.clientcontactcaption AS gender_clientcontactcaption'
      'FROM'
      'phonebook p, gender g'
      'WHERE'
      'g.code(+) = p.gender AND'
      'p.nname = :nname'
      '*/')
    Left = 1064
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qRelationshipsRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '  r.forward, r.relationship, pb.search as backward, r.rowid, '#39'Y'#39 +
        ' as deleteable, r.backwardCategory, r.backwardSeq,'
      
        '  r.forwardCategory, r.forwardSeq, r.linkTable, r.nunique, r.bac' +
        'kward as search, r.nchild, address'
      'FROM'
      '  relationship r, phonebook pb'
      'WHERE'
      '  r.nparent = :search'
      'AND'
      '  pb.nname = r.nchild'
      'UNION'
      
        '  SELECT null, '#39'Parent'#39' as relationship, search as backward, row' +
        'id, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'FROM '
      '  PHONEBOOK'
      'where'
      ' nname = :nnamemaster'
      'UNION'
      
        '  SELECT null, '#39'Child'#39' as relationship, search as backward, rowi' +
        'd, '#39'N'#39' as deleteable, null, 0, null, 0,'
      '  null, nname as nunique, search, nname as nchild, address'
      'from'
      '  phonebook'
      'where'
      '  nnamemaster = :nname '
      'ORDER BY relationship, backward')
    Left = 1121
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'search'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nnamemaster'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qRelationshipsRptFORWARD: TStringField
      FieldName = 'FORWARD'
      Size = 85
    end
    object qRelationshipsRptRELATIONSHIP: TStringField
      FieldName = 'RELATIONSHIP'
      Size = 35
    end
    object qRelationshipsRptBACKWARD: TStringField
      FieldName = 'BACKWARD'
      Size = 85
    end
    object qRelationshipsRptROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qRelationshipsRptDELETEABLE: TStringField
      FieldName = 'DELETEABLE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qRelationshipsRptBACKWARDCATEGORY: TStringField
      FieldName = 'BACKWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsRptFORWARDCATEGORY: TStringField
      FieldName = 'FORWARDCATEGORY'
      Size = 35
    end
    object qRelationshipsRptLINKTABLE: TStringField
      FieldName = 'LINKTABLE'
    end
    object qRelationshipsRptSEARCH: TStringField
      FieldName = 'SEARCH'
      ReadOnly = True
      Size = 85
    end
    object qRelationshipsRptADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 120
    end
    object qRelationshipsRptBACKWARDSEQ: TFloatField
      FieldName = 'BACKWARDSEQ'
    end
    object qRelationshipsRptFORWARDSEQ: TFloatField
      FieldName = 'FORWARDSEQ'
    end
    object qRelationshipsRptNUNIQUE: TLargeintField
      FieldName = 'NUNIQUE'
    end
    object qRelationshipsRptNCHILD: TLargeintField
      FieldName = 'NCHILD'
    end
  end
  object plRelationshipsRpt: TppDBPipeline
    DataSource = dsRelationshipsRpt
    UserName = 'plRelationshipsRpt'
    Left = 1161
    Top = 114
    object plRelationshipsRptppField1: TppField
      FieldAlias = 'FORWARD'
      FieldName = 'FORWARD'
      FieldLength = 85
      DisplayWidth = 85
      Position = 0
    end
    object plRelationshipsRptppField2: TppField
      FieldAlias = 'RELATIONSHIP'
      FieldName = 'RELATIONSHIP'
      FieldLength = 35
      DisplayWidth = 35
      Position = 1
    end
    object plRelationshipsRptppField3: TppField
      FieldAlias = 'BACKWARD'
      FieldName = 'BACKWARD'
      FieldLength = 85
      DisplayWidth = 85
      Position = 2
    end
    object plRelationshipsRptppField4: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 3
    end
    object plRelationshipsRptppField5: TppField
      FieldAlias = 'DELETEABLE'
      FieldName = 'DELETEABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object plRelationshipsRptppField6: TppField
      FieldAlias = 'BACKWARDCATEGORY'
      FieldName = 'BACKWARDCATEGORY'
      FieldLength = 35
      DisplayWidth = 35
      Position = 5
    end
    object plRelationshipsRptppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'BACKWARDSEQ'
      FieldName = 'BACKWARDSEQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plRelationshipsRptppField8: TppField
      FieldAlias = 'FORWARDCATEGORY'
      FieldName = 'FORWARDCATEGORY'
      FieldLength = 35
      DisplayWidth = 35
      Position = 7
    end
    object plRelationshipsRptppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORWARDSEQ'
      FieldName = 'FORWARDSEQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plRelationshipsRptppField10: TppField
      FieldAlias = 'LINKTABLE'
      FieldName = 'LINKTABLE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plRelationshipsRptppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUNIQUE'
      FieldName = 'NUNIQUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plRelationshipsRptppField12: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 85
      DisplayWidth = 85
      Position = 11
    end
    object plRelationshipsRptppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCHILD'
      FieldName = 'NCHILD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object plRelationshipsRptppField14: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 13
    end
  end
  object dsGroupingsRpt: TUniDataSource
    DataSet = qryGroupingsRpt
    Left = 1004
    Top = 74
  end
  object dsPhoneBookRpt: TUniDataSource
    DataSet = qryPhoneBookRpt
    Left = 1065
    Top = 77
  end
  object dsRelationshipsRpt: TUniDataSource
    DataSet = qRelationshipsRpt
    Left = 1129
    Top = 68
  end
  object qryPartyMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT     '
      '      distinct nmatter,'
      #9'  tablevalue('#39'matter'#39','#39'nmatter'#39',nmatter,'#39'fileid'#39')  as matter, '
      #9'  tablevalue('#39'matter'#39','#39'nmatter'#39',nmatter,'#39'longdescr'#39') as descr'
      '    FROM'
      '      matterparty'
      '    WHERE'
      '      nname = :nname'
      ''
      ''
      '/*'
      'SELECT     '
      '      distinct nunique2 AS nmatter,'
      #9'  tablevalue('#39'matter'#39','#39'nmatter'#39',nunique2,'#39'fileid'#39') as matter, '
      #9'  tablevalue('#39'matter'#39','#39'nmatter'#39',nunique2,'#39'longdescr'#39') as descr '
      '    FROM'
      '      fieldtypelink'
      '    WHERE'
      '      nunique = :nunique AND'
      '      nunique2 IS NOT NULL'
      '*/')
    Left = 434
    Top = 332
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsPartyMatters: TUniDataSource
    DataSet = qryPartyMatters
    Left = 152
    Top = 521
  end
  object qryDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'D.DOC_NAME, D.SEARCH, D.DOC_CODE, '
      '   D.JURIS, D.D_CREATE, D.AUTH1, '
      '   D.D_MODIF, D.AUTH2, D.PATH, '
      '   D.DESCR, D.FILEID, D.DOCID, '
      '   D.NPRECCATEGORY, D.NMATTER, D.DOCUMENT, '
      '   D.IMAGEINDEX, D.FILE_EXTENSION, D.EMAIL_SENT_TO, '
      '   D.TEMPLATEPATH, D.DATAFILEPATH, D.DATAFORM, '
      '   D.WORKFLOWDOCID, D.KEYWORDS, D.PRECEDENT_DETAILS, '
      '   D.NPRECCLASSIFICATION, D.OT_FORMAT, D.OT_VERSION, '
      '   D.SYSTEM_DATE, D.DISPLAY_PATH, D.URL, '
      '   D.WORKFLOWGENDOCUMENT, D.DOC_NOTES, D.EXTERNAL_ACCESS, '
      '   D.EMAIL_FROM, d.is_conflict'
      '  FROM doc d, phonebook_doc pd'
      ' WHERE pd.nname = :nname AND pd.docid = d.docid')
    Left = 441
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsDocs: TUniDataSource
    DataSet = qryDocs
    Left = 313
    Top = 326
  end
  object dsDocList: TUniDataSource
    DataSet = qryDocList
    Left = 337
    Top = 576
  end
  object ppDocList: TppDBPipeline
    DataSource = dsDocList
    UserName = 'DocList'
    Left = 373
    Top = 577
    object ppDocListppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCID'
      FieldName = 'DOCID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppDocListppField2: TppField
      FieldAlias = 'DOC_NAME'
      FieldName = 'DOC_NAME'
      FieldLength = 200
      DisplayWidth = 200
      Position = 1
    end
    object ppDocListppField3: TppField
      FieldAlias = 'D_CREATE'
      FieldName = 'D_CREATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppDocListppField4: TppField
      FieldAlias = 'AUTH1'
      FieldName = 'AUTH1'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object ppDocListppField5: TppField
      FieldAlias = 'D_MODIF'
      FieldName = 'D_MODIF'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppDocListppField6: TppField
      FieldAlias = 'PATH'
      FieldName = 'PATH'
      FieldLength = 255
      DisplayWidth = 255
      Position = 5
    end
    object ppDocListppField7: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 6
    end
    object ppDocListppField8: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDocListppField9: TppField
      FieldAlias = 'DOC_CODE'
      FieldName = 'DOC_CODE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppDocListppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'NPRECCATEGORY'
      FieldName = 'NPRECCATEGORY'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDocListppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMAGEINDEX'
      FieldName = 'IMAGEINDEX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppDocListppField12: TppField
      FieldAlias = 'FILE_EXTENSION'
      FieldName = 'FILE_EXTENSION'
      FieldLength = 5
      DisplayWidth = 5
      Position = 11
    end
    object ppDocListppField13: TppField
      FieldAlias = 'EMAIL_SENT_TO'
      FieldName = 'EMAIL_SENT_TO'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 12
    end
    object ppDocListppField14: TppField
      FieldAlias = #39'DATAFILEPATH'#39
      FieldName = #39'DATAFILEPATH'#39
      FieldLength = 12
      DisplayWidth = 12
      Position = 13
    end
    object ppDocListppField15: TppField
      FieldAlias = 'DATAFORM'
      FieldName = 'DATAFORM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDocListppField16: TppField
      FieldAlias = 'TEMPLATELINEID'
      FieldName = 'TEMPLATELINEID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object ppDocListppField17: TppField
      FieldAlias = 'SOURCE'
      FieldName = 'SOURCE'
      FieldLength = 7
      DisplayWidth = 7
      Position = 16
    end
    object ppDocListppField18: TppField
      FieldAlias = 'AUTH2'
      FieldName = 'AUTH2'
      FieldLength = 3
      DisplayWidth = 3
      Position = 17
    end
  end
  object rptDocList: TppReport
    AutoStop = False
    DataPipeline = ppDocList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    Left = 418
    Top = 578
    Version = '19.02'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDocList'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        Border.mmPadding = 0
        Caption = 'Document List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6773
        mmLeft = 124343
        mmTop = 1852
        mmWidth = 35475
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        OnGetText = ppLabel56GetText
        Border.mmPadding = 0
        Caption = 'Label56'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5122
        mmLeft = 15081
        mmTop = 9790
        mmWidth = 14520
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line11'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 20373
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        Border.mmPadding = 0
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 1588
        mmTop = 17198
        mmWidth = 3937
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = 'Document Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 14552
        mmTop = 17198
        mmWidth = 26628
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label59'
        Border.mmPadding = 0
        Caption = 'Created'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 75406
        mmTop = 17198
        mmWidth = 12531
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 'By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 96573
        mmTop = 17198
        mmWidth = 3979
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label61'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 106363
        mmTop = 17198
        mmWidth = 18288
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label62'
        Border.mmPadding = 0
        Caption = 'Modified'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 198438
        mmTop = 17198
        mmWidth = 13843
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label63'
        Border.mmPadding = 0
        Caption = 'By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 220398
        mmTop = 17198
        mmWidth = 3979
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label65'
        Border.mmPadding = 0
        Caption = 'Sent to'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 230188
        mmTop = 17198
        mmWidth = 11472
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label66'
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5122
        mmLeft = 1588
        mmTop = 9790
        mmWidth = 11980
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        Visible = False
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText31'
        Border.mmPadding = 0
        DataField = 'DOCID'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'DOC_NAME'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 14552
        mmTop = 1323
        mmWidth = 59796
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'D_CREATE'
        DataPipeline = ppDocList
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 75406
        mmTop = 1323
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'AUTH1'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 96573
        mmTop = 1323
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 106363
        mmTop = 1323
        mmWidth = 91017
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText36'
        Border.mmPadding = 0
        DataField = 'D_MODIF'
        DataPipeline = ppDocList
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 198438
        mmTop = 1323
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'AUTH2'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 220398
        mmTop = 1323
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'EMAIL_SENT_TO'
        DataPipeline = ppDocList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDocList'
        mmHeight = 3979
        mmLeft = 230188
        mmTop = 1323
        mmWidth = 51858
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line10'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 529
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable5'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 2646
        mmWidth = 36788
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable6'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 255853
        mmTop = 2646
        mmWidth = 9483
        BandType = 8
        LayerName = Foreground3
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DetailBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DetailBeforePrint;'#13#10'begin'#13#10'    Shape1.Visible := (Deta' +
          'il.Count mod 2) = 1;'#13#10'end;'#13#10
        raProgram.ComponentName = 'Detail'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryDocList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '   doc.DOCid, DOC_NAME,'
      '   D_CREATE, AUTH1, D_MODIF,'
      '   PATH,DESCR, FILEID, DOC_CODE,'
      '   NPRECCATEGORY,   '
      
        '   IMAGEINDEX, FILE_EXTENSION, EMAIL_SENT_TO,'#39'DATAFILEPATH'#39',null' +
        ' as DATAFORM,'
      '   null as TEMPLATELINEID,'#39'FROMDOC'#39' as source, auth2'
      'FROM DOC, PHONEBOOK_DOC '
      'where nname = :nname'
      'and doc.docid = PHONEBOOK_DOC.docid'
      'order by 4 desc')
    Left = 283
    Top = 579
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qrySingleDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select doc.*, doc.rowid'
      'from doc'
      'where docid = :docid'
      '')
    Left = 744
    Top = 250
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object tmrDocSearch: TTimer
    Enabled = False
    OnTimer = tmrDocSearchTimer
    Left = 66
    Top = 333
  end
  object ilstDocuments: TImageList
    Left = 722
    Top = 593
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000663300006633
      0000990000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090A9AD0099CCFF0099CCFF0099CCFF0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000000000000000000000000000005F5F5F00CC663300000000000000
      00000000000099660000292929006633000099000000CC333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC003399CC003399CC003399
      CC006699990099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0066CCFF0066CC
      FF0066CCCC000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000008080
      8000000000000000000000000000000000005F5F5F0099660000000000000000
      00001616160099000000CC330000CC66330099660000CC660000FF6633009966
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F8F8F800E3E3E3006699
      CC00CCFFFF00CCFFFF00C6D6EF0099CCFF0099CCFF0099CCFF0099CCFF0066CC
      FF0066CCFF0066CCCC0000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000008080
      8000808080000000000000000000000000005F5F5F00FF663300000000009933
      0000CC333300CC333300CC660000FF663300FF663300FF663300FF663300FF66
      3300FF6633009966000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF006699CC0099CC
      CC00CCFFFF00CCFFFF00CCFFFF00C6D6EF0099CCFF0099CCFF0099CCFF0099CC
      FF0066CCFF0066CCFF0090A9AD00000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000005F5F5F00FF663300660000009900
      0000CC333300CC660000FF663300996600009966000099660000FF663300FF66
      3300FF663300FF66330099660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F1F1F1003366CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0066CCCC000066CC003399CC0099CCFF0099CC
      FF0099CCFF0066CCFF0090A9AD0000000000000000000000000080808000C0C0
      C000000000000000000000000000C0C0C000000000000000000000000000C0C0
      C0000000000080808000808080000000000055555500FF663300996600009933
      330099660000FF663300CC660000000000000000000000000000CC333300FF66
      3300FF990000CC993300CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F1F1F1003366CC00F0FB
      FF00CCFFFF00CCFFFF0099CCCC000066CC003399CC003399CC000099CC0099CC
      FF0099CCFF0099CCFF0099CCCC00000000000000000080808000000000000000
      00000000000000000000C0C0C000FF000000C0C0C00000000000000000000000
      0000000000000000000080808000000000005555550099666600FF6633009933
      3300CC660000FF66330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F8F8F8003366CC00C6D6
      EF00F0FBFF0099CCCC00006699003399CC00CCFFFF00CCFFFF003399CC000099
      CC0066CCFF0099CCFF0099CCFF00000000000000000080808000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000080808000808080007777770077777700FF663300FF66
      0000CC660000FF663300FF663300FF663300CC993300CC993300CC993300FF99
      0000FF990000FF990000FF990000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF003366CC00C6D6
      EF00F0FBFF00006699003399CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF006699
      CC0066CCCC0099CCFF0099CCFF00000000008080800000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000080808000000000003399990066999900FF66
      3300CC660000FF663300FF663300FF663300CC993300CC993300FF990000FF99
      0000FF990000FF990000FF990000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF006699CC009999
      CC00F0FBFF00C6D6EF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00C6D6EF0099CCFF00B2B2B200000000008080800000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000080808000000000006633330066CCCC00CC66
      6600FF663300FF6633000000000000000000000000000000000099000000FFCC
      3300FFFF6600FFFF6600FF990000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF0099CCFF006699
      CC00C6D6EF00F0FBFF00F0FBFF00F0FBFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00C6D6EF0000000000000000008080800000000000000000000000
      0000000000000000000000000000C0C0C000FF000000FF000000000000000000
      00000000000000000000000000008080800000000000CC3333009966000099FF
      FF00CC666600FF663300CC660000000000000000000000000000CC660000FFCC
      3300FFFF9900FFFF3300CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399FF00F0FBFF0099CCFF0099CC
      FF0099CCCC00C6D6EF00F0FBFF00F0FBFF00F0FBFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF006699CC0000000000000000008080800000000000000000000000
      000000000000FF000000FF00000000000000FF000000FF000000000000000000
      000000000000000000000000000000000000000000000000000099000000CC66
      000099FFFF00CC666600FF993300CC660000CC333300CC660000FFCC3300FFFF
      6600FFFF6600FF990000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0099CCFF000000000099CC
      FF0099CCFF0099CCFF0099CCFF0099CCFF00C6D6EF00CCFFFF00D6E7E700C6D6
      EF0099CCFF003399FF0000000000000000000000000080808000000000000000
      000000000000C0C0C000FF000000FF000000FF000000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      0000CC660000B2B2B200CC996600CC993300CC993300CC993300FFCC0000FFCC
      3300FF993300FF99000000000000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF000000
      0000C6D6EF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CCFF0099CC
      FF0099CCFF003399FF0000000000000000000000000080808000C0C0C0000000
      00000000000000000000C0C0C000FF000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC660000CC660000FF663300FF663300CC993300CC993300FF990000FF99
      0000CC6600000000000000000000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC0099CC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000003399FF0000000000000000000000000000000000808080008080
      8000C0C0C0000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000CC660000CC660000CC660000FF663300CC6600000000
      0000000000000000000000000000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      CC003399CC003399FF003399FF003399FF003399FF003399FF003399FF003399
      FF003399FF003399FF0000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      00000000000000000000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A0000000000000000000000000009999
      9900333333001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C1C001C1C
      1C001C1C1C001C1C1C0033333300999999000000000000000000000000000000
      0000C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000009999
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086868600000000000000000000000000CC66
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000003399330033663300969696000000
      000000000000000000000000000000000000F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F8F8F8000000000000000000A4A0A000000000000000000000000000A4A0
      A000000000005050FF009999FF00000000000000000000000000000000000000
      000000000000000000000000000086868600996666009966660099666600CC66
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000000000000000000000000000C0C0
      C000000000000000000000000000000000003366330099CC9900C0DCC0000000
      0000000000000000000000000000F0FBFF00F0FBFF0099CC9900006633000066
      3300F1F1F1000000000000000000A4A0A000000000000000000000000000A4A0
      A00000000000CCCCFF009999FF00CCCCFF000000000000000000000000000000
      00000000000000000000000000008686860099663300F0CAA600CC999900CC66
      6600000000000000000000000000000000000000000000000000F8F8F8000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000000000C0C0
      C0000000000000000000000000000000000033663300C0C0C000969696000000
      000099CC990066CC990066CC660066CC66006699660000663300006633006699
      66006699660099CC990000000000A4A0A000000000000000000000000000A4A0
      A000000000000000000000000000807CFF00CCCCFF009999FF009999FF009999
      FF009999FF00807CFF00000000008686860099663300F0CAA600CC666600CC66
      66000000000000000000F8F8F800F0CAA60000000000EAEAEA00CC999900F8F8
      F800000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0DCC000336633000000
      000000000000C0DCC00066CC660066CC66003366330000663300669966006699
      6600669966006699660000000000A4A0A000000000000000000000000000A4A0
      A000000000000000000000000000EAEAEA006666FF00CCCCFF005050FF00CCCC
      FF009999FF00CCCCFF00000000008686860099663300F0CAA60099663300CC66
      66000000000000000000F1F1F100CC663300F1F1F100EAEAEA00CC663300FFCC
      CC00000000000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C0000000000000000000000000000000000033663300C0DCC000336633000000
      00000000000000000000E3E3E300339966000066330033663300C0DCC0000000
      0000F0FBFF00F0FBFF0000000000A4A0A000000000000000000000000000A4A0
      A000000000000000000000000000F1F1F1006666FF003333FF00F1F1F100F1F1
      F100F1F1F10000000000000000008686860099663300F0CAA60099333300CC66
      660000000000000000000000000099333300CC666600E3E3E30099333300CC66
      6600F8F8F8000000000000000000A4A0A0000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000000000000000000000000000C0C0
      C0000000000000000000000000000000000033663300C0DCC000336633000000
      00000000000000000000C0DCC00000663300006633006699660066CC660099CC
      9900F8F8F8000000000000000000A4A0A000000000000000000000000000A4A0
      A00000000000F1F1F100F1F1F100F1F1F1009999FF009999FF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1008686860099663300F0CAA60099333300CC66
      660000000000000000000000000099333300CC996600CC99990099333300CCCC
      9900CC9999000000000000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000000000C0C0
      C0000000000000000000000000000000000033663300C0DCC000336633000000
      000000000000F1F1F100006633000066330090A9AD00EAEAEA0066CC660066CC
      660099CC9900F1F1F10000000000B2B2B200000000000000000000000000A4A0
      A00000000000F1F1F100F1F1F100F1F1F1006666FF00CCCCFF00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1009696960099663300F0CAA60099333300CC66
      6600F1F1F100000000000000000099663300FFCCCC00CC663300993333000000
      000099663300FFECCC0000000000B2B2B2000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000033993300D7D7D700669966000000
      00000000000033996600339933006699660000000000000000000000000066CC
      660066CC660099CC990000000000B2B2B200000000000000000000000000A4A0
      A000F1F1F100F1F1F100F1F1F100F1F1F100807CFF00CCCCFF00F1F1F100F1F1
      F100EAEAEA00EAEAEA00D7D7D7009696960099666600CCCCCC00CC996600CC66
      6600D7D7D70000000000CC996600CC666600CC996600E3E3E300996633000000
      0000CC996600CC66660000000000B2B2B2000000000000000000C0C0C000C0C0
      C000000000000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000033993300D7D7D70099CC99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000800000008000000080000000
      6600000066000000660000006600000066000000660000006600EAEAEA00E3E3
      E300E3E3E300C0C0C000969696009999990099666600FFCCCC00CC999900CC66
      6600CBCBCB0000000000F8F8F800FFECCC00F8F8F80000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      00000000000000FFFF0000000000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000033993300C0DCC00099CC99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000008000A4A0A0008686
      86008686860096969600A4A0A000B2B2B200CC666600D7D7D700CC999900CC66
      6600C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006699660099CC9900EAEAEA0099CC
      990099CC990099CC990099CC990099CC990099CC990099CC990099CC990099CC
      9900F1F1F1003399330000000000000000000000CC003333FF003333FF003333
      FF003333FF000000CC000000CC000000CC000000CC0000009900868686000000
      000000000000DDDDDD0099999900C0C0C000CC999900CCCC9900FFECCC00CC66
      6600CCCC99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000000000000000000000000000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033993300C0DCC000F1F1
      F100C0DCC00099CC990099CC990099CC990099CC990099CC990099CC990099CC
      9900F1F1F1003399330000000000000000000000CC000000CC000000CC000000
      CC000000CC000000CC000000CC000000CC000000CC0000009900A4A0A0000000
      0000DDDDDD0099999900B2B2B200000000000000000099666600CCCCCC00FFEC
      CC00CC999900CC999900CC999900CC999900CC999900CC999900CC999900CC99
      9900CC999900CC99660000000000000000000000000000000000000000000000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000003399330099CC
      9900DDDDDD00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F1006699330000000000000000000000000000000000000000009999
      990000000000F1F1F100F1F1F100EAEAEA00EAEAEA00E3E3E300C0C0C000DDDD
      DD00A4A0A000B2B2B2000000000000000000000000000000000099666600CCCC
      9900EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00CC99660000000000000000000000000000000000FFFF00000000
      0000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000000066CC
      6600339933003399330033993300339933003399330033993300339933003399
      330033993300669933000000000000000000000000000000000000000000B2B2
      B200999999009999990096969600999999009696960096969600969696009999
      9900C0C0C000000000000000000000000000000000000000000000000000CC99
      9900CC996600CC666600CC666600CC66660099666600CC666600CC666600CC66
      6600CC666600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFF8FC7FF0000FC0FFE4F383F0000
      0007F8CF300F00000003F1C7200300000001E7C3000100000001CEE101C10000
      0001BC7903FF00000001BEF80001000000017EFC8001000000017E7C83C10000
      00037E3C81C100000003793DC00100002003B83BE002000090039C7BF0060000
      CFFBC7E7FC1E0000E003F01FFFED0000E000E000F0008003DFFEEFFEEFFEBF8B
      1F06E9FE0FFEBC0B1E06E8FE0FDEB80B1002EE020C8EB91B1802EE020C0EB98B
      1C12EE060E06B80B1C06E8000E06B80B1802E8000612B81B18E2E0000412C0FB
      1FFE0000047EC0FB1FFE000007FEC1FB0003001807FEC7FB8003001180038003
      C003E803C0038003E003E007E003880300000000000000000000000000000000
      000000000000}
  end
  object FormMgr: TRwMAPIFormManager
    MAPISession = dmAxiom.MapiSession
    Left = 369
    Top = 463
  end
  object UniQuery1: TUniQuery
    UpdatingTable = 'doc'
    SQLRefresh.Strings = (
      'WHERE'
      '  D.NCLIENT = :NCLIENT')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.DOC_NAME, D.SEARCH, D.DOC_CODE, '
      '   D.JURIS, D.D_CREATE, D.AUTH1, '
      '   D.D_MODIF, D.AUTH2, D.PATH, '
      '   D.DESCR, D.FILEID, D.DOCID, '
      '   D.NPRECCATEGORY, D.NMATTER, '
      '   D.IMAGEINDEX, D.FILE_EXTENSION, D.EMAIL_SENT_TO, '
      '   D.TEMPLATEPATH, D.DATAFILEPATH, D.DATAFORM, '
      '   D.WORKFLOWDOCID, D.KEYWORDS, D.PRECEDENT_DETAILS, '
      '   D.NPRECCLASSIFICATION, D.OT_VERSION, D.OT_FORMAT, '
      '   D.DISPLAY_PATH, D.URL, '
      '   D.EXTERNAL_ACCESS, D.WORKFLOWGENDOCUMENT, D.DOC_NOTES, '
      '   D.DUMMY, D.EMAIL_FROM'
      '  FROM phonebook p, doc d, phonebook_doc pd'
      ' WHERE p.nclient = :nclient '
      ' and p.nname = pd.nname '
      ' AND pd.docid = d.docid')
    Left = 920
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 907
    Top = 650
  end
end
