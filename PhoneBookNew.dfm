object frmPhoneBookNew: TfrmPhoneBookNew
  Left = 420
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'New Contact Entry'
  ClientHeight = 641
  ClientWidth = 581
  Color = clBtnFace
  Constraints.MinHeight = 545
  Constraints.MinWidth = 580
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    581
    641)
  PixelsPerInch = 96
  TextHeight = 15
  object Label18: TLabel
    Left = 65
    Top = 553
    Width = 40
    Height = 15
    Caption = 'Label18'
  end
  object bnOk: TButton
    Left = 392
    Top = 607
    Width = 81
    Height = 27
    Action = aOk
    Anchors = [akRight, akBottom]
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object bnCancel: TButton
    Left = 479
    Top = 607
    Width = 80
    Height = 27
    Action = aCancel
    Anchors = [akRight, akBottom]
    Cancel = True
    ModalResult = 2
    TabOrder = 3
  end
  object bnPrev: TButton
    Left = 203
    Top = 607
    Width = 80
    Height = 27
    Action = aPrev
    Anchors = [akRight, akBottom]
    TabOrder = 0
  end
  object bnNext: TButton
    Left = 289
    Top = 607
    Width = 81
    Height = 27
    Action = aNext
    Anchors = [akRight, akBottom]
    TabOrder = 1
  end
  object cbAddToOutlook: TCheckBox
    Left = 9
    Top = 611
    Width = 164
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Add to Outlook Contacts'
    TabOrder = 4
  end
  object pcPages: TcxPageControl
    Left = 10
    Top = 8
    Width = 558
    Height = 593
    TabOrder = 5
    Properties.ActivePage = tsClient
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    OnChange = pcPagesChange
    ClientRectBottom = 589
    ClientRectLeft = 4
    ClientRectRight = 554
    ClientRectTop = 46
    object tsName: TcxTabSheet
      Caption = 'Name'
      ImageIndex = 0
      OnExit = tsNameExit
      OnShow = tsNameShow
      DesignSize = (
        550
        543)
      object Label46: TLabel
        Left = 122
        Top = 430
        Width = 297
        Height = 15
        Caption = 'Conflict search is based on the Last Name value entered.'
      end
      object lblMasterPhoneBookEntry: TLabel
        Left = 84
        Top = 469
        Width = 107
        Height = 13
        Alignment = taRightJustify
        Caption = 'Parent Contact Entry'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lGivenNames: TLabel
        Left = 43
        Top = 79
        Width = 73
        Height = 15
        Alignment = taRightJustify
        Caption = 'Given Names:'
      end
      object lGender: TLabel
        Left = 45
        Top = 6
        Width = 71
        Height = 15
        Alignment = taRightJustify
        Caption = 'Type/Gender:'
      end
      object Bevel2: TBevel
        Left = 11
        Top = 134
        Width = 501
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 503
      end
      object Bevel1: TBevel
        Left = 11
        Top = 229
        Width = 501
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 503
      end
      object Label14: TLabel
        Left = 51
        Top = 290
        Width = 29
        Height = 15
        Caption = 'Total:'
      end
      object Bevel9: TBevel
        Left = 11
        Top = 456
        Width = 501
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
      end
      object lLastName: TLabel
        Left = 57
        Top = 107
        Width = 59
        Height = 15
        Alignment = taRightJustify
        Caption = 'Last Name:'
      end
      object lSearchMatches: TLabel
        Left = 21
        Top = 266
        Width = 96
        Height = 15
        Alignment = taRightJustify
        Caption = 'Search Duplicates:'
      end
      object lSearch: TLabel
        Left = 13
        Top = 241
        Width = 103
        Height = 15
        Alignment = taRightJustify
        Caption = 'Key Name (Search):'
      end
      object lTotalConflicts: TLabel
        Left = 86
        Top = 290
        Width = 6
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
      object lShortName: TLabel
        Left = 50
        Top = 175
        Width = 66
        Height = 15
        Alignment = taRightJustify
        Caption = 'Short Name:'
      end
      object lName: TLabel
        Left = 24
        Top = 148
        Width = 92
        Height = 15
        Alignment = taRightJustify
        Caption = 'Name/Company:'
      end
      object lLongName: TLabel
        Left = 51
        Top = 201
        Width = 65
        Height = 15
        Alignment = taRightJustify
        Caption = 'Long Name:'
      end
      object lSalutation: TLabel
        Left = 60
        Top = 53
        Width = 56
        Height = 15
        Alignment = taRightJustify
        Caption = 'Salutation:'
      end
      object lNamed: TLabel
        Left = 78
        Top = 30
        Width = 38
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
      object eLastName: TDBEdit
        Left = 122
        Top = 104
        Width = 386
        Height = 23
        DataField = 'LASTNAME'
        DataSource = dsPhoneBook
        TabOrder = 3
        OnChange = eGivenNamesChange
        OnExit = eLastNameExit
      end
      object eGivenNames: TDBEdit
        Left = 122
        Top = 76
        Width = 386
        Height = 23
        DataField = 'GIVENNAMES'
        DataSource = dsPhoneBook
        TabOrder = 2
      end
      object eName: TDBEdit
        Left = 122
        Top = 145
        Width = 386
        Height = 23
        DataField = 'NAME'
        DataSource = dsPhoneBook
        TabOrder = 4
      end
      object eLongName: TDBEdit
        Left = 122
        Top = 198
        Width = 386
        Height = 23
        DataField = 'LONGNAME'
        DataSource = dsPhoneBook
        TabOrder = 6
      end
      object btnDeleteMasterPhoneBookEntry: TButton
        Left = 461
        Top = 491
        Width = 80
        Height = 25
        Hint = 'Remove Parent'
        Caption = 'Remove'
        TabOrder = 8
        OnClick = btnDeleteMasterPhoneBookEntryClick
      end
      object bbtnContactOpen: TBitBtn
        Left = 508
        Top = 266
        Width = 34
        Height = 27
        Action = aOpenMatch
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object dbedtMasterPhoneBookEntry: TcxDBButtonEdit
        Left = 120
        Top = 491
        Hint = 
          'Use this field to create a Master/Child Relationship between Con' +
          'tact records.'
        DataBinding.DataField = 'SEARCH'
        DataBinding.DataSource = dsMasterPhoneBookEntry
        ParentShowHint = False
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
        Properties.MaxLength = 0
        Properties.OnButtonClick = dddPropertiesButtonClick
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 10
        Width = 341
      end
      object cbGender: TcxDBLookupComboBox
        Left = 122
        Top = 3
        DataBinding.DataField = 'GENDER'
        DataBinding.DataSource = dsPhoneBook
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsGender
        Properties.MaxLength = 0
        Properties.OnChange = cbGenderPropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 171
      end
      object eSalutation: TDBEdit
        Left = 122
        Top = 49
        Width = 231
        Height = 21
        DataField = 'SALUTATION'
        DataSource = dsPhoneBook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object pbConvertToCreditor: TBitBtn
        Left = 392
        Top = 1
        Width = 149
        Height = 26
        Caption = 'Convert to Creditor...'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF0000FFFFFFF0BB00444400
          FFFF3B00CCC2CCC40FFF3F00CC02200000003BB0C00223BBBB0F3FBB0B0223FB
          B0FFF3FBBB0223BFBB0FFF0FBB0C23F3FBB0F0FBFB0CC33C3FB033333306C3C2
          03F0FFF788766C2C03B0FFFF778CC670BB0FFFFFFF7777FF33FF}
        TabOrder = 11
        Visible = False
        OnClick = pbConvertToCreditorClick
      end
      object pbConvertToClient: TBitBtn
        Left = 392
        Top = 26
        Width = 149
        Height = 25
        Caption = 'Convert to Client...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00000000000000FFFFFF0000000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
          0000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
          FF0000000000FF000000FF00FF00FF00FF00FF00FF00FF00FF0084000000FF00
          0000FF000000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFF
          FF00FFFFFF0000000000FF000000FF00FF00FF00FF00FF00FF00FF0000008400
          0000FF000000FF000000FF000000FF000000FF000000FF00000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FF000000FF00FF00FF00FF00FF00FF00FF00
          000084000000FF000000FF00000000000000FF000000FF000000FF0000000000
          0000FFFFFF00FFFFFF00FFFFFF0000000000FF000000FF00FF00FF00FF00FF00
          FF00FF00000084000000FF000000FF000000FF00000000000000FF000000FF00
          000000000000FFFFFF0000000000FF000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00000084000000FF0000000000000000000000FF000000FF00
          0000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00000084000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00000084000000FF000000FF000000FF00
          0000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000084000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 12
        Visible = False
        OnClick = pbConvertToClientClick
      end
      object btnPrintConflicts: TBitBtn
        Left = 508
        Top = 321
        Width = 34
        Height = 27
        Hint = 'Save Matches to file'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFF9B9B
          FDFD9B9BFFFFFFFFFFFFFFFFFF9BF7F79B9B9BF69B9B9BFFFFFFFFFF9B08F7F7
          F752529B07F6079B9B9BFF9B0807F7F7F75200000000A4079BFD9B0707F70807
          0707F7F75B0000009BA49B07F7F6F6F6F60808070707F75BA4A49BF7F6F6F608
          F7F7070708080707F79BFF9B9BF607A4F7F7F7F7F7F70707079BFFFFFF9BEB9B
          9BA49BA4F7F707079BFFFFFFFFFFEB090909EBEBEBA49B9BFFFFFFFFFFFFEB09
          09090909EBFFFFFFFFFFFFFFFFEB0909090909EBFFFFFFFFFFFFFFFFFFEB0909
          090909EBFFFFFFFFFFFFFFFFEBF6F609090909EBFFFFFFFFFFFFFFFFEBEBEBF6
          0909EBFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFFFFFFFFFFFFFFFF}
        TabOrder = 13
        Visible = False
        OnClick = btnPrintConflictsClick
      end
      object eShortName: TDBEdit
        Left = 122
        Top = 171
        Width = 386
        Height = 23
        DataField = 'SHORTNAME'
        DataSource = dsPhoneBook
        TabOrder = 5
        OnKeyPress = eShortNameKeyPress
      end
      object eSearch: TcxDBTextEdit
        Left = 122
        Top = 238
        DataBinding.DataField = 'SEARCH'
        DataBinding.DataSource = dsPhoneBook
        Properties.OnChange = eSearchPropertiesChange
        Properties.OnValidate = eSearchPropertiesValidate
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 7
        OnEnter = eSearchEnter
        Width = 386
      end
      object pbConvertFromPhonebook: TBitBtn
        Left = 392
        Top = 50
        Width = 149
        Height = 26
        Caption = 'From Contact...'
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
        TabOrder = 14
        Visible = False
        OnClick = pbConvertFromPhonebookClick
      end
      object lbSearchMatches: TListBox
        Left = 122
        Top = 266
        Width = 386
        Height = 148
        TabStop = False
        Style = lbOwnerDrawFixed
        IntegralHeight = True
        TabOrder = 15
        OnDblClick = lbSearchMatchesDblClick
        OnDrawItem = lbSearchMatchesDrawItem
      end
      object chkProspectiveClient: TcxDBCheckBox
        Left = 300
        Top = 3
        Caption = 'Prospective'
        DataBinding.DataField = 'PROSPECTIVE'
        DataBinding.DataSource = dsPhoneBook
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        TabOrder = 16
        OnClick = chkProspectiveClientClick
      end
    end
    object tsAddress: TcxTabSheet
      AlignWithMargins = True
      Caption = 'Address'
      ImageIndex = 1
      OnShow = tsAddressShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object tsAddresses: TcxPageControl
        Left = 0
        Top = 0
        Width = 544
        Height = 537
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsMainAddress
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 533
        ClientRectLeft = 4
        ClientRectRight = 540
        ClientRectTop = 26
        object tsMainAddress: TcxTabSheet
          Caption = 'Main Address'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            536
            507)
          object lPostalCountry: TLabel
            Left = 55
            Top = 375
            Width = 46
            Height = 15
            Alignment = taRightJustify
            Caption = 'Country:'
          end
          object lPostalPostCode: TLabel
            Left = 44
            Top = 348
            Width = 57
            Height = 15
            Alignment = taRightJustify
            Caption = 'Post Code:'
          end
          object lPostalState: TLabel
            Left = 72
            Top = 320
            Width = 29
            Height = 15
            Alignment = taRightJustify
            Caption = 'State:'
          end
          object lPostalAddress: TLabel
            Left = 56
            Top = 223
            Width = 45
            Height = 15
            Alignment = taRightJustify
            Caption = 'Address:'
          end
          object Bevel3: TBevel
            Left = -438
            Top = 198
            Width = 926
            Height = 2
            Anchors = [akLeft, akTop, akRight]
            Shape = bsTopLine
            ExplicitWidth = 930
          end
          object Bevel4: TBevel
            Left = -438
            Top = 401
            Width = 926
            Height = 2
            Anchors = [akLeft, akTop, akRight]
            Shape = bsTopLine
            ExplicitWidth = 930
          end
          object lPostal: TLabel
            Left = 7
            Top = 204
            Width = 130
            Height = 13
            Caption = 'Correspondence Address'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lStreetPostCode: TLabel
            Left = 38
            Top = 144
            Width = 62
            Height = 15
            Alignment = taRightJustify
            Caption = 'Post Code:*'
          end
          object lStreetState: TLabel
            Left = 72
            Top = 118
            Width = 29
            Height = 15
            Alignment = taRightJustify
            Caption = 'State:'
          end
          object lStreetSuburb: TLabel
            Left = 21
            Top = 94
            Width = 80
            Height = 15
            Alignment = taRightJustify
            Caption = 'Town/Suburb:*'
          end
          object lStreetCountry: TLabel
            Left = 55
            Top = 170
            Width = 46
            Height = 15
            Alignment = taRightJustify
            Caption = 'Country:'
          end
          object lPostalSuburb: TLabel
            Left = 26
            Top = 294
            Width = 75
            Height = 15
            Alignment = taRightJustify
            Caption = 'Town/Suburb:'
          end
          object lStreet: TLabel
            Left = 22
            Top = 3
            Width = 75
            Height = 13
            Caption = 'Street Address'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lStreetAddress: TLabel
            Left = 51
            Top = 23
            Width = 50
            Height = 15
            Alignment = taRightJustify
            Caption = 'Address:*'
          end
          object cbStreetState: TcxDBComboBox
            Left = 107
            Top = 116
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
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 3
            Width = 214
          end
          object ckPostalDefault: TCheckBox
            Tag = 2
            Left = 328
            Top = 226
            Width = 68
            Height = 18
            Caption = 'Default'
            TabOrder = 8
            OnClick = ckDefaultClick
          end
          object ckStreetDefault: TCheckBox
            Tag = 1
            Left = 336
            Top = 23
            Width = 69
            Height = 18
            Caption = 'Default'
            TabOrder = 1
            OnClick = ckDefaultClick
          end
          object cbStreetCountry: TcxDBLookupComboBox
            Left = 107
            Top = 168
            DataBinding.DataField = 'COUNTRY'
            DataBinding.DataSource = dsPhoneBook
            Properties.ClearKey = 46
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'NAME'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmAxiom.dsCountryList
            TabOrder = 5
            Width = 214
          end
          object btnCopyStreetAddress: TcxButton
            Left = 334
            Top = 164
            Width = 91
            Height = 27
            Action = aCopyAddressDown
            DropDownMenu = popCopyStreetAddress
            Kind = cxbkDropDownButton
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = True
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00}
            OptionsImage.Spacing = 1
            TabOrder = 6
          end
          object cbPostalCountry: TcxDBLookupComboBox
            Left = 107
            Top = 372
            DataBinding.DataField = 'POSTALCOUNTRY'
            DataBinding.DataSource = dsPhoneBook
            Properties.ClearKey = 46
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'NAME'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmAxiom.dsCountryList
            TabOrder = 11
            Width = 214
          end
          object cbPostalState: TcxDBComboBox
            Left = 107
            Top = 318
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
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 12
            Width = 214
          end
          object mPostalAddress: TDBRichEdit
            Left = 107
            Top = 223
            Width = 214
            Height = 64
            Color = clWhite
            DataField = 'POSTALADDRESS'
            DataSource = dsPhoneBook
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            TabOrder = 7
            Zoom = 100
          end
          object mStreetAddress: TDBRichEdit
            Left = 107
            Top = 23
            Width = 214
            Height = 64
            Color = clWhite
            DataField = 'ADDRESS'
            DataSource = dsPhoneBook
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            TabOrder = 0
            Zoom = 100
          end
          object pnlDX: TPanel
            Left = 0
            Top = 406
            Width = 488
            Height = 86
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 14
            object lDX: TLabel
              Left = 87
              Top = 0
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
            end
            object lDXAddress: TLabel
              Left = 27
              Top = 24
              Width = 75
              Height = 15
              Alignment = taRightJustify
              Caption = 'Box / Address:'
            end
            object lDXLocation: TLabel
              Left = 53
              Top = 51
              Width = 49
              Height = 15
              Alignment = taRightJustify
              Caption = 'Location:'
            end
            object eDXAddress: TDBEdit
              Left = 107
              Top = 20
              Width = 214
              Height = 23
              DataField = 'DX'
              DataSource = dsPhoneBook
              TabOrder = 0
            end
            object eDXLocation: TDBEdit
              Left = 107
              Top = 46
              Width = 214
              Height = 23
              DataField = 'DXLOC'
              DataSource = dsPhoneBook
              TabOrder = 2
            end
            object ckDXDefault: TCheckBox
              Left = 326
              Top = 21
              Width = 75
              Height = 18
              Caption = 'Default'
              TabOrder = 1
              OnClick = ckDefaultClick
            end
          end
          object eStreetSuburb: TcxDBButtonEdit
            Left = 107
            Top = 91
            AutoSize = False
            DataBinding.DataField = 'SUBURB'
            DataBinding.DataSource = dsPhoneBook
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
                Stretchable = False
              end>
            Properties.MaxLength = 0
            Properties.OnButtonClick = eStreetSuburbPropertiesButtonClick
            Properties.OnValidate = eStreetSuburbPropertiesValidate
            Style.Color = clWhite
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 2
            Height = 22
            Width = 214
          end
          object ePostalPostCode: TDBEdit
            Left = 107
            Top = 345
            Width = 135
            Height = 23
            DataField = 'POSTALPOSTCODE'
            DataSource = dsPhoneBook
            TabOrder = 10
            OnExit = ePostalPostCodeExit
          end
          object ePostalSuburb: TcxDBButtonEdit
            Left = 107
            Top = 291
            DataBinding.DataField = 'POSTALSUBURB'
            DataBinding.DataSource = dsPhoneBook
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.MaxLength = 0
            Properties.OnButtonClick = eStreetSuburbPropertiesButtonClick
            Properties.OnValidate = eStreetSuburbPropertiesValidate
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 9
            Width = 214
          end
          object eStreetPostCode: TDBEdit
            Left = 107
            Top = 141
            Width = 136
            Height = 23
            DataField = 'POSTCODE'
            DataSource = dsPhoneBook
            TabOrder = 4
            OnExit = eStreetPostCodeExit
          end
          object btnCopyPostalAddress: TcxButton
            Left = 334
            Top = 370
            Width = 91
            Height = 26
            Action = aCopyAddressUp
            DropDownMenu = popCopyPostalAddress
            Kind = cxbkDropDownButton
            LookAndFeel.NativeStyle = True
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
              00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FF000000FF0000
              00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF000000FFFF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 13
          end
        end
        object tsCustomAddress: TcxTabSheet
          Hint = 
            'Additional address for contact.  This is usually set as the bill' +
            'ing Address.  Tab name can be changed by going to Launch->Mainte' +
            'nance->Options->Display Names tab.'
          Caption = 'Custom Address'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label16: TLabel
            Left = 53
            Top = 24
            Width = 45
            Height = 15
            Alignment = taRightJustify
            Caption = 'Address:'
          end
          object Label17: TLabel
            Left = 23
            Top = 95
            Width = 75
            Height = 15
            Alignment = taRightJustify
            Caption = 'Town/Suburb:'
          end
          object lCustomState: TLabel
            Left = 69
            Top = 121
            Width = 29
            Height = 15
            Alignment = taRightJustify
            Caption = 'State:'
          end
          object Label19: TLabel
            Left = 44
            Top = 147
            Width = 57
            Height = 15
            Alignment = taRightJustify
            Caption = 'Post Code:'
          end
          object Label20: TLabel
            Left = 52
            Top = 173
            Width = 46
            Height = 15
            Alignment = taRightJustify
            Caption = 'Country:'
          end
          object lblCustomAddress: TLabel
            Left = 16
            Top = 3
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
          end
          object ckCustomDefault: TCheckBox
            Tag = 3
            Left = 330
            Top = 29
            Width = 69
            Height = 18
            Caption = 'Default'
            TabOrder = 0
            OnClick = ckDefaultClick
          end
          object cmbCustCountry: TcxDBLookupComboBox
            Left = 107
            Top = 170
            DataBinding.DataField = 'CUST_COUNTRY'
            DataBinding.DataSource = dsPhoneBook
            Properties.ClearKey = 46
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'NAME'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmAxiom.dsCountryList
            TabOrder = 1
            Width = 214
          end
          object cmbCustState: TcxDBComboBox
            Left = 107
            Top = 118
            DataBinding.DataField = 'CUST_STATE'
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
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 2
            Width = 214
          end
          object eCustPostcode: TDBEdit
            Left = 107
            Top = 144
            Width = 136
            Height = 23
            DataField = 'CUST_POSTCODE'
            DataSource = dsPhoneBook
            TabOrder = 3
            OnExit = eStreetPostCodeExit
          end
          object eCustSuburb: TcxDBButtonEdit
            Left = 107
            Top = 92
            DataBinding.DataField = 'CUST_SUBURB'
            DataBinding.DataSource = dsPhoneBook
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.MaxLength = 0
            Properties.OnButtonClick = eStreetSuburbPropertiesButtonClick
            Properties.OnValidate = eStreetSuburbPropertiesValidate
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 4
            Width = 214
          end
          object mCustAddress: TDBRichEdit
            Left = 107
            Top = 24
            Width = 214
            Height = 64
            Color = clWhite
            DataField = 'CUST_ADDRESS'
            DataSource = dsPhoneBook
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            TabOrder = 5
            Zoom = 100
          end
        end
      end
    end
    object tsPhone: TcxTabSheet
      Caption = 'Phonebook/Internet'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        550
        543)
      object Bevel5: TBevel
        Left = 11
        Top = 164
        Width = 442
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 444
      end
      object Label27: TLabel
        Left = 73
        Top = 171
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 13
        Top = 222
        Width = 88
        Height = 15
        Alignment = taRightJustify
        Caption = 'E-Mail Address1:'
      end
      object Label29: TLabel
        Left = 13
        Top = 255
        Width = 88
        Height = 15
        Alignment = taRightJustify
        Caption = 'E-Mail Address2:'
      end
      object Label30: TLabel
        Left = 436
        Top = 171
        Width = 38
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
      object lInternet: TLabel
        Left = 60
        Top = 323
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Internet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lInternetEMail: TLabel
        Left = 19
        Top = 192
        Width = 82
        Height = 15
        Alignment = taRightJustify
        Caption = 'E-Mail Address:'
      end
      object lInternetWWW: TLabel
        Left = 7
        Top = 348
        Width = 94
        Height = 15
        Alignment = taRightJustify
        Caption = 'Web Site Address:'
      end
      object lPhone: TLabel
        Left = 67
        Top = 6
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Phone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lPhoneDirect: TLabel
        Left = 67
        Top = 83
        Width = 34
        Height = 15
        Alignment = taRightJustify
        Caption = 'Direct:'
      end
      object lPhoneFax: TLabel
        Left = 81
        Top = 109
        Width = 20
        Height = 15
        Alignment = taRightJustify
        Caption = 'Fax:'
      end
      object lPhoneHome: TLabel
        Left = 65
        Top = 134
        Width = 36
        Height = 15
        Alignment = taRightJustify
        Caption = 'Home:'
      end
      object lPhoneMobile: TLabel
        Left = 61
        Top = 58
        Width = 40
        Height = 15
        Alignment = taRightJustify
        Caption = 'Mobile:'
      end
      object lPhoneWork: TLabel
        Left = 70
        Top = 31
        Width = 31
        Height = 15
        Alignment = taRightJustify
        Caption = 'Work:'
      end
      object Label45: TLabel
        Left = 332
        Top = 6
        Width = 38
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
      object Label44: TLabel
        Left = 25
        Top = 282
        Width = 76
        Height = 15
        Alignment = taRightJustify
        Caption = 'Debtor E-Mail:'
      end
      object ckEmail1Default: TCheckBox
        Tag = 2
        Left = 445
        Top = 222
        Width = 17
        Height = 18
        TabOrder = 12
        OnClick = ckEmailDefaultClick
      end
      object ckEmail2Default: TCheckBox
        Tag = 3
        Left = 445
        Top = 252
        Width = 17
        Height = 18
        TabOrder = 14
        OnClick = ckEmailDefaultClick
      end
      object ckEmailDefault: TCheckBox
        Tag = 1
        Left = 445
        Top = 191
        Width = 17
        Height = 18
        TabOrder = 10
        OnClick = ckEmailDefaultClick
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 107
        Top = 219
        DataBinding.DataField = 'EMAIL1'
        DataBinding.DataSource = dsPhoneBook
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001E744558745469746C65004C65747465723B652D6D61696C3B656D61
              696C3B6D61696C1A9193DA0000021E49444154785EA5534D68134114FEDE6613
              AB260A226211440F165AF45228086253A98A0A391951A482DA83B7EA45417A92
              5AB18822B482820495824A5144A9882DF8D322FE81084A053535918A34E92A96
              68BAD99DE7ECEB364B45F19037FBCD7BB36FE67BDFECEC1033A3123350A15140
              02FA6BFEDFC61A8A2E5C7DFA206C9A4DCCC0CC76022F1D64A60C2480D76CBBF4
              F8506BBCD9CC64F34DED6D9B511531E12A2E7313F9E19F720DC2CFA28D8EB303
              8D328C45E7E3F6E05BA4B379E81C1C47A1E438B04B1AAE8EB5774A2E1CD711D2
              37EF3EE3F8995B8846E7C937343D695BE2B5181C1EC1FBD1716C5A5F8BA2CD70
              5D112E954321608EEE7A6F0CE1CBD7491CD8B71597FA5E8828C35580528CFA35
              2B411442776A0006B1B7482A870C0851FB895E14A718DB13EBC0CA2B20E4647A
              951804A580D88218AA972E4157CF1DB4EEDE80E5CB16219D19C7A9EE9BA8ABAB
              41CDAA153034A3CB04C7615F81AB84316715B43C0BDB9A57A36547232E5F7F88
              E4FED33897BA8B3DBB36229968C0843589FCB7C22C0538DA759F473EE6F8E2B5
              E76C7DFFC5394BC01F4627F8E5EB8C209DB5BC77924FE9794F5E8DF1C163FD0C
              2046873BEF71F5E22AB4241BA040FEB91308812F1B110C30AEF43DC3A7B1027A
              3A120BCDBCF5036D7BD7C275088A957FDA1C6096313844D899A8C791CE7E4998
              91B0F1E8E4F9E1B8549EF90BE5D14DD6976301F90AC3110C017008C05C0DD3BF
              13FFBF0B81445BA358F175FE0D92BE263C728CE3430000000049454E44AE4260
              82}
            Kind = bkGlyph
          end>
        Properties.MaxLength = 0
        Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 11
        Width = 322
      end
      object cxDBButtonEdit2: TcxDBButtonEdit
        Left = 107
        Top = 249
        DataBinding.DataField = 'EMAIL2'
        DataBinding.DataSource = dsPhoneBook
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001E744558745469746C65004C65747465723B652D6D61696C3B656D61
              696C3B6D61696C1A9193DA0000021E49444154785EA5534D68134114FEDE6613
              AB260A226211440F165AF45228086253A98A0A391951A482DA83B7EA45417A92
              5AB18822B482820495824A5144A9882DF8D322FE81084A053535918A34E92A96
              68BAD99DE7ECEB364B45F19037FBCD7BB36FE67BDFECEC1033A3123350A15140
              02FA6BFEDFC61A8A2E5C7DFA206C9A4DCCC0CC76022F1D64A60C2480D76CBBF4
              F8506BBCD9CC64F34DED6D9B511531E12A2E7313F9E19F720DC2CFA28D8EB303
              8D328C45E7E3F6E05BA4B379E81C1C47A1E438B04B1AAE8EB5774A2E1CD711D2
              37EF3EE3F8995B8846E7C937343D695BE2B5181C1EC1FBD1716C5A5F8BA2CD70
              5D112E954321608EEE7A6F0CE1CBD7491CD8B71597FA5E8828C35580528CFA35
              2B411442776A0006B1B7482A870C0851FB895E14A718DB13EBC0CA2B20E4647A
              951804A580D88218AA972E4157CF1DB4EEDE80E5CB16219D19C7A9EE9BA8ABAB
              41CDAA153034A3CB04C7615F81AB84316715B43C0BDB9A57A36547232E5F7F88
              E4FED33897BA8B3DBB36229968C0843589FCB7C22C0538DA759F473EE6F8E2B5
              E76C7DFFC5394BC01F4627F8E5EB8C209DB5BC77924FE9794F5E8DF1C163FD0C
              2046873BEF71F5E22AB4241BA040FEB91308812F1B110C30AEF43DC3A7B1027A
              3A120BCDBCF5036D7BD7C275088A957FDA1C6096313844D899A8C791CE7E4998
              91B0F1E8E4F9E1B8549EF90BE5D14DD6976301F90AC3110C017008C05C0DD3BF
              13FFBF0B81445BA358F175FE0D92BE263C728CE3430000000049454E44AE4260
              82}
            Kind = bkGlyph
          end>
        Properties.MaxLength = 0
        Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 13
        Width = 322
      end
      object eInternetEmail: TcxDBButtonEdit
        Left = 107
        Top = 189
        DataBinding.DataField = 'EMAIL'
        DataBinding.DataSource = dsPhoneBook
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001E744558745469746C65004C65747465723B652D6D61696C3B656D61
              696C3B6D61696C1A9193DA0000021E49444154785EA5534D68134114FEDE6613
              AB260A226211440F165AF45228086253A98A0A391951A482DA83B7EA45417A92
              5AB18822B482820495824A5144A9882DF8D322FE81084A053535918A34E92A96
              68BAD99DE7ECEB364B45F19037FBCD7BB36FE67BDFECEC1033A3123350A15140
              02FA6BFEDFC61A8A2E5C7DFA206C9A4DCCC0CC76022F1D64A60C2480D76CBBF4
              F8506BBCD9CC64F34DED6D9B511531E12A2E7313F9E19F720DC2CFA28D8EB303
              8D328C45E7E3F6E05BA4B379E81C1C47A1E438B04B1AAE8EB5774A2E1CD711D2
              37EF3EE3F8995B8846E7C937343D695BE2B5181C1EC1FBD1716C5A5F8BA2CD70
              5D112E954321608EEE7A6F0CE1CBD7491CD8B71597FA5E8828C35580528CFA35
              2B411442776A0006B1B7482A870C0851FB895E14A718DB13EBC0CA2B20E4647A
              951804A580D88218AA972E4157CF1DB4EEDE80E5CB16219D19C7A9EE9BA8ABAB
              41CDAA153034A3CB04C7615F81AB84316715B43C0BDB9A57A36547232E5F7F88
              E4FED33897BA8B3DBB36229968C0843589FCB7C22C0538DA759F473EE6F8E2B5
              E76C7DFFC5394BC01F4627F8E5EB8C209DB5BC77924FE9794F5E8DF1C163FD0C
              2046873BEF71F5E22AB4241BA040FEB91308812F1B110C30AEF43DC3A7B1027A
              3A120BCDBCF5036D7BD7C275088A957FDA1C6096313844D899A8C791CE7E4998
              91B0F1E8E4F9E1B8549EF90BE5D14DD6976301F90AC3110C017008C05C0DD3BF
              13FFBF0B81445BA358F175FE0D92BE263C728CE3430000000049454E44AE4260
              82}
            Kind = bkGlyph
          end>
        Properties.MaxLength = 0
        Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 9
        Width = 322
      end
      object eInternetWWW: TcxDBButtonEdit
        Left = 107
        Top = 345
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
          end>
        Properties.MaxLength = 0
        Properties.OnButtonClick = eInternetWWWPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 15
        Width = 322
      end
      object ePhoneHome: TcxDBTextEdit
        Left = 107
        Top = 131
        DataBinding.DataField = 'HOMEPHONE'
        DataBinding.DataSource = dsPhoneBook
        TabOrder = 7
        Width = 214
      end
      object ePhoneFax: TcxDBTextEdit
        Left = 107
        Top = 105
        DataBinding.DataField = 'FAX'
        DataBinding.DataSource = dsPhoneBook
        TabOrder = 6
        Width = 214
      end
      object ePhoneDirect: TcxDBTextEdit
        Left = 107
        Top = 80
        DataBinding.DataField = 'DIRECTPHONE'
        DataBinding.DataSource = dsPhoneBook
        TabOrder = 4
        Width = 214
      end
      object ePhoneMobile: TcxDBTextEdit
        Left = 107
        Top = 54
        DataBinding.DataField = 'MOBILE'
        DataBinding.DataSource = dsPhoneBook
        TabOrder = 2
        Width = 214
      end
      object ePhoneWork: TcxDBTextEdit
        Left = 107
        Top = 28
        DataBinding.DataField = 'WORKPHONE'
        DataBinding.DataSource = dsPhoneBook
        TabOrder = 0
        Width = 214
      end
      object chkPhoneWork: TCheckBox
        Tag = 1
        Left = 341
        Top = 31
        Width = 17
        Height = 18
        TabOrder = 1
        OnClick = chkPhoneWorkClick
      end
      object chkPhoneHome: TCheckBox
        Tag = 4
        Left = 341
        Top = 134
        Width = 17
        Height = 18
        TabOrder = 8
        OnClick = chkPhoneWorkClick
      end
      object chkPhoneMobile: TCheckBox
        Tag = 2
        Left = 341
        Top = 55
        Width = 17
        Height = 18
        TabOrder = 3
        OnClick = chkPhoneWorkClick
      end
      object chkPhoneDirect: TCheckBox
        Tag = 3
        Left = 341
        Top = 83
        Width = 17
        Height = 18
        TabOrder = 5
        OnClick = chkPhoneWorkClick
      end
      object cxDBButtonEdit3: TcxDBButtonEdit
        Left = 107
        Top = 279
        DataBinding.DataField = 'AP_EMAIL'
        DataBinding.DataSource = dsPhoneBook
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001E744558745469746C65004C65747465723B652D6D61696C3B656D61
              696C3B6D61696C1A9193DA0000021E49444154785EA5534D68134114FEDE6613
              AB260A226211440F165AF45228086253A98A0A391951A482DA83B7EA45417A92
              5AB18822B482820495824A5144A9882DF8D322FE81084A053535918A34E92A96
              68BAD99DE7ECEB364B45F19037FBCD7BB36FE67BDFECEC1033A3123350A15140
              02FA6BFEDFC61A8A2E5C7DFA206C9A4DCCC0CC76022F1D64A60C2480D76CBBF4
              F8506BBCD9CC64F34DED6D9B511531E12A2E7313F9E19F720DC2CFA28D8EB303
              8D328C45E7E3F6E05BA4B379E81C1C47A1E438B04B1AAE8EB5774A2E1CD711D2
              37EF3EE3F8995B8846E7C937343D695BE2B5181C1EC1FBD1716C5A5F8BA2CD70
              5D112E954321608EEE7A6F0CE1CBD7491CD8B71597FA5E8828C35580528CFA35
              2B411442776A0006B1B7482A870C0851FB895E14A718DB13EBC0CA2B20E4647A
              951804A580D88218AA972E4157CF1DB4EEDE80E5CB16219D19C7A9EE9BA8ABAB
              41CDAA153034A3CB04C7615F81AB84316715B43C0BDB9A57A36547232E5F7F88
              E4FED33897BA8B3DBB36229968C0843589FCB7C22C0538DA759F473EE6F8E2B5
              E76C7DFFC5394BC01F4627F8E5EB8C209DB5BC77924FE9794F5E8DF1C163FD0C
              2046873BEF71F5E22AB4241BA040FEB91308812F1B110C30AEF43DC3A7B1027A
              3A120BCDBCF5036D7BD7C275088A957FDA1C6096313844D899A8C791CE7E4998
              91B0F1E8E4F9E1B8549EF90BE5D14DD6976301F90AC3110C017008C05C0DD3BF
              13FFBF0B81445BA358F175FE0D92BE263C728CE3430000000049454E44AE4260
              82}
            Kind = bkGlyph
          end>
        Properties.MaxLength = 0
        Properties.OnButtonClick = eInternetEmailPropertiesButtonClick
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 16
        Width = 322
      end
    end
    object tsAdditional: TcxTabSheet
      Caption = 'Additional'
      ImageIndex = 3
      OnShow = tsAdditionalShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        550
        543)
      object Bevel11: TBevel
        Left = 10
        Top = 224
        Width = 415
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 417
      end
      object Bevel10: TBevel
        Left = 10
        Top = 64
        Width = 412
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 414
      end
      object Bevel12: TBevel
        Left = 10
        Top = 300
        Width = 412
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 414
      end
      object Bevel7: TBevel
        Left = 10
        Top = 124
        Width = 412
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 414
      end
      object Bevel8: TBevel
        Left = 10
        Top = 158
        Width = 412
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 414
      end
      object Label3: TLabel
        Left = 3
        Top = 480
        Width = 83
        Height = 15
        Alignment = taRightJustify
        Caption = 'Conflict Search:'
      end
      object Label5: TLabel
        Left = 15
        Top = 72
        Width = 71
        Height = 15
        Alignment = taRightJustify
        Caption = 'Contact Title:'
      end
      object cxButton1: TcxButton
        Left = 412
        Top = 480
        Width = 78
        Height = 24
        Action = ActAddConflictDoc
        TabOrder = 0
      end
      object eTitle: TDBEdit
        Left = 96
        Top = 69
        Width = 214
        Height = 23
        DataField = 'TITLE'
        DataSource = dsPhoneBook
        TabOrder = 1
      end
      object grpCLLData: TGroupBox
        Left = 3
        Top = 383
        Width = 350
        Height = 89
        Caption = 'CLL Data'
        TabOrder = 2
        Visible = False
        object Label15: TLabel
          Left = 13
          Top = 27
          Width = 57
          Height = 15
          Caption = 'Client Title'
        end
        object Label22: TLabel
          Left = 13
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
          DataField = 'CLIENTTITLE'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 98
          Top = 51
          Width = 229
          Height = 23
          DataField = 'CLIENTNAME'
          DataSource = dsPhoneBook
          TabOrder = 1
        end
      end
      object lbConflicts: TcxListBox
        Left = 101
        Top = 480
        Width = 302
        Height = 54
        ItemHeight = 15
        TabOrder = 3
      end
      object pnlABNACN: TPanel
        Left = -9
        Top = -2
        Width = 558
        Height = 65
        BevelOuter = bvNone
        TabOrder = 4
        DesignSize = (
          558
          65)
        object lACN: TLabel
          Left = 66
          Top = 8
          Width = 28
          Height = 15
          Alignment = taRightJustify
          Caption = 'ACN:'
        end
        object lblABNCaption: TLabel
          Left = 61
          Top = 41
          Width = 33
          Height = 15
          Alignment = taRightJustify
          Caption = 'A.B.N:'
        end
        object Bevel6: TBevel
          Left = 10
          Top = 32
          Width = 453
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object eACN: TDBEdit
          Left = 104
          Top = 4
          Width = 214
          Height = 23
          AutoSize = False
          DataField = 'ACN'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
        object eABN: TcxDBMaskEdit
          Left = 104
          Top = 39
          DataBinding.DataField = 'ABN'
          DataBinding.DataSource = dsPhoneBook
          Properties.MaxLength = 0
          Properties.OnValidate = eABNPropertiesValidate
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 214
        end
      end
      object pnlCodeRef: TPanel
        Left = -1
        Top = 159
        Width = 550
        Height = 61
        BevelOuter = bvNone
        TabOrder = 5
        object lDefaultRef: TLabel
          Left = 25
          Top = 36
          Width = 61
          Height = 15
          Alignment = taRightJustify
          Caption = 'Default Ref:'
        end
        object lCode: TLabel
          Left = 56
          Top = 7
          Width = 30
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Code:'
        end
        object eDefaultRef: TDBEdit
          Left = 96
          Top = 34
          Width = 214
          Height = 23
          DataField = 'DEFAULT_REF'
          DataSource = dsPhoneBook
          TabOrder = 1
        end
        object eCode: TDBEdit
          Left = 96
          Top = 5
          Width = 214
          Height = 23
          DataField = 'CODE'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
      end
      object pnlContacts: TPanel
        Left = -1
        Top = 234
        Width = 550
        Height = 59
        BevelOuter = bvNone
        TabOrder = 6
        object Label38: TLabel
          Left = 6
          Top = 4
          Width = 80
          Height = 15
          Alignment = taRightJustify
          Caption = 'Contact Name:'
        end
        object Label40: TLabel
          Left = 6
          Top = 25
          Width = 80
          Height = 30
          Alignment = taRightJustify
          Caption = 'Additional Contact Name:'
          WordWrap = True
        end
        object DBEdit4: TDBEdit
          Left = 96
          Top = 1
          Width = 214
          Height = 23
          DataField = 'CONTACT_NAME'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 96
          Top = 30
          Width = 214
          Height = 23
          DataField = 'ADDITIONAL_CONTACT_NAME'
          DataSource = dsPhoneBook
          TabOrder = 1
        end
      end
      object pnlDOB: TPanel
        Left = -1
        Top = 125
        Width = 550
        Height = 28
        BevelOuter = bvNone
        TabOrder = 7
        object lDateOfBirth: TLabel
          Left = 15
          Top = 8
          Width = 71
          Height = 15
          Alignment = taRightJustify
          Caption = 'Date Of Birth:'
        end
        object dDateOfBirth: TcxDBDateEdit
          Left = 96
          Top = 4
          DataBinding.DataField = 'DOB'
          DataBinding.DataSource = dsPhoneBook
          Properties.WeekNumbers = True
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 0
          Width = 129
        end
      end
      object pnlNRIC: TPanel
        Left = -1
        Top = 305
        Width = 550
        Height = 32
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 8
        object Label43: TLabel
          Left = 19
          Top = 10
          Width = 67
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NRIC/FIN:'
          WordWrap = True
        end
        object imggoodNRIC: TImage
          Left = 316
          Top = 9
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000FFFFFF00FFFFFF00FFFFFF00FEFEFE01F4F4F414E6E6E62EEAEAEA26F9F9
            F90AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FEFEFE01F5F5F512DBDBDB43CBCBCB73B7B7B785DBDB
            DB43FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FDFDFD02F4F4F413DCDCDC40B9B9B9817A8A7AB8159A15F47BD6
            7BB7F6F6F60FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FCFCFC04F1F1F117D9D9D946B9B9B9827A887AB8197D19F200B900FF07E3
            07FBCBCBCB5FFBFBFB07FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00EBEBEB22CFCFCF51B5B5B589718471BE198619F200CB00FF0EFF0EFF47FF
            47FF49E649D7E9E9E928FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00C5C5C561A6A6A6965A795ACD0F820FF700D400FF99FF99FFAFE4AFBA46E4
            46E92FFF2FFF96E396A3F6F6F610FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00ACBAAC91427F42DB038903FD00CC00FF95FF95FFD1FBD1D0DAEFDA2B99CB
            99A100E900FF09FA09FAC8C8C865FAFAFA09FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00AAD2AA9300A300FF00CB00FF61FF61FFBEFFBEFFBDE3BD4EF4FAF40CC9E9
            C93F49B349D700F900FF3BE33BDFE1E1E136FBFBFB06FFFFFF00FFFFFF00FFFF
            FF00EDF7ED15CAE4CA7428DB28EA66FF66FFE0FCE0A0FFFFFF00FEFEFE01E9F6
            E9199DD69D7415C215F400FE00FF69D769C3EAEAEA26FCFCFC05FFFFFF00FFFF
            FF00FEFEFE01F5FBF50BCEEACE3AB9FCB99ED7EED72FFFFFFF00FFFFFF00FBFD
            FB04DDF1DD288ABE8AAC00DD00FF00F800FF84D384B1EBEBEB25FAFAFA08FEFE
            FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F6FBF60ADCECDC3A4BB44BD600EC00FF00EF00FF8CCD8CABE6E6E62DF9F9
            F90AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FEFEFE01F3F9F313C6E0C66022BB22ED00F400FF01E801FE81D381B3E6E6
            E62DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FDFEFD03EFF6EF1AB2D6B2820DC60DF800FF00FF07FF07FF82F6
            82B2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FCFDFC04ECF5EC1FA6CFA69603DF03FDB3FFB3FFCCFA
            CC9EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FCFDFC04EDF5ED1EB1E4B18D6EFF6EFFF4FD
            F461FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFDFC04F9FBF90AE7FDE75BE8E8
            E82A}
          Transparent = True
          Visible = False
        end
        object imgbadNRIC: TImage
          Left = 339
          Top = 9
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000FFFFFF00FFFFFF00F3F3F30CE7E7E718F2F2F20DFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F50AE9E9E916FFFF
            FF00FFFFFF00F3F3F30CB0B0B04F6E6E6E919B9B9B64EFEFEF10FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01E4E4E41BA7A7A7589090906FE9E9
            E916FFFFFF00907CEB832900DFFF3E28A5D76565659AC9C9C936FCFCFC03FFFF
            FF00FFFFFF00FFFFFF00FCFCFC03D5D5D52A6150B2AF2D07D8F8A7A7A758F5F5
            F50AFFFFFF00BBAFF4502900DFFF300ADBF5524E69B17F7F7F80DDDDDD22FFFF
            FF00FFFFFF00FCFCFC03C7C5D23A4529C2D62900DFFF7C6BCD94F0F0F00FFFFF
            FF00FFFFFF00FFFFFF008670ED8F2900DFFF3C1CD1E35F5F5FA09494946BE1E1
            E11EFCFCFC03C7C5D23A3918CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF007960EB9F2900DFFF5138C2C76464649B9292
            926DB6B4C14B3918CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007960EB9F2900DFFF5037C2C85250
            5DAF3312C7ED2C06D6F9A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00785FE9A02900DFFF2C06
            D6F92B05D5FA6A628B9DDADADA25FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03C7C5D23A2E08D9F72900
            DFFF472BC3D47474748B9191916ED5D5D52AF9F9F906FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03C7C5D23A3918CDE72D07D8F8705C
            CBA3350FDFF0593DD5C27C7A88858585857AC3C3C33CF3F3F30CFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00F9F9F906C7C5D23A3918CDE72900DFFF8A80B87FF0F0
            F00FD6CFF830431FE2E04928DDD779729C8D7C7C7C83B3B3B34CF5F5F50AFFFF
            FF00FFFFFF00FBFBFB04BBB9C7463817CCE82900DFFF7263B69CEAEAEA15FFFF
            FF00FFFFFF00F1EFFC105E40E7BF340EDEF17B6EB39189898976DBDBDB24FCFC
            FC03FFFFFF00C5BEE7413817CCE82900DFFF5A46B5B9E3E3E31CFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00937FEE802900DFFFCFCAE635FCFCFC03FFFF
            FF00FFFFFF00411DDFE22900DFFF4529C2D6D5D5D52AFEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF003610E1EF4D2CE1D3DFDDEB22FEFEFE01FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          Transparent = True
          Visible = False
        end
        object dbedNRIC: TDBEdit
          Left = 96
          Top = 5
          Width = 214
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NRIC'
          DataSource = dsPhoneBook
          TabOrder = 0
          OnChange = dbedNRICChange
        end
      end
      object pnlOccupation: TPanel
        Left = -11
        Top = 93
        Width = 560
        Height = 27
        BevelOuter = bvNone
        TabOrder = 9
        object lOccupation: TLabel
          Left = 21
          Top = 5
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = 'Occupation:'
        end
        object eOccupation: TDBEdit
          Left = 107
          Top = 3
          Width = 215
          Height = 23
          DataField = 'OCCUPATION'
          DataSource = dsPhoneBook
          TabOrder = 0
        end
      end
      object pnlPassportNo: TPanel
        Left = -1
        Top = 337
        Width = 550
        Height = 32
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 10
        object Label47: TLabel
          Left = 19
          Top = 10
          Width = 67
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Passport No:'
          WordWrap = True
        end
        object DBEdit8: TDBEdit
          Left = 96
          Top = 5
          Width = 214
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PASSPORT_NO'
          DataSource = dsPhoneBook
          TabOrder = 0
          OnChange = dbedNRICChange
        end
      end
    end
    object tsNotes: TcxTabSheet
      Caption = 'Notes'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mNotes: TcxDBRichEdit
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'NOTE'
        DataBinding.DataSource = dsPhoneBook
        TabOrder = 0
        Height = 543
        Width = 550
      end
    end
    object tsGroups: TcxTabSheet
      Caption = 'Groups'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbGroups: TcxCheckListBox
        Left = 0
        Top = 0
        Width = 550
        Height = 543
        Align = alClient
        EditValueFormat = cvfStatesString
        Items = <>
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClickCheck = lbGroupsClickCheck
      end
    end
    object tsClient: TcxTabSheet
      Caption = 'Client'
      ImageIndex = 6
      OnShow = tsClientShow
      object Label1: TLabel
        Left = 55
        Top = 24
        Width = 65
        Height = 15
        Alignment = taRightJustify
        Caption = 'Client Code:'
      end
      object Label2: TLabel
        Left = 35
        Top = 3
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
      end
      object lblIntroducedCaption: TLabel
        Left = 0
        Top = 45
        Width = 118
        Height = 27
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Introduced/Date Instructed:'
        WordWrap = True
      end
      object Label4: TLabel
        Left = 43
        Top = 77
        Width = 77
        Height = 15
        Alignment = taRightJustify
        Caption = 'Introduced By:'
      end
      object Label6: TLabel
        Left = 68
        Top = 131
        Width = 52
        Height = 15
        Alignment = taRightJustify
        Caption = 'Fee Code:'
      end
      object Label9: TLabel
        Left = 17
        Top = 357
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
      end
      object lblServicePartner: TLabel
        Left = 39
        Top = 104
        Width = 81
        Height = 15
        Alignment = taRightJustify
        Caption = 'Service Partner:'
      end
      object lblDateofdeath: TLabel
        Left = 33
        Top = 159
        Width = 87
        Height = 15
        Caption = 'Deceased Death:'
      end
      object Label41: TLabel
        Left = 53
        Top = 495
        Width = 67
        Height = 15
        Caption = 'Super Client:'
      end
      object cbClientFeeCode: TcxDBLookupComboBox
        Left = 124
        Top = 128
        Hint = 'Used to select a pre-defined agreed charge rate for this client.'
        DataBinding.DataField = 'FEECODE'
        DataBinding.DataSource = dsClient
        ParentShowHint = False
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end
          item
            FieldName = 'DESCR'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsFeeCode
        Properties.MaxLength = 0
        ShowHint = True
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 4
        Width = 232
      end
      object cbClientIntroducedBy: TcxDBLookupComboBox
        Left = 124
        Top = 74
        DataBinding.DataField = 'INTRODUCER'
        DataBinding.DataSource = dsClient
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            Width = 55
            FieldName = 'CODE'
          end
          item
            FieldName = 'NAME'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsActiveEmployees
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 2
        Width = 232
      end
      object cbClientServicePartner: TcxDBLookupComboBox
        Left = 124
        Top = 101
        DataBinding.DataField = 'PARTNER'
        DataBinding.DataSource = dsClient
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            Width = 55
            FieldName = 'CODE'
          end
          item
            FieldName = 'NAME'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPartners
        Properties.MaxLength = 0
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 3
        Width = 232
      end
      object eClientCode: TDBEdit
        Left = 124
        Top = 20
        Width = 140
        Height = 23
        DataField = 'CODE'
        DataSource = dsClient
        TabOrder = 0
        OnEnter = eClientCodeEnter
        OnExit = eClientCodeExit
      end
      object eClientIntroduced: TcxDBDateEdit
        Left = 124
        Top = 47
        DataBinding.DataField = 'INTRODUCED'
        DataBinding.DataSource = dsClient
        Properties.ImmediatePost = True
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 1
        Width = 140
      end
      object lbClientGroups: TCheckListBox
        Left = 3
        Top = 375
        Width = 533
        Height = 109
        OnClickCheck = lbClientGroupsClickCheck
        ItemHeight = 15
        TabOrder = 5
      end
      object cxGroupBox1: TcxGroupBox
        Left = 375
        Top = 6
        Caption = 'Image ID'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Transparent = True
        DesignSize = (
          161
          171)
        Height = 171
        Width = 161
        object imgClientID: TcxDBImage
          Left = 3
          Top = 17
          Hint = 'Right click to change or remove image'
          Align = alCustom
          Anchors = []
          AutoSize = True
          DataBinding.DataField = 'CLIENT_IMAGE'
          DataBinding.DataSource = dsPhoneBook
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 107
          Width = 150
        end
        object btnAttachImage: TcxButton
          Left = 3
          Top = 17
          Width = 155
          Height = 151
          Hint = 'Add Employee Picture'
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Add Picture'
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D361000000000000036000000280000002000000020000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFE
            FE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
            FE01FCFCFC03F8F8F807F5F5F50AF4F4F40BF4F4F40BF3F3F30CF4F4F40BF4F4
            F40BF4F4F40BF6F6F609F9F9F906FCFCFC03FEFEFE01FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FCFCFC03F4F3
            F30CE8E7E719D9D9D927D3D2D130CECCCB36CCCAC938CCCAC937CFCECD33D7D4
            D22FDDD9D72AE1E0DF21E7E7E718EFEFEF10F5F5F50AFAFAFA05FEFEFE01FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F708E2DFDC25C7BA
            B05BB48B6DB2A46334F9A46232FFA2602EFFA15E28FFA15D26FF9A5725FF9356
            26FF905B31EFA0836EA4B6ACA463C9C6C53DDEDDDD22EFEFEF10F9F9F906FEFE
            FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFBFB04D7CAC144A5795BC3B66E
            36FFAF6730FFB76A32FFBD6A2BFFC26A27FFCC6F2AFFCC6F25FFB36321FFAC63
            2EFFAC632EFF965623FF8F5425FF9D724FCDADA2996FD9D8D827EFEFEF10FBFB
            FB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEE6E024AE6F45E1CF7E45FFDA86
            4EFFE88849FFEA863FFFEC8640FFEA883FFFEB8437FFE78030FFCD712DFFCE76
            3CFFDF7E36FFCB6E26FFA55C22FF8E5225FF93633FE1ACA39C6BE1E1E11EF5F5
            F50AFDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6AD8F8BD5824AFFED965FFFF29C
            68FFEF9764FFEE955FFFED935AFFEB8E53FFEC8C48FFE7843AFFD27839FFD982
            44FFE58640FFE07C33FFD2752AFFAF6322FF925423FF906648D5C7C4C240EFEF
            EF10FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2854CF3E7996BFFF3A375FFEEA4
            7BFFEDA37BFFEEA073FFEE9E6EFFED9B6AFFF0975FFFDF8544FFC7743AFFDB85
            4AFFEE8B46FFEC833EFFDE7D37FFCC7428FFA65D21FF895229FFB1A29775EDED
            ED12FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0874FF0F0AD87FFF0AE8AFFF0A8
            7EFFF0A882FFF0A67EFFEFA479FFEFA477FFEF9962FFC76F31FFAC622DFFD98C
            58FFEF9857FFEA8B47FFE6833DFFDB7C33FFBF6B28FF8C5326FFA8918190EEEE
            EE11FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAA47BADEAAA86FFF4BCA0FFF0AA
            84FFF0A983FFF0A982FFF1A981FFEEA274FFDE7F41FFB76832FFAB7C57FFD39B
            71FFECA36CFFE89253FFE68640FFE0803BFFC47130FF8C5222FFB29F917DF2F2
            F20DFDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBD2BE4DDB9765FBF7C3ABFFF3B6
            96FFF0A883FFF1AA83FFF2AB84FFDD8954FFBF692DFFD2AE94FFDDD9D6FFC9A7
            8FFFDE9866FFEB975DFFE58944FFDD7F3EFFBE7037FF945C33F4CBC4BE49F8F8
            F807FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F50BD8A276A7E7AD88FFF9C5
            ABFFF3B89DFFF1AC89FFEA9664FFCB7135FFD0A483FFFFFDFAFFFFFFFFFFD1B8
            ADFFCF926CFFEAA16DFFE79459FFDA8346FFBF733DFFA98C77A2EBEAEA16FDFD
            FD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6EBE220D8A47AAEE7AB
            85F3FCC8ADFFFAB28BFFD67638FFBE7B4EFFDAD2CFFFEAEDEFFFF0F2F3FFE3D1
            CFFFD39C7CFFEEAA7CFFF2A673FFD48751FFA77E5FC6DEDAD72CFCFCFC03FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EEE61BE5BD
            9D74E8A67ACADD956FF4A76D4BFF927E71FF989CA1FF909396FF9A9EA1FFB3AB
            ADFFCE9D7FFFEC9E6DFFDC9462F4B08C6DB7D8D2CE37FCFCFC03FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00DBCBC142917469CE898484FF8B8E8FFF8B8B8CFF7C7A7CFF656567FF6263
            68FFA38D84FFB78A6DE6AD98878ADFDBD72BFCFCFC03FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
            FB04C1BFBD4E7A7A7AE5B3B5BAFFBABABCFFB3B0B2FFA8A7A8FF8F8D8EFF6F6F
            72FF7E7E80FF8D8D90C7CECDCC38F1F1F10EFCFCFC03FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01E1E3
            E426838582C0A4A5A6FFD4D2D5FFC6C5C7FFBAB9BAFFB6B6B6FFAEAEAEFF9E9C
            9DFF88888BFF7D7F83EAB1B0B05DEAEAEA15F9F9F906FEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F909B8B8
            B86B7B7C7DF9C4C3C4FFDFDEDEFFCAC8CAFFC3C1C3FFBFBEBFFFB5B4B5FFAFAE
            B0FFA3A0A4FF8C8889FF8B8B8B96DBDBDB26F6F6F609FEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F0189091
            92AF8D8F8FFFE0DFDEFFECEBEBFFD7D6D7FFCFCFCFFFCAC9CAFFBDBCBDFFB6B5
            B6FFB2B0B1FFA4A3A5FF7D7D7DC4CECECE39F5F5F50AFEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD02E1E2E2307B7C
            7BDA9F9F9FFFEEEEEDFFF5F5F4FFE0E0E0FFD8D8D8FFD5D5D5FFC9C8C9FFBEBD
            BEFFBAB7B9FFB2B1B3FF848484D1CBCBCB40F5F5F50AFEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC04D0D0D1497171
            71F39E9E9EFFE7E7E7FFFDFDFDFFE7E7E7FFD9D9D9FFD4D4D4FFCDCCCDFFC4C4
            C4FFBDBDBDFFB8B6B8FF898989CECECECE3EF5F5F50AFEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB06C7C7C859696A
            69FF858584FFD4D4D4FFFFFFFFFFFFFFFFFFF7F7F7FFE5E5E5FFD9D8D9FFC9C9
            C9FFBFBFBFFFB8B7B9FF8E8D8FCCD0D0D03CF6F6F609FEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB05CBCBCB536E6E
            6DFB6A696AFF9A9B9BFFD5D6D6FFDEDFDFFFE8E7E7FFF5F5F5FFF4F4F5FFDCDB
            DCFFCCCACBFFB6B4B4FF8C8B8CC6D6D6D635F9F9F906FEFEFE01FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD02E3E3E334908E
            8EE4868587FF6A6C6DFF646565FF696A6AFF696868FF808181FFAEAFAFFFDBDA
            DBFFD3D2D3FFA4A3A3FE9F9E9F87E8E8E819FCFCFC03FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F317B3B3
            B2AAA7A6A8FFB4B4B4FF8D8E8EFF7E7E7EFF6E6D6DFF5A5A5AFF585959FF807F
            80FF99999AFF888A8BE6C0C0C04FF8F8F807FEFEFE01FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03E0E0
            E041999999D5ABABACFFBCB9BBFFB7B6B7FFA3A3A3FF858786FF737171FF6665
            65FF6A6A6AFFA09FA086ECEDED15FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
            FD04E8E7E82AB4B3B48E878688EF898A8AFF969696FF959595FF888988FF8685
            85D5B8B7B763F0F0F011FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FDFDFD02FAFAFA09EFEFEF1CD8D7D748C0BFBF76B4B4B478D3D3D348F1F0
            F116FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btnAttachImageClick
        end
      end
      object dbdtDateofdeath: TDBDateTimePicker
        Left = 124
        Top = 155
        Width = 200
        Height = 23
        Date = 43614.419444675930000000
        Time = 43614.419444675930000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 7
        DataField = 'Date_of_death'
        DataSource = dsPhoneBook
      end
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 188
        Width = 533
        Height = 165
        TabOrder = 8
        Properties.ActivePage = tabDebtor
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 161
        ClientRectLeft = 4
        ClientRectRight = 529
        ClientRectTop = 26
        object tabClientTemplates: TcxTabSheet
          Caption = 'Templates'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            525
            135)
          object Label8: TLabel
            Left = 24
            Top = 14
            Width = 71
            Height = 15
            Alignment = taRightJustify
            Caption = 'Bill Template:'
          end
          object Label23: TLabel
            Left = 4
            Top = 41
            Width = 91
            Height = 15
            Alignment = taRightJustify
            Caption = 'Debtor Template:'
          end
          object cbClientBillTemplate: TcxDBLookupComboBox
            Left = 101
            Top = 11
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'BILLTEMPLATE'
            DataBinding.DataSource = dsClient
            Properties.DropDownAutoSize = True
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                Width = 50
                FieldName = 'CODE'
              end
              item
                Width = 450
                FieldName = 'DESCR'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsBillTemplate
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 0
            Width = 292
          end
          object cmbLookupCollectionTemplate: TcxDBLookupComboBox
            Left = 101
            Top = 38
            DataBinding.DataField = 'NDEBTORTASKTEMPLATE'
            DataBinding.DataSource = dsClient
            Properties.KeyFieldNames = 'NTEMPLATE'
            Properties.ListColumns = <
              item
                FieldName = 'DESCR'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsDebtorTaskTemplate
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 1
            Width = 228
          end
        end
        object tabClientControls: TcxTabSheet
          Caption = 'Controls'
          ImageIndex = 1
          object lblClientPack: TLabel
            Left = 5
            Top = 12
            Width = 117
            Height = 15
            Hint = 'Has a Client Care Package been sent to this client?'
            Caption = 'Client care pack sent?:'
          end
          object Label24: TLabel
            Left = 46
            Top = 38
            Width = 76
            Height = 15
            Caption = 'Allow Matters:'
          end
          object Label26: TLabel
            Left = 35
            Top = 63
            Width = 87
            Height = 15
            Caption = 'Portal Password:'
          end
          object cmbClientPack: TcxDBImageComboBox
            Left = 137
            Top = 8
            Hint = 'Has a Client Care Package been sent to this client?'
            DataBinding.DataField = 'CLIENT_PACK'
            DataBinding.DataSource = dsClient
            ParentShowHint = False
            Properties.Items = <
              item
                ImageIndex = 0
              end
              item
                Description = 'Yes'
                Tag = 1
                Value = 'YES'
              end
              item
                Description = 'No - Safe Custody Client Only'
                Tag = 2
                Value = 'SCCO'
              end
              item
                Description = 'No - Not our client'
                Tag = 3
                Value = 'NOCL'
              end>
            Properties.OnCloseUp = cmbClientPackPropertiesCloseUp
            ShowHint = True
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 0
            Width = 228
          end
          object cmbAllowMatters: TcxDBComboBox
            Left = 137
            Top = 34
            DataBinding.DataField = 'ALLOW_MATTERS'
            DataBinding.DataSource = dsClient
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Allow'
              'Ban'
              'Warn')
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 1
            Width = 130
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 137
            Top = 60
            DataBinding.DataField = 'PASSWORD'
            DataBinding.DataSource = dsClient
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 2
            Width = 189
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 137
            Top = 86
            DataBinding.DataField = 'PHONEBOOK_STATUS_ID'
            DataBinding.DataSource = dsPhoneBook
            Properties.KeyFieldNames = 'PHONEBOOK_STATUS_ID'
            Properties.ListColumns = <
              item
                FieldName = 'DESCR'
              end>
            Properties.ListSource = dsPhonebookStatus
            TabOrder = 3
            Width = 228
          end
          object cxLabel1: TcxLabel
            Left = 82
            Top = 87
            Caption = 'Status:'
            Transparent = True
          end
        end
        object tabDebtor: TcxTabSheet
          Caption = 'Debtor'
          ImageIndex = 2
          object Label21: TLabel
            Left = 43
            Top = 8
            Width = 70
            Height = 15
            Alignment = taRightJustify
            Caption = 'Fee Tax Basis:'
          end
          object Label7: TLabel
            Left = 28
            Top = 34
            Width = 85
            Height = 15
            Alignment = taRightJustify
            Caption = 'Disb'#39' Threshold:'
          end
          object Label25: TLabel
            Left = 48
            Top = 60
            Width = 65
            Height = 15
            Alignment = taRightJustify
            Caption = 'Credit Limit:'
          end
          object lDebtorStatusCaption: TLabel
            Left = 39
            Top = 86
            Width = 74
            Height = 15
            Caption = 'Debtor Status:'
          end
          object Label39: TLabel
            Left = 42
            Top = 112
            Width = 71
            Height = 15
            Hint = 'Discount (% or $ amount. eg 5% or 200)'
            Caption = 'Discount (%):'
            ParentShowHint = False
            ShowHint = True
          end
          object Label42: TLabel
            Left = 340
            Top = 112
            Width = 39
            Height = 15
            Alignment = taRightJustify
            Caption = 'Tax No:'
          end
          object cmbFeeTaxBasis: TcxDBLookupComboBox
            Left = 117
            Top = 5
            DataBinding.DataField = 'FEE_TAX_BASIS'
            DataBinding.DataSource = dsClient
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'CODE'
              end
              item
                FieldName = 'DESCR'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsTaxRate
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 0
            Width = 232
          end
          object eClientDisbThreshold: TDBEdit
            Left = 117
            Top = 31
            Width = 139
            Height = 23
            DataField = 'DISBTHRESHOLD'
            DataSource = dsClient
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 117
            Top = 57
            Width = 139
            Height = 23
            DataField = 'CREDIT_LIMIT'
            DataSource = dsClient
            TabOrder = 2
            OnChange = DBEdit1Change
          end
          object cbDebtorStatus: TcxDBLookupComboBox
            Left = 117
            Top = 83
            DataBinding.DataField = 'DEBTORSTATUS'
            DataBinding.DataSource = dsPhoneBook
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'DEBTORSTATUS'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIPTION'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsDebtorStatus
            Properties.MaxLength = 0
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 3
            Width = 189
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 117
            Top = 109
            Hint = 'Discount (%)'
            DataBinding.DataField = 'DISCOUNT'
            DataBinding.DataSource = dsClient
            TabOrder = 4
            OnKeyPress = cxDBTextEdit2KeyPress
            Width = 129
          end
          object eTaxNo: TDBEdit
            Left = 382
            Top = 109
            Width = 139
            Height = 23
            DataField = 'TAXNO'
            DataSource = dsClient
            TabOrder = 5
          end
        end
      end
      object cmbSuperClient: TcxDBLookupComboBox
        Left = 124
        Top = 492
        DataBinding.DataField = 'SUPERCLIENT'
        DataBinding.DataSource = dsPhoneBook
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSuperClient
        Properties.OnInitPopup = cxDBLookupComboBox1PropertiesInitPopup
        TabOrder = 9
        Width = 232
      end
      object BitBtn1: TBitBtn
        Left = 362
        Top = 492
        Width = 75
        Height = 23
        Caption = 'New'
        TabOrder = 10
        OnClick = BitBtn1Click
      end
    end
    object tsCreditor: TcxTabSheet
      Caption = 'Creditor'
      ImageIndex = 7
      OnShow = tsCreditorShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label13: TLabel
        Left = 36
        Top = 84
        Width = 65
        Height = 15
        Alignment = taRightJustify
        Caption = 'Credit Limit:'
      end
      object Label10: TLabel
        Left = 21
        Top = 6
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Creditor Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 24
        Top = 30
        Width = 77
        Height = 15
        Alignment = taRightJustify
        Caption = 'Creditor Code:'
      end
      object Label12: TLabel
        Left = 18
        Top = 57
        Width = 83
        Height = 15
        Alignment = taRightJustify
        Caption = 'Terms (in days):'
      end
      object eCreditorCode: TDBEdit
        Left = 107
        Top = 26
        Width = 139
        Height = 23
        DataField = 'CODE'
        DataSource = dsCreditor
        TabOrder = 0
        OnEnter = eCreditorCodeEnter
        OnExit = eCreditorCodeExit
      end
      object eCreditorTerms: TDBEdit
        Left = 107
        Top = 53
        Width = 139
        Height = 23
        DataField = 'CREDIT_TERMS'
        DataSource = dsCreditor
        TabOrder = 1
        OnEnter = eCreditorCodeEnter
        OnExit = eCreditorCodeExit
      end
      object eCreditorCreditLimit: TDBEdit
        Left = 107
        Top = 79
        Width = 139
        Height = 23
        DataField = 'CREDIT_LIMIT'
        DataSource = dsCreditor
        TabOrder = 2
        OnEnter = eCreditorCodeEnter
        OnExit = eCreditorCodeExit
      end
    end
    object tsCustomData: TcxTabSheet
      Caption = 'Custom Data'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object vtCustomData: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 550
        Height = 543
        Align = alClient
        ButtonStyle = bsTriangle
        Colors.UnfocusedColor = clMedGray
        DefaultNodeHeight = 20
        Header.AutoSizeIndex = -1
        Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoVisible]
        Header.Style = hsPlates
        TabOrder = 0
        TreeOptions.AnimationOptions = [toAnimatedToggle]
        TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
        TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
        TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toShowButtons, toShowDropmark, toUseBlendedImages]
        TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus]
        OnColumnClick = vtCustomDataColumnClick
        OnCreateEditor = vtCustomDataCreateEditor
        OnEditCancelled = vtCustomDataEditCancelled
        OnEdited = vtCustomDataEdited
        OnEditing = vtCustomDataEditing
        OnEnter = vtCustomDataEnter
        OnExit = vtCustomDataExit
        OnGetText = vtCustomDataGetText
        OnPaintText = vtCustomDataPaintText
        OnGetNodeDataSize = vtCustomDataGetNodeDataSize
        OnNewText = vtCustomDataNewText
        Columns = <
          item
            Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
            Position = 0
            Text = 'Group/Field'
            Width = 180
          end
          item
            Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible, coAllowFocus]
            Position = 1
            Text = 'Value'
            Width = 370
          end>
      end
    end
    object tsMatterData: TcxTabSheet
      Caption = 'Matter Data'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object vtMatterData: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 550
        Height = 543
        Align = alClient
        Colors.UnfocusedColor = clMedGray
        DefaultNodeHeight = 20
        Header.AutoSizeIndex = -1
        Header.Options = [hoAutoResize, hoVisible]
        Header.Style = hsPlates
        TabOrder = 0
        TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
        TreeOptions.MiscOptions = [toEditable, toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
        TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toUseBlendedImages]
        TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus]
        OnColumnClick = vtCustomDataColumnClick
        OnCreateEditor = vtCustomDataCreateEditor
        OnEditCancelled = vtCustomDataEditCancelled
        OnEdited = vtCustomDataEdited
        OnEditing = vtCustomDataEditing
        OnEnter = vtCustomDataEnter
        OnExit = vtCustomDataExit
        OnGetText = vtCustomDataGetText
        OnPaintText = vtCustomDataPaintText
        OnGetNodeDataSize = vtCustomDataGetNodeDataSize
        OnNewText = vtCustomDataNewText
        Columns = <
          item
            Options = [coEnabled, coParentBidiMode, coParentColor, coVisible]
            Position = 0
            Text = 'Group/Matter/Field'
            Width = 150
          end
          item
            Options = [coEnabled, coParentBidiMode, coParentColor, coVisible]
            Position = 1
            Text = 'Value'
            Width = 400
          end>
      end
    end
    object tsChildren: TcxTabSheet
      Caption = 'Other Name'
      ImageIndex = 10
      OnShow = tsChildrenShow
      object cxGrid1: TcxGrid
        Left = 0
        Top = 28
        Width = 550
        Height = 515
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = dbgChildrenDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsListChildren
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHorzSizing = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 49
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object cxGrid1DBTableView1NAME: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            MinWidth = 18
            Width = 411
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 550
        Height = 28
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object tsEventList: TcxTabSheet
      Caption = 'Events'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdEventList: TcxGrid
        Left = 0
        Top = 0
        Width = 550
        Height = 512
        Align = alClient
        PopupMenu = mnuEvent
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object tvEventList: TcxGridDBTableView
          OnDblClick = grdEventListDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMarketEventDataModule.dsParticipantEvents
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'EVENT_PART_ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.CellHints = True
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 49
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 11
          Preview.AutoHeight = False
          Preview.LeftIndent = 19
          Preview.MaxLineCount = 2
          Preview.Visible = True
          object tvEventListEVENT: TcxGridDBColumn
            Caption = 'Event'
            DataBinding.FieldName = 'EVENT'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            MinWidth = 18
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 109
          end
          object tvEventListEVENT_DATE: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'EVENT_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateButtons = [btnClear, btnToday]
            Properties.DateOnError = deToday
            MinWidth = 18
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 49
          end
          object tvEventListEVENT_TIME: TcxGridDBColumn
            Caption = 'Time'
            DataBinding.FieldName = 'EVENT_TIME'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            MinWidth = 18
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 38
          end
          object tvEventListACCEPTED: TcxGridDBColumn
            Caption = 'Accepted'
            DataBinding.FieldName = 'ACCEPTED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taLeftJustify
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 'Y'
            Properties.ValueGrayed = ''
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            MinWidth = 18
            Options.Filtering = False
            Width = 49
          end
          object tvEventListATTENDED: TcxGridDBColumn
            Caption = 'Attended'
            DataBinding.FieldName = 'ATTENDED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taLeftJustify
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 'Y'
            Properties.ValueGrayed = ''
            Properties.ValueUnchecked = 'N'
            Properties.OnChange = grdEventListDBTableView1ATTENDEDPropertiesChange
            HeaderAlignmentHorz = taCenter
            MinWidth = 18
            Options.Filtering = False
            Width = 46
          end
          object tvEventListDECLINED: TcxGridDBColumn
            Caption = 'Declined'
            DataBinding.FieldName = 'DECLINED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taLeftJustify
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 'Y'
            Properties.ValueGrayed = ''
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            MinWidth = 18
            Options.Filtering = False
            Width = 45
          end
          object tvEventListPRINTED: TcxGridDBColumn
            Caption = 'Printed'
            DataBinding.FieldName = 'PRINTED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taLeftJustify
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 'Y'
            Properties.ValueGrayed = ''
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            MinWidth = 18
            Options.Filtering = False
            Width = 36
          end
          object tvEventListSEARCH: TcxGridDBColumn
            Caption = 'Alt Name'
            DataBinding.FieldName = 'SEARCH'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            MinWidth = 18
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 68
          end
          object tvEventListEVENT_PART_ID: TcxGridDBColumn
            DataBinding.FieldName = 'EVENT_PART_ID'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Visible = False
            MinWidth = 18
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 182
          end
        end
        object grdEventListLevel1: TcxGridLevel
          GridView = tvEventList
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 512
        Width = 550
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnEditEvent: TcxButton
          Left = 383
          Top = 2
          Width = 80
          Height = 27
          Action = actEditEvent
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360800000000000036000000280000002000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000808000008080000080
            8000008080000080800000808000000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
            8000008080000080800000808000808080FF808080FF808080FF808080FF8080
            80FF808080FF808080FF808080FF808080FF808080FF00808000008080000080
            8000008080000080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
            FFFF00808000FFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF008080000080
            8000FFFFFFFF00808000FFFFFFFFFFFFFFFF808080FF000000FF000000FF0080
            8000000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFF0000
            00FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF808080FF808080FFFFFF
            FFFF808080FF808080FF808080FF808080FF808080FF00808000FFFFFFFF8080
            80FF00808000808080FF808080FF00808000808080FFFFFF00FF000000FF0000
            00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FF8080
            80FF00808000008080000080800000808000FFFFFFFF808080FFFFFFFFFF0080
            8000008080000080800000808000FFFFFFFF808080FFFFFF00FF000000FF00FF
            FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FF808080FF808080FFFFFF
            FFFF008080000080800000808000808080FF808080FF808080FF00808000FFFF
            FFFF00808000FFFFFFFF808080FF00808000808080FFFFFF00FF000000FFFFFF
            FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFFFF
            FFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
            FFFF00808000008080000080800000808000FFFFFFFFFFFFFFFF808080FFFFFF
            FFFF808080FF808080FFFFFFFFFF00808000808080FFFFFF00FF000000FF00FF
            FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
            00FF00FFFFFF000000FFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
            FFFF008080000080800000808000808080FF808080FF808080FF808080FF8080
            80FF00808000808080FF0080800000808000808080FFFFFF00FF000000FFFFFF
            FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
            FFFF0080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF808080FF008080000080800000808000808080FFFFFF00FF000000FF00FF
            FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF808080FF808080FFFFFF
            FFFFFFFFFFFF808080FF808080FF808080FF808080FF808080FF808080FF8080
            80FF0080800000808000FFFFFFFFFFFFFFFF808080FF000000FF000000FF0000
            00FF00FFFFFFFFFFFFFF00FFFFFF000000FF000000FF00FFFFFF000000FFFFFF
            FFFFFFFFFFFF000000FF000000FFFFFFFFFF000000FF808080FF808080FF8080
            80FF00808000FFFFFFFFFFFFFFFF808080FF808080FF00808000808080FF0080
            800000808000808080FF808080FF00808000808080FF00808000008080000080
            8000000000FF000000FF000000FF000000FF00FFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
            8000808080FF808080FF808080FF808080FF00808000808080FF008080000080
            80000080800000808000FFFFFFFFFFFFFFFF808080FF00808000008080000080
            80000080800000808000000000FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF000000FF000000FF000000FF000000FF00808000008080000080
            80000080800000808000808080FF00808000808080FF0080800000808000FFFF
            FFFFFFFFFFFF808080FF808080FF808080FF808080FF00808000008080000080
            800000808000000000FF00FFFFFF000000FFFFFFFFFFFFFFFFFF000000FF0000
            00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF00808000008080000080
            800000808000808080FF00808000808080FFFFFFFFFF00808000808080FF8080
            80FF00808000808080FFFFFFFFFF00808000808080FF00808000008080000080
            8000000000FF00FFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF000000FFFFFFFFFF000000FF0080800000808000008080000080
            8000808080FFFFFFFFFF808080FF808080FFFFFFFFFF00808000008080000080
            800000808000808080FFFFFFFFFF808080FF0080800000808000008080000000
            00FF0000FFFF000000FF00808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF000000FF000000FF008080000080800000808000008080008080
            80FF808080FF808080FF00808000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF808080FF808080FF008080000080800000808000008080000080
            8000000000FF0080800000808000000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF00808000008080000080800000808000008080000080
            8000808080FF0080800000808000808080FF808080FF808080FF808080FF8080
            80FF808080FF808080FF008080000080800000808000}
          OptionsImage.NumGlyphs = 2
          TabOrder = 0
        end
        object btnAddEvent: TcxButton
          Left = 465
          Top = 2
          Width = 80
          Height = 27
          Action = actAddEvent
          LookAndFeel.NativeStyle = True
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000080800000000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF8080000080800000808000008080000080800000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00FF8080000080800000808000008080000080800000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF8080000080800000000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FF00FFFFFFFFFFFFFF00FF
            FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FF00FFFFFF000000FF000000FF000000FF0000
            00FF000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF00FFFFFF000000FFFFFFFFFF00FF
            FFFFFFFFFFFF000000FFFFFFFFFF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FF00FFFFFFFFFFFFFF000000FF000000FFFFFF
            FFFF00FFFFFF000000FF00FFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFFFFFFFFFFFF000000FF0000
            00FF000000FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF808080FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFFFF000000FFFFFF
            FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF800000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFFFF0000
            00FFFFFFFFFF00FFFFFF000000FF000000FF80800000000000FF00FFFFFF8000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
            00FF000000FF000000FF808000008080000080800000000000FFFFFFFFFF00FF
            FFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00FF000000FF8080000080800000808000008080000000FFFFFF00FFFFFF00FF
            FFFF00FFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00FF000000FF80800000808000008080000080800000000000FF00FFFFFF00FF
            FFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00FF80800000000000FF808000008080000080800000000000FF000000FF00FF
            FFFF00FFFFFF800000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF80800000000000FF80800000808000008080000080800000808000008080
            000000FFFFFF00FFFFFF800000FF808000008080000080800000808000008080
            00008080000080800000808000008080000080800000}
          TabOrder = 1
        end
      end
    end
    object tsMarketing: TcxTabSheet
      Caption = 'Marketing'
      ImageIndex = 12
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpInterest: TGroupBox
        Left = 9
        Top = 198
        Width = 506
        Height = 128
        Caption = 'Interest'
        TabOrder = 0
        object chklistInterest: TcxCheckListBox
          Left = 95
          Top = 20
          Width = 268
          Height = 102
          EditValueFormat = cvfStatesString
          Items = <>
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnClick = chklistInterestClick
        end
      end
      object grpMarketing: TGroupBox
        Left = 9
        Top = 6
        Width = 506
        Height = 140
        Caption = 'Referral'
        TabOrder = 1
        object lblReferralType: TLabel
          Left = 11
          Top = 26
          Width = 71
          Height = 15
          Caption = 'Referral Type:'
        end
        object lblReferredBy: TLabel
          Left = 11
          Top = 53
          Width = 63
          Height = 15
          Caption = 'Referred By:'
          Visible = False
        end
        object lblMaintainer: TLabel
          Left = 11
          Top = 79
          Width = 60
          Height = 15
          Caption = 'Maintainer:'
        end
        object edReferredBy: TcxDBLabel
          Left = 96
          Top = 50
          Transparent = True
          Height = 23
          Width = 353
        end
        object cmbMaintainer: TcxDBLookupComboBox
          Left = 95
          Top = 76
          DataBinding.DataField = 'REFERRALMAINTAINER'
          DataBinding.DataSource = dsPhoneBook
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
          TabOrder = 0
          Width = 268
        end
        object cmbReferralOther: TcxDBLookupComboBox
          Left = 95
          Top = 48
          DataBinding.DataField = 'REFERREDBY'
          DataBinding.DataSource = dsPhoneBook
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
          Width = 268
        end
        object cmbReferral: TcxDBLookupComboBox
          Left = 95
          Top = 21
          DataBinding.DataField = 'REFERRALCODE'
          DataBinding.DataSource = dsPhoneBook
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
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 268
        end
      end
      object GroupBox1: TGroupBox
        Left = 9
        Top = 332
        Width = 506
        Height = 142
        Caption = 'Firm Contacts'
        TabOrder = 2
        object lbFirmContacts: TcxCheckListBox
          Left = 95
          Top = 29
          Width = 268
          Height = 101
          EditValueFormat = cvfStatesString
          Items = <>
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnClick = lbFirmContactsClick
        end
      end
      object grpIndustry: TGroupBox
        Left = 9
        Top = 149
        Width = 506
        Height = 47
        Caption = 'Industry'
        TabOrder = 3
        object cmbIndustry: TcxDBExtLookupComboBox
          Left = 95
          Top = 15
          DataBinding.DataField = 'INDUSTRYCODE'
          DataBinding.DataSource = dsPhoneBook
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.ImmediatePost = True
          Properties.View = tvIndustry
          Properties.KeyFieldNames = 'CODE'
          Properties.ListFieldItem = tvIndustryDESCR
          Properties.MaxLength = 0
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
          Width = 268
        end
      end
    end
    object tsCRM: TcxTabSheet
      Caption = 'CRM'
      ImageIndex = 13
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label31: TLabel
        Left = 26
        Top = 20
        Width = 96
        Height = 15
        Caption = 'Relationship Type:'
      end
      object Label32: TLabel
        Left = 15
        Top = 51
        Width = 103
        Height = 15
        Caption = 'Relationship Status:'
      end
      object Label33: TLabel
        Left = 16
        Top = 79
        Width = 106
        Height = 15
        Caption = 'Relationship Action:'
      end
      object Label34: TLabel
        Left = 106
        Top = 106
        Width = 27
        Height = 15
        Caption = 'PMS:'
      end
      object Label35: TLabel
        Left = 104
        Top = 135
        Width = 28
        Height = 15
        Caption = 'DMS:'
      end
      object Label36: TLabel
        Left = 77
        Top = 164
        Width = 49
        Height = 15
        Caption = 'Firm size:'
      end
      object Label37: TLabel
        Left = 80
        Top = 193
        Width = 51
        Height = 15
        Caption = 'Turnover:'
      end
      object cmbRelationshipAction: TDBLookupComboBox
        Left = 141
        Top = 74
        Width = 253
        Height = 23
        DataField = 'RELATIONSHIP_ACTION'
        DataSource = dsPhoneBook
        KeyField = 'ID'
        ListField = 'code;DESCR'
        ListFieldIndex = 1
        ListSource = dsRelationshipAction
        TabOrder = 2
      end
      object cmbRelationshipStatus: TDBLookupComboBox
        Left = 141
        Top = 45
        Width = 253
        Height = 23
        DataField = 'RELATIONSHIP_STATUS'
        DataSource = dsPhoneBook
        KeyField = 'ID'
        ListField = 'code;DESCR'
        ListFieldIndex = 1
        ListSource = dsRelationshipStatus
        TabOrder = 1
      end
      object cmbSystem1: TDBComboBox
        Left = 141
        Top = 103
        Width = 253
        Height = 23
        DataField = 'SYSTEM1'
        DataSource = dsPhoneBook
        TabOrder = 3
        OnDropDown = cmbSystem1DropDown
      end
      object cmbSystem2: TDBComboBox
        Left = 141
        Top = 132
        Width = 253
        Height = 23
        DataField = 'SYSTEM2'
        DataSource = dsPhoneBook
        TabOrder = 4
        OnDropDown = cmbSystem2DropDown
      end
      object DBEdit2: TDBEdit
        Left = 141
        Top = 161
        Width = 69
        Height = 23
        DataField = 'FIRM_SIZE'
        DataSource = dsPhoneBook
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 141
        Top = 190
        Width = 149
        Height = 23
        DataField = 'TURNOVER'
        DataSource = dsPhoneBook
        TabOrder = 6
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 141
        Top = 16
        Width = 253
        Height = 23
        DataField = 'RELATIONSHIP_TYPE'
        DataSource = dsPhoneBook
        KeyField = 'ID'
        ListField = 'Code;DESCR'
        ListFieldIndex = 1
        ListSource = dsRelationship_Type
        TabOrder = 0
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList1
    Left = 496
    Top = 353
    object aOpenChild: TAction
      Category = 'Children'
      Caption = 'Open'
      Hint = 'Open'
      ImageIndex = 15
      OnExecute = aOpenChildExecute
      OnUpdate = OnChildUpdate
    end
    object aPrev: TAction
      Caption = '&<< Prev'
      OnExecute = aPrevExecute
      OnUpdate = aPrevUpdate
    end
    object aNewChild: TAction
      Category = 'Children'
      Caption = 'New'
      Hint = 'New'
      ImageIndex = 22
      OnExecute = aNewChildExecute
    end
    object aNext: TAction
      Caption = 'Next >&>'
      OnExecute = aNextExecute
      OnUpdate = aNextUpdate
    end
    object aOk: TAction
      Caption = 'OK'
      OnExecute = aOkExecute
      OnUpdate = aOkUpdate
    end
    object aCancel: TAction
      Caption = 'Cancel'
      OnExecute = aCancelExecute
    end
    object aCopyAddressDown: TAction
      Caption = 'Copy'
      ImageIndex = 1
      OnExecute = aCopyAddressDownExecute
      OnUpdate = aCopyAddressDownUpdate
    end
    object aCopyAddressUp: TAction
      Caption = 'Copy'
      ImageIndex = 0
      OnExecute = aCopyAddressUpExecute
      OnUpdate = aCopyAddressUpUpdate
    end
    object aOpenMatch: TAction
      Hint = 'Open Search Match'
      ImageIndex = 2
      OnExecute = aOpenMatchExecute
      OnUpdate = aOpenMatchUpdate
    end
    object aEditChild: TAction
      Category = 'Children'
      Caption = 'Edit'
      Hint = 'Edit'
      ImageIndex = 29
      OnExecute = aEditChildExecute
      OnUpdate = OnChildUpdate
    end
    object aDeleteChild: TAction
      Category = 'Children'
      Caption = 'Delete'
      Hint = 'Delete'
      ImageIndex = 28
      OnExecute = aDeleteChildExecute
      OnUpdate = OnChildUpdate
    end
    object aCopyAddressToCustom: TAction
      Caption = 'Copy Address To Custom Address'
      OnExecute = aCopyAddressToCustomExecute
    end
    object aCopyPostalToCustom: TAction
      Caption = 'Copy Postal Address To Custom Address'
      OnExecute = aCopyPostalToCustomExecute
    end
    object ActAddConflictDoc: TAction
      Caption = 'Add'
      OnExecute = ActAddConflictDocExecute
    end
  end
  object qPhoneBook: TUniQuery
    UpdatingTable = 'PHONEBOOK'
    KeyFields = 'NNAME'
    SQLInsert.Strings = (
      'INSERT INTO PHONEBOOK'
      
        '  (NNAME, NCLIENT, SEARCH, TITLE, GENDER, SALUTATION, ADDRESS, S' +
        'UBURB, STATE, POSTCODE, '
      
        '  WORKPHONE, HOMEPHONE, DX, DXLOC, FAX, CODE, SPARTY, SOLICITOR,' +
        ' REAL_ESTATE, REFERRALS,'
      
        '  NOTE, NAME, SHORTNAME, LONGNAME, TYPE, COUNTRY, ACN, OCCUPATIO' +
        'N, DOB, EMAIL, WWW, MOBILE, '
      
        '  NNAMEMASTER, POSTALADDRESS, POSTALSUBURB, POSTALSTATE, POSTALP' +
        'OSTCODE, POSTALCOUNTRY, '
      
        '  WHICHADDRESS, GIVENNAMES, INDUSTRYCODE, REFERRALCODE, REFERRED' +
        'BY, REFERRALMAINTAINER, '
      
        '  CUST_ADDRESS, CUST_SUBURB, CUST_STATE, CUST_POSTCODE, CUST_COU' +
        'NTRY, ABN, REFERREDBY_NNAME, '
      
        '  REFERREDBY_NCLIENT, REFERREDBY_EMP, REFERRALTYPE, EMAIL1, EMAI' +
        'L2, RELATIONSHIP_TYPE, '
      
        '  RELATIONSHIP_STATUS, RELATIONSHIP_ACTION, FIRM_SIZE, SYSTEM1, ' +
        'SYSTEM2, LASTNAME, '
      
        '  DIRECTPHONE, CONTACT, CONTACT_NAME, ADDITIONAL_CONTACT_NAME, D' +
        'ATE_OF_DEATH, DEBTORSTATUS,WHICHPHONE,'
      
        '  SUPERCLIENT, NRIC, PROSPECTIVE, PHONEBOOK_STATUS_ID, AP_EMAIL,' +
        ' PASSPORT_NO)'
      'VALUES'
      
        '  (:NNAME, :NCLIENT, :SEARCH, :TITLE, :GENDER, :SALUTATION, :ADD' +
        'RESS, :SUBURB, :STATE, '
      
        '  :POSTCODE, :WORKPHONE, :HOMEPHONE, :DX, :DXLOC, :FAX, :CODE, :' +
        'SPARTY, :SOLICITOR, '
      
        '  :REAL_ESTATE, :REFERRALS, :NOTE, :NAME, :SHORTNAME, :LONGNAME,' +
        ' :TYPE, :COUNTRY, :ACN, '
      
        '  :OCCUPATION, :DOB, :EMAIL, :WWW, :MOBILE, :NNAMEMASTER, :POSTA' +
        'LADDRESS, :POSTALSUBURB, '
      
        '  :POSTALSTATE, :POSTALPOSTCODE, :POSTALCOUNTRY, :WHICHADDRESS, ' +
        ':GIVENNAMES, :INDUSTRYCODE, '
      
        '  :REFERRALCODE, :REFERREDBY, :REFERRALMAINTAINER, :CUST_ADDRESS' +
        ', :CUST_SUBURB, :CUST_STATE, '
      
        '  :CUST_POSTCODE, :CUST_COUNTRY, :ABN, :REFERREDBY_NNAME, :REFER' +
        'REDBY_NCLIENT, :REFERREDBY_EMP, '
      
        '  :REFERRALTYPE, :EMAIL1, :EMAIL2, :RELATIONSHIP_TYPE, :RELATION' +
        'SHIP_STATUS, :RELATIONSHIP_ACTION, '
      
        '  :FIRM_SIZE, :SYSTEM1, :SYSTEM2, :LASTNAME, :DIRECTPHONE, :CONT' +
        'ACT, :CONTACT_NAME, :ADDITIONAL_CONTACT_NAME,'
      
        '  :DATE_OF_DEATH, :DEBTORSTATUS,:WHICHPHONE, :SUPERCLIENT, :NRIC' +
        ', :PROSPECTIVE, :PHONEBOOK_STATUS_ID, :AP_EMAIL, :PASSPORT_NO)')
    SQLDelete.Strings = (
      'DELETE FROM PHONEBOOK'
      'WHERE'
      '  NNAME = :Old_NNAME')
    SQLUpdate.Strings = (
      'UPDATE PHONEBOOK'
      'SET'
      
        '  NNAME = :NNAME, NCLIENT = :NCLIENT, SEARCH = :SEARCH, TITLE = ' +
        ':TITLE, GENDER = :GENDER, SALUTATION = :SALUTATION, ADDRESS = :A' +
        'DDRESS, SUBURB = :SUBURB, STATE = :STATE, '
      
        '  POSTCODE = :POSTCODE, WORKPHONE = :WORKPHONE, HOMEPHONE = :HOM' +
        'EPHONE, DX = :DX, DXLOC = :DXLOC, FAX = :FAX, CODE = :CODE, SPAR' +
        'TY = :SPARTY, SOLICITOR = :SOLICITOR, '
      
        '  REAL_ESTATE = :REAL_ESTATE, REFERRALS = :REFERRALS, NOTE = :NO' +
        'TE, NAME = :NAME, SHORTNAME = :SHORTNAME, LONGNAME = :LONGNAME, ' +
        'TYPE = :TYPE, COUNTRY = :COUNTRY, '
      
        '  ACN = :ACN, OCCUPATION = :OCCUPATION, DOB = :DOB, EMAIL = :EMA' +
        'IL, WWW = :WWW, MOBILE = :MOBILE, NNAMEMASTER = :NNAMEMASTER, PO' +
        'STALADDRESS = :POSTALADDRESS, '
      
        '  POSTALSUBURB = :POSTALSUBURB, POSTALSTATE = :POSTALSTATE, POST' +
        'ALPOSTCODE = :POSTALPOSTCODE, POSTALCOUNTRY = :POSTALCOUNTRY, WH' +
        'ICHADDRESS = :WHICHADDRESS, '
      
        '  GIVENNAMES = :GIVENNAMES, INDUSTRYCODE = :INDUSTRYCODE, REFERR' +
        'ALCODE = :REFERRALCODE, REFERREDBY = :REFERREDBY, REFERRALMAINTA' +
        'INER = :REFERRALMAINTAINER, '
      
        '  CUST_ADDRESS = :CUST_ADDRESS, CUST_SUBURB = :CUST_SUBURB, CUST' +
        '_STATE = :CUST_STATE, CUST_POSTCODE = :CUST_POSTCODE, CUST_COUNT' +
        'RY = :CUST_COUNTRY, ABN = :ABN, '
      
        '  REFERREDBY_NNAME = :REFERREDBY_NNAME, REFERREDBY_NCLIENT = :RE' +
        'FERREDBY_NCLIENT, REFERREDBY_EMP = :REFERREDBY_EMP, REFERRALTYPE' +
        ' = :REFERRALTYPE, EMAIL1 = :EMAIL1, '
      
        '  EMAIL2 = :EMAIL2, RELATIONSHIP_TYPE = :RELATIONSHIP_TYPE, RELA' +
        'TIONSHIP_STATUS = :RELATIONSHIP_STATUS, RELATIONSHIP_ACTION = :R' +
        'ELATIONSHIP_ACTION, '
      
        '  FIRM_SIZE = :FIRM_SIZE, SYSTEM1 = :SYSTEM1, SYSTEM2 = :SYSTEM2' +
        ', MODIFIED = :MODIFIED, LASTNAME = :LASTNAME, IS_CLIENT = :IS_CL' +
        'IENT, IS_CREDITOR = :IS_CREDITOR,'
      
        '  NCREDITOR = :NCREDITOR, DIRECTPHONE = :DIRECTPHONE, CLIENTID =' +
        ' :CLIENTID, CREDITORID = :CREDITORID, CONTACT = :CONTACT, '
      
        '  CONTACT_NAME = :CONTACT_NAME, ADDITIONAL_CONTACT_NAME = :ADDIT' +
        'IONAL_CONTACT_NAME, DATE_OF_DEATH = :DATE_OF_DEATH, DEBTORSTATUS' +
        ' = :DEBTORSTATUS, WHICHPHONE = :WHICHPHONE,'
      
        '  SUPERCLIENT = :SUPERCLIENT, NRIC = :NRIC, PROSPECTIVE = :PROSP' +
        'ECTIVE, PHONEBOOK_STATUS_ID = :PHONEBOOK_STATUS_ID, AP_EMAIL = :' +
        'AP_EMAIL, PASSPORT_NO = :PASSPORT_NO'
      'WHERE'
      '  NNAME = :Old_NNAME')
    SQLLock.Strings = (
      
        'SELECT NNAME, NCLIENT, SEARCH, TITLE, GENDER, SALUTATION, ADDRES' +
        'S, SUBURB, STATE, POSTCODE, WORKPHONE, '
      
        'HOMEPHONE, DX, DXLOC, FAX, CODE, SPARTY, SOLICITOR, REAL_ESTATE,' +
        ' REFERRALS, NOTE, NAME, SHORTNAME, '
      
        'LONGNAME, TYPE, COUNTRY, ACN, OCCUPATION, DOB, EMAIL, WWW, MOBIL' +
        'E, NNAMEMASTER, POSTALADDRESS, '
      
        'POSTALSUBURB, POSTALSTATE, POSTALPOSTCODE, POSTALCOUNTRY, WHICHA' +
        'DDRESS, GIVENNAMES, INDUSTRYCODE, '
      
        'REFERRALCODE, REFERREDBY, REFERRALMAINTAINER, CUST_ADDRESS, CUST' +
        '_SUBURB, CUST_STATE, CUST_POSTCODE, '
      
        'CUST_COUNTRY, ABN, REFERREDBY_NNAME, REFERREDBY_NCLIENT, REFERRE' +
        'DBY_EMP, REFERRALTYPE, EMAIL1, EMAIL2, '
      
        'RELATIONSHIP_TYPE, RELATIONSHIP_STATUS, RELATIONSHIP_ACTION, FIR' +
        'M_SIZE, SYSTEM1, SYSTEM2, IMPORTED, DIRECTPHONE,'
      
        'CONTACT, CONTACT_NAME, ADDITIONAL_CONTACT_NAME, DATE_OF_DEATH, D' +
        'EBTORSTATUS, WHICHPHONE, SUPERCLIENT, NRIC, PROSPECTIVE,'
      'PHONEBOOK_STATUS_ID, AP_EMAIL, PASSPORT_NO'
      'FROM PHONEBOOK'
      'WHERE'
      '  NNAME = :Old_NNAME'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT NNAME, NCLIENT, SEARCH, TITLE, GENDER, SALUTATION, ADDRES' +
        'S, SUBURB, STATE, POSTCODE, WORKPHONE, HOMEPHONE, DX, '
      
        'DXLOC, FAX, CODE, SPARTY, SOLICITOR, REAL_ESTATE, REFERRALS, NOT' +
        'E, NAME, SHORTNAME, LONGNAME, TYPE, COUNTRY, ACN, '
      
        'OCCUPATION, DOB, EMAIL, WWW, MOBILE, NNAMEMASTER, POSTALADDRESS,' +
        ' POSTALSUBURB, POSTALSTATE, POSTALPOSTCODE, POSTALCOUNTRY, '
      
        'WHICHADDRESS, GIVENNAMES, INDUSTRYCODE, REFERRALCODE, REFERREDBY' +
        ', REFERRALMAINTAINER, CUST_ADDRESS, CUST_SUBURB, '
      
        'CUST_STATE, CUST_POSTCODE, CUST_COUNTRY, ABN, REFERREDBY_NNAME, ' +
        'REFERREDBY_NCLIENT, REFERREDBY_EMP, REFERRALTYPE, '
      
        'EMAIL1, EMAIL2, RELATIONSHIP_TYPE, RELATIONSHIP_STATUS, RELATION' +
        'SHIP_ACTION, FIRM_SIZE, SYSTEM1, SYSTEM2, IMPORTED,'
      
        'IS_CLIENT, IS_CREDITOR, NCREDITOR, DIRECTPHONE, CLIENT_IMAGE, CO' +
        'NTACT, CONTACT_NAME, ADDITIONAL_CONTACT_NAME, DATE_OF_DEATH, '
      
        'DEBTORSTATUS, WHICHPHONE, SUPERCLIENT, NRIC, PROSPECTIVE, PHONEB' +
        'OOK_STATUS_ID, AP_EMAIL, PASSPORT_NO'
      'FROM PHONEBOOK'
      'WHERE'
      '  NNAME = :Old_NNAME')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM PHONEBOOK'
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '--  p.rowid,'
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
      '  p.archived,'
      
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
      '  NVL(p.is_client,'#39'N'#39') as is_client,'
      '  NVL(p.is_creditor, '#39'N'#39') as is_creditor,'
      '  P.NCREDITOR,'
      '  NVL(P.DIRECTPHONE, M.DIRECTPHONE) AS DIRECTPHONE,'
      '  P.CLIENT_IMAGE, P.CLIENTTITLE, P.CLIENTNAME,'
      '  P.DATE_OF_DEATH, p.creditorid,'
      '  NVL(P.CONTACT, M.CONTACT) AS CONTACT,'
      '  NVL(P.CONTACT_NAME, M.CONTACT_NAME) as CONTACT_NAME,'
      
        '  NVL(P.additional_contact_name, M.additional_contact_name) as A' +
        'DDITIONAL_CONTACT_NAME,'
      '  NVL(P.DEBTORSTATUS, M.DEBTORSTATUS) AS DEBTORSTATUS,'
      '  NVL(P.WHICHPHONE, M.WHICHPHONE) as WHICHPHONE,'
      '  P.SUPERCLIENT,'
      '  P.NRIC,'
      '  P.PROSPECTIVE,'
      '  P.PHONEBOOK_STATUS_ID,'
      '  P.AP_EMAIL,'
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
    CachedUpdates = True
    DMLRefresh = True
    RefreshOptions = [roBeforeEdit]
    Options.SetFieldsReadOnly = False
    Options.ReturnParams = True
    Options.EnableBCD = True
    AfterEdit = qPhoneBookAfterEdit
    AfterScroll = CRTemp_qPhoneBookAfterScroll
    OnEditError = qPhoneBookEditError
    OnNewRecord = qPhoneBookNewRecord
    Left = 179
    Top = 564
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nname'
        Value = nil
      end>
  end
  object dsPhoneBook: TUniDataSource
    DataSet = qPhoneBook
    Left = 258
    Top = 490
  end
  object qGender: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM GENDER')
    Left = 748
    Top = 148
  end
  object dsGender: TDataSource
    AutoEdit = False
    DataSet = qGender
    Left = 797
    Top = 146
  end
  object ImageList1: TImageList
    Left = 500
    Top = 159
    Bitmap = {
      494C010122002500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFF801F00000000FFFF001F00000000
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
  object qPostCodeSearchSuburb: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT suburb, pcode, state FROM postcode where upper(suburb) '
      '  = upper(:suburb)')
    Left = 848
    Top = 53
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'suburb'
        Value = nil
      end>
    object qPostCodeSearchSuburbSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qPostCodeSearchSuburbPCODE: TStringField
      FieldName = 'PCODE'
    end
    object qPostCodeSearchSuburbSTATE: TStringField
      FieldName = 'STATE'
    end
  end
  object qPostCodeSearchPcode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT suburb, pcode, state FROM postcode where upper(pcode) '
      '  = upper(:pcode)')
    Left = 744
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcode'
        Value = nil
      end>
    object qPostCodeSearchPcodeSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qPostCodeSearchPcodePCODE: TStringField
      FieldName = 'PCODE'
    end
    object qPostCodeSearchPcodeSTATE: TStringField
      FieldName = 'STATE'
    end
  end
  object qGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct g.category, '
      '  DECODE(p.nname,NULL,'#39'False'#39','#39'True'#39') AS hasgroup, '
      '  g.otherparty, g.actingfor, g.fieldname'
      'FROM'
      '  pbgroup g, pbgroupings p'
      'WHERE'
      '  g.category = p.category(+)'
      'AND p.nname(+) = :nname'
      'ORDER BY g.category')
    Left = 632
    Top = 145
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
    object qGroupsHASGROUP: TStringField
      FieldName = 'HASGROUP'
      Size = 5
    end
    object qGroupsOTHERPARTY: TStringField
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
  object qTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 533
    Top = 101
  end
  object qTmp2: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 636
    Top = 96
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
    Left = 530
    Top = 153
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
  object qDataFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  d.seq,'
      '  f.fieldname,'
      '  t.caption,'
      '  t.type,'
      '  f.textvalue,'
      '  f.datevalue,'
      '  f.nunique,'
      '  f.nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party,'
      '  NVL(t.LOOKUPFIELD, '#39'N'#39') AS LOOKUPFIELD '
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
      '  CAST(NULL AS DATE) AS datevalue,'
      '  -1 AS nunique,'
      '  -1 AS nunique2,'
      '  g.code AS dataform,'
      '  g.caption AS dataformcaption,'
      '  g.party AS party,'
      '  NVL(t.LOOKUPFIELD, '#39'N'#39') AS LOOKUPFIELD '
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
      '     AND f.linktable = g.code'
      '     AND f.nunique = :nunique'
      '     AND f.nunique2 IS NULL'
      '     AND g.partyismatterspecific = '#39'N'#39
      '  )'
      '  AND g.partyismatterspecific = '#39'N'#39
      'ORDER BY dataform, seq')
    Left = 640
    Top = 195
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
      '  k.datevalue,'
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
      '      datevalue,'
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
    Left = 716
    Top = 153
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
    object qMatterDataFieldsNMATTER: TFloatField
      FieldName = 'NMATTER'
      ReadOnly = True
    end
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
    object qMatterDataFieldsNEW: TStringField
      FieldName = 'NEW'
      Size = 1
    end
    object qMatterDataFieldsDATAFORMCAPTION: TStringField
      FieldName = 'DATAFORMCAPTION'
      Size = 60
    end
    object qMatterDataFieldsDATEVALUE: TDateTimeField
      FieldName = 'DATEVALUE'
    end
    object qMatterDataFieldsSEQ: TSmallintField
      FieldName = 'SEQ'
      ReadOnly = True
    end
  end
  object qClient: TUniQuery
    UpdatingTable = 'client'
    KeyFields = 'NCLIENT'
    SQLInsert.Strings = (
      'INSERT INTO CLIENT'
      
        '  (NCLIENT, NAME, CONTACT, GENDER, CLIENTGROUP, SEARCH, MATTERS,' +
        ' ARCHIVES, PARTNER, BANKERS, CREDIT_RATING, PREV_NCMAUDIT, TAXNO' +
        ', INTRODUCED, INTRODUCER, CODE, FEECODE, FORMAT_FILE, MATTERSEQ,' +
        ' BILLTEMPLATE, ARCHVLOCN, DATEARCHV, DATEREVIEW, DATEDSTRN, SOUR' +
        'CE, BGROUP, INDUSTRY, NPKTS, DFLTLCODE, NMACLOSED, NDRCLOSED, ND' +
        'RARCHV, STATUS, TRSTMNT, ADISINVRECV, TRUST_BAL, CL_TRUST_BAL, U' +
        'NBILL_FEES, DEBTORS, UNBILL_DISB, BILL_FEES, BILL_DISB, CREDIT_L' +
        'IMIT, PERIOD0, PERIOD1, PERIOD2, PERIOD3, BUDGET_FEES, BUDGET_DI' +
        'SB, BUDGET_TOTAL, DISBTHRESHOLD, ANTDISBS, ANTDRS, DISBSWOFF, DR' +
        'SWOFF, WIPWOFF, MODIFIED, NDEBTORTASKTEMPLATE, FEE_TAX_BASIS, CL' +
        'IENT_PACK, DEBTORSTATUS, PASSWORD, MOD_BY, DISCOUNT)'
      'VALUES'
      
        '  (:NCLIENT, :NAME, :CONTACT, :GENDER, :CLIENTGROUP, :SEARCH, :M' +
        'ATTERS, :ARCHIVES, :PARTNER, :BANKERS, :CREDIT_RATING, :PREV_NCM' +
        'AUDIT, :TAXNO, :INTRODUCED, :INTRODUCER, :CODE, :FEECODE, :FORMA' +
        'T_FILE, :MATTERSEQ, :BILLTEMPLATE, :ARCHVLOCN, :DATEARCHV, :DATE' +
        'REVIEW, :DATEDSTRN, :SOURCE, :BGROUP, :INDUSTRY, :NPKTS, :DFLTLC' +
        'ODE, :NMACLOSED, :NDRCLOSED, :NDRARCHV, :STATUS, :TRSTMNT, :ADIS' +
        'INVRECV, :TRUST_BAL, :CL_TRUST_BAL, :UNBILL_FEES, :DEBTORS, :UNB' +
        'ILL_DISB, :BILL_FEES, :BILL_DISB, :CREDIT_LIMIT, :PERIOD0, :PERI' +
        'OD1, :PERIOD2, :PERIOD3, :BUDGET_FEES, :BUDGET_DISB, :BUDGET_TOT' +
        'AL, :DISBTHRESHOLD, :ANTDISBS, :ANTDRS, :DISBSWOFF, :DRSWOFF, :W' +
        'IPWOFF, :MODIFIED, :NDEBTORTASKTEMPLATE, :FEE_TAX_BASIS, :CLIENT' +
        '_PACK, :DEBTORSTATUS, :PASSWORD, :MOD_BY, :DISCOUNT)'
      'RETURNING'
      
        '  NCLIENT, NAME, CONTACT, GENDER, CLIENTGROUP, SEARCH, MATTERS, ' +
        'ARCHIVES, PARTNER, BANKERS, CREDIT_RATING, PREV_NCMAUDIT, TAXNO,' +
        ' INTRODUCED, INTRODUCER, CODE, FEECODE, FORMAT_FILE, MATTERSEQ, ' +
        'BILLTEMPLATE, ARCHVLOCN, DATEARCHV, DATEREVIEW, DATEDSTRN, SOURC' +
        'E, BGROUP, INDUSTRY, NPKTS, DFLTLCODE, NMACLOSED, NDRCLOSED, NDR' +
        'ARCHV, STATUS, TRSTMNT, ADISINVRECV, TRUST_BAL, CL_TRUST_BAL, UN' +
        'BILL_FEES, DEBTORS, UNBILL_DISB, BILL_FEES, BILL_DISB, CREDIT_LI' +
        'MIT, PERIOD0, PERIOD1, PERIOD2, PERIOD3, BUDGET_FEES, BUDGET_DIS' +
        'B, BUDGET_TOTAL, DISBTHRESHOLD, ANTDISBS, ANTDRS, DISBSWOFF, DRS' +
        'WOFF, WIPWOFF, MODIFIED, NDEBTORTASKTEMPLATE, FEE_TAX_BASIS, CLI' +
        'ENT_PACK, DEBTORSTATUS, PASSWORD, MOD_BY, DISCOUNT'
      'INTO'
      
        '  :NCLIENT, :NAME, :CONTACT, :GENDER, :CLIENTGROUP, :SEARCH, :MA' +
        'TTERS, :ARCHIVES, :PARTNER, :BANKERS, :CREDIT_RATING, :PREV_NCMA' +
        'UDIT, :TAXNO, :INTRODUCED, :INTRODUCER, :CODE, :FEECODE, :FORMAT' +
        '_FILE, :MATTERSEQ, :BILLTEMPLATE, :ARCHVLOCN, :DATEARCHV, :DATER' +
        'EVIEW, :DATEDSTRN, :SOURCE, :BGROUP, :INDUSTRY, :NPKTS, :DFLTLCO' +
        'DE, :NMACLOSED, :NDRCLOSED, :NDRARCHV, :STATUS, :TRSTMNT, :ADISI' +
        'NVRECV, :TRUST_BAL, :CL_TRUST_BAL, :UNBILL_FEES, :DEBTORS, :UNBI' +
        'LL_DISB, :BILL_FEES, :BILL_DISB, :CREDIT_LIMIT, :PERIOD0, :PERIO' +
        'D1, :PERIOD2, :PERIOD3, :BUDGET_FEES, :BUDGET_DISB, :BUDGET_TOTA' +
        'L, :DISBTHRESHOLD, :ANTDISBS, :ANTDRS, :DISBSWOFF, :DRSWOFF, :WI' +
        'PWOFF, :MODIFIED, :NDEBTORTASKTEMPLATE, :FEE_TAX_BASIS, :CLIENT_' +
        'PACK, :DEBTORSTATUS, :PASSWORD, :MOD_BY, :DISCOUNT')
    SQLDelete.Strings = (
      'DELETE FROM CLIENT'
      'WHERE'
      '  NCLIENT = :Old_NCLIENT')
    SQLUpdate.Strings = (
      'UPDATE CLIENT'
      'SET'
      
        '  NCLIENT = :NCLIENT, NAME = :NAME, CONTACT = :CONTACT, GENDER =' +
        ' :GENDER, CLIENTGROUP = :CLIENTGROUP, SEARCH = :SEARCH, MATTERS ' +
        '= :MATTERS, ARCHIVES = :ARCHIVES, PARTNER = :PARTNER, BANKERS = ' +
        ':BANKERS, CREDIT_RATING = :CREDIT_RATING, PREV_NCMAUDIT = :PREV_' +
        'NCMAUDIT, TAXNO = :TAXNO, INTRODUCED = :INTRODUCED, INTRODUCER =' +
        ' :INTRODUCER, CODE = :CODE, FEECODE = :FEECODE, FORMAT_FILE = :F' +
        'ORMAT_FILE, MATTERSEQ = :MATTERSEQ, BILLTEMPLATE = :BILLTEMPLATE' +
        ', ARCHVLOCN = :ARCHVLOCN, DATEARCHV = :DATEARCHV, DATEREVIEW = :' +
        'DATEREVIEW, DATEDSTRN = :DATEDSTRN, SOURCE = :SOURCE, BGROUP = :' +
        'BGROUP, INDUSTRY = :INDUSTRY, NPKTS = :NPKTS, DFLTLCODE = :DFLTL' +
        'CODE, NMACLOSED = :NMACLOSED, NDRCLOSED = :NDRCLOSED, NDRARCHV =' +
        ' :NDRARCHV, STATUS = :STATUS, TRSTMNT = :TRSTMNT, ADISINVRECV = ' +
        ':ADISINVRECV, TRUST_BAL = :TRUST_BAL, CL_TRUST_BAL = :CL_TRUST_B' +
        'AL, UNBILL_FEES = :UNBILL_FEES, DEBTORS = :DEBTORS, UNBILL_DISB ' +
        '= :UNBILL_DISB, BILL_FEES = :BILL_FEES, BILL_DISB = :BILL_DISB, ' +
        'CREDIT_LIMIT = :CREDIT_LIMIT, PERIOD0 = :PERIOD0, PERIOD1 = :PER' +
        'IOD1, PERIOD2 = :PERIOD2, PERIOD3 = :PERIOD3, BUDGET_FEES = :BUD' +
        'GET_FEES, BUDGET_DISB = :BUDGET_DISB, BUDGET_TOTAL = :BUDGET_TOT' +
        'AL, DISBTHRESHOLD = :DISBTHRESHOLD, ANTDISBS = :ANTDISBS, ANTDRS' +
        ' = :ANTDRS, DISBSWOFF = :DISBSWOFF, DRSWOFF = :DRSWOFF, WIPWOFF ' +
        '= :WIPWOFF, MODIFIED = :MODIFIED, NDEBTORTASKTEMPLATE = :NDEBTOR' +
        'TASKTEMPLATE, FEE_TAX_BASIS = :FEE_TAX_BASIS, ALLOW_MATTERS = :A' +
        'LLOW_MATTERS, CLIENT_PACK = :CLIENT_PACK, DEBTORSTATUS = :DEBTOR' +
        'STATUS, PASSWORD = :PASSWORD, MOD_BY = :MOD_BY, DISCOUNT = :DISC' +
        'OUNT'
      'WHERE'
      '  NCLIENT = :Old_NCLIENT'
      'RETURNING'
      
        '  NCLIENT, NAME, CONTACT, GENDER, CLIENTGROUP, SEARCH, MATTERS, ' +
        'ARCHIVES, PARTNER, BANKERS, CREDIT_RATING, PREV_NCMAUDIT, TAXNO,' +
        ' INTRODUCED, INTRODUCER, CODE, FEECODE, FORMAT_FILE, MATTERSEQ, ' +
        'BILLTEMPLATE, ARCHVLOCN, DATEARCHV, DATEREVIEW, DATEDSTRN, SOURC' +
        'E, BGROUP, INDUSTRY, NPKTS, DFLTLCODE, NMACLOSED, NDRCLOSED, NDR' +
        'ARCHV, STATUS, TRSTMNT, ADISINVRECV, TRUST_BAL, CL_TRUST_BAL, UN' +
        'BILL_FEES, DEBTORS, UNBILL_DISB, BILL_FEES, BILL_DISB, CREDIT_LI' +
        'MIT, PERIOD0, PERIOD1, PERIOD2, PERIOD3, BUDGET_FEES, BUDGET_DIS' +
        'B, BUDGET_TOTAL, DISBTHRESHOLD, ANTDISBS, ANTDRS, DISBSWOFF, DRS' +
        'WOFF, WIPWOFF, MODIFIED, NDEBTORTASKTEMPLATE, FEE_TAX_BASIS, ALL' +
        'OW_MATTERS, CLIENT_PACK, DEBTORSTATUS, PASSWORD, MOD_BY, DISCOUN' +
        'T'
      'INTO'
      
        '  :NCLIENT, :NAME, :CONTACT, :GENDER, :CLIENTGROUP, :SEARCH, :MA' +
        'TTERS, :ARCHIVES, :PARTNER, :BANKERS, :CREDIT_RATING, :PREV_NCMA' +
        'UDIT, :TAXNO, :INTRODUCED, :INTRODUCER, :CODE, :FEECODE, :FORMAT' +
        '_FILE, :MATTERSEQ, :BILLTEMPLATE, :ARCHVLOCN, :DATEARCHV, :DATER' +
        'EVIEW, :DATEDSTRN, :SOURCE, :BGROUP, :INDUSTRY, :NPKTS, :DFLTLCO' +
        'DE, :NMACLOSED, :NDRCLOSED, :NDRARCHV, :STATUS, :TRSTMNT, :ADISI' +
        'NVRECV, :TRUST_BAL, :CL_TRUST_BAL, :UNBILL_FEES, :DEBTORS, :UNBI' +
        'LL_DISB, :BILL_FEES, :BILL_DISB, :CREDIT_LIMIT, :PERIOD0, :PERIO' +
        'D1, :PERIOD2, :PERIOD3, :BUDGET_FEES, :BUDGET_DISB, :BUDGET_TOTA' +
        'L, :DISBTHRESHOLD, :ANTDISBS, :ANTDRS, :DISBSWOFF, :DRSWOFF, :WI' +
        'PWOFF, :MODIFIED, :NDEBTORTASKTEMPLATE, :FEE_TAX_BASIS, :ALLOW_M' +
        'ATTERS, :CLIENT_PACK, :DEBTORSTATUS, :PASSWORD, :MOD_BY, :DISCOU' +
        'NT')
    SQLLock.Strings = (
      
        'SELECT NCLIENT, NAME, CONTACT, GENDER, CLIENTGROUP, SEARCH, MATT' +
        'ERS, ARCHIVES, PARTNER, BANKERS, CREDIT_RATING, PREV_NCMAUDIT, T' +
        'AXNO, INTRODUCED, INTRODUCER, CODE, FEECODE, FORMAT_FILE, MATTER' +
        'SEQ, BILLTEMPLATE, ARCHVLOCN, DATEARCHV, DATEREVIEW, DATEDSTRN, ' +
        'SOURCE, BGROUP, INDUSTRY, NPKTS, DFLTLCODE, NMACLOSED, NDRCLOSED' +
        ', NDRARCHV, STATUS, TRSTMNT, ADISINVRECV, TRUST_BAL, CL_TRUST_BA' +
        'L, UNBILL_FEES, DEBTORS, UNBILL_DISB, BILL_FEES, BILL_DISB, CRED' +
        'IT_LIMIT, PERIOD0, PERIOD1, PERIOD2, PERIOD3, BUDGET_FEES, BUDGE' +
        'T_DISB, BUDGET_TOTAL, DISBTHRESHOLD, ANTDISBS, ANTDRS, DISBSWOFF' +
        ', DRSWOFF, WIPWOFF, CREATED, MODIFIED, NDEBTORTASKTEMPLATE, FEE_' +
        'TAX_BASIS, ALLOW_MATTERS, CLIENT_PACK, DEBTORSTATUS, PASSWORD, M' +
        'OD_BY, DISCOUNT FROM CLIENT'
      'WHERE'
      '  NCLIENT = :Old_NCLIENT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT NCLIENT, NAME, CONTACT, GENDER, CLIENTGROUP, SEARCH, MATT' +
        'ERS, ARCHIVES, PARTNER, BANKERS, CREDIT_RATING, PREV_NCMAUDIT, T' +
        'AXNO, INTRODUCED, INTRODUCER, CODE, FEECODE, FORMAT_FILE, MATTER' +
        'SEQ, BILLTEMPLATE, ARCHVLOCN, DATEARCHV, DATEREVIEW, DATEDSTRN, ' +
        'SOURCE, BGROUP, INDUSTRY, NPKTS, DFLTLCODE, NMACLOSED, NDRCLOSED' +
        ', NDRARCHV, STATUS, TRSTMNT, ADISINVRECV, TRUST_BAL, CL_TRUST_BA' +
        'L, UNBILL_FEES, DEBTORS, UNBILL_DISB, BILL_FEES, BILL_DISB, CRED' +
        'IT_LIMIT, PERIOD0, PERIOD1, PERIOD2, PERIOD3, BUDGET_FEES, BUDGE' +
        'T_DISB, BUDGET_TOTAL, DISBTHRESHOLD, ANTDISBS, ANTDRS, DISBSWOFF' +
        ', DRSWOFF, WIPWOFF, CREATED, MODIFIED, NDEBTORTASKTEMPLATE, FEE_' +
        'TAX_BASIS, ALLOW_MATTERS, CLIENT_PACK, DEBTORSTATUS, PASSWORD, M' +
        'OD_BY, DISCOUNT FROM CLIENT'
      'WHERE'
      '  NCLIENT = :Old_NCLIENT')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM CLIENT'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  c.*, c.rowid'
      'FROM'
      '  client c'
      'WHERE c.nclient = :nclient')
    CachedUpdates = True
    DMLRefresh = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    SpecificOptions.Strings = (
      'Oracle.SequenceMode=smInsert')
    AfterEdit = qClientAfterEdit
    OnNewRecord = qClientNewRecord
    Left = 529
    Top = 53
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nclient'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsClient: TDataSource
    DataSet = qClient
    Left = 581
    Top = 54
  end
  object qCodeRules: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT e.CLIENTCODE, e.CLIENTACRONYM, e.CLIENTPAD, e.CLIENTLENGT' +
        'H,'
      
        'e.CREDITORCODE, e.CREDITORACRONYM, e.CREDITORPAD, e.CREDITORLENG' +
        'TH, e.CLIENTSEPARATOR,'
      
        'e.USE_ENTITY_CODE, e.USE_ENTITY_LENGTH, e.USE_ENTITY_SEPARATOR, ' +
        'e.CODE AS ENTITY_CODE,'
      'e.USE_ENTGRP_CODE, e.USE_ENTGRP_LENGTH, e.USE_ENTGRP_SEPARATOR,'
      'e.USE_PHONEBOOK_NAME, egl.ENTITY_GROUP_CODE, e.ROWID'
      'FROM ENTITY e'
      
        'LEFT OUTER JOIN ENTITY_GROUP_LINK egl ON e.CODE = EGL.ENTITY_COD' +
        'E'
      'WHERE e.CODE = :Entity')
    CachedUpdates = True
    Left = 638
    Top = 301
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end>
    object qCodeRulesCLIENTCODE: TStringField
      FieldName = 'CLIENTCODE'
      Size = 1
    end
    object qCodeRulesCLIENTACRONYM: TStringField
      FieldName = 'CLIENTACRONYM'
      Size = 1
    end
    object qCodeRulesCLIENTPAD: TIntegerField
      FieldName = 'CLIENTPAD'
    end
    object qCodeRulesCLIENTLENGTH: TIntegerField
      FieldName = 'CLIENTLENGTH'
    end
    object qCodeRulesROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
    object qCodeRulesCREDITORCODE: TStringField
      FieldName = 'CREDITORCODE'
      Size = 1
    end
    object qCodeRulesCREDITORACRONYM: TStringField
      FieldName = 'CREDITORACRONYM'
      Size = 1
    end
    object qCodeRulesCREDITORPAD: TStringField
      FieldName = 'CREDITORPAD'
      Size = 1
    end
    object qCodeRulesCREDITORLENGTH: TIntegerField
      FieldName = 'CREDITORLENGTH'
    end
    object qCodeRulesCLIENTSEPARATOR: TStringField
      FieldName = 'CLIENTSEPARATOR'
      Size = 1
    end
    object qCodeRulesUSE_PHONEBOOK_NAME: TStringField
      FieldName = 'USE_PHONEBOOK_NAME'
      Size = 1
    end
    object qCodeRulesUSE_ENTITY_LENGTH: TIntegerField
      FieldName = 'USE_ENTITY_LENGTH'
    end
    object qCodeRulesUSE_ENTITY_CODE: TStringField
      FieldName = 'USE_ENTITY_CODE'
      Size = 1
    end
    object qCodeRulesUSE_ENTITY_SEPARATOR: TStringField
      FieldName = 'USE_ENTITY_SEPARATOR'
      Size = 1
    end
    object qCodeRulesENTITY_CODE: TStringField
      FieldName = 'ENTITY_CODE'
      Size = 2
    end
    object qCodeRulesUSE_ENTGRP_CODE: TStringField
      FieldName = 'USE_ENTGRP_CODE'
      Size = 1
    end
    object qCodeRulesUSE_ENTGRP_LENGTH: TSmallintField
      FieldName = 'USE_ENTGRP_LENGTH'
    end
    object qCodeRulesUSE_ENTGRP_SEPARATOR: TStringField
      FieldName = 'USE_ENTGRP_SEPARATOR'
      Size = 1
    end
    object qCodeRulesENTITY_GROUP_CODE: TStringField
      FieldName = 'ENTITY_GROUP_CODE'
      ReadOnly = True
      Size = 10
    end
  end
  object qClientCheck: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SEARCH FROM CLIENT WHERE CODE = :Code')
    Left = 632
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Code'
        Value = nil
      end>
  end
  object qGetCodes: TUniQuery
    Connection = dmAxiom.uniInsight
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 746
    Top = 56
  end
  object qActiveEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NAME, CODE FROM EMPLOYEE WHERE ACTIVE = '#39'Y'#39' ORDER BY NAME')
    Left = 846
    Top = 103
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
    Left = 909
    Top = 108
  end
  object qPartners: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NAME, CODE FROM EMPLOYEE WHERE ACTIVE = '#39'Y'#39' AND ISPARTNER' +
        ' = '#39'Y'#39)
    Left = 751
    Top = 245
    object qPartnersNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qPartnersCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
  end
  object dsPartners: TDataSource
    AutoEdit = False
    DataSet = qPartners
    Left = 813
    Top = 245
  end
  object qFeeCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM FEECODE')
    Left = 533
    Top = 253
    object qFeeCodeCODE: TStringField
      FieldName = 'CODE'
      Required = True
    end
    object qFeeCodeDESCR: TStringField
      FieldName = 'DESCR'
      Required = True
      Size = 60
    end
  end
  object dsFeeCode: TDataSource
    AutoEdit = False
    DataSet = qFeeCode
    Left = 593
    Top = 171
  end
  object qBillTemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM BILLTEMPLATE ORDER BY CODE')
    Left = 639
    Top = 244
    object qBillTemplateCODE: TStringField
      FieldName = 'CODE'
      Required = True
    end
    object qBillTemplateDESCR: TStringField
      FieldName = 'DESCR'
      Required = True
      Size = 400
    end
  end
  object dsBillTemplate: TDataSource
    AutoEdit = False
    DataSet = qBillTemplate
    Left = 693
    Top = 240
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
    Left = 529
    Top = 275
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
  object qCreditor: TUniQuery
    KeyFields = 'NCREDITOR'
    SQLRefresh.Strings = (
      'select * from creditor where search = 1')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  c.*, c.rowid'
      'FROM'
      '  creditor c'
      'WHERE c.ncreditor = :ncreditor')
    CachedUpdates = True
    DMLRefresh = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    AfterEdit = qCreditorAfterEdit
    Left = 851
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncreditor'
        Value = nil
      end>
  end
  object dsCreditor: TDataSource
    DataSet = qCreditor
    Left = 909
    Top = 208
  end
  object qCreditorCheck: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SEARCH FROM CREDITOR WHERE CODE = :Code')
    Left = 536
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Code'
        Value = nil
      end>
  end
  object qryMasterPhoneBookEntry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  search, name, nname'
      'FROM'
      '  phonebook'
      'WHERE'
      '  nname = :nnamemaster')
    CachedUpdates = True
    Left = 849
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nnamemaster'
        Value = nil
      end>
    object qryMasterPhoneBookEntrySEARCH: TStringField
      FieldName = 'SEARCH'
    end
    object qryMasterPhoneBookEntryNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object qryMasterPhoneBookEntryNNAME: TLargeintField
      FieldName = 'NNAME'
      Required = True
    end
  end
  object dsMasterPhoneBookEntry: TUniDataSource
    DataSet = qryMasterPhoneBookEntry
    Left = 914
    Top = 158
  end
  object tSearchChangeTimer: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tSearchChangeTimerTimer
    Left = 467
    Top = 105
  end
  object qGetNName: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SQNC_NNAME.NEXTVAL AS NEXTVAL FROM DUAL')
    Left = 852
    Top = 259
    object qGetNNameNEXTVAL: TFloatField
      FieldName = 'NEXTVAL'
      ReadOnly = True
    end
  end
  object qListChildren: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nname, search, name from phonebook where nname in (:nname' +
        'list)')
    ReadOnly = True
    Left = 831
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nnamelist'
        Value = nil
      end>
    object qListChildrenSEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qListChildrenNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object qListChildrenNNAME: TLargeintField
      FieldName = 'NNAME'
      Required = True
    end
  end
  object dsListChildren: TDataSource
    AutoEdit = False
    DataSet = qListChildren
    Left = 873
    Top = 302
  end
  object qChildren: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nname, search, name from phonebook where nnamemaster = :n' +
        'name')
    ReadOnly = True
    Left = 750
    Top = 297
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
    object qChildrenSEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qChildrenNAME: TStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qChildrenNNAME: TLargeintField
      FieldName = 'NNAME'
      Required = True
    end
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 492
    Top = 125
    StyleName = 'XP Style'
    object actAddEvent: TAction
      Caption = '&Add'
      ImageIndex = 33
      OnExecute = actAddEventExecute
      OnUpdate = actAddEventUpdate
    end
    object actEditEvent: TAction
      Caption = '&Edit'
      ImageIndex = 23
      OnExecute = actEditEventExecute
      OnUpdate = actEditEventUpdate
    end
  end
  object mnuEvent: TPopupMenu
    Left = 496
    Top = 48
    object Add1: TMenuItem
      Action = actAddEvent
    end
    object Edit1: TMenuItem
      Action = actEditEvent
    end
  end
  object qryReferredBy: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, referraltype, descr'
      'FROM MarketReferral'
      'ORDER BY descr')
    Debug = True
    Left = 338
    Top = 232
  end
  object dsReferredBy: TUniDataSource
    DataSet = qryReferredBy
    Left = 600
    Top = 424
  end
  object qryIndustry: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, industry, descr'
      'FROM MarketIndustry'
      'ORDER BY industry')
    Left = 408
    Top = 376
  end
  object dsIndustry: TUniDataSource
    DataSet = qryIndustry
    Left = 600
    Top = 472
  end
  object qryInterest: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, interest, descr'
      'FROM MarketInterest'
      'ORDER BY interest')
    Left = 519
    Top = 447
  end
  object qryUpdateInterest: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 706
    Top = 545
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name'
      'FROM employee'
      'ORDER BY name')
    Left = 640
    Top = 352
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 712
    Top = 352
  end
  object qryUpdateEventParticipants: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE event_participant'
      'SET nname = :p_nname'
      'WHERE nname = 0')
    Left = 712
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nname'
        Value = nil
      end>
  end
  object qryFlushEventParticipants: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'DELETE FROM event_participant'
      'WHERE nname = :p_nname')
    Left = 712
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nname'
        Value = nil
      end>
  end
  object qryReferralOther: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT REFERRAL_SOURCE.*, '
      'REFERRAL_SOURCE.ROWID FROM REFERRAL_SOURCE'
      'ORDER BY REFERRAL')
    Left = 697
    Top = 27
  end
  object dsReferralOther: TUniDataSource
    DataSet = qryReferralOther
    Left = 788
    Top = 36
  end
  object qryDebtorTaskTemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from debtorworkflowtemplate')
    Left = 584
    Top = 96
  end
  object dsDebtorTaskTemplate: TUniDataSource
    DataSet = qryDebtorTaskTemplate
    Left = 584
    Top = 128
  end
  object qryUpdateFirmContact: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 401
    Top = 437
  end
  object qryEmpList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name'
      'FROM employee'
      'where active = '#39'Y'#39
      'ORDER BY name')
    Left = 639
    Top = 404
  end
  object dsempList: TUniDataSource
    DataSet = qryEmpList
    Left = 707
    Top = 401
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
    ImageOptions.Images = ImageList1
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 498
    Top = 92
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'OtherNameToolbar'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 293
      FloatTop = 224
      FloatClientWidth = 46
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
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
        end>
      OldName = 'OtherNameToolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = aOpenChild
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = aNewChild
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = aEditChild
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aDeleteChild
      Category = 0
    end
  end
  object vwPostcode: TcxGridViewRepository
    Left = 420
    Top = 158
    object tvPostcode: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvAlways
      DataController.KeyFieldNames = 'PCODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object tvPostcodeSUBURB: TcxGridDBColumn
        DataBinding.FieldName = 'SUBURB'
      end
      object tvPostcodePCODE: TcxGridDBColumn
        DataBinding.FieldName = 'PCODE'
      end
      object tvPostcodeSTATE: TcxGridDBColumn
        DataBinding.FieldName = 'STATE'
      end
    end
    object tvIndustry: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsIndustry
      DataController.KeyFieldNames = 'CODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvIndustryDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Width = 362
      end
      object tvIndustryINDUSTRY: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'INDUSTRY'
        Width = 124
      end
      object tvIndustryCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
      end
    end
  end
  object popCopyStreetAddress: TPopupMenu
    OnPopup = popCopyStreetAddressPopup
    Left = 77
    Top = 56
    object CopyToPostalAddress: TMenuItem
      Caption = 'Copy Address To Postal Address'
      OnClick = aCopyAddressDownExecute
    end
    object CopyToCustomAddress: TMenuItem
      Action = aCopyAddressToCustom
    end
  end
  object popCopyPostalAddress: TPopupMenu
    OnPopup = popCopyPostalAddressPopup
    Left = 524
    Top = 218
    object CopyStreetAddressToCustomAddress: TMenuItem
      Action = aCopyAddressUp
      Caption = 'Copy Postal Address To Street Address'
    end
    object CopyPostalAddressToCustomAddress: TMenuItem
      Action = aCopyPostalToCustom
    end
  end
  object qryTaxRate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from taxtype')
    Left = 556
    Top = 7
  end
  object dsTaxRate: TUniDataSource
    DataSet = qryTaxRate
    Left = 25
    Top = 146
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 284
    Top = 444
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
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
      ' phonebook P, '
      ' phonebook M'
      'where'
      '    p.nname = :nname'
      'and'
      '  M.nname = P.nnamemaster(+)')
    Left = 282
    Top = 127
  end
  object qryTmpSQL: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 211
    Top = 135
  end
  object tDebtorStatus: TUniTable
    TableName = 'DEBTORSTATUS'
    OrderFields = 'DEBTORSTATUS'
    Connection = dmAxiom.uniInsight
    KeyFields = 'DEBTORSTATUS'
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    SpecificOptions.Strings = (
      'Oracle.KeySequence=DEBTORSTATUS_PK_SEQ'
      'Oracle.FetchAll=True')
    Left = 432
    Top = 327
    object tDebtorStatusDEBTORSTATUS: TFloatField
      FieldName = 'DEBTORSTATUS'
    end
    object tDebtorStatusDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
    end
  end
  object dsDebtorStatus: TUniDataSource
    DataSet = qryDebtorStatus
    Left = 354
    Top = 304
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
    Left = 949
    Top = 293
  end
  object dsRelationshipAction: TUniDataSource
    DataSet = qryRelationshipAction
    Left = 1016
    Top = 305
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
  object qryRelationship_Type: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from relationship_type'
      'order by descr')
    Left = 867
    Top = 186
  end
  object dsRelationship_Type: TUniDataSource
    DataSet = qryRelationship_Type
    Left = 955
    Top = 186
  end
  object dlFile: TOpenDialog
    Filter = 'JPG|*.jpg|HTML|*.html'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Title = 'Select document template'
    Left = 468
    Top = 40
  end
  object qPhoneBookImage: TUniQuery
    UpdatingTable = 'PHONEBOOK'
    KeyFields = 'nname'
    SQLInsert.Strings = (
      'INSERT INTO PHONEBOOK'
      '  (NNAME, CLIENT_IMAGE)'
      'VALUES'
      '  (:NNAME, :CLIENT_IMAGE)'
      'RETURNING'
      '  NNAME, CLIENT_IMAGE'
      'INTO'
      '  :NNAME, :CLIENT_IMAGE')
    SQLDelete.Strings = (
      'DELETE FROM PHONEBOOK'
      'WHERE'
      '  NNAME = :Old_NNAME')
    SQLUpdate.Strings = (
      'UPDATE PHONEBOOK'
      'SET'
      '  NNAME = :NNAME, CLIENT_IMAGE = :CLIENT_IMAGE'
      'WHERE'
      '  NNAME = :Old_NNAME'
      'RETURNING'
      '  NNAME'
      'INTO'
      '  :NNAME')
    SQLLock.Strings = (
      'SELECT NNAME, CLIENT_IMAGE FROM PHONEBOOK'
      'WHERE'
      '  NNAME = :Old_NNAME'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT NNAME, CLIENT_IMAGE FROM PHONEBOOK'
      'WHERE'
      '  NNAME = :Old_NNAME')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM PHONEBOOK'
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '--  p.rowid,'
      '  P.NNAME,'
      '  P.CLIENT_IMAGE'
      'FROM'
      '  phonebook p'
      'WHERE'
      '  p.nname = :nname')
    CachedUpdates = True
    DMLRefresh = True
    RefreshOptions = [roBeforeEdit]
    Options.SetFieldsReadOnly = False
    Options.ReturnParams = True
    Options.EnableBCD = True
    AfterScroll = CRTemp_qPhoneBookAfterScroll
    OnEditError = qPhoneBookEditError
    Left = 207
    Top = 467
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object dsPhoneBookImage: TUniDataSource
    DataSet = qPhoneBookImage
    Left = 449
    Top = 432
  end
  object OpenDialog1: TOpenDialog
    Left = 75
    Top = 544
  end
  object procCreateContactfromExisting: TUniStoredProc
    StoredProcName = 'CONTACT_CREATE_FROM_EXISTING'
    SQL.Strings = (
      'begin'
      
        '  :RESULT := CONTACT_CREATE_FROM_EXISTING(:P_OLD_NNAME, :P_ENTIT' +
        'Y);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 422
    Top = 495
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_OLD_NNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_ENTITY'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'CONTACT_CREATE_FROM_EXISTING'
  end
  object qrySuperClient: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO SUPERCLIENT'
      '  (CODE, DESCR)'
      'VALUES'
      '  (:CODE, :DESCR)')
    SQLDelete.Strings = (
      'DELETE FROM SUPERCLIENT'
      'WHERE'
      '  CODE = :Old_CODE')
    SQLUpdate.Strings = (
      'UPDATE SUPERCLIENT'
      'SET'
      '  CODE = :CODE, DESCR = :DESCR'
      'WHERE'
      '  CODE = :Old_CODE')
    SQLLock.Strings = (
      'SELECT CODE, DESCR FROM SUPERCLIENT'
      'WHERE'
      '  CODE = :Old_CODE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT CODE, DESCR FROM SUPERCLIENT'
      'WHERE'
      '  CODE = :CODE')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM SUPERCLIENT'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM SUPERCLIENT')
    Left = 473
    Top = 566
  end
  object dsSuperClient: TUniDataSource
    DataSet = qrySuperClient
    Left = 560
    Top = 561
  end
  object qryPhonebookStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM phonebook_status')
    Left = 273
    Top = 561
  end
  object dsPhonebookStatus: TUniDataSource
    DataSet = qryPhonebookStatus
    Left = 368
    Top = 540
  end
  object cxEditRepository1: TcxEditRepository
    Left = 640
    Top = 672
    PixelsPerInch = 96
  end
  object qryPhoneBookConflictDocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      '-- Find this contact'#39's conflict documents'
      
        'select pd.nname, con.docid, con.description, con.systemdate, con' +
        '.search_text'
      'from phonebook_doc pd'
      'inner join conflict con on (con.docid = pd.docid)'
      'where pd.nname = :nname')
    Left = 544
    Top = 616
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qryInsertPhoneBookConflictDoc: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'insert into'
      'PhoneBook_Doc (docid, nname)'
      'values (:Docid, :NName)')
    Left = 656
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Docid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NName'
        Value = nil
      end>
  end
  object qryDebtorStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from DEBTORSTATUS')
    Left = 592
    Top = 344
  end
end
