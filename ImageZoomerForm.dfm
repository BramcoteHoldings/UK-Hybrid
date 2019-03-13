object frm_ImageZoomer: Tfrm_ImageZoomer
  Left = 363
  Top = 240
  Width = 800
  Height = 542
  BorderWidth = 5
  Caption = 'HTMLEdit Image Zoomer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_Close: TButton
    Left = 705
    Top = 473
    Width = 76
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 471
    ActivePage = ts_Zoomer
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object ts_Zoomer: TTabSheet
      BorderWidth = 5
      Caption = 'Zoomer'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 433
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 762
          Height = 431
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 0
          object HtmlEdit: TpsHTMLEdit
            Left = 1
            Top = 1
            Width = 760
            Height = 429
            VertScrollBar.Range = 426
            VertScrollBar.Tracking = True
            Align = alClient
            ReadOnly = True
            ShowDocumentFrame = True
            DefaultStyleSheet.Strings = (
              'BODY'
              '{'
              '  background-color: #BFE8FF;'
              '}'
              ''
              '.gray_border_box'
              '{'
              '  background-color: #f5f5f5;'
              '  border: 1px;'
              '  border-style: solid;'
              '  border-color: black;'
              '  padding: 10px;'
              '  margin-bottom: 10px;'
              '}'
              ''
              '.heading1'
              '{'
              '  padding-bottom: 0px;'
              '  font-family: MS Sans Serif;'
              '  font-size: 20pt;'
              '  font-weight: normal;'
              '  text-align: left;'
              '}')
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
            CodeGenerator.EditingPositionComment = '<!-- EDITING POSITION -->'
            SmartTags.Enabled = False
            Version = '3.0.0.67'
            OnRequestImage = HtmlEditRequestImage
            OnImageClicked = HtmlEditImageClicked
          end
        end
      end
    end
    object ts_Source: TTabSheet
      BorderWidth = 5
      Caption = 'Source'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 764
        Height = 433
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 762
          Height = 431
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 0
          object re_Source: TRichEdit
            Left = 1
            Top = 1
            Width = 760
            Height = 429
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
  end
end
