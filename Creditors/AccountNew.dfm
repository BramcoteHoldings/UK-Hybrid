object frmAccountNew: TfrmAccountNew
  Left = 348
  Top = 262
  Caption = 'Accounts Payable Creation'
  ClientHeight = 483
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    821
    483)
  PixelsPerInch = 96
  TextHeight = 15
  object lblAmountMsg: TLabel
    Left = 666
    Top = 432
    Width = 31
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 796
    Top = 432
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 788
  end
  object lblTax: TLabel
    Left = 796
    Top = 412
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 788
  end
  object lblBalance: TLabel
    Left = 700
    Top = 412
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
  end
  object lblUnallocatedMsg: TLabel
    Left = 492
    Top = 432
    Width = 73
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Unallocated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblUnallocated: TLabel
    Left = 658
    Top = 432
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Visible = False
  end
  object tbRefno: TEdit
    Left = 330
    Top = 30
    Width = 105
    Height = 23
    TabOrder = 4
    OnExit = tbRefnoExit
  end
  object tbDesc: TEdit
    Left = 330
    Top = 56
    Width = 257
    Height = 23
    TabOrder = 5
    OnExit = tbDescExit
    OnKeyPress = tbDescKeyPress
  end
  object dtpDueDate: TDateTimePicker
    Left = 120
    Top = 30
    Width = 105
    Height = 23
    Date = 23204.000000000000000000
    Time = 23204.000000000000000000
    TabOrder = 1
  end
  object dtpPayDate: TDateTimePicker
    Left = 120
    Top = 56
    Width = 105
    Height = 23
    Date = 23204.000000000000000000
    Time = 23204.000000000000000000
    TabOrder = 2
  end
  object neAmount: TNumberEdit
    Left = 330
    Top = 82
    Width = 81
    Height = 23
    Alignment = taLeftJustify
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
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
    NoZero = True
    TabOrder = 6
    OnExit = neAmountExit
  end
  object dbgrLedger: TcxGrid
    Left = 7
    Top = 113
    Width = 806
    Height = 295
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 7
    OnEnter = dbgrLedgerEnter
    OnExit = cxGrid1Exit
    LookAndFeel.NativeStyle = True
    object tvLedger: TcxGridDBTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      OnInitEdit = tvLedgerInitEdit
      DataController.DataSource = dsLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnDataChanged = tvLedgerDataControllerDataChanged
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 55
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 22
      Preview.RightIndent = 6
      Styles.Background = cxStyle1
      Styles.Content = cxStyle1
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 3
        Properties.Items.Strings = (
          'Matter'
          'Ledger')
        Properties.ReadOnly = False
        Width = 44
      end
      object tvLedgerREFNO: TcxGridDBColumn
        Caption = 'Reference'
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
        Width = 74
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'LONGDESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 170
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Reason'
        DataBinding.FieldName = 'REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 180
      end
      object tvLedgerSUNDRYTYPE: TcxGridDBColumn
        Caption = 'Disbursement Type '
        DataBinding.FieldName = 'SUNDRYTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 20
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsSundryType
        Width = 54
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Tax rate'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTaxCodes
        Width = 43
      end
      object tvLedgerAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = tvLedgerAMOUNTPropertiesValidate
        HeaderAlignmentHorz = taRightJustify
        Width = 66
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Width = 52
      end
    end
    object dbgrLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object lblCreditor: TcxLabel
    Left = 330
    Top = 4
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Vert = taVCenter
    Properties.ShowAccelChar = False
    Height = 22
    Width = 232
    AnchorY = 15
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 120
    Top = 4
    EditValue = 43496.5899222917d
    Properties.MinDate = 1.000000000000000000
    Properties.ShowTime = False
    Properties.OnChange = EnforceCustomDateEdit1PropertiesChange
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnClick = dtpDateChange
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 105
  end
  object imgDocument: TcxImage
    Left = 264
    Top = 495
    TabOrder = 8
    Visible = False
    Height = 24
    Width = 140
  end
  object btnCancel: TBitBtn
    Left = 738
    Top = 454
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 11
    OnClick = btnCancelClick
  end
  object btnOK: TBitBtn
    Left = 649
    Top = 454
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 12
    OnClick = btnOKClick
  end
  object btnAcquireDoc: TBitBtn
    Left = 139
    Top = 415
    Width = 131
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = 'Scan Document'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F0000000000F
      FFFF777777777777FFFF7F88888888770FFF7FA28888888770FF7FFFFFFFFFF7
      870F7777777777778770F78FFF88E8E87870FF78888E8E8EE770FFF78888888E
      8E70FFFF777000000000FFFFF77777777770FFFF78887877770FFFF788888787
      80FFFF78888888880FFFF78888888880FFFF77777777700FFFFF}
    TabOrder = 10
    OnClick = btnAcquireDocClick
  end
  object btnAddAttachment: TBitBtn
    Left = 7
    Top = 415
    Width = 131
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = 'Attach Document'
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A60033000000000033003300330033330000161616001C1C1C00222222002929
      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
      CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
      00000033330000336600003399000033CC000033FF0000660000006633000066
      6600006699000066CC000066FF00009900000099330000996600009999000099
      CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
      660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
      FF00FF3300003333330033336600333399003333CC003333FF00336600003366
      330033666600336699003366CC003366FF003399000033993300339966003399
      99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
      FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
      6600660099006600CC006600FF00663300006633330066336600663399006633
      CC006633FF00666600006666330066666600666699006666CC00669900006699
      330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
      CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
      000099339900990099009900CC009900000099333300990066009933CC009900
      FF00996600009966330099336600996699009966CC009933FF00999933009999
      6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
      CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
      000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
      9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
      FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
      3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
      9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
      6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
      CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
      0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
      9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
      A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
      DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
      000000000000000000FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFEC
      ECECECECECECFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFF00
      1500FFFFFFFFFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFFD
      FDFDFDFDFDFDFFFF00FFFFEC7AFFFFFDFDFDFDFDFDFDFFFF00FFFFEC37FFFFFF
      FFFFFFFFFFFFFFFF00FFFFEC7AFFFF00150015FFFFFFFFFF00FFFFEC37FFFFFF
      FFFFFFFFFFFFFFFF00FFFFEC7AFFECECECECECECECECECFF00FFFFEC37FFFFFF
      FFFFFFFFFFFFFFFF00FFFFEC7A377A377A377A377A377A3700FFFFECD3D3D3D3
      D3D3D3D3D3D3D3D300FFFFEC04040404040404040404040400FF}
    TabOrder = 9
    OnClick = btnAddAttachmentClick
  end
  object btnCreditor: TBitBtn
    Left = 562
    Top = 3
    Width = 27
    Height = 25
    Hint = 'Lookup Creditor'
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
    TabOrder = 3
    OnClick = btnCreditorClick
  end
  object chkNoExit: TCheckBox
    Left = 7
    Top = 460
    Width = 232
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = '&Keep Invoice form open after posting?'
    TabOrder = 14
  end
  object BitBtn1: TBitBtn
    Left = 271
    Top = 415
    Width = 131
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = 'Print Account'
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
    TabOrder = 15
    OnClick = BitBtn1Click
  end
  object cxLabel1: TcxLabel
    Left = 275
    Top = 83
    Caption = '&Amount'
    Style.Edges = []
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 281
    Top = 57
    Caption = '&Reason'
    Style.Edges = []
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 234
    Top = 31
    Caption = '&Invoice Number'
    Style.Edges = []
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 276
    Top = 6
    Caption = '&Creditor'
    Style.Edges = []
    Transparent = True
  end
  object cxLabel5: TcxLabel
    Left = 9
    Top = 57
    Caption = 'Intended &Payment'
    Style.Edges = []
    Transparent = True
  end
  object cxLabel6: TcxLabel
    Left = 60
    Top = 32
    Caption = 'Due &Date'
    Style.Edges = []
    Transparent = True
  end
  object cxLabel7: TcxLabel
    Left = 41
    Top = 6
    Caption = 'In&voice Date'
    Style.Edges = []
    Transparent = True
  end
  object dsAllocs: TUniDataSource
    DataSet = qryAllocs
    Left = 104
    Top = 264
  end
  object dsAccount: TUniDataSource
    DataSet = qryAccount
    Left = 72
    Top = 264
  end
  object qryAccount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT I.*, I.ROWID FROM INVOICE I WHERE I.NCHEQUE = -1')
    CachedUpdates = True
    Left = 72
    Top = 232
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT A.*, A.ROWID FROM ALLOC A WHERE A.NALLOC = -1')
    CachedUpdates = True
    Left = 104
    Top = 232
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT TYPE, REFNO, LONGDESC, REASON, AMOUNT, TAXCODE, TAX, ROWI' +
        'D, WITHHOLD, SUNDRYTYPE'
      'FROM LGRALLOC'
      'WHERE REFNO = '#39#39)
    CachedUpdates = True
    BeforeInsert = qryLedgerBeforeInsert
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    BeforeScroll = qryLedgerBeforeScroll
    Left = 32
    Top = 192
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
    end
    object qryLedgerLONGDESC: TStringField
      FieldName = 'LONGDESC'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 400
    end
    object qryLedgerAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnChange = qryLedgerAMOUNTChange
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      OnChange = qryLedgerTAXCODEChange
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
    object qryLedgerWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
    object qryLedgerSUNDRYTYPE: TStringField
      FieldName = 'SUNDRYTYPE'
      Size = 5
    end
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 40
    Top = 264
  end
  object popGrid: TPopupMenu
    Left = 8
    Top = 264
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 136
    Top = 232
  end
  object qryRefnoCheck: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT REFNO '
      'FROM INVOICE '
      'WHERE NCREDITOR = :NCREDITOR '
      '      AND REFNO = :REFNO')
    Left = 168
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCREDITOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end>
  end
  object qryDefaultTaxcode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT DEFAULT_TAXCODE FROM CHART'
      'WHERE CODE = :CODE'
      'AND BANK = :BANK')
    Left = 598
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end>
  end
  object qryUpdateInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update'
      'invoice'
      'set '
      'LEGAL_CR_AMOUNT = :LEGAL_CR_AMOUNT,'
      'TRADE_CR_AMOUNT = :TRADE_CR_AMOUNT,'
      'LEGAL_CR_AMOUNT_OWING = :LEGAL_CR_AMOUNT_OWING,'
      'TRADE_CR_AMOUNT_OWING = :TRADE_CR_AMOUNT_OWING'
      'where'
      'ninvoice = :ninvoice'
      '')
    Left = 207
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LEGAL_CR_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRADE_CR_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LEGAL_CR_AMOUNT_OWING'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRADE_CR_AMOUNT_OWING'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ninvoice'
        Value = nil
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 671
    Top = 13
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
  object qryTaxCodes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM TAXTYPE ORDER BY CODE')
    Left = 242
    Top = 283
  end
  object dsTaxCodes: TUniDataSource
    DataSet = qryTaxCodes
    Left = 306
    Top = 287
  end
  object qrySundryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      '  descr, code'
      'from'
      'sundrytype'
      'order by descr')
    Left = 84
    Top = 319
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 157
    Top = 312
  end
  object dlFile: TOpenDialog
    Filter = '*.*|*.*'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select document template'
    Left = 451
    Top = 191
  end
  object dxComponentPrinterAccPayable: TdxComponentPrinter
    CurrentLink = dxComponentPrinterAccPayableLink1
    Version = 0
    Left = 701
    Top = 54
    PixelsPerInch = 96
    object dxComponentPrinterAccPayableLink1: TdxCustomContainerReportLink
      Active = True
      Component = Owner
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43496.589922175920000000
      ShrinkToPageWidth = True
      PixelsPerInch = 96
      BuiltInReportLink = True
      HiddenComponents = {
        63686B4E6F457869740D0A62746E4164644174746163686D656E740D0A62746E
        41637175697265446F630D0A62746E4F4B0D0A62746E43616E63656C0D0A6274
        6E4372656469746F720D0A6C626C556E616C6C6F63617465640D0A6C626C556E
        616C6C6F63617465644D73670D0A6C626C416D6F756E744D73670D0A42697442
        746E310D0A6C626C42616C616E63650D0A6C626C5461780D0A6C626C546F7461
        6C0D0A}
      ExcludedComponents = {
        62746E4372656469746F720D0A62746E4164644174746163686D656E740D0A62
        746E41637175697265446F630D0A62746E4F4B0D0A62746E43616E63656C0D0A
        6C626C556E616C6C6F63617465644D73670D0A6C626C556E616C6C6F63617465
        640D0A6C626C416D6F756E744D73670D0A}
      AggregatedReportLinks = {}
    end
  end
end
