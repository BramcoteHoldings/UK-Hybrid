object frmDebtorTaskDue: TfrmDebtorTaskDue
  Left = 324
  Top = 213
  Caption = 'Collections Management Tasks Due'
  ClientHeight = 572
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object tabMain: TcxPageControl
    Left = 0
    Top = 28
    Width = 956
    Height = 544
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabDue
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnChange = tabMainChange
    ExplicitWidth = 910
    ClientRectBottom = 540
    ClientRectLeft = 4
    ClientRectRight = 952
    ClientRectTop = 26
    object tabDue: TcxTabSheet
      Caption = 'Due Items'
      ImageIndex = 0
      ExplicitTop = 24
      ExplicitWidth = 902
      ExplicitHeight = 516
      object lvDue: TListView
        Left = 0
        Top = 0
        Width = 948
        Height = 514
        Align = alClient
        Columns = <
          item
            Caption = 'Action'
            Width = 100
          end
          item
            Caption = 'Due'
            Tag = 1
            Width = 100
          end
          item
            Caption = 'Bill'
            Tag = 2
            Width = 70
          end
          item
            Caption = 'Assign To'
            Tag = 3
            Width = 60
          end
          item
            Caption = 'Alert To'
            Tag = 4
            Width = 60
          end
          item
            Caption = 'Alt Alert To'
            Tag = 5
            Width = 60
          end
          item
            Caption = 'Matter'
            Tag = 6
            Width = 70
          end
          item
            Caption = 'Bill To'
            Tag = 7
            Width = 100
          end
          item
            Caption = 'Client Name'
            Tag = 8
            Width = 100
          end
          item
            Caption = 'Matter Description'
            Tag = 9
            Width = 90
          end
          item
            Caption = 'Debtor Phone#'
            Tag = 10
            Width = 90
          end
          item
            Caption = 'Author'
            Tag = 11
          end
          item
            Caption = 'Notes'
            Tag = 12
          end
          item
            Caption = 'Template'
            Tag = 13
          end
          item
            Caption = 'Balance'
            Tag = 14
          end>
        ColumnClick = False
        FullDrag = True
        MultiSelect = True
        RowSelect = True
        SortType = stData
        TabOrder = 0
        ViewStyle = vsReport
        OnCompare = lvDueCompare
        OnExit = lvDueExit
        OnSelectItem = lvDueSelectItem
        ExplicitWidth = 902
        ExplicitHeight = 516
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      OnShow = tabFilterShow
      object cxRgDate: TcxRadioGroup
        Left = 16
        Top = 3
        Caption = 'Date Filter'
        Properties.Items = <
          item
            Caption = 'Due'
          end
          item
            Caption = 'Due over weekend'
            Tag = 3
          end
          item
            Caption = 'All (Ex Confirmed)'
            Tag = 1
          end
          item
            Caption = 'Specific'
            Tag = 2
          end
          item
            Caption = 'Expected Payment'
            Tag = 4
          end
          item
            Caption = 'Confirmed'
            Tag = 5
          end
          item
            Caption = 'All (Inc Confirmed)'
            Tag = 6
          end>
        Properties.OnChange = cxRgDatePropertiesChange
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 132
        Width = 305
      end
      object cxGroupBox2: TcxGroupBox
        Left = 16
        Top = 143
        Caption = 'Assign To'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 49
        Width = 145
        object cxlcAssignTo: TcxLookupComboBox
          Left = 8
          Top = 16
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmployee
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 129
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 16
        Top = 199
        Caption = 'Alert To'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 49
        Width = 145
        object cxlcAlertTo: TcxLookupComboBox
          Left = 8
          Top = 16
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmployee
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 129
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 176
        Top = 143
        Caption = 'Matter'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 49
        Width = 145
        object tbFile: TcxButtonEdit
          Left = 9
          Top = 16
          Properties.Buttons = <
            item
              Default = True
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
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = tbFilePropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 128
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 176
        Top = 199
        Caption = 'Bill'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Height = 49
        Width = 145
        object edtBillRef: TcxButtonEdit
          Left = 9
          Top = 16
          BeepOnEnter = False
          Properties.Buttons = <
            item
              Default = True
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
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = edtBillRefPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 128
        end
      end
      object cxdeFrom: TcxDateEdit
        Left = 184
        Top = 24
        Enabled = False
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 121
      end
      object cxdeTo: TcxDateEdit
        Left = 184
        Top = 56
        Enabled = False
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 146
        Top = 25
        Caption = 'From :'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 161
        Top = 57
        Caption = 'To :'
        Transparent = True
      end
      object cxGroupBox5: TcxGroupBox
        Left = 16
        Top = 255
        Caption = 'Owing'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Height = 49
        Width = 305
        object cxCeFrom: TcxCurrencyEdit
          Left = 40
          Top = 16
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 97
        end
        object cxCeTo: TcxCurrencyEdit
          Left = 192
          Top = 16
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 97
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 16
          Caption = 'From '
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 168
          Top = 16
          Caption = 'To'
          Transparent = True
        end
      end
    end
    object tabColumns: TcxTabSheet
      Caption = 'Columns'
      ImageIndex = 2
      object lvColumns: TListView
        Left = 0
        Top = 0
        Width = 948
        Height = 514
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            Caption = 'Column'
            Width = 858
          end>
        TabOrder = 0
        ViewStyle = vsList
        OnChange = lvColumnsChange
        OnClick = lvColumnsClick
      end
    end
  end
  object qryDueItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      
        'from debtorworkflowtask dt,(select m.*,((nvl(m.FEES,0) + nvl(m.D' +
        'ISB,0) + nvl(m.ANTD,0) + nvl(m.SUND,0) + nvl(m.TAX,0) + nvl(m.UP' +
        'CRED,0)) -   '
      
        'NVL(m.FEES_PAID,0) +  nvl(m.DISB_PAID,0) + nvl(m.ANTD_PAID,0) + ' +
        'nvl(m.SUND_PAID,0) + nvl(m.TAX_PAID,0) + NVL(m.FEES_WOFF,0) +  '
      'nvl(m.DISB_WOFF,0) + nvl(m.ANTD_WOFF,0) + nvl(m.SUND_WOFF,0) '
      
        '+ nvl(m.TAX_WOFF,0) + nvl(m.UPCRED_PAID, 0) + nvl(m.UPCRED_WOFF,' +
        '0) ) AS OWING'
      'from nmemo m) m'
      'where dt.nmemo = m.nmemo'
      'and m.owing >= dt.MIN_BALANCE')
    Left = 608
    Top = 72
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
    ImageOptions.Images = ilListImages
    LookAndFeel.NativeStyle = True
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 640
    Top = 72
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 236
      FloatTop = 246
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbtnLoadInvoice'
        end
        item
          Visible = True
          ItemName = 'dxBtnLoadMatter'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbtnWordMerge'
        end
        item
          Visible = True
          ItemName = 'dxbtnEmailMerge'
        end
        item
          Visible = True
          ItemName = 'dxBtnDebtorStatement'
        end
        item
          Visible = True
          ItemName = 'dxBtnProcess'
        end
        item
          Visible = True
          ItemName = 'dxBtnNotes'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBtnPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxMergeProgress'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnClose'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnClose: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B
        9B64C7C7C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF0000
        4FFF16163DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F4F4F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF0000
        88FF000081FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFD
        FD025A5A9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF0000
        97FF00008FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8F
        B7700101A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848
        B8FFB7B7E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828
        ABD90000ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7
        ECFFFFFFF7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606
        B0FD0303B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFF
        F1FF7575B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808
        BBFF0707C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575
        C9FF0000BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0C
        C9FF0D0DD8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858
        DBFF0000CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414
        D8FF1717EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFE
        FFFF6363E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525
        E5F22222FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3
        D6FFFFFFFEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5E
        F1AF3232FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252
        B4FFADADB0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6
        FC293E3EFBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838
        FCFF4242EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00C2C2FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767
        FFFF5151FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353
        FFFF5151F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAA
        FD5DE1E1F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = dxBarButton3Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarContainerItem1: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxbtnLoadInvoice: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Description = 'Show Bill'
      Enabled = False
      Hint = 'Show Bill'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxbtnLoadInvoiceClick
    end
    object dxbtnWordMerge: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Merge Word'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxbtnWordMergeClick
    end
    object dxbtnEmailMerge: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Merge Email'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxbtnEmailMergeClick
    end
    object dxBtnLoadMatter: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Description = 'Show Matter'
      Enabled = False
      Hint = 'Show Matter'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = dxBtnLoadMatterClick
    end
    object dxBtnProcess: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Process'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBtnProcessClick
    end
    object dxMergeProgress: TdxBarProgressItem
      Caption = 'Progress'
      Category = 0
      Hint = 'Progress'
      Visible = ivInCustomizing
      Max = 10
      Position = 1
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Options'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem6'
        end>
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Auto Post'
      Category = 0
      Hint = 'Auto Post'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Documents'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxAutoWord'
        end
        item
          Visible = True
          ItemName = 'dxPrint'
        end
        item
          Visible = True
          ItemName = 'dxShow'
        end>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Email'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxAutoEmail'
        end>
    end
    object dxAutoWord: TdxBarButton
      Caption = 'Auto Post'
      Category = 0
      Hint = 'Auto Post'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxAutoEmail: TdxBarButton
      Caption = 'Auto Send'
      Category = 0
      Hint = 'Auto Send'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxPrint: TdxBarButton
      Caption = 'Print '
      Category = 0
      Hint = 'Print '
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBtnPrint: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = dxBtnPrintClick
    end
    object dxShow: TdxBarButton
      Caption = 'Show Document'
      Category = 0
      Hint = 'Show Document'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxNote: TdxBarEdit
      Caption = 'Note'
      Category = 0
      Hint = 'Note'
      Visible = ivAlways
      ShowCaption = True
    end
    object dxBtnNote: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBtnNotes: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Edit Notes'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBtnNotesClick
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = 'Process'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxDebtorNotes'
        end>
    end
    object dxDebtorNotes: TdxBarButton
      Caption = 'Add Notes To Debtor'
      Category = 0
      Hint = 'Add Notes To Debtor'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBtnDebtorStatement: TdxBarButton
      Caption = 'Debtor Statement'
      Category = 0
      Enabled = False
      Hint = 'Debtor Statement'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBtnDebtorStatementClick
    end
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 608
    Top = 104
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'**ALL**'#39'code,'#39'**ALL**'#39'name '
      'from dual '
      'union all '
      'select code,name || '#39'('#39' || code || '#39')'#39' as Name '
      'from '
      'employee'
      'order by 2')
    Left = 640
    Top = 104
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 640
    Top = 136
  end
  object qryDebtorTaskItem: TUniQuery
    KeyFields = 'NDEBTORTASK'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from debtorworkflowtask'
      'where ndebtortask = :ndebtortask')
    Left = 680
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ndebtortask'
        Value = nil
      end>
  end
  object dsDebtorTaskItem: TUniDataSource
    DataSet = qryDebtorTaskItem
    Left = 680
    Top = 104
  end
  object qryDebtorNotesInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'insert into debtornotes(nmatter,created,createdby,note)'
      'values (:nmatter,sysdate,:createdby,:note)')
    Left = 680
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'createdby'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'note'
        Value = nil
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 815
    Top = 259
    object dxComponentPrinter1Link1: TdxListViewReportLink
      Active = True
      Component = lvDue
      PageNumberFormat = pnfNumeral
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
      ReportDocument.CreationDate = 42614.469549004630000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      EndEllipsis = True
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clBlack
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial Narrow'
      HeaderFont.Style = [fsBold]
      HeadersOnEveryPage = True
      BuiltInReportLink = True
    end
  end
  object ilListImages: TImageList
    Left = 496
    Top = 104
    Bitmap = {
      494C0101110015001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      00000000000000000000000000000000000000000000BA4C1774B15122E0B153
      23EFB15223EDB15223EDB15223EDB15223EDB15223EDB15223EDB15223EDB152
      23EDB15323EFB15122E0BA4D1974000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF531D74B55E31FFB75C2EFFB75C
      2EFFB5592AFFB45727FFB75C2EFFB75C2EFFB75C2EFFB75C2EFFB45728FFB458
      29FFB75C2EFFB75C2EFFB55E30FFBE541D740000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BA5E2DE0BB6233FFBA6233FFB95F
      2FFFC57850FFCE8E6CFFB75928FFBA6233FFBA6233FFB85B2AFFCA8661FFCA83
      5FFFB85D2EFFBA6233FFBB6233FFBA5E2DE00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C16433EFBF6837FFBF6836FFBD63
      30FFCE8B66FFFFFFFFFFC26C3CFFBB5E29FFBB5E2AFFBC602EFFFFFFFFFFDCAD
      93FFBC602CFFBF6836FFBF6837FFC16433EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C86D39EDC86E3DFFC86D3DFFC86D
      3DFFC15B24FFFCF7F5FFEFD9CCFFDDA78BFFDEA88CFFECD0C1FFFFFFFFFFC25E
      28FFC86D3CFFC86D3DFFC86E3DFFC86D39ED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF7341EDCC7542FFCC7542FFCC75
      42FFCA6E39FFDDA280FFFFFFFFFFF0D5C5FFEED3C2FFFFFFFFFFE3B49AFFC96C
      36FFCC7542FFCC7542FFCC7542FFCF7341ED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D47B47EDD37B47FFD37B47FFD37B
      47FFD37A46FFCD6C32FFFFFFFFFFDD9D77FFDC9770FFFFFFFFFFCF7039FFD279
      45FFD37B47FFD37B47FFD37B47FFD47B47ED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9814CEDD6804AFFD7804BFFD780
      4BFFD7804BFFD4773FFFEBC2A8FFF9F1EAFFF9EDE5FFEDC9B3FFD3763DFFD780
      4BFFD7804BFFD7804BFFD6804AFFD9814CED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DD8651EDDA834EFFDB844FFFDB84
      4FFFDB844FFFDA824CFFD97F47FFFFFFFFFFFFFFFFFFDA8049FFDA814CFFDB84
      4FFFDB844FFFDB844FFFDA834EFFDD8651ED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E08B55EDDD8751FFDD8851FFDD88
      51FFDD8851FFDD8851FFDB8249FFE7AA85FFE7AA83FFDB8149FFDD8851FFDD88
      51FFDD8851FFDD8851FFDD8751FFE08B55ED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E48F5AEDE18B55FFE28C56FFE28C
      56FFE28C56FFE28C56FFE28C56FFE0874FFFE0874FFFE28C56FFE28C56FFE28C
      56FFE28C56FFE28C56FFE18B55FFE48F5AED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6935EEDE48E58FFE58F59FFE58F
      59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F
      59FFE58F59FFE58F59FFE48E58FFE6935EED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E99762EFE8915BFFE8925CFFE892
      5CFFE8925CFFE8925CFFE8925CFFE8925CFFE8925CFFE8925CFFE8925CFFE892
      5CFFE8925CFFE8925CFFE8915BFFE99662EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EB9B66E0E9945CFFEA955EFFEA95
      5EFFEA955EFFEA955EFFEA955EFFEA955EFFEA955EFFEA955EFFEA955EFFEA95
      5EFFEA955EFFEA955EFFE9945CFFEB9B67E00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAAF7F74EB935AFFEC955EFFEC96
      5EFFEC965EFFEC965EFFEC965EFFEC965EFFEC965EFFEC965EFFEC965EFFEC96
      5EFFEC965EFFEC965EFFEB935AFFF8AD7C740000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBB18274EEA06DE0EE9E
      6BEFEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E
      6BEDEE9E6BEFEE9F6DE0F9B08174000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066333300663333006633
      330066333300663333006633330066333300663333006633330066333300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      600080606000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000808080008080800080808000808080008080800080808000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      00000000000000000000000000000000000000000000F8F8F800DDDDDD00D7D7
      D700D7D7D700CCCCCC00CCCCCC00C0C0C000CCCC9900CCCC990066333300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C000806060008060600080606000000000000000000080808000C0C0
      C00000000000000000000000000000000000C0C0C000C0C0C000C0C0C0008080
      8000808080000000000000000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F0000000000000000000000000000000000000000FFFFFF00CCCC9900CCCC
      9900CC9999000000000066333300663333006633330066333300663333006633
      3300663333006633330066333300663333000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF00000000000000000080808000C0C0
      C0000000000080808000C0C0C000000000000000000000000000000000000000
      000080808000C0C0C00000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A00000000000000000000000000000000FFFFFF00FFFFFF00F8F8
      F800F1F1F10000000000F8F8F800DDDDDD00D7D7D700D7D7D700CCCCCC00CCCC
      CC00C0C0C000CCCC9900CCCC99006633330080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      000000000000000000008060600080808000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C00000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D0000000000000000B2B2B200FFFFFF00CCCCCC00CBCB
      CB00C0C0C00000000000FFFFFF00CCCC9900CCCC9900CC999900FFECCC00CC99
      6600CC996600CC996600CCCC99006633330080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A000406060008080800080808000000000000000000080808000C0C0
      C0000000000080808000808080008080800080808000C0C0C000000000000000
      000080808000C0C0C00000000000000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D0000000000000000CC999900FFFFFF00000000006633
      33006633330000000000FFFFFF00FFFFFF00F8F8F800F1F1F100F1F1F100FFEC
      CC00FFECCC00FFECCC00C0C0C0006633330080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A00080606000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C00000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C0000000000000000CCCC9900FFFFFF0000000000F8F8
      F800DDDDDD00B2B2B200FFFFFF00CCCCCC00CBCBCB00C0C0C000F8F8F800CC99
      9900CC999900CC999900CCCCCC0066333300000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C00080606000000000000000000080808000C0C0
      C0000000000080808000808080008080800080808000C0C0C000000000000000
      000080808000C0C0C000000000000000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D66990000000000000000CCCC9900FFFFFF0000000000FFFF
      FF00CCCC9900CC999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      F800F1F1F100F1F1F100D7D7D700663333000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C0008060600000000000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000000000000000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A0000000000000000FF999900FF99990000000000FFFF
      FF00FFFFFF00CCCC9900FFFFFF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00CC99
      9900CC999900CC999900DDDDDD00663333000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      800080606000806060000000000000000000000000000000000080808000C0C0
      C00000000000808080008080800080808000C0C0C00000000000000000000000
      000080808000C0C0C000000000000000000000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB00000000000000000000000000000000FF999900F0CAA600B2B2B200FFFF
      FF00CCCCCC00CCCC9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8F800663333000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C00000000000000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E700000000000000000000000000000000FF999900FF999900CC999900FFFF
      FF00FFFFFF00FF999900FF999900FF996600FF996600CC996600CC996600CC99
      6600CC993300CC663300CC663300CC663300000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000000000000000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA00000000000000000000000000000000FFFFFF00FFFFFF00CCCC9900FFFF
      FF00CCCCCC00FF999900F0CAA600FFCC9900FFCC9900FFCC9900FF999900FF99
      6600FF996600FF996600FF996600CC663300000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000808080000000000080808000000000008080800000000000808080000000
      000080808000C0C0C0000000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB00000000000000000000000000000000FFFFFF00FFFFFF00CCCC9900FFFF
      FF00FFFFFF00FF999900FF999900FF999900FF996600CC996600CC996600CC99
      6600CC996600CC663300CC663300CC6633000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      80008080800000808000C0C0C00080808000C0C0C00080808000C0C0C0008080
      8000C0C0C0000000000000000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E900000000000000000000000000000000FFFFFF00FFFFFF00FF999900FF99
      9900FF996600FF996600CC996600CC996600CC996600CC993300CC663300CC66
      3300CC663300FFFFFF00FFFFFF00FFFFFF000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000FFFF00008080000080800000FFFF008080800000FFFF00808080008080
      8000C0C0C000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E600000000000000000000000000000000FFFFFF00FFFFFF00FF999900F0CA
      A600FFCC9900FFCC9900FFCC9900FF999900FF996600FF996600FF996600FF99
      6600CC663300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC200000000000000000000000000000000FFFFFF00FFFFFF00FF999900FF99
      9900FF999900FF996600CC996600CC996600CC996600CC996600CC663300CC66
      3300CC663300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      00009933000000000000993300009933000099330000CC996600000000009933
      0000000000009933000000000000000000000000000000000000000000000000
      00000000000084840000FFFF0000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000993300000000000000000000993300000000000099330000000000009933
      0000000000009933000000000000000000000000000000000000000000008484
      0000FFFF0000FFFF0000FFFF0000848400008484000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000099330000CC99
      6600993300000000000000000000000000000000000099330000000000009933
      0000CC9966009933000000000000000000008484000084840000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00C6C6C6008484000084840000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000CC996600993300009933
      000099330000CC99660000000000000000000000000099330000CC9966009933
      00009933000099330000CC9966000000000084840000FFFF0000FFFF0000FFFF
      0000FFFFFF00FFFFFF00C6C6C600FFFF0000C6C6C60084840000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000099330000993300009933
      0000993300009933000000000000000000000000000000000000993300009933
      00009933000099330000993300000000000084840000FFFF0000FFFFFF00FFFF
      FF00C6C6C6008484000084840000C6C6C600FFFF0000C6C6C600848400000000
      0000FFFF0000C6C6C60084840000000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000099330000993300009933
      0000993300009933000000000000000000000000000000000000993300009933
      0000993300009933000099330000000000000000000084840000FFFF0000C6C6
      C60084840000C6C6C6008484000084840000C6C6C600FFFF0000C6C6C6000000
      0000FFFFFF00FFFF000084840000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000099330000993300009933
      0000993300009933000000000000000000000000000000000000993300009933
      000099330000993300009933000000000000000000000000000084840000FFFF
      0000C6C6C60084840000C6C6C60084840000C6C6C600FFFF0000C6C6C600C6C6
      C600FFFF0000C6C6C60084840000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000993300009933
      0000993300000000000099330000000000000000000000000000000000009933
      0000993300009933000000000000000000000000000000000000000000008484
      0000FFFF0000C6C6C600C6C6C600FFFF0000FFFF0000FFFFFF00000000000000
      0000C6C6C600FFFF0000C6C6C600848400000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      000084840000FFFFFF00FFFF0000FFFFFF00000000008484840000000000FFFF
      FF0000FF000000FF000084840000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9966009933
      0000CC996600000000009933000000000000000000000000000000000000CC99
      660099330000CC99660000000000000000000000000000000000848400000000
      00008484000000000000C6C6C600000000008484840084848400FFFF0000FFFF
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300000000000099330000000000009933000000000000000000009933
      000099330000993300000000000000000000000000000000000084840000C6C6
      C600FFFF0000848484008484840000000000FFFF0000FFFF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9966009933
      0000CC99660000000000CC99660099330000993300009933000000000000CC99
      660099330000CC99660000000000000000000000000000000000000000008484
      0000C6C6C600FFFF0000FFFFFF00FFFF0000C6C6C6008484000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000084840000848400008484000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200222222008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200A79A42002222220080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000B5A091FF755E49FF6E5740FF674F
      38FF624A32FF604830FF604830FF604830FF604830FF604830FF604830FF6048
      30FF604830FF604830FF604830FF604830FF0000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200A79A42008080000022222200808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000000000000000
      000000000000000000000000000000000000B7A293FFEDDDD3FFECDACFFFE5CC
      BCFFE1C4B2FFDEBDA8FFDEBDA8FFDEBDA8FFDDBCA7FFDBB9A1FFDAB8A2FFDCB6
      9EFFDEB297FFE1AE91FFE2AF8FFF604830FF00000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8000000000000000000000000000000000002222220022222200222222002222
      2200A79A42008080000080800000222222008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000B9A596FFFCF2EDFFADB5C4FF0D5A
      C1FF1353A9FF044197FF25508BFFAAA3A4FFF9E2D3FFF6DCCAFFF4D6C3FFF4D6
      C3FFF4D6C3FFF4D6C3FFDFB295FF604830FF0000000000000000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      8000000080000000000000000000000000000000000066333300663333006633
      3300663333006633330066333300663333006633330066333300663333006633
      3300663333006633330080808000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000BCA899FFE7EAF0FF1B61C2FF69A5
      F6FF4284DEFF0346A1FF1564CDFF043F92FFF9E8DBFFDABAA9FFC59F8CFFC199
      86FFC09682FFBE937EFFDCB49CFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000800000008000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006633330080808000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      000000000000000000000000000000000000C0AC9DFFEEEFF4FF306EC3FF71A4
      E6FF1C5BB0FF2673D9FF0E51B6FF1854A7FFFBEFE6FFF8E1D2FFF8DFCFFFF7DC
      CBFFF5D9C7FFF4D7C4FFD8B8A3FF604830FF0000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000008000000080000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006633330080808000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      000000000000000000000000000000000000C3B0A1FFFEFAF8FFDADCDFFF3251
      8CFF999993FF818B9BFF2C5395FFD5D6D9FFFBF3EEFFE8D1C4FFC39E8BFFC199
      85FFBF9681FFBD937EFFD6BEA8FF604830FF0000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000080000000000000000000CC666600FFFFFF00FFFF
      FF00CC666600CC666600CC666600CC666600CC666600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006633330080808000000000000000000000000000000000000000
      0000000000000000000000800000008000000000000000800000000000000000
      000000000000000000000000000000000000C7B4A5FFFEFCFBFF656464FF2828
      27FFB6B5B4FF7A7C7EFF666768FFF9F9F8FFFDF9F6FFFBF1E9FFFAEEE5FFFAEA
      E0FFF9E8DCFFF8E3D5FFD4BFAEFF604830FF0000000000000000000000000000
      0000FFFFFF00FFFFFF008080800000000000000000000000000000000000C0C0
      C000C0C0C000FFFFFF00000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006633330080808000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000000000000000000000
      000000000000000000000000000000000000CAB7A9FFFAF9F8FF4C4C4CFF4848
      48FFE3E3E3FFC5C5C4FF7B7977FFDBDAD9FFFEF5F0FFFCC9A7FFFCB78BFFFAAD
      82FFF8A478FFF69D70FFD3C3B6FF604830FF0000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00000000000000000000000000CC666600FFFFFF00FFFF
      FF00CC666600CC666600CC666600CC666600CC666600FFFFFF00CC666600CC66
      6600FFFFFF006633330080808000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000CDBBADFFFFFEFEFF696969FF7475
      75FF989898FF969797FF7C7A79FFE1E0DFFFFFFCFBFFFEF9F6FFFEFAF8FFFDF8
      F5FFFCF4EFFFFCF4EEFFD1C4BFFF674F38FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC666600CC66
      6600FFFFFF006633330022222200000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      000000000000000000000000000000000000D0BEB0FFFFFFFFFFE0E0E0FF7575
      75FF848484FF757575FFC6C6C6FFFAFAFAFFFFFFFFFFFFFEFEFFFFFEFDFFFEFC
      FAFFFDF8F5FFFDF8F5FFCFC7C5FF725B45FF0000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006633330080800000222222000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000008000000000
      000000000000000000000000000000000000D2C0B2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
      FEFFFEFBFAFFFDFBFAFFFEFCFAFF7D6652FF0000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC66660080800000808000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      000000000000000000000000000000000000D2C0B2FFD2C0B2FFD1BEB0FFCFBC
      AEFFCCBAABFFCAB7A8FFC7B4A5FFC4B0A2FFC1AD9EFFBEAA9BFFBBA798FFB9A4
      95FFB7A293FFB5A091FFB5A091FFB5A091FF0000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A79A42008080
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200808000008080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A79A42000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01F4F4F414E6E6E62EEAEAEA26F9F9F90A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077777700777777007777
      7700777777007777770077777700777777005555550055555500555555005555
      5500808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01F5F5
      F512DBDBDB43CBCBCB73B7B7B785DBDBDB43FDFDFD0200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600666666008686860096969600868686008686
      8600555555006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02F4F4F413DCDC
      DC40B9B9B9817A8A7AB8159A15F47BD67BB7F6F6F60F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC999900F0CAA600F0CA
      A600F0CAA600CC9999008686860099999900F0CAA6009999CC00D7D7D700A4A0
      A000A4A0A0005F5F5F0066666600000000000000000063493500634935006349
      3500654B38006349350063493500634935006349350063493500634935006349
      350063493500634935006349350063493500FCFCFC04F1F1F117D9D9D946B9B9
      B9827A887AB8197D19F200B900FF07E307FBCBCBCB5FFBFBFB07000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000CC66660000000000FFECCC00FFEC
      CC00F0CAA600B2B2B200CCCC9900FFECCC00FFECCC00CCCCCC00FFECCC00F1F1
      F100D7D7D700CC9999004D4D4D0000000000BCA79800D7B79F00C49E8400B28B
      6F00DABAA300C9A88F00B48F7400D9B9A100C49F8400B28B7000D7B59D00C39E
      8300B28B6F00D1AA8F00BF987B0063493500EBEBEB22CFCFCF51B5B5B5897184
      71BE198619F200CB00FF0EFF0EFF47FF47FF49E649D7E9E9E928FDFDFD020000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF0000000000000000000000000000000000CC99660000000000FFECCC00FFEC
      CC00CCCC9900B2B2B200FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CA
      A600F1F1F100A4A0A0007777770086868600BEA89A00FEFEFE00FEFEFE00C099
      7C00FDFAF800FDF8F500C19B7D00FBF2EC00FBF0E900BF977900FAE9DD00FBEA
      E000C19C7F00F9DFCF00D4BDAE0063493500C5C5C561A6A6A6965A795ACD0F82
      0FF700D400FF99FF99FFAFE4AFBA46E446E92FFF2FFF96E396A3F6F6F610FEFE
      FE01000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000CC99660000000000F0CAA600FFCC
      9900A4A0A000F0CAA600EAEAEA00FFFFCC00FFFFCC00A4A0A000CCCC9900FFCC
      9900FFECCC00C0C0C000A4A0A00086868600C0AB9C00FEFEFE00FEFEFE00CEA5
      8800FEFCFC00FEFAF800CDA38500FDF4F000FBF1EA00CDA38500FBEAE000FAE8
      DD00CDA38500F9E1D100D3BCAF0063493500ACBAAC91427F42DB038903FD00CC
      00FF95FF95FFD1FBD1D0DAEFDA2B99CB99A100E900FF09FA09FAC8C8C865FAFA
      FA09000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      000000000000000000000000000000000000CC99660000000000F1F1F100F1F1
      F100A4A0A000C0C0C00066CCFF00F8F8F800FFFFCC0086868600393939005F5F
      5F00FFECCC006666CC009999990086868600C2AE9E00D4AF9500C19A7E00B28B
      6F00CDA38500BF977A00B28B6F00CDA38500BF977A00B28B6F00CDA38500BF97
      7900B28B6F00CDA38500BF977A0063493500AAD2AA9300A300FF00CB00FF61FF
      61FFBEFFBEFFBDE3BD4EF4FAF40CC9E9C93F49B349D700F900FF3BE33BDFE1E1
      E136FBFBFB060000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000CC99660000000000F0CAA600F0CA
      A600A4A0A000CCCCCC000000000000000000F8F8F800FFFFCC00808080009966
      6600FFECCC00B2B2B2008686860086868600C5AFA000FEFEFE00FEFEFE00BF97
      7900FEFEFE00FEFEFE00BF977900FDFAF800FDF7F400BF977900FDF7F400FDF4
      F000BF977900FAE6DB00D4C1B50063493500EDF7ED15CAE4CA7428DB28EA66FF
      66FFE0FCE0A000000000FEFEFE01E9F6E9199DD69D7415C215F400FE00FF69D7
      69C3EAEAEA26FCFCFC0500000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000CC99660000000000F1F1F100F1F1
      F100CBCBCB00A4A0A000DDDDDD00000000000000000000000000FFFFCC007777
      7700CC999900868686008080800000000000C7B1A200FEFEFE00FEFEFE00CDA3
      8500FEFEFE00FEFEFE00CDA38500FEFCFC00FDFAF800CDA38500FEFCFC00FDF7
      F400CDA38500FAEAE000D4C4BA0063493500FEFEFE01F5FBF50BCEEACE3AB9FC
      B99ED7EED72F0000000000000000FBFDFB04DDF1DD288ABE8AAC00DD00FF00F8
      00FF84D384B1EBEBEB25FAFAFA08FEFEFE010000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000CC99990000000000FFECCC00FFEC
      CC00FFECCC00A4A0A000CBCBCB00DDDDDD00F8F8F80066CCFF00EAEAEA00FFEC
      CC0099999900868686000000000000000000C9B3A400D4AF9500C19A7E00B28B
      6F00CDA38500BF977A00B28B6F00CDA38500BF977A00B28B6F00CDA38500BF97
      7900B28B6F00CDA38500C0997C00634935000000000000000000000000000000
      000000000000000000000000000000000000F6FBF60ADCECDC3A4BB44BD600EC
      00FF00EF00FF8CCD8CABE6E6E62DF9F9F90A0000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF00000000000000
      000000000000000000000000000000000000CC99990000000000F1F1F100F1F1
      F100F1F1F100F1F1F100A4A0A000A4A0A000D7D7D700CBCBCB00A4A0A000B2B2
      B20086868600000000000000000000000000CBB5A500FEFEFE00FEFEFE00BF97
      7900FEFEFE00FEFEFE00BF977900FEFEFE00FEFEFE00BF977900FDFAF800FDF7
      F400BF977900FBF2EB00E0D8D200664D39000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01F3F9F313C6E0C66022BB
      22ED00F400FF01E801FE81D381B3E6E6E62D00000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000CC99990000000000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00CBCBCB00A4A0A000A4A0A000A4A0A0007777
      770000000000000000000000000000000000CCB6A700FEFEFE00FEFEFE00CDA3
      8500FEFEFE00FEFEFE00CDA38500FEFEFE00FEFEFE00CDA38500FEFCFB00FDFA
      F800CDA38500FDF4F000FBF1EC00634935000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFD03EFF6EF1AB2D6
      B2820DC60DF800FF00FF07FF07FF82F682B2000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000CC99990000000000000000000000
      000000000000F8F8F800F8F8F800F1F1F100FFECCC00F0CAA600FFCC99008686
      860000000000000000000000000000000000EAAA8B00EAAA8B00EAA88700E9A4
      8200E8A07D00E89C7700E6977000E5926900E48D6100E3885A00E2825200E07E
      4B00E0794500DF743F00DF723A00C96939000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFDFC04ECF5
      EC1FA6CFA69603DF03FDB3FFB3FFCCFACC9E000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000CC99990000000000000000000000
      00000000000000000000F8F8F800F8F8F800FFECCC00CC993300CC9933000000
      000000000000000000000000000000000000EAAA8B00FEEBE200FEEBE100FEEA
      E000FEE9DE00FEE8DD00FDE7DC00F9AF8800F9AB8300F3A77F00F3A77F00F4A3
      7D00F5A17900F6A37800F29E7100CD6A39000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FC04EDF5ED1EB1E4B18D6EFF6EFFF4FDF4610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC999900EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00E3E3E300E3E3E300E3E3E300E3E3E300CC993300000000000000
      000000000000000000000000000000000000EAAA8B00E9A78800E8A48300E6A0
      7E00E49C7800E2977200E0926B00DE8C6500DB875D00D9815700D77C5000D577
      4A00D3734400D16F3F00D06C3A00CF6937000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFC04F9FBF90AE7FDE75BE8E8E82A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC999900CC999900CC999900CC99
      9900CC999900CC999900CC999900CC999900CC99990000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0080010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008001000000000000F03FF03FE7FF8000E007E007E01F8000
      C000CF07E00F84008000C9F3E00784000000CFF3E00304000000C833E0432400
      0000CFF3E06320008000C833A0332000E001CFF39FF32000F003C8738C0F0000
      F01FCFF3840F0000E03FCFF3800F0000E03FC553C00F0000C03FC007C00F0000
      C07FE007E00F0000F8FFFFDFFFCF0000FFFFFFFFFFFFFFFFFC7FFFFFFEFFF8FF
      F83FFFFFD42BE03FF81FE007D6AB800FF007C007C7A30003F003C00783810001
      E003C00783C10000E003C00783C18000C003C00783C1C000C003C007C5E3E000
      C003C00FFDFFE001E003E07FC5E3C003F803E07FC563C000FC03FFFFC423E000
      FF83FFFFFF7FF073FFC3FFFFFFFFFFF3FE7FFFFFFFFFE0FFFE7FFFFFE01FE01F
      F81F0000C00FE001F00F000080070000F24F000000038001F20F000000018001
      FE0F000080008001FC0F0000C0008001F81F0000E0008001F03F0000F0008001
      F04F0000F8018001F24F0000F8018000F00F0000F8018000F81F0000F807FFC1
      FE7FFFFFF807FFE3FE7FFFFFFC7FFFF7FFFFE0FFFFFF8007FFFFC07FFFFB0003
      FFFF807FEFFF00018000003FC7F740010000001FC7EF40000000000FE3CF4000
      0000000FF19F400000000007F83F430000000403FC7F41C100000600F83F4003
      0000FF00F1BF40070000FF00C3CF400F0000FF8087E7780F0000FFC09FF37C1F
      0000FFE0FFFF003F0000FFF0FFFF007F00000000000000000000000000000000
      000000000000}
  end
end
