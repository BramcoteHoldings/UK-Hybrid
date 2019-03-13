object frmNewMessage: TfrmNewMessage
  Left = 77
  Top = 195
  Width = 950
  Height = 630
  ActiveControl = EdtTo
  Caption = 'Untitled'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000888888880000000000
    088888888888888888888880000088888888888888888888887CC88000008888
    88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
    CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
    F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
    000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
    000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
    000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
    001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
    003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
    888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
    8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
    7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
    CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
    0000000F00000007000000030000000100000000000000000000000000000003
    0000001F0000001F0000007F0000007F0000FFFF0000}
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 572
    Width = 934
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end>
    PaintStyle = stpsXP
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object pnlTo: TLMDSimplePanel
    Left = 0
    Top = 77
    Width = 934
    Height = 51
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnTo: TcxButton
      Left = 12
      Top = 3
      Width = 66
      Height = 21
      Caption = 'To...'
      TabOrder = 0
      OnClick = btnToClick
      LookAndFeel.NativeStyle = True
    end
    object btnCC: TcxButton
      Left = 12
      Top = 28
      Width = 66
      Height = 21
      Caption = 'Cc...'
      TabOrder = 1
      OnClick = btnToClick
      LookAndFeel.NativeStyle = True
    end
    object EdtTo: TcxTextEdit
      Left = 92
      Top = 3
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 754
    end
    object EdtCC: TcxTextEdit
      Left = 92
      Top = 28
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 754
    end
    object cbSaveMessage: TcxCheckBox
      Left = 803
      Top = 14
      Caption = 'Save Message in DB'
      Properties.NullStyle = nssUnchecked
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Visible = False
      Width = 122
    end
    object cxButton4: TcxButton
      Left = 12
      Top = 54
      Width = 66
      Height = 21
      Caption = 'Bcc...'
      TabOrder = 5
      OnClick = btnToClick
      LookAndFeel.NativeStyle = True
    end
    object edtBCC: TcxTextEdit
      Left = 92
      Top = 54
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 754
    end
  end
  object panAttachments: TLMDSimplePanel
    Left = 0
    Top = 155
    Width = 934
    Height = 45
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 3
    DesignSize = (
      934
      45)
    object lvAttachments: TcxListView
      Left = 92
      Top = 4
      Width = 834
      Height = 37
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = <>
      IconOptions.Arrangement = iaLeft
      ShowColumnHeaders = False
      Style.Color = clBtnFace
      Style.Edges = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      ViewStyle = vsSmallIcon
      OnInfoTip = lvAttachmentsInfoTip
    end
    object cxButton1: TcxButton
      Left = 12
      Top = 5
      Width = 66
      Height = 21
      Caption = 'Attach...'
      TabOrder = 1
      OnClick = barbtnAttachClick
      LookAndFeel.NativeStyle = True
    end
  end
  object Splitter: TcxSplitter
    Left = 0
    Top = 200
    Width = 934
    Height = 5
    AlignSplitter = salTop
    Control = panAttachments
  end
  object pagMain: TcxPageControl
    Left = 0
    Top = 205
    Width = 934
    Height = 367
    ActivePage = tabRAW
    Align = alClient
    HideTabs = True
    LookAndFeel.NativeStyle = True
    TabOrder = 5
    ClientRectBottom = 363
    ClientRectLeft = 4
    ClientRectRight = 930
    ClientRectTop = 4
    object tabRTF: TcxTabSheet
      Caption = 'RTF'
      ImageIndex = 0
      object MemoRTFText: TcxRichEdit
        Left = 0
        Top = 0
        Align = alClient
        Properties.ScrollBars = ssVertical
        Lines.Strings = (
          '')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 359
        Width = 926
      end
    end
    object tabHTML: TcxTabSheet
      Caption = 'tabHTML'
      ImageIndex = 1
      object pcHtml: TcxPageControl
        Left = 0
        Top = 0
        Width = 926
        Height = 359
        Align = alClient
        LookAndFeel.NativeStyle = True
        TabOrder = 0
        ClientRectBottom = 355
        ClientRectLeft = 4
        ClientRectRight = 922
        ClientRectTop = 4
      end
      object HtmlMessageTextHtml: TpsHTMLEdit
        Left = 0
        Top = 0
        Width = 926
        Height = 359
        VertScrollBar.Range = 356
        VertScrollBar.Tracking = True
        Align = alClient
        ShowDocumentFrame = True
        ImageDownsizeOverlay.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          000018000000010008000000000040020000220B0000220B0000000100000001
          0000361600003C170000431A0000451B0000471C00004D1E0000532000005722
          0000592300005F2500006226000066280000682800006A290000702C0000732D
          0000752D0000772E0000792F00007E3100008233000084340000873500008935
          00008B36000092390000953A00009C3D00009E3E0000A03F0000A5410000A741
          0000AA420000AC430000AF440000B1450000B4460000B6470000B6490000B848
          0000BB490000BD4A0000C04B0000C24C0000C54D0000C74E0000CA4F0000CC50
          0000CF510000D1520000D4530000D1540000D4550000D7540000D7560000D955
          0000D9570000DC560000DE570000DC580000DE5A0100E1580000E3590000E15B
          0100E35B0000E65A0000E15C0200E65C0000E95B0000EB5C0000EB5E0000EE5D
          0000EE5F0000EE5F0100F05E0000F35F0000EE600100EE620200EE630300EB63
          0400EE650500EE660600EF690900EF6A0A00F0600000F06C0D00F06D0E00F06F
          1100F36F1000F0721300F0751600F0751700F3761700F0761800F0781B00F37D
          1F00F27E2200F27E2300F2802600F2822900F2832B00F4842B00F2832C00F284
          2D00F2883100F4893300F38C3700F38F3C00F3913F00F4923F00F4964600F697
          4800F6984900F4994B00F4994C00F79C4E00F49F5500F4A05800F4A15900F7A1
          5800F7A35900F4A35B00F6A55F00F7A65E00F6A56000F6A96400F6AA6600F7AA
          6600F6AA6700F8AB6700F6AB6900F7AC6900F8B27500F7B57900F8B67A00F8B8
          7F00FF00FF00F7B88000F8BB8300F7BD8800FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000088888888888888888888888888888888888888888888888888880B0B0908
          060504030303030303030303030201018888881512171513110E0D0C0C0C0C0C
          0C0C0C0C0D0D0600018888152B302D2A28252321202020202020202020221D06
          0188881C3737302E8C8C272422202020208C8C202022220D0288881F3A393230
          8C8C8C272421201F8C8C8C1F1F20200D0388882343403B36338C8C8C2825238C
          8C8C1F1F1F20200C038888254F8C8C3C38338C8C8C298C8C8C1F1F1F8C8C200C
          03888825538C8C8C423B348C8C8C8C8C2422208C8C8C200C038888255B5C8C8C
          8C3F3B358C8C8C2A28278C8C8C20200C0388882564655B8C8C8C433A378C302E
          2C8C8C8C2221200C038888256C6D60538C8C8C443D3935318C8C8C282524220D
          0388882572736456558C8C8C453E3A8C8C8C2D2B2928240F0588882574776857
          8C8C8C484745413A8C8C8C2E2B2B281207888825797B6A8C8C8C4E49488C4844
          3E8C8C8C2F2E2B140A8888257A7F8C8C8C5952508C8C8C48463E8C8C8C312E18
          0D8888257D8C8C8C67615A8C8C8C8C8C4946438C8C8C311A108888257E8C8C60
          67628C8C8C558C8C8C4C48448C8C371D138888257E87856C6A8C8C8C5D595D8C
          8C8C494845443D1E1688882579868B898C8C8C746E6A635D8C8C8C48474A4423
          198888277081868A8C8C8483786F695F588C8C544A4B4B281B8888273A6F767E
          82807C75716B665E55514D48474A3E211B888888252525252525252525252525
          2525252625251F1F888888888888888888888888888888888888888888888888
          8888}
        MaxWordWidth = 300
        ImageResizing.ImageResizeConstraints.MaxHeight = 1000
        ImageResizing.ImageResizeConstraints.MaxWidth = 1000
        ImageResizing.ImageResizeConstraints.MinHeight = 30
        ImageResizing.ImageResizeConstraints.MinWidth = 30
        LinkHoverCursor = crHandPoint
        CodeGenerator.EditingPositionComment = '<!-- EDITING POSITION -->'
        Version = '3.0.0.78'
        OnTextClicked = HtmlMessageTextHtmlTextClicked
      end
    end
    object tabRAW: TcxTabSheet
      Caption = 'tabRAW'
      ImageIndex = 2
      object MemoRawText: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'MemoRawText')
        Properties.ScrollBars = ssBoth
        Properties.WordWrap = False
        TabOrder = 0
        Height = 359
        Width = 926
      end
    end
  end
  object pnlFrom: TLMDSimplePanel
    Left = 0
    Top = 51
    Width = 934
    Height = 26
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    Visible = False
    object btnFrom: TcxButton
      Left = 12
      Top = 4
      Width = 66
      Height = 21
      Caption = 'From...'
      TabOrder = 0
      OnClick = btnFromClick
      LookAndFeel.NativeStyle = True
    end
    object EdtFrom: TcxTextEdit
      Left = 92
      Top = 4
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 754
    end
  end
  object pnlSubject: TLMDSimplePanel
    Left = 0
    Top = 128
    Width = 934
    Height = 27
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 12
      Top = 7
      Caption = 'Subject'
    end
    object EdtSubject: TcxTextEdit
      Left = 92
      Top = 3
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = EdtSubjectExit
      Width = 754
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Menu'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 23
        FloatClientHeight = 22
        IsMainMenu = True
        ItemLinks = <
          item
            Item = dxBarSubItem3
            Visible = True
          end
          item
            Item = btnView
            Visible = True
          end
          item
            Item = dxBarSubItem2
            Visible = True
          end
          item
            Item = dxBarSubItem1
            Visible = True
          end>
        MultiLine = True
        Name = 'Menu'
        NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Toolbar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 25
        DockingStyle = dsTop
        FloatLeft = 307
        FloatTop = 221
        FloatClientWidth = 54
        FloatClientHeight = 44
        ItemLinks = <
          item
            Item = btnSend
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton2
            Visible = True
          end
          item
            Item = btnPrint
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton10
            Visible = True
          end
          item
            Item = dxBarButton11
            Visible = True
          end
          item
            Item = dxBarButton9
            Visible = True
          end
          item
            BeginGroup = True
            Item = barbtnAttach
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton3
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnImportanceHigh
            Visible = True
          end
          item
            Item = btnImportanceLow
            Visible = True
          end
          item
            BeginGroup = True
            Item = bbtnMatterSearch
            Visible = True
          end>
        Name = 'Toolbar'
        NotDocking = [dsNone]
        OneOnRow = False
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Editing'
        DockedDockingStyle = dsTop
        DockedLeft = 325
        DockedTop = 25
        DockingStyle = dsTop
        FloatLeft = 404
        FloatTop = 341
        FloatClientWidth = 24
        FloatClientHeight = 24
        ItemLinks = <
          item
            Item = cb_FontPicker
            Visible = True
          end
          item
            BeginGroup = True
            Item = cb_FontSize
            UserDefine = [udWidth]
            UserWidth = 42
            Visible = True
          end
          item
            Item = dxBarButton18
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton8
            Visible = True
          end
          item
            Item = dxBarButton1
            Visible = True
          end
          item
            Item = dxBarButton12
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton13
            Visible = True
          end
          item
            Item = dxBarButton14
            Visible = True
          end
          item
            Item = dxBarButton15
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton6
            Visible = True
          end
          item
            Item = dxBarButton7
            Visible = True
          end
          item
            Item = dxBarButton16
            Visible = True
          end
          item
            Item = dxBarButton17
            Visible = True
          end>
        Name = 'Editing'
        NotDocking = [dsNone]
        OneOnRow = False
        Row = 1
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'menus'
      'tools'
      'Edit'
      'Default')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    Images = ImageList1
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 277
    Top = 75
    DockControlHeights = (
      0
      0
      51
      0)
    object btnSend: TdxBarButton
      Caption = 'Send'
      Category = 3
      Hint = 'Send'
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btnSendClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Save'
      Category = 3
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Address Book'
      Category = 3
      Hint = 'Address Book'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Check Names'
      Category = 3
      Hint = 'Check Names'
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Reply to'
      Category = 3
      Hint = 'Set the Reply To list'
      Visible = ivAlways
      ImageIndex = 15
    end
    object barbtnAttach: TdxBarButton
      Caption = 'New Item'
      Category = 3
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = barbtnAttachClick
    end
    object btnPrint: TdxBarButton
      Caption = 'Print'
      Category = 3
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 17
      OnClick = btnPrintClick
    end
    object bbtnMatterSearch: TdxBarButton
      Caption = 'Select Matter'
      Category = 3
      Hint = 'Select Matter'
      Visible = ivAlways
      ImageIndex = 18
      OnClick = bbtnMatterSearchClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Save Message In Database'
      Category = 3
      Hint = 'Save Message In Database'
      Visible = ivAlways
      Control = cbSaveMessage
    end
    object dxBarButton8: TdxBarButton
      Action = psBoldAction1
      Category = 2
    end
    object cb_FontPicker: TdxBarFontNameCombo
      Caption = 'Font'
      Category = 2
      Hint = 'Font'
      Visible = ivAlways
      OnChange = cb_FontPickerChange
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888444488844444488887488888744
        7888888448888744888888874888844788888888444444488888888874884478
        8888888884484488888888888744478888888888884448888888888888747888
        8888888888848888888888888888888888888888888888888888}
      Width = 160
      DropDownCount = 12
    end
    object dxBarButton1: TdxBarButton
      Action = psItalicAction1
      Category = 2
    end
    object dxBarButton9: TdxBarButton
      Action = psClipboardPasteAction1
      Category = 2
    end
    object dxBarButton10: TdxBarButton
      Action = psClipboardCutAction1
      Category = 2
    end
    object dxBarButton11: TdxBarButton
      Action = psClipboardCopyAction1
      Category = 2
    end
    object dxBarButton12: TdxBarButton
      Action = psUnderlineAction1
      Category = 2
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Align &Left'
      Category = 2
      Hint = 'Align Left|Aligns text at the left indent'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      ImageIndex = 31
    end
    object dxBarButton14: TdxBarButton
      Caption = '&Center'
      Category = 2
      Hint = 'Center|Centers text between margins'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      ImageIndex = 33
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Align &Right'
      Category = 2
      Hint = 'Align Right|Aligns text at the right indent'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      ImageIndex = 32
    end
    object dxBarButton16: TdxBarButton
      Action = psDecreaseListIndent1
      Category = 2
    end
    object dxBarButton17: TdxBarButton
      Action = psIncreaseListIndent1
      Category = 2
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 2
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Caption = 'New Item'
      Category = 2
      Hint = 'Font Color'
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton18Click
    end
    object btnSpellCheck: TdxBarButton
      Caption = 'Spelling...'
      Category = 2
      Hint = 'Spelling'
      Visible = ivAlways
      ImageIndex = 37
      OnClick = btnSpellCheckClick
    end
    object dxBarButton19: TdxBarButton
      Caption = 'Spelling Setup'
      Category = 1
      Hint = 'Spelling Setup'
      Visible = ivAlways
      OnClick = dxBarButton19Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Tools'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Item = btnSpellCheck
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton19
          Visible = True
        end>
    end
    object dxBarButton20: TdxBarButton
      Caption = 'New Item'
      Category = 2
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 38
      OnClick = dxBarButton20Click
    end
    object cb_FontSize: TdxBarCombo
      Caption = 'Font Size'
      Category = 2
      Hint = 'Font Size'
      Visible = ivAlways
      OnChange = cb_FontSizeChange
      Width = 100
      Items.Strings = (
        '8pt'
        '9pt'
        '10pt'
        '11pt'
        '12pt'
        '14pt'
        '16pt'
        '18pt'
        '20pt'
        '22pt'
        '24pt'
        '26pt'
        '28pt'
        '36pt'
        '48pt'
        '72pt'
        '8px'
        '9px'
        '10px'
        '11px'
        '12px'
        '14px'
        '16px'
        '18px'
        '20px'
        '22px'
        '24px'
        '26px'
        '28px'
        '36px'
        '48px'
        '72px')
      ItemIndex = -1
    end
    object btnImportanceHigh: TdxBarButton
      Caption = 'Importance High'
      Category = 3
      Hint = 'Importance High'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 6
      ImageIndex = 44
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Format'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton13
          Visible = True
        end
        item
          Item = dxBarButton14
          Visible = True
        end
        item
          Item = dxBarButton15
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton8
          Visible = True
        end
        item
          Item = dxBarButton1
          Visible = True
        end
        item
          Item = dxBarButton12
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton23
          Visible = True
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Edit'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton21
          Visible = True
        end
        item
          Item = dxBarButton22
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton10
          Visible = True
        end
        item
          Item = dxBarButton11
          Visible = True
        end
        item
          Item = dxBarButton9
          Visible = True
        end>
    end
    object dxBarButton21: TdxBarButton
      Action = psUndoAction1
      Category = 2
    end
    object dxBarButton22: TdxBarButton
      Action = psRedoAction1
      Category = 2
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Font...'
      Category = 2
      Hint = 'Font'
      Visible = ivAlways
      OnClick = dxBarButton23Click
    end
    object btnView: TdxBarSubItem
      Caption = 'View'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = btnBcc
          Visible = True
        end>
    end
    object btnShowFrom: TdxBarButton
      Caption = 'From Field'
      Category = 2
      Hint = 'From Field'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = btnShowFromClick
    end
    object btnBcc: TdxBarButton
      Caption = 'Bcc Field'
      Category = 2
      Hint = 'Bcc Field'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = btnBccClick
    end
    object dxBarButton6: TdxBarButton
      Action = psOrderedList1
      Category = 2
      ButtonStyle = bsChecked
    end
    object dxBarButton7: TdxBarButton
      Action = psUnorderedList1
      Category = 2
      ButtonStyle = bsChecked
    end
    object btnResolve: TdxBarButton
      Caption = 'Verify'
      Category = 3
      Hint = 'Verify'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btnResolveClick
    end
    object btnFollowup: TdxBarButton
      Caption = 'Follow Up'
      Category = 3
      Hint = 'Follow Up'
      Visible = ivAlways
      ImageIndex = 43
    end
    object btnImportanceLow: TdxBarButton
      Caption = 'Importance Low'
      Category = 3
      Hint = 'Importance Low'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 6
      ImageIndex = 45
    end
  end
  object RwMapiFolderDialog: TRwMapiFolderDialogV3
    AllowSelectMsgStore = True
    Caption = 'Select a folder..'
    Left = 620
    Top = 78
  end
  object ImageList1: TImageList
    Left = 670
    Top = 48
    Bitmap = {
      494C01012E003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E29D7500F1B28D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B08
      0800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1764A00F2855000EEB694000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B0808000000
      000000000000000000006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B0808006B08080000000000000000006B0808006B0808006B08
      080000000000000000006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B0808006B080800000000000000000000000000000000000000
      0000000000000000000000000000404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D57C5100F0844F00E7AD8B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5B0
      9000F0885400C8784F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8D9C200EF93
      6600DB7746000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0BFA000EB84
      5000C1693D00000000000000000000000000954C2800AD5A3100B65F3400C769
      3A00D6724000E3784200000000000000000000000000000000006B0808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000404040004040E000404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6B99800E681
      4E00C2693F0000000000000000000000000000000000E28C6100F39A6A00EA82
      4900DF733600E583520000000000000000000000000000000000000000006B08
      080000000000000000006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B0808006B08080000000000000000006B0808006B0808006B08
      080000000000000000006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B0808006B080800000000000000000000000000000000000000
      000000000000404040004040E0004040A0004040400040404000000000000000
      0000000000000000000000000000000000000000000000000000F5B69200DE7E
      4F00C26B4000000000000000000000000000E6BFA500B47C5E00EC9C7600F38D
      5B00EC824B00E68E62000000000000000000000000006B0808006B0808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000404040004040E0004040A0004040A0004040E0004040A000404040000000
      0000000000000000000000000000000000000000000000000000F6B59400DD7D
      4D00AB643F00F2D4BC0000000000D7A88B00B2643C00B4643B00F1936300F49C
      7100F39A6A00E799730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000404040004040E0004040A0004040E0004040A0004040A0004040A0004040
      4000000000000000000000000000000000000000000000000000F5C4AA00EE8A
      5800A8603A00BD7C5400BD7A5700BC6A4000C7704500E78C5E00F6B29000F8C5
      A700F6C5A600E9A481000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40004040E00040404000404040004040E0004040A00040404000404040004040
      4000404040000000000000000000000000000000000000000000F6C7AF00F5BA
      9D00DE7D4E00B6643B00B7663C00C8714600EF986D00F6B19000F7C1A3000000
      000000000000EAAA8B00000000000000000000000000000000006B0808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      4000404040000000000000000000404040004040400000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5C3
      AC00F5BDA200F5AD8A00F4AE8A00F5B39100F5B08E00F7BFA100000000000000
      000000000000000000000000000000000000000000006B0808006B0808000000
      000000000000000000006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B0808006B08080000000000000000006B0808006B0808006B08
      080000000000000000006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B0808006B080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8D0BB00F6C9B100F5C0A400F7C1A500FAD4BD0000000000000000000000
      00000000000000000000000000000000000000000000000000006B0808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B0808006B0808006B08
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6948400944A2900BD8C73000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7B58C00E79C7300000000000000
      0000000000000000000000000000000000003131FF003131FF003131FF003131
      FF003131FF003131FF003131FF003131FF003131FF003131FF003131FF003131
      FF003131FF003131FF003131FF003131FF000000000000000000000000000000
      0000CEADA500944A2900B5633900AD5A3900C6A5940000000000000000000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000EFB59400F7845200D6734A000000
      000000000000000000000000000000000000FF00FF00FF00FF00DEDEDE00BDBD
      BD00BDBDBD00BDBDBD00EFEFEF00FF00FF00FF00FF00CECECE00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00EFEFEF00FF00FF000000000000000000DEDEDE00BD7B
      63009C522900C6734A00D67B4A00C66B4200AD5A3100D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000E7AD8C00F7844A00D67B
      520000000000000000000000000000000000FF00FF00FF00FF00BDBDBD003131
      31000000000073737300DEDEDE00FF00FF00FF00FF009C9C9C00424242000000
      00000000000052525200DEDEDE00FF00FF0000000000DED6CE00AD633900B563
      3900D6845A00EFA57B00E7946B00E7946B00BD6B3900BD7B6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE7B4A00F78C
      5200E7B59400000000000000000000000000FF00FF00FF00FF00FF00FF00DEDE
      DE0000000000DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00636363000000
      000021212100FF00FF00FF00FF00FF00FF0000000000E7DEDE00EFAD8C00EFA5
      7B00EFA57B00E79C7300DED6CE00E7A58400EFA57B00B5633900CEB5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DE73
      4200EF946300FFDEC6000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00636363008C8C8C00FF00FF00FF00FF00FF00FF00EFEFEF00000000000000
      00009C9C9C00FF00FF00FF00FF00FF00FF000000000000000000EFD6CE00F7BD
      9C00EFB59400E7E7E70000000000E7E7E700E7A58400E7946B00B5634200CEC6
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E77B4200D673
      4200C66B3900B55A3100AD5A3100944A2900000000000000000000000000C66B
      3900EF845200F7BDA5000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00BDBDBD001010100042424200424242004242420031313100000000001010
      1000EFEFEF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700E7A58C00DE845A00B573
      5A00D6CEC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7845200DE73
      3100EF844A00F79C6B00E78C630000000000000000000000000000000000C66B
      3900E7844A00F7BD9C000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0031313100BDBDBD00FF00FF00FF00FF0021212100000000006363
      6300FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7A58400D67B
      5200B57B6300D6D6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E78C6300EF84
      4A00F78C5A00EF9C7300B57B5A00E7BDA500000000000000000000000000C66B
      4200DE7B4A00F7B594000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF009C9C9C0063636300FF00FF00BDBDBD000000000000000000CECE
      CE00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7EFEF00E7AD
      9400D67B5200B57B5A00D6D6CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E79C7300F79C
      6B00F79C7300F7946300B5633900B5633900D6AD8C0000000000F7D6BD00AD63
      3900DE7B4A00F7B594000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00EFEFEF0010101000EFEFEF00636363000000000042424200FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF003131290094949C00EFEFEF009C9C
      9C0018181800101010002929290042424200C6C6CE00949C9C00313131001818
      180018101000B5634200B5735200DED6CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFA58400F7C6
      A500FFC6A500F7B59400E78C5A00C6734200BD6B4200BD7B5200BD7B5200AD63
      3900EF8C5A00F7C6AD000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00636363008484840000000000000000009C9C9C00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0094949C0010181800212129002121
      29007B7B7B004A4A4A00EFEFEF0084848C005A5A63004242420094949C00EFEF
      EF007B7B7B008C736300D6845A00BD9484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFAD8C000000
      000000000000F7C6A500F7B59400EF9C6B00CE734200B5633900B5633900DE7B
      4A00F7BD9C00F7C6AD000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00DEDEDE00000000000000000010101000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFEF005A525200DEDEDE002921
      2100BDBDBD00080808003939390073736B00ADB5B50063636300C6C6C600EFEF
      EF00EFEFEF00EFEFEF00EFCEC600DE9473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7BDA500F7B58C00F7B59400F7AD8C00F7AD8C00F7BD
      A500F7C6AD00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00424242000000000084848400FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFEF00BDC6C60073737300BDC6
      C600C6C6C60052525200EFEFF7009C9C9C0094949400636363009C9C9C00EFEF
      F7007B7B7B008C8C8C00EFEFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFD6BD00F7C6A500F7C6A500F7CEB500FFD6
      BD0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00ADADAD0042424200DEDEDE00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000EFEFEF007B7B7B00EFEF
      EF00C6C6C60052525200636363008C8C8C00DEDEDE00B5B5B5005A5A5A004A4A
      4A0042424A00CED6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900CC6600000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC
      9900FFCC9900FFCC9900CC6600000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC
      9900FFCC9900FFCC9900CC6600000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A00000000004A4A4A004A4A4A0000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A00000000004A4A4A004A4A4A0000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFECCC000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFCC9900CC6600000000000000000000CC660000FFECCC000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFCC9900CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CA
      A600FFCC9900FFCC9900CC6600000000000000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CA
      A600FFCC9900FFCC9900CC6600000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A00000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A00000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CC660000F1F1F100F1F1
      F100FFECCC00FFECCC00FFECCC00008000000080000000800000008000000080
      000000800000FFCC9900CC6600000000000000000000CC660000F1F1F100F1F1
      F100FFECCC00008000000080000000800000008000000080000000800000F0CA
      A600F0CAA600FFCC9900CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000F1F1F100F1F1
      F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CA
      A600F0CAA600F0CAA600CC6600000000000000000000CC660000F1F1F100F1F1
      F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CA
      A600F0CAA600F0CAA600CC6600000000000000000000000000006B0808000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A0000000000000000000000000000000000000000006B0808000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A0000000000000000000000000000000000CC660000F8F8F8000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000F0CAA600CC6600000000000000000000CC660000F8F8F8000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000F0CAA600CC66000000000000000000006B0808006B0808000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A0000000000000000000000000000000000000000006B0808006B08
      08000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A0000000000000000000000000000000000CC660000FFFFFF00F8F8
      F800F1F1F100F1F1F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00FFECCC00F0CAA600CC6600000000000000000000CC660000FFFFFF00F8F8
      F800F1F1F100F1F1F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00FFECCC00F0CAA600CC660000000000006B0808006B0808006B0808006B08
      08006B0808000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B0808006B0808006B0808006B08
      08006B0808000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFFFFF00FFFF
      FF00F8F8F800F1F1F100F1F1F100008000000080000000800000008000000080
      000000800000FFECCC00CC6600000000000000000000CC660000FFFFFF00FFFF
      FF00F8F8F800008000000080000000800000008000000080000000800000FFEC
      CC00FFECCC00FFECCC00CC66000000000000000000006B0808006B0808000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000000000006B0808006B08
      08000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00F8F8F800F1F1F100F1F1F100F1F1F100FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00F8F8F800F1F1F100F1F1F100F1F1F100FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000000000006B0808000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000000000006B0808000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CC660000FFFFFF000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFECCC00CC6600000000000000000000CC660000FFFFFF000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFECCC00CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800F1F1F100F1F1F100F1F1F100FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800F1F1F100F1F1F100F1F1F100FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A00000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000000000004A4A4A004A4A
      4A004A4A4A004A4A4A00000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B7B00AD737300A56B
      6B00A56363009C5A5200944A4A008C4242008C39390084313100842929007B21
      210073181800731010006B0808000000000000000000B57B7B00AD737300A56B
      6B00A56363009C5A5200944A4A008C4242008C39390084313100842929007B21
      210073181800731010006B0808000000000000000000B57B7B00AD737300A56B
      6B00A56363009C5A5200944A4A008C4242008C39390084313100842929007B21
      210073181800731010006B080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD949400EFD6D600EFCECE00EFC6
      C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5A500DE9C
      A500DE9C9C00D69C9C00D69494006B080800BD949400EFD6D600EFCECE00EFC6
      C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5A500DE9C
      A500DE9C9C00D69C9C00D69494006B080800BD949400EFD6D600EFCECE00EFC6
      C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5A500DE9C
      A500DE9C9C00D69C9C00D69494006B0808000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600000000000000000000C69C9C00F7D6D600EFD6D600EFCE
      CE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5
      A500DE9CA500DE9C9C00DE9C9C0073101000C69C9C00F7D6D600EFD6D600EFCE
      CE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5
      A500DE9CA500DE9C9C00DE9C9C0073101000C69C9C00F7D6D600EFD6D600EFCE
      CE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5
      A500DE9CA500DE9C9C00DE9C9C007310100000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900CC66000000000000CEA5A500F7DEDE006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C0073181800CEA5A500F7DEDE006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C0073181800CEA5A500F7DEDE006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C007318180000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC
      9900FFCC9900FFCC9900CC66000000000000CEADAD00F7E7E7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C007B212100CEADAD00F7E7E7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C007B212100CEADAD00F7E7E7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C007B21210000000000CC660000FFECCC000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFCC9900CC66000000000000D6B5B500F7E7E700F7DEE700F7DE
      DE00EFD6D600EFD6D600EFCECE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5
      B500DEADAD00DEADA500DEA5A5007B292900D6B5B500F7E7E700F7DEE700F7DE
      DE00EFD6D600EFD6D600EFCECE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5
      B500DEADAD00DEADA500DEA5A5007B292900D6B5B500F7E7E700F7DEE700F7DE
      DE00EFD6D600EFD6D600EFCECE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5
      B500DEADAD00DEADA500DEA5A5007B29290000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CA
      A600FFCC9900FFCC9900CC66000000000000DEBDBD00F7EFEF00F7E7E700F7DE
      DE006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      0800E7B5B500DEADAD00DEA5A50084313100DEBDBD00F7EFEF00F7E7E700F7DE
      DE00F7DEDE00EFD6D6006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DEA5A50084313100DEBDBD00F7EFEF006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DEA5A5008431310000000000CC660000F1F1F1000080
      00000080000000800000008000000080000000800000FFECCC00F0CAA600F0CA
      A600F0CAA600FFCC9900CC66000000000000DEC6C600FFEFEF00F7EFEF00F7E7
      E7006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      0800E7B5B500E7B5B500DEADAD008C393900DEC6C600FFEFEF00F7EFEF00F7E7
      E700F7DEDE00F7DEDE006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DEADAD008C393900DEC6C600FFEFEF006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DEADAD008C39390000000000CC660000F8F8F800F1F1
      F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CA
      A600F0CAA600F0CAA600CC66000000000000E7CECE00FFF7F700FFEFEF00F7EF
      EF00F7E7E700F7DEDE00F7DEDE00EFD6D600EFCECE00EFCECE00EFC6C600E7BD
      BD00E7BDBD00E7B5B500E7B5B5008C424200E7CECE00FFF7F700FFEFEF00F7EF
      EF00F7E7E700F7DEDE00F7DEDE00EFD6D600EFCECE00EFCECE00EFC6C600E7BD
      BD00E7BDBD00E7B5B500E7B5B5008C424200E7CECE00FFF7F700FFEFEF00F7EF
      EF00F7E7E700F7DEDE00F7DEDE00EFD6D600EFCECE00EFCECE00EFC6C600E7BD
      BD00E7BDBD00E7B5B500E7B5B5008C42420000000000CC660000F8F8F8000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000F0CAA600CC66000000000000E7D6D600FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7B5B500944A4A00E7D6D600FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7B5B500944A4A00E7D6D600FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7B5B500944A4A0000000000CC660000FFFFFF00F8F8
      F800F8F8F800F1F1F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00FFECCC00F0CAA600CC66000000000000EFDEDE00FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7BDBD009C525200EFDEDE00FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7BDBD009C525200EFDEDE00FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7BDBD009C52520000000000CC660000FFFFFF000080
      00000080000000800000008000000080000000800000FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00CC66000000000000EFE7E700FFFFFF00FFF7F700FFF7
      F700FFF7F700F7EFEF00F7E7E700F7E7E700F7DEDE00EFDEDE00EFD6D600EFCE
      CE00EFCECE00EFC6C600E7BDBD009C5A5A00EFE7E700FFFFFF00FFF7F700FFF7
      F700FFF7F700F7EFEF00F7E7E700F7E7E700F7DEDE00EFDEDE00EFD6D600EFCE
      CE00EFCECE00EFC6C600E7BDBD009C5A5A00EFE7E700FFFFFF00FFF7F700FFF7
      F700FFF7F700F7EFEF00F7E7E700F7E7E700F7DEDE00EFDEDE00EFD6D600EFCE
      CE00EFCECE00EFC6C600E7BDBD009C5A5A0000000000CC660000FFFFFF00FFFF
      FF00F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00CC66000000000000F7EFEF00FFFFFF00FFFFFF00FFF7
      F7006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      0800EFCECE00EFCECE00E7C6C600A5636300F7EFEF00FFFFFF00FFFFFF00FFF7
      F700FFF7F700FFF7EF006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7C6C600A5636300F7EFEF00FFFFFF006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7C6C600A563630000000000CC660000FFFFFF000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFECCC00CC66000000000000F7F7F70000000000FFFFFF00FFFF
      FF006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      0800EFD6D600EFCECE00EFCECE00AD6B6B00F7F7F70000000000FFFFFF00FFFF
      FF00FFF7F700FFF7F7006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800EFCECE00AD6B6B00F7F7F700000000006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800EFCECE00AD6B6B0000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100FFEC
      CC00FFECCC00FFECCC00CC66000000000000FFF7F7000000000000000000FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFEFEF00F7EFEF00F7E7E700F7E7E700F7DE
      DE00EFD6DE00EFD6D600EFCECE00AD737300FFF7F7000000000000000000FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFEFEF00F7EFEF00F7E7E700F7E7E700F7DE
      DE00EFD6DE00EFD6D600EFCECE00AD737300FFF7F7000000000000000000FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFEFEF00F7EFEF00F7E7E700F7E7E700F7DE
      DE00EFD6DE00EFD6D600EFCECE00AD7373000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000000000000000000000000000FFF7F700F7F7F700F7EF
      EF00EFE7E700EFDEDE00E7D6D600E7CECE00DEC6C600D6BDBD00D6B5B500CEA5
      A500C69C9C00BD949400BD8C8C000000000000000000FFF7F700F7F7F700F7EF
      EF00EFE7E700EFDEDE00E7D6D600E7CECE00DEC6C600D6BDBD00D6B5B500CEA5
      A500C69C9C00BD949400BD8C8C000000000000000000FFF7F700F7F7F700F7EF
      EF00EFE7E700EFDEDE00E7D6D600E7CECE00DEC6C600D6BDBD00D6B5B500CEA5
      A500C69C9C00BD949400BD8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B7B00AD737300A56B
      6B00A56363009C5A5200944A4A008C4242008C39390084313100842929007B21
      210073181800731010006B0808000000000000000000B57B7B00AD737300A56B
      6B00A56363009C5A5200944A4A008C4242008C39390084313100842929007B21
      210073181800731010006B080800000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600000000000000000000BD949400EFD6D600EFCECE00EFC6
      C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5A500DE9C
      A500DE9C9C00D69C9C00D69494006B080800BD949400EFD6D600EFCECE00EFC6
      C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5A500DE9C
      A500DE9C9C00D69C9C00D69494006B08080000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC
      9900FFCC9900F0CAA600CC6600000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC9900FFCC
      9900FFCC9900F0CAA600CC66000000000000C69C9C00F7D6D600EFD6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080800DE9C9C00DE9C9C0073101000C69C9C00F7D6D600EFD6D600EFCE
      CE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5B500DEADAD00DEADAD00DEA5
      A500DE9CA500DE9C9C00DE9C9C007310100000000000CC660000FFECCC00FFEC
      CC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900CC6600000000000000000000CC660000FFECCC00FFEC
      CC00CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300FFCC9900FFCC9900CC66000000000000CEA5A500F7DEDE00EFD6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101000DE9C9C00DE9C9C0073181800CEA5A500F7DEDE006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C007318180000000000CC660000F1F1F100FFEC
      CC00FFECCC00CCCC9900CC663300CC663300CC999900F0CAA600FFCC9900FFCC
      9900FFCC9900FFCC9900CC6600000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CA
      A600FFCC9900FFCC9900CC66000000000000CEADAD00F7E7E700F7DEDE00EFD6
      D600EFD6D600EFCECE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5B500DEAD
      AD00DEADAD00DEA5A500DE9C9C007B212100CEADAD00F7E7E7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800DE9C9C007B21210000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00CC663300CC660000F0CAA600F0CAA600F0CAA600FFCC
      9900FFCC9900F0CAA600CC6600000000000000000000CC660000FFECCC00FFEC
      CC00FFECCC00F0CAA600CC663300CC663300CC663300CC663300F0CAA600F0CA
      A600F0CAA600FFCC9900CC66000000000000D6B5B500F7E7E700F7DEE700F7DE
      DE00EFD6D600000000000000000000000000000000000000000000000000E7B5
      B500DEADAD00DEADA500DEA5A5007B292900D6B5B500F7E7E700F7DEE700F7DE
      DE00EFD6D600EFD6D600EFCECE00EFC6C600E7C6C600E7BDBD00E7B5B500E7B5
      B500DEADAD00DEADA500DEA5A5007B29290000000000CC660000F8F8F800FFEC
      CC00FFECCC00FFECCC00F0CAA600CC663300CC999900FFECCC00F0CAA600F0CA
      A600FFCC9900F0CAA600CC6600000000000000000000CC660000F1F1F100FFEC
      CC00FFECCC00CC663300CC663300FFECCC00FFECCC00CC996600CC663300F0CA
      A600F0CAA600F0CAA600CC66000000000000DEBDBD00F7EFEF00F7E7E700F7DE
      DE000000000000000000EFD6D600EFCECE00EFC6C600E7C6C600000000000000
      0000E7B5B500DEADAD00DEA5A50084313100DEBDBD00F7EFEF006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B080800E7BDBD00E7B5
      B500E7B5B500DEADAD00DEA5A5008431310000000000CC660000FFFFFF00FFEC
      CC00FFECCC00FFECCC00FFECCC00CC663300CC663300FFECCC00F0CAA600F0CA
      A600F0CAA600F0CAA600CC6600000000000000000000CC660000F1F1F100F1F1
      F100FFECCC00CC663300CC996600FFECCC00FFECCC00F0CAA600CC663300F0CA
      A600F0CAA600F0CAA600CC66000000000000DEC6C600FFEFEF00F7EFEF00F7E7
      E7000000000000000000EFD6D600EFCED600EFCECE00EFC6C600000000000000
      0000E7B5B500E7B5B500DEADAD008C393900DEC6C600FFEFEF006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B080800E7C6BD00E7BD
      BD00E7B5B500E7B5B500DEADAD008C39390000000000CC660000FFFFFF00F1F1
      F100FFECCC00FFECCC00FFECCC00CC666600CC663300F0CAA600FFECCC00F0CA
      A600F0CAA600FFECCC00CC6600000000000000000000CC660000F1F1F100F1F1
      F100FFECCC00CC663300CC996600FFECCC00FFECCC00F0CAA600CC663300FFCC
      9900FFECCC00F0CAA600CC66000000000000E7CECE00FFF7F700FFEFEF00F7EF
      EF000000000000000000F7DEDE00EFD6D600EFCECE00EFCECE00000000000000
      0000E7BDBD00E7B5B500E7B5B5008C424200E7CECE00FFF7F700FFEFEF00F7EF
      EF00F7E7E700F7DEDE00F7DEDE00EFD6D600EFCECE00EFCECE00EFC6C600E7BD
      BD00E7BDBD00E7B5B500E7B5B5008C42420000000000CC660000FFFFFF00F1F1
      F100F1F1F100FFECCC00F1F1F100F0CAA600CC663300F0CAA600FFECCC00FFEC
      CC00F0CAA600FFECCC00CC6600000000000000000000CC660000F8F8F800F1F1
      F100FFECCC00CC663300CC996600FFECCC00FFECCC00F0CAA600CC663300F0CA
      A600FFECCC00FFECCC00CC66000000000000E7D6D600FFF7F700FFF7F700F7EF
      EF000000000000000000F7DEDE00F7DEDE00EFD6D600EFCECE00000000000000
      0000E7BDBD00E7BDBD00E7B5B500944A4A00E7D6D600FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7B5B500944A4A0000000000CC660000FFFFFF00F8F8
      F800F1F1F100F1F1F100F1F1F100FFECCC00CC663300CCCC9900FFECCC00FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000CC660000F8F8F800F8F8
      F800F1F1F100CC663300CC996600F1F1F100FFECCC00FFECCC00CC663300FFEC
      CC00FFECCC00FFECCC00CC66000000000000EFDEDE00FFF7F700FFF7F700FFF7
      F7000000000000000000F7E7E700F7DEDE00F7DEDE00EFD6D600000000000000
      0000EFC6C600E7BDBD00E7BDBD009C525200EFDEDE00FFF7F7006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B0808006B0808006B08
      08006B0808006B080800E7BDBD009C52520000000000CC660000FFFFFF00F8F8
      F800F1F1F100F1F1F100F1F1F100D7D7D700CC663300CC663300F0CAA600FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000CC660000F8F8F800F8F8
      F800CC996600CC663300CC663300FFECCC00F1F1F100CC996600CC663300CC99
      6600FFECCC00FFECCC00CC66000000000000EFE7E700FFFFFF00FFF7F700FFF7
      F7000000000000000000F7E7E700F7E7E700F7DEDE00EFDEDE00000000000000
      0000EFCECE00EFC6C600E7BDBD009C5A5A00EFE7E700FFFFFF00FFF7F700FFF7
      F700FFF7F700F7EFEF00F7E7E700F7E7E700F7DEDE00EFDEDE00EFD6D600EFCE
      CE00EFCECE00EFC6C600E7BDBD009C5A5A0000000000CC660000FFFFFF00FFFF
      FF00F8F8F800F8F8F800F1F1F100CCCCCC00CC999900CC999900F0CAA600FFEC
      CC00FFECCC00FFECCC00CC6600000000000000000000CC660000F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100F1F1F100FFECCC00FFEC
      CC00FFECCC00FFECCC00CC66000000000000F7EFEF00FFFFFF00FFFFFF00FFF7
      F7000000000000000000FFEFEF00F7E7E700F7E7E700F7DEDE00000000000000
      0000EFCECE00EFCECE00E7C6C600A5636300F7EFEF00FFFFFF006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B080800F7D6DE00EFD6
      D600EFCECE00EFCECE00E7C6C600A563630000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800F1F1
      F100FFECCC00F1F1F100CC6600000000000000000000CC660000F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100F1F1F100F1F1
      F100FFECCC00FFECCC00CC66000000000000F7F7F70000000000FFFFFF00FFFF
      FF00FFF7F700FFF7F700FFEFEF00F7EFEF00F7E7E700F7E7E700F7DEDE00F7DE
      D600EFD6D600EFCECE00EFCECE00AD6B6B00F7F7F700000000006B0808006B08
      08006B0808006B0808006B0808006B0808006B0808006B080800F7DEDE00F7DE
      D600EFD6D600EFCECE00EFCECE00AD6B6B000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600000000000000000000FFF7F7000000000000000000FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFEFEF00F7EFEF00F7E7E700F7E7E700F7DE
      DE00EFD6DE00EFD6D600EFCECE00AD737300FFF7F7000000000000000000FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFEFEF00F7EFEF00F7E7E700F7E7E700F7DE
      DE00EFD6DE00EFD6D600EFCECE00AD7373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF7F700F7F7F700F7EF
      EF00EFE7E700EFDEDE00E7D6D600E7CECE00DEC6C600D6BDBD00D6B5B500CEA5
      A500C69C9C00BD949400BD8C8C000000000000000000FFF7F700F7F7F700F7EF
      EF00EFE7E700EFDEDE00E7D6D600E7CECE00DEC6C600D6BDBD00D6B5B500CEA5
      A500C69C9C00BD949400BD8C8C00000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009966660099666600996666009966660099666600996666009966
      6600996666009966660066333300000000000000000000000000003399000033
      9900003399009966660099666600996666009966660099666600996666009966
      6600996666009966660066336600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099666600FFECCC00F0CAA600F0CAA600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC99006633330000000000000000000033990033CCCC0033CC
      CC0033CCCC0099666600FFECCC00FFECCC00EAEAEA00FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC0066336600000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000000000000000
      0000000000009933000000000000000000009933000099330000000000009933
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000099666600FFECCC00CC993300CC993300CC993300CC993300CC99
      3300CC993300FFCC99006633330000000000000000000033990033CCCC0033CC
      CC0033CCCC0099666600FFECCC00CC993300CC993300CC993300CC993300CC99
      3300CC993300FFECCC00663366000000000000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600CC660000000000000000000000000000000000000000
      0000000000009933000000000000000000009933000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      00000000000099666600FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CA
      A600FFCC9900FFCC99006633330000000000000000000033990033CCCC0033CC
      CC0033CCCC0099666600FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600FFECCC00663366000000000000000000CC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600CC660000000000000000000000000000000000000000
      0000000000009933000099330000993300009933000000000000993300000000
      0000000000009933000000000000000000009966660099666600996666009966
      66009966660099666600F1F1F100CC993300CC993300CC993300CC993300CC99
      3300CC993300FFCC99006633330000000000000000000033990033CCCC0033CC
      CC0033CCCC0099666600EAEAEA00CC993300CC993300CC993300CC993300CC99
      3300CC993300FFECCC00663366000000000000000000CC660000F1F1F100FFEC
      CC00CC996600CC663300CC663300CC663300CC663300CC663300CC993300F0CA
      A600F0CAA600F0CAA600CC660000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300000000
      00000000000099330000000000000000000099666600FFECCC00F0CAA600F0CA
      A600FFCC990099666600F1F1F100F1F1F100FFECCC00FFECCC00FFECCC00FFEC
      CC00F0CAA600F0CAA6006633330000000000000000000033990033CCFF0033CC
      CC0033CCCC0099666600F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00663366000000000000000000CC660000F1F1F100FFEC
      CC00F0CAA600CC663300CC660000CC666600CCCC9900CC660000CC660000CC66
      3300F0CAA600F0CAA600CC660000000000000000000000000000000000000000
      0000000000000000000000000000993300006633000099330000993300009933
      00009933000099330000000000000000000099666600FFECCC00CC993300CC99
      3300CC993300CC996600F8F8F800CC993300CC993300CC993300CC993300CC99
      3300CC993300FFECCC006633330000000000000000000033990033CCFF0033CC
      FF0033CCFF00CC996600F1F1F100CC993300CC993300CC993300CC993300CC99
      3300CC993300EAEAEA00663366000000000000000000CC660000F8F8F800F1F1
      F100FFECCC00CC993300CC660000CC996600FFECCC00CC993300CC660000CC66
      0000F0CAA600F0CAA600CC660000000000000000000000000000000000000000
      0000000000000000000000000000666666006666660099330000993300009933
      00009933000000000000000000000000000099666600FFECCC00FFECCC00FFEC
      CC00FFECCC00CC996600F8F8F800F8F8F800F1F1F100F1F1F100FFECCC00FFEC
      CC00FFECCC00FFECCC006633330000000000000000000033990066CCFF0033CC
      FF0033CCFF00CC996600F8F8F800F1F1F100FFECCC00EAEAEA00FFECCC00EAEA
      EA00FFECCC00D7D7D700663366000000000000000000CC660000FFFFFF00F1F1
      F100FFECCC00CC993300CC663300CC666600F0CAA600CC663300CC660000CC99
      3300F0CAA600F0CAA600CC660000000000000000000000000000000000000000
      0000000000000000000066666600808080006666660066666600000000000000
      00000000000000000000000000000000000099666600F1F1F100CC993300CC99
      3300CC993300CC996600F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100FFEC
      CC00CC999900996699006633330000000000000000000033990066CCFF0066CC
      FF0033CCFF00CC996600F8F8F800FFFFFF00FFFFFF00F8F8F800FFFFFF009966
      66009966660099666600996666000000000000000000CC660000FFFFFF00F1F1
      F100FFECCC00CC993300CC993300CC663300CC663300CC660000CC663300F0CA
      A600F0CAA600FFECCC00CC660000000000000000000000000000000000000000
      00000000000066666600B2B2B200666666008080800066666600000000000000
      00000000000000000000000000000000000099666600F1F1F100F1F1F100FFEC
      CC00FFECCC00CC996600F8F8F800F8F8F800F8F8F800F8F8F800F1F1F1009966
      660099666600996666009966660000000000000000000033990066CCFF0066CC
      FF0066CCFF00CC996600F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF009966
      6600CC996600CC993300000000000000000000000000CC660000FFFFFF00F8F8
      F800E3E3E300CC993300CC993300CC996600F0CAA600CC663300CC663300CC99
      6600FFECCC00FFECCC00CC660000000000000000000000000000000000000000
      000066666600CBCBCB006666660080808000B2B2B20066666600000000000000
      000000000000000000000000000000000000CC996600F8F8F800CC993300CC99
      3300CC993300CC996600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F8009966
      6600CC996600CC9933000000000000000000000000000033990066CCFF0066CC
      FF0066CCFF00CC996600CC996600CC996600CC996600CC996600CC9966009966
      6600CC99660000339900000000000000000000000000CC660000FFFFFF00FFFF
      FF00EAEAEA00CC993300CC993300F0CAA600FFECCC00CC993300CC660000CC66
      6600FFECCC00FFECCC00CC660000000000000000000000000000000000006666
      6600FF66FF00666666000000000066666600CBCBCB0066666600000000000000
      000000000000000000000000000000000000CC996600F8F8F800F8F8F800F1F1
      F100F1F1F100FF996600CC996600CC996600CC996600CC996600CC9966009966
      6600CC993300000000000000000000000000000000000033990066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0033CCFF0033CCFF0033CCFF0033CC
      CC0033CCCC0000339900000000000000000000000000CC660000FFFFFF00FFFF
      FF00F0CAA600CC993300CC993300CC993300CC993300CC663300CC663300F0CA
      A600FFECCC00FFECCC00CC660000000000000000000000000000000000006666
      660066666600000000000000000066666600CBCBCB0066666600000000000000
      000000000000000000000000000000000000CC996600F8F8F800F8F8F800F8F8
      F800F1F1F100F1F1F100FFECCC00CC9999009966990066333300000000000000
      000000000000000000000000000000000000000000000033990066CCFF0066CC
      FF005555550055555500555555005555550055555500555555005555550033CC
      FF0033CCFF0000339900000000000000000000000000CC660000FFFFFF00FFFF
      FF00F0CAA600CC999900F0CAA600CC999900CC996600CCCC9900F0CAA600FFEC
      CC00FFECCC00FFECCC00CC660000000000000000000000000000000000006666
      660000000000000000000000000066666600CBCBCB0066666600000000000000
      000000000000000000000000000000000000CC996600F8F8F800F8F8F800F8F8
      F800F8F8F800F1F1F10099666600996666009966660099666600000000000000
      000000000000000000000000000000000000000000000033990066CCFF0066CC
      FF0055555500B2B2B200B2B2B200B2B2B200B2B2B200B2B2B2005555550033CC
      FF0033CCFF0000339900000000000000000000000000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
      F100F1F1F100F1F1F100CC660000000000000000000000000000000000000000
      0000000000000000000000000000666666006666660000000000000000000000
      000000000000000000000000000000000000CC996600F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F80099666600CC996600CC99330000000000000000000000
      0000000000000000000000000000000000000000000000000000003399000033
      990055555500CBCBCB00F8F8F800F8F8F800F8F8F800B2B2B200555555000033
      9900003399000000000000000000000000000000000000000000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      000000000000000000000000000000000000FF996600CC996600CC996600CC99
      6600CC996600CC99660099666600CC9933000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005555550055555500555555005555550055555500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00F9F9F900F9F9F900F9F9
      F900E5E3E200BCB8B500A7A29E00A7A29E00A7A29E00A7A29E00A7A29E00A7A2
      9E00A7A29E00A8A29F00BFBAB800EAE8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFDCDB00D7D4D300D7D4D300D7D4
      D300C2BEBC008A8A8A005585A5005689A8005A8DAD005A8DAD005A8DAD005A8D
      AD005A8DAF006293B40072A4C40084B7D7000000000000000000000000000000
      0000000000000000000080808000800000008000000080808000000000000000
      000000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0BFBE009C9591009E9692009E96
      9200877F7D004E4A48002E638500E5E5E500F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300FFFFFF00A6CAE2000000000000000000000000000000
      00000000000000000000800000008000000080000000800000000000FF000000
      FF000000FF000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097908C0078554300916751009A6E
      5700815C4800473328002A587700EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B4D3E7000000000000000000000000000000
      00000000000000000000800000008000000080000000800000000000FF000000
      FF000000000000000000000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      00000000000000000000806060008080800000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000968E8A00825D4B00D1CDCA00E8E4
      E100BDBAB800666463003A759B00F7F7F7008888880088888800888888008888
      88008888880088888800FFFFFF00B4D3E7000000000000000000000000000000
      000000000000000000008080800080000000800000000000FF000000FF000000
      FF000000000000000000000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A000406060008080800080808000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000000000000000000000000000968E8A00865F4D00DDD7D300F7F0
      EC00C9C4C1006C6968003D789D00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B4D3E7000000000000000000000000000000
      0000000000008080800000000000FFFFFF00FFFFFF00000000000000FF00C0C0
      C000FFFFFF0000000000000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A0008060600000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000968E8A00855F4C00DBD2CE00F5EB
      E600C8C0BC006C6765003D779D00F7F7F7008888880088888800888888008888
      88008888880088888800FFFFFF00B4D3E7000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C0C0C000000000000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C00080606000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000000000000000000000000000968E8A00845E4C00D8CEC700F2E6
      DF00D1C6C0008C8581003E799F00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BCD7EA000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C000806060000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000968E8A00845D4B00D7C8C200F0E0
      D900E6D6D000CFC1BB004483AD005B99C20079ACCD0079ACCD0079ACCD0079AC
      CD0079ACCD0079ABCC008CB0C600BFDAEA000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF0000000000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      800080606000806060000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000000000000000000000000000000000968E8A00845D4A00D4C4BC00EDDB
      D200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDBD200EDDB
      D200EDDBD200ECD9D100D1A68F00FFFFFF000000000000000000000000000000
      00000000FF00FFFFFF0000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000968E8A00835C4900D1BEB600E1CD
      C300CDBAB200C0AFA600BFAEA600BFAEA600BFAEA600C6B4AC00D9C6BD00E7D2
      C900EAD5CB00EAD5CB00D1A68F00FFFFFF000000000000000000000000000000
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000009F989400875D4800D4BEB400D0BC
      B200988982006F645F00665C5700665C5700685D590084777100BDAAA200E2CB
      C100E9D1C600E8D2C800D0A69000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      000000000000000000000000000000000000C8C2BE009A6B5300DBB8A700CBAE
      9F00917F74000D508600025292000252920002529200035A9A000694D700B9BD
      BD00DEBEAF00E2C6B900D4AA9600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2D4CD00B18C7900B08B7800AD87
      7400A9806C005464750002529200058ED0005CBDE900CEEBF800DAE0E400D3AD
      9A00D4AE9C00D8B6A400E2C8B900FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6FAFC00DDECF40056A0CB005EB9E20087CBEA00BCE1F200F9FCFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004060
      6000806060008060600080606000806060008060600080606000806060008060
      6000806060008060600080606000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000004040400000000000000000000000
      0000000000000000000040404000000000000000000000000000000000000000
      0000C040A000000000000000000000000000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000004040400000000000000000004040
      400040404000404040000000000000000000000000000000000000000000C040
      A000C040A000000000000000000000000000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000040404000404040000000
      0000000000004040400000000000000000000000000000000000C040A000C040
      A000C040A000C040A0000000000000000000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000404040000000
      00004040400040404000404040000000000000000000C040A000C040A000C040
      A000C040A000C040A000C040A00000000000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000040404000404040000000
      0000000000000000000000000000404040000000000000000000C040A000C040
      A000C040A000C040A000C040A000C040A000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000004040400040404000404040004040
      400000000000000000000000000040404000000000000000000000000000C040
      A000C040A00000000000C040A000C040A000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000004040400040404000404040000000
      0000000000000000000000000000000000004040400000000000000000000000
      0000C040A0000000000000000000C040A000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000F0FBFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000004040400040404000404040000000
      0000000000000000000040404000404040000000000000000000000000000000
      0000000000000000000000000000C040A000000000000000000000000000A4A0
      A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000004040400040404000404040004040
      4000404040000000000000000000404040000000000000000000000000000000
      0000000000000000000000000000C040A000000000000000000000000000A4A0
      A000FFFFFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0DCC000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000004040400040404000404040004040
      4000404040004040400040404000000000004040400000000000000000000000
      00000000000000000000C040A00000000000000000000000000000000000A4A0
      A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080008060600040202000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000404040004040
      4000404040004040400040404000404040004040400000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000F0FBFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000404040004040
      4000404040004040400040404000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A0A0004040400040404000404040004040400040404000404040004040
      400040404000404040004040400040404000000000000000000000000000BC9A
      8200BC957B00BC957B00BD937600BF917200BF8E6E00C18C6900C28A6500C388
      6100C4845D00C5825800C8805500C8805500000000000000000000000000BC9A
      8200BC957B00BC957B00BD937600BF917200BF8E6E00C18C6900C28A6500C388
      6100C4845D00C5825800C8805500C8805500000000000000000000000000BC9A
      8200BC957B00BC957B00BD937600BF917200BF8E6E00C18C6900C28A6500C388
      6100C4845D00C5825800C8805500C8805500C040400000000000C0404000C040
      4000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0040404000000000000000000000000000BE9D
      8500FCEDE300FCECE100FCEAE000FBE9DE00FBE8DC00FBE7DB00FBE6D900FBE5
      D700FAE4D600FAE3D400FAE2D200C6815900000000000000000000000000BE9D
      8500FCEDE300FCECE100FCEAE000FBE9DE00FBE8DC00FBE7DB00FBE6D900FBE5
      D700FAE4D600FAE3D400FAE2D200C6815900000000000000000000000000BE9D
      8500FCEDE300FCECE100FCEAE000FBE9DE00FBE8DC00FBE7DB00FBE6D900FBE5
      D700FAE4D600FAE3D400FAE2D200C68159000000000000000000000000000000
      0000A4A0A000FFFFFF00FFFFFF00C0404000C0404000C0404000C0404000C040
      4000C0404000FFFFFF00FFFFFF0040404000000000000000000000000000C0A0
      8800FCEEE500FCEDE300D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FAE4D600FAE3D400C4845E00000000000000000000000000C0A0
      8800FCEEE500FCEDE300D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FAE4D600FAE3D400C4845E00000000000000000000000000C0A0
      8800FCEEE500FCEDE300D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FAE4D600FAE3D400C4845E00C040400000000000C0404000C040
      4000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0040404000000000000000000000000000C2A2
      8C00FCEFE600FCEEE500FCEDE300FCECE100FCEAE000FBE9DE00FBE8DC00FBE7
      DB00FBE6D900FBE5D700FAE4D600C3896200000000000000000000000000C2A2
      8C00FCEFE600FCEEE500FCEDE300FCECE100FCEAE000FBE9DE00FBE8DC00FBE7
      DB00FBE6D900FBE5D700FAE4D600C3896200000000000000000000000000C2A2
      8C00FCEFE600FCEEE500FCEDE300FCECE100FCEAE000FBE9DE00FBE8DC00FBE7
      DB00FBE6D900FBE5D700FAE4D600C38962000000000000000000000000000000
      0000A4A0A000FFFFFF00FFFFFF00C0404000C0404000C0404000C0404000C040
      4000C0404000FFFFFF00FFFFFF0040404000000000000000000000000000C4A5
      8F00FDF0E800FCEFE600D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FBE6D900FBE5D700C18B6700000000000000000000000000C4A5
      8F00FDF0E800FCEFE600D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FBE6D900FBE5D700C18B6700000000000000000000000000C4A5
      8F00FDF0E800FCEFE600D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FBE6D900FBE5D700C18B6700C040400000000000C0404000C040
      4000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004040A0004040A00040404000000000000000000000000000C6A8
      9200FDF1EA00FDF0E800FCEFE600FCEEE500FCEDE300FCECE100FCEAE000FBE9
      DE00FBE8DC00FBE7DB00FBE6D900C08E6C00000000000000000000000000C6A8
      9200FDF1EA00FDF0E800FCEFE600FCEEE500FCEDE300FCECE100FCEAE000FBE9
      DE00FBE8DC00FBE7DB00FBE6D900C08E6C00000000000000000000000000C6A8
      9200FDF1EA00FDF0E800FCEFE600FCEEE500FCEDE300FCECE100FCEAE000FBE9
      DE00FBE8DC00FBE7DB00FBE6D900C08E6C000000000000000000000000000000
      0000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004040A0004040A00040404000000000000000000000000000C8AB
      9500FDF2EB00FDF1EA00D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FBE8DC00FBE7DB00BF907200000000000000000000000000C8AB
      9500FDF2EB00FDF1EA00D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FBE8DC00FBE7DB00BF907200000000000000000000000000C8AB
      9500FDF2EB00FDF1EA00D6AE9000D6AE9000D6AE9000D6AE9000D6AE9000D6AE
      9000D6AE9000FBE8DC00FBE7DB00BF9072004040400040404000404040004040
      4000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0DCC000C0DCC00040404000000000000000000000000000CAAD
      9900FDF3ED00FDF2EB00FDF1EA00FDF0E800FCEFE600FCEEE500FCEDE300FCEC
      E100FCEAE000FBE9DE00FBE8DC00BD937600000000000000000000000000CAAD
      9900FDF3ED00FDF2EB00FDF1EA00FDF0E800FCEFE600FCEEE500FCEDE300FCEC
      E100FCEAE000FBE9DE00FBE8DC00BD937600000000000000000000000000CAAD
      9900FDF3ED00FDF2EB00FDF1EA00FDF0E800FCEFE600FCEEE500FCEDE300FCEC
      E100FCEAE000FBE9DE00FBE8DC00BD937600A4A0A000FFFFFF00FFFFFF00FFFF
      FF004040400040404000404040004040400040404000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A00040404000728A1E00728A1E00728A1E00728A
      1E00728A1E00728A1E00728A1E00728A1E00728A1E00728A1E00728A1E00728A
      1E00FCEAE000FCEAE000FBE9DE00BB957A000860AA000860AA000860AA000860
      AA000860AA000860AA000860AA000860AA000860AA000860AA000860AA00FCED
      E300D6AE9000FCEAE000FBE9DE00BB957A000066FF000066FF000066FF000066
      FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF000066
      FF000066FF00FCEAE000FBE9DE00BB957A00A4A0A000FFFFFF00FFFFFF00C040
      4000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000FFFFFF00FFFFFF004040
      400000000000000000000000000000000000728A1E00728A1E00FFFFFF00728A
      1E00728A1E00FFFFFF00728A1E00FFFFFF00728A1E00728A1E00FFFFFF00728A
      1E00FCEDE300FCECE100FCEAE000BA977E000860AA00FFFFFF000860AA00FFFF
      FF000860AA00FFFFFF000860AA000860AA00FFFFFF000860AA000860AA00FCEE
      E500FCEDE300FCECE100FCEAE000BA977E00FFFFFF000066FF00FFFFFF000066
      FF000066FF00FFFFFF000066FF000066FF00FFFFFF000066FF000066FF000066
      FF00FFFFFF00FCECE100FCEAE000BA977E00A4A0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040
      4000C0404000C040400000000000C0404000728A1E00728A1E00FFFFFF00728A
      1E00728A1E00728A1E00FFFFFF00728A1E00728A1E00728A1E00FFFFFF00728A
      1E00FCEEE500FCEDE300FCECE100BA977E000860AA00FFFFFF00FFFFFF000860
      AA000860AA00FFFFFF000860AA000860AA00FFFFFF00FFFFFF000860AA00FCEF
      E600FCEEE500FCEDE300FCECE100BA977E00FFFFFF00FFFFFF00FFFFFF000066
      FF000066FF00FFFFFF000066FF000066FF00FFFFFF000066FF00FFFFFF000066
      FF00FFFFFF00FCEDE300FCECE100BA977E00A4A0A000FFFFFF00FFFFFF00C040
      4000C0404000C0404000C0404000C0404000C0404000FFFFFF00FFFFFF004040
      400000000000000000000000000000000000728A1E00728A1E00FFFFFF00728A
      1E00728A1E00FFFFFF00728A1E00FFFFFF00728A1E00728A1E00FFFFFF00728A
      1E00BA977E00BA977E00BA977E00BA977E000860AA00FFFFFF000860AA00FFFF
      FF000860AA00FFFFFF000860AA000860AA00FFFFFF000860AA000860AA00BA97
      7E00BA977E00BA977E00BA977E00BA977E00FFFFFF000066FF00FFFFFF000066
      FF000066FF00FFFFFF000066FF000066FF00FFFFFF00FFFFFF000066FF00FFFF
      FF00FFFFFF00BA977E00BA977E00BA977E00A4A0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040A0004040A0004040
      4000C0404000C040400000000000C0404000728A1E00FFFFFF00FFFFFF00FFFF
      FF00728A1E00FFFFFF00728A1E00FFFFFF00728A1E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BA977E000860AA00FFFFFF00FFFFFF000860
      AA00FFFFFF00FFFFFF00FFFFFF000860AA00FFFFFF00FFFFFF00FFFFFF00BA97
      7E00FFFFFF00FFFFFF00FFFFFF00BA977E00FFFFFF000066FF00FFFFFF000066
      FF00FFFFFF00FFFFFF00FFFFFF000066FF00FFFFFF000066FF000066FF000066
      FF00FFFFFF00FFFFFF00FFFFFF00BA977E00A4A0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040A0004040A0004040
      400000000000000000000000000000000000728A1E00728A1E00728A1E00728A
      1E00728A1E00728A1E00728A1E00728A1E00728A1E00728A1E00728A1E00728A
      1E00FFFFFF00FFFFFF00BA977E00000000000860AA000860AA000860AA000860
      AA000860AA000860AA000860AA000860AA000860AA000860AA000860AA00BA97
      7E00FFFFFF00FFFFFF00BA977E00000000000066FF000066FF000066FF000066
      FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF000066
      FF000066FF00FFFFFF00BA977E0000000000A4A0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0DCC000C0DCC0004040
      4000C0404000C040400000000000C0404000000000000000000000000000D8C0
      AF00FFFBF900FEFAF700FEF9F500FEF8F400FEF7F200FEF6F000FDF4EF00BA97
      7E00FFFFFF00BA977E000000000000000000000000000000000000000000D8C0
      AF00FFFBF900FEFAF700FEF9F500FEF8F400FEF7F200FEF6F000FDF4EF00BA97
      7E00FFFFFF00BA977E000000000000000000000000000000000000000000D8C0
      AF00FFFBF900FEFAF700FEF9F500FEF8F400FEF7F200FEF6F000FDF4EF00BA97
      7E00FFFFFF00BA977E000000000000000000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A0004040
      400000000000000000000000000000000000000000000000000000000000DAC3
      B300D4BBA900D1B6A300CDB19D00C9AC9700C6A79100C2A28B00BE9D8500BA97
      7E00BA977E00000000000000000000000000000000000000000000000000DAC3
      B300D4BBA900D1B6A300CDB19D00C9AC9700C6A79100C2A28B00BE9D8500BA97
      7E00BA977E00000000000000000000000000000000000000000000000000DAC3
      B300D4BBA900D1B6A300CDB19D00C9AC9700C6A79100C2A28B00BE9D8500BA97
      7E00BA977E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF008080
      8000FFFFFF0080808000808080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000800000000000
      00008000000000000000808080008080800080808000FFFFFF00FFFFFF008000
      00000000000080000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000080000000FF00FF00000000000000000080808000FFFFFF00FFFFFF008000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000000000000800080000000800000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      000080000000000080008000800000000000FFFFFF00FFFF0000FFFF00008000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      000080000000FF00FF008000800000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000000000000800080008000800000000000FFFFFF00FFFF0000FFFF00008000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000080000000800080008000800000000000FFFF0000FFFFFF00FFFFFF008000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000000000000FF00FF008000800000000000FFFF0000FFFFFF00FFFFFF008000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000800000008000000080000000800000000000000080000000000000008000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080806000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080806000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808060008080
      6000808060008080600000000000808060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080600000000000808060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808060000000000080806000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080806000808060008080
      6000808060000000000080806000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080400000C0606000C060
      6000000000008080600080806000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      6000000000008080600000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      0000000084000000840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080400000C0606000C0A08000C0A0
      8000F0CAA6000000000080806000000000000000000000000000000000000000
      00000000000000000000000000000000000080400000C0606000C06060000000
      0000808060008080600000000000000000008484840084848400000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0A08000C0A08000F0CA
      A600C06060000000000080806000000000000000000000000000000000000000
      000000000000000000000000000080400000C0606000C0A08000C0A08000F0CA
      A600000000008080600000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000000000000000000000000000
      0000000000000000000080806000000000000000000000000000F0CAA600C0A0
      8000C06060000000000000000000000000000000000000000000000000000000
      000000000000000000008040000000000000C0A08000C0A08000F0CAA600C060
      6000000000008080600000000000000000008484840084848400000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000000000000000000000000000
      000000000000804000000000000080806000000000000000000000000000C060
      6000000000000000000000000000000000000000000000000000000000000000
      00000000000080400000C0606000C0A0800000000000F0CAA600C0A08000C060
      6000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080400000C0606000C0A08000000000008080600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0606000C0A08000C0A08000F0CAA60000000000C06060000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000840000008400C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0606000C0A08000C0A08000F0CAA6000000000080806000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A08000C0A08000F0CAA600C0A08000C0606000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000840000008400C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A08000C0A08000F0CAA600C0A08000C060600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080600000000000F0CAA600C0A08000C060600000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      600000000000F0CAA600C0A08000C06060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      6000000000008080600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808060000000
      0000808060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808060000000
      0000808060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080806000000000008080
      6000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080806000000000008080
      6000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FEFFFEFF00000000FC7FFC7F00000000FEFFF83F00000000
      FFFFFEFF00000000FEFFFEFF00000000FEFFFEFF00000000FC7FFEFF00000000
      FC7FFEFF00000000FC7FFEFF00000000FC7FFEFF00000000FEFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFF
      FCFFEFFF8FFFFFFFF8FFDC018C01FEFFF1FF8FFF8FFFFEFFE3FFFFFFFFFFFDFF
      C7FF8FFFFFFFFDFFC703DFFF8FFFF8FFC783EC018C01F83FC7039FFF8FFFF01F
      C203FFFFFFFFF00FC0038FFFFFFFE007C01BDFFF8FFFE67FE03F9C018C01FFFF
      F07FDFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFF
      FFFFF8FFBBBBFF3F0000F07F5555FF1F0000C03FEEEEFF8F0000803F3C81FFC7
      0000801F3C9CFFE30000C20F009CC0E30000FF07999CC1E30000FF83999CC0E3
      0000FFC1C38CC04300000000C391C00300000000E79FD80300000000E79FFC07
      00000001FF9FFE0F00008003FFFFFFFFFFFFFFFFFFFFFFFFC003C003FEFFFEFF
      80018001FFFFFFFF80018001C27FC27F80018001FFFFFFFF80018001C200C200
      80018001FFFFFFFF80018001DE07DE07800180019E07CE078001800107FF07FF
      800180019E00CE0080018001DE00DE0080018001FFFFFFFF80018001C200C200
      C003C003FFFFFFFFFFFFFFFFFEFFFEFF800180018001FFFF000000000000C003
      0000000000008001000000000000800100000000000080010000000000008001
      0000000000008001000000000000800100000000000080010000000000008001
      0000000000008001000000000000800100000000000080014000400040008001
      600060006000C003800180018001FFFFFFFFFFFF80018001C003C00300000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800140004000
      C003C00360006000FFFFFFFF80018001FC7FF801C001FFFFF87FF8018001C003
      FB27F80180018001FB43F80180018001F85B000180018001FC1B000180018001
      FE03000180018001FE07000180018001FC3F000180018001F83F000180038001
      F03F000380038001E23F000780038001E63F003F80038001EE3F003F80038001
      FE7F007FC007C003FEFF00FFF83FFFFFFFFFF03FFFFF0000FFFFE007FFFF0000
      FC3FC000FFFF0000FC078000E0070000FC0F0000C0070000FC030000C0070000
      F8030000C0070000F8038000C0070000F803E001C0070000F003F003C0070000
      E03FF01FC00F0000C3FFE03FE07F0000C7FFE03FE07F0000EFFFC03FFFFF0000
      FFFFC07FFFFF0000FFFFF8FFFFFF0000FFFFFFFFFC00FFFFE000E007F000FFFF
      E000E007C0007DF7E000E007000063E7E000E00700009BC3E000E0070000D181
      E000E00700009EC0E000E00700000EE4E000E00700001F76E000E00700001CFE
      E000E007000106FEE000E00F0003017DE000E01F0007807FE001E03F001FC1FF
      E003FFFF007FFFFFE007FFFF01FFFFFFF000E000E000E0004000E000E000E000
      F000E000E000E0004000E000E000E000F000E000E000E0004000E000E000E000
      F000E000E000E0000000E000E000E0000000000000000000000F000000000000
      0002000000000000000F0000000000000002000000000000000F000100010001
      0002E003E003E003000FE007E007E007FFFFFFFFFFFFFFFFFFFFF83FC001FFFF
      0001F39F8031C0010001F6DF8031C0010001F55F8031F00F0001F55F8001F00F
      0001F55F8001F00F0001F55F8001F00F0001F55F8FF1F00F0001F55F8FF1F00F
      0001F55F8FF1F00F0001F55F8FF1F00F0101FD5F8FF1FFFFC387FDDF8FF5FC3F
      FFFFFE3F8001FC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFCFFFFFFEF
      FFC0FFF8FFFFFFC7FF81FF8120007D87FF01FF03E0006313FE01FE0320009BB9
      FF01FC03E000D1FCF983F80320009EFEF0C7F007E0000EFFE06FF00F20001F7F
      E03FF01FE0001CFFE03FF03F200006FFE07FE07FE000017FC0FFC7FFFFFF807F
      8FFF8FFFFFFFC1FF9FFF9FFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenDlg: TOpenDialog
    Filter = 'All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select a file to attach...'
    Left = 612
    Top = 20
  end
                                                                                          object qryEmployeeSig: TUniQuery
                                                                                          Connection = dmAxiom.uniInsight
                                                                                          SQL.Strings = (
                                                                                                  'select email_signature'
                                                                                                  'from '
                                                                                                  'employee'
                                                                                                  'where code = :code')
                                                                                          Left = 703
                                                                                          Top = 296
                                                                                        end
                                                                                        object qryEmail_Footer: TUniQuery
                                                                                          Connection = dmAxiom.uniInsight
                                                                                          SQL.Strings = (
                                                                                                  'select email_footer from systemfile')
                                                                                          Left = 639
                                                                                          Top = 369
                                                                                        end
object psHtmlEditActionList1: TpsHtmlEditActionList
    Images = ImageList1
    Editor = HtmlMessageTextHtml
    Left = 746
    Top = 96
    object psBoldAction1: TpsBoldAction
      Category = 'HTMLEdit'
      Caption = 'Bold'
      Hint = 'Boldface'
      ImageIndex = 23
      Editor = HtmlMessageTextHtml
    end
    object psItalicAction1: TpsItalicAction
      Category = 'HTMLEdit'
      Caption = 'Italic'
      Hint = 'Italic'
      ImageIndex = 24
      Editor = HtmlMessageTextHtml
    end
    object psClipboardPasteAction1: TpsClipboardPasteAction
      Category = 'HTMLEdit'
      Caption = 'Paste'
      Hint = 'Paste from Clipboard'
      ImageIndex = 22
      Editor = HtmlMessageTextHtml
    end
    object psClipboardCutAction1: TpsClipboardCutAction
      Category = 'HTMLEdit'
      Caption = 'Cut'
      Hint = 'Cut to Clipboard'
      ImageIndex = 20
      Editor = HtmlMessageTextHtml
    end
    object psClipboardCopyAction1: TpsClipboardCopyAction
      Category = 'HTMLEdit'
      Caption = 'Copy'
      Hint = 'Copy to Clipboard'
      ImageIndex = 21
      Editor = HtmlMessageTextHtml
    end
    object psUnderlineAction1: TpsUnderlineAction
      Category = 'HTMLEdit'
      Caption = 'Underline'
      Hint = 'Underline'
      ImageIndex = 25
      Editor = HtmlMessageTextHtml
    end
    object psAlignLeft1: TpsAlignLeft
      Category = 'HTMLEdit'
      AutoCheck = True
      Caption = 'Align Left'
      Checked = True
      GroupIndex = 5
      Hint = 'Align Left'
      ImageIndex = 31
      Editor = HtmlMessageTextHtml
    end
    object psAlignCenter1: TpsAlignCenter
      Category = 'HTMLEdit'
      AutoCheck = True
      Caption = 'Center'
      GroupIndex = 5
      Hint = 'Center'
      ImageIndex = 33
      Editor = HtmlMessageTextHtml
    end
    object psAlignRight1: TpsAlignRight
      Category = 'HTMLEdit'
      AutoCheck = True
      Caption = 'Align Right'
      GroupIndex = 5
      Hint = 'Align Right'
      ImageIndex = 32
      Editor = HtmlMessageTextHtml
    end
    object psAlignJustify1: TpsAlignJustify
      Category = 'HTMLEdit'
      Caption = 'Justify'
      Hint = 'Justify'
      ImageIndex = 30
      Editor = HtmlMessageTextHtml
    end
    object psDecreaseListIndent1: TpsDecreaseListIndent
      Category = 'HTMLEdit'
      Caption = 'Decrease List Indent'
      Hint = 'Decrease List Indent'
      ImageIndex = 34
      Editor = HtmlMessageTextHtml
    end
    object psIncreaseListIndent1: TpsIncreaseListIndent
      Category = 'HTMLEdit'
      Caption = 'Increase List Indent'
      Hint = 'Increase List Indent'
      ImageIndex = 35
      Editor = HtmlMessageTextHtml
    end
    object psUndoAction1: TpsUndoAction
      Category = 'HTMLEdit'
      Caption = 'Undo'
      Hint = 'Undo'
      ImageIndex = 39
      Editor = HtmlMessageTextHtml
    end
    object psRedoAction1: TpsRedoAction
      Category = 'HTMLEdit'
      Caption = 'Redo'
      Hint = 'Redo'
      ImageIndex = 40
      Editor = HtmlMessageTextHtml
    end
    object psOrderedList1: TpsOrderedList
      Category = 'HTMLEdit'
      Caption = 'Ordered List'
      Hint = 'Ordered List'
      ImageIndex = 41
      Editor = HtmlMessageTextHtml
    end
    object psUnorderedList1: TpsUnorderedList
      Category = 'HTMLEdit'
      Caption = 'Unordered List'
      Hint = 'Unordered List'
      ImageIndex = 42
      Editor = HtmlMessageTextHtml
    end
  end
  object pm_LinkCreator: TPopupMenu
    Left = 157
    Top = 324
    object CreateLink1: TMenuItem
      Caption = 'Create Link...'
      OnClick = CreateLink1Click
    end
    object OpenURLinbrowser1: TMenuItem
      Caption = 'Open URL in browser'
      OnClick = OpenURLinbrowser1Click
    end
  end
  object cd_ColorSelection: TColorDialog
    Left = 625
    Top = 215
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 309
    Top = 214
  end
  object RwMapiAddrBookParserV31: TRwMapiAddrBookParserV3
    Left = 449
    Top = 393
  end
end
