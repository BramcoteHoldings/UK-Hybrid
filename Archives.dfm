object frmArchive: TfrmArchive
  Left = 237
  Top = 103
  Width = 629
  Height = 544
  Caption = 'Archived Matter:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuMain
  OldCreateOrder = True
  Position = poDefaultPosOnly
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    621
    497)
  PixelsPerInch = 96
  TextHeight = 13
  object dblblController: TDBText
    Left = 424
    Top = 124
    Width = 66
    Height = 13
    AutoSize = True
    DataField = 'CONTROLLER'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblMatterNo: TLabel
    Left = 8
    Top = 40
    Width = 30
    Height = 13
    Caption = 'Matter'
  end
  object lblClient: TLabel
    Left = 8
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Client'
  end
  object lblPartner: TLabel
    Left = 376
    Top = 108
    Width = 34
    Height = 13
    Caption = 'Partner'
  end
  object lblAuthor: TLabel
    Left = 376
    Top = 140
    Width = 31
    Height = 13
    Caption = 'Author'
  end
  object lblPartnerName: TLabel
    Left = 456
    Top = 108
    Width = 3
    Height = 13
    ShowAccelChar = False
  end
  object lblType: TLabel
    Left = 376
    Top = 156
    Width = 24
    Height = 13
    Caption = 'Type'
  end
  object lblTypeDesc: TLabel
    Left = 456
    Top = 156
    Width = 3
    Height = 13
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 8
    Top = 112
    Width = 80
    Height = 13
    Caption = 'Long Description'
  end
  object lblClientPhone: TLabel
    Left = 280
    Top = 64
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblPartner: TDBText
    Left = 424
    Top = 108
    Width = 56
    Height = 13
    AutoSize = True
    DataField = 'PARTNER'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblAuthor: TDBText
    Left = 424
    Top = 140
    Width = 53
    Height = 13
    AutoSize = True
    DataField = 'AUTHOR'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblType: TDBText
    Left = 424
    Top = 156
    Width = 46
    Height = 13
    AutoSize = True
    DataField = 'TYPE'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblAuthorName: TLabel
    Left = 456
    Top = 140
    Width = 3
    Height = 13
    ShowAccelChar = False
  end
  object Label1: TLabel
    Left = 216
    Top = 40
    Width = 36
    Height = 13
    Caption = 'Archive'
  end
  object dblblArchive: TDBText
    Left = 256
    Top = 40
    Width = 58
    Height = 13
    AutoSize = True
    DataField = 'NARCHIVE'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 376
    Top = 40
    Width = 38
    Height = 13
    Caption = 'Opened'
  end
  object dblblOpened: TDBText
    Left = 424
    Top = 40
    Width = 60
    Height = 13
    AutoSize = True
    DataField = 'OPENED'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblArchived: TDBText
    Left = 424
    Top = 56
    Width = 64
    Height = 13
    AutoSize = True
    DataField = 'ARCHIVED'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 376
    Top = 56
    Width = 42
    Height = 13
    Caption = 'Archived'
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 81
    Height = 13
    Caption = 'Short Description'
  end
  object dblblFileID: TDBText
    Left = 104
    Top = 40
    Width = 49
    Height = 13
    AutoSize = True
    DataField = 'FILEID'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblClient: TDBText
    Left = 104
    Top = 64
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'TITLE'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblShortDescr: TDBText
    Left = 104
    Top = 88
    Width = 75
    Height = 13
    AutoSize = True
    DataField = 'SHORTDESCR'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblLongDescr: TDBText
    Left = 104
    Top = 112
    Width = 257
    Height = 57
    DataField = 'LONGDESCR'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label27: TLabel
    Left = 9
    Top = 178
    Width = 76
    Height = 13
    Caption = 'Ledger Cards'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 376
    Top = 124
    Width = 44
    Height = 13
    Caption = 'Controller'
  end
  object lblControllerName: TLabel
    Left = 456
    Top = 124
    Width = 3
    Height = 13
    ShowAccelChar = False
  end
  object Label7: TLabel
    Left = 375
    Top = 81
    Width = 35
    Height = 13
    Caption = 'Box No'
  end
  object dbtBoxNo: TDBText
    Left = 423
    Top = 81
    Width = 47
    Height = 13
    AutoSize = True
    DataField = 'BOXNO'
    DataSource = dsArchive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object pagLedgers: TPageControl
    Left = 632
    Top = 114
    Width = 387
    Height = 73
    ActivePage = tabLabel
    TabIndex = 0
    TabOrder = 2
    Visible = False
    object tabLabel: TTabSheet
      Caption = 'Label'
      object qrLabel: TQuickRep
        Left = -64
        Top = -22
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qryArchive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100
          2970
          100
          2100
          100
          100
          0)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = False
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object TitleBand4: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.2708333333333
            1899.70833333333)
          BandType = rbTitle
          object QRSysData13: TQRSysData
            Left = 0
            Top = 0
            Width = 113
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              0
              298.979166666667)
            Alignment = taLeftJustify
            AlignToBand = True
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Text = 'Printed '
            Transparent = False
            FontSize = 10
          end
          object QRLabel92: TQRLabel
            Left = 288
            Top = 0
            Width = 141
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              762
              0
              373.0625)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'Archived Matter Label'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand4: TQRBand
          Left = 38
          Top = 57
          Width = 718
          Height = 408
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            1079.5
            1899.70833333333)
          BandType = rbDetail
          object QRLabel93: TQRLabel
            Left = 0
            Top = 8
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              21.1666666666667
              89.9583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Client'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText62: TQRDBText
            Left = 64
            Top = 8
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              169.333333333333
              21.1666666666667
              89.9583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'TITLE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel94: TQRLabel
            Left = 336
            Top = 8
            Width = 22
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              21.1666666666667
              58.2083333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'File'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText63: TQRDBText
            Left = 400
            Top = 8
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1058.33333333333
              21.1666666666667
              111.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'FILEID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText64: TQRDBText
            Left = 64
            Top = 48
            Width = 289
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              87.3125
              169.333333333333
              127
              764.645833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'ADDRESS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText66: TQRDBText
            Left = 64
            Top = 80
            Width = 55
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              169.333333333333
              211.666666666667
              145.520833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'SUBURB'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText67: TQRDBText
            Left = 240
            Top = 80
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              635
              211.666666666667
              111.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'STATE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText68: TQRDBText
            Left = 288
            Top = 80
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              762
              211.666666666667
              193.145833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'POSTCODE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText69: TQRDBText
            Left = 64
            Top = 32
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              169.333333333333
              84.6666666666667
              103.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'NAME'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel95: TQRLabel
            Left = 0
            Top = 104
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              275.166666666667
              44.9791666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DX'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText70: TQRDBText
            Left = 64
            Top = 104
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              169.333333333333
              275.166666666667
              44.9791666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'DX'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText71: TQRDBText
            Left = 128
            Top = 104
            Width = 43
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              338.666666666667
              275.166666666667
              113.770833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'DXLOC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel96: TQRLabel
            Left = 408
            Top = 48
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1079.5
              127
              193.145833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Work Phone'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText76: TQRDBText
            Left = 496
            Top = 48
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1312.33333333333
              127
              232.833333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'WORKPHONE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText77: TQRDBText
            Left = 496
            Top = 72
            Width = 86
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1312.33333333333
              190.5
              227.541666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'HOMEPHONE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel97: TQRLabel
            Left = 408
            Top = 72
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1079.5
              190.5
              201.083333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Home Phone'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText78: TQRDBText
            Left = 496
            Top = 96
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1312.33333333333
              254
              66.1458333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'FAX'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel98: TQRLabel
            Left = 408
            Top = 96
            Width = 23
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1079.5
              254
              60.8541666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fax'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText79: TQRDBText
            Left = 80
            Top = 144
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              211.666666666667
              381
              164.041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'PARTNER'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel99: TQRLabel
            Left = 0
            Top = 144
            Width = 43
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              381
              113.770833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Partner'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText80: TQRDBText
            Left = 80
            Top = 168
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              211.666666666667
              444.5
              142.875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'AUTHOR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel100: TQRLabel
            Left = 0
            Top = 168
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              444.5
              103.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Author'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText81: TQRDBText
            Left = 576
            Top = 8
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1524
              21.1666666666667
              148.166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'OPENED'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel101: TQRLabel
            Left = 512
            Top = 8
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1354.66666666667
              21.1666666666667
              121.708333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Opened'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText82: TQRDBText
            Left = 80
            Top = 192
            Width = 35
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              211.666666666667
              508
              92.6041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'TYPE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel102: TQRLabel
            Left = 0
            Top = 192
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              508
              76.7291666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Type'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText83: TQRDBText
            Left = 80
            Top = 216
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              211.666666666667
              571.5
              238.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'SHORTDESCR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel103: TQRLabel
            Left = 0
            Top = 216
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              571.5
              174.625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Description'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText85: TQRDBText
            Left = 80
            Top = 240
            Width = 449
            Height = 57
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              150.8125
              211.666666666667
              635
              1187.97916666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'LONGDESCR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel104: TQRLabel
            Left = 0
            Top = 304
            Width = 35
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              804.333333333333
              92.6041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Notes'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText86: TQRDBText
            Left = 80
            Top = 304
            Width = 449
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.1458333333333
              211.666666666667
              804.333333333333
              1187.97916666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'NOTES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrlblLabelPartner: TQRLabel
            Left = 128
            Top = 144
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              338.666666666667
              381
              259.291666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrlblLabelPartner'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrlblLabelAuthor: TQRLabel
            Left = 128
            Top = 168
            Width = 94
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              338.666666666667
              444.5
              248.708333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrlblLabelAuthor'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrlblLabelType: TQRLabel
            Left = 128
            Top = 192
            Width = 84
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              338.666666666667
              508
              222.25)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrlblLabelType'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText43: TQRDBText
            Left = 576
            Top = 24
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1524
              63.5
              148.166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatterInsert
            DataField = 'OPENED'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel46: TQRLabel
            Left = 512
            Top = 24
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1354.66666666667
              63.5
              132.291666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Archived'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
  end
  object tbarToolbar: TToolBar
    Left = 0
    Top = 0
    Width = 621
    Height = 34
    BorderWidth = 2
    EdgeBorders = [ebTop, ebBottom]
    Flat = True
    Images = ilstToolbar
    TabOrder = 1
    object tbtnUnArchive: TToolButton
      Left = 0
      Top = 0
      Hint = 'UnArchive this file'
      Caption = 'tbtnUnArchive'
      ImageIndex = 0
      OnClick = tbtnUnArchiveClick
    end
    object tbBoxMgmt: TToolButton
      Left = 23
      Top = 0
      Hint = 'Archive Box Management'
      Caption = 'tbBoxMgmt'
      ImageIndex = 11
      OnClick = tbBoxMgmtClick
    end
    object tbtnPost: TToolButton
      Left = 46
      Top = 0
      Hint = 'Apply'
      Caption = 'tbtnPost'
      ImageIndex = 9
      Visible = False
      OnClick = tbtnPostClick
    end
    object tbtnCancel: TToolButton
      Left = 69
      Top = 0
      Hint = 'Cancel'
      Caption = 'tbtnCancel'
      ImageIndex = 10
      Visible = False
      OnClick = tbtnCancelClick
    end
    object ToolButton3: TToolButton
      Left = 92
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnFirst: TToolButton
      Left = 100
      Top = 0
      Hint = 'First'
      Caption = 'tbtnFirst'
      ImageIndex = 1
    end
    object tbtnPrev: TToolButton
      Left = 123
      Top = 0
      Hint = 'Previous'
      Caption = 'tbtnPrev'
      ImageIndex = 2
      OnClick = tbtnPrevClick
    end
    object tbtnNext: TToolButton
      Left = 146
      Top = 0
      Hint = 'Next'
      Caption = 'tbtnNext'
      ImageIndex = 3
      OnClick = tbtnNextClick
    end
    object tbtnLast: TToolButton
      Left = 169
      Top = 0
      Hint = 'Last'
      Caption = 'tbtnLast'
      ImageIndex = 4
    end
    object ToolButton1: TToolButton
      Left = 192
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnFind: TToolButton
      Left = 200
      Top = 0
      Hint = 'Find Matter'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnFindClick
    end
    object tbtnClient: TToolButton
      Left = 223
      Top = 0
      Hint = 'Open Client for this Archived Matter'
      Caption = 'tbtnClient'
      ImageIndex = 12
      OnClick = tbtnClientClick
    end
    object ToolButton5: TToolButton
      Left = 246
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnSnapshot: TToolButton
      Left = 254
      Top = 0
      Hint = 'Take Snapshot'
      Caption = 'SnapShot'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSnapshotClick
    end
    object ToolButton4: TToolButton
      Left = 277
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object tbtnPrint: TToolButton
      Left = 285
      Top = 0
      Caption = 'tbtnPrint'
      ImageIndex = 7
      OnClick = tbtnPrintClick
    end
    object ToolButton6: TToolButton
      Left = 308
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnHelp: TToolButton
      Left = 316
      Top = 0
      Hint = 'Help'
      Caption = 'Help'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
    end
  end
  object pageMatter: TPageControl
    Left = 8
    Top = 200
    Width = 609
    Height = 289
    ActivePage = tabInvoices
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabIndex = 0
    TabOrder = 0
    OnChange = pageMatterChange
    object tabInvoices: TTabSheet
      Caption = 'Bills'
      DesignSize = (
        601
        261)
      object dbgrInvoices: TDBGrid
        Left = 0
        Top = 1
        Width = 600
        Height = 224
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsInvoices
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DISPATCHED'
            Title.Caption = 'Dispatched'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFNO'
            Title.Caption = 'Bill'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENERATED'
            Title.Caption = 'Generated'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FEES'
            Title.Alignment = taRightJustify
            Title.Caption = 'Fees'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISB'
            Title.Alignment = taRightJustify
            Title.Caption = 'Disburse'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANTD'
            Title.Alignment = taRightJustify
            Title.Caption = 'Ant. Disb.'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUND'
            Title.Alignment = taRightJustify
            Title.Caption = 'Sundry'
            Width = 73
            Visible = True
          end>
      end
      object btnInvWord: TBitBtn
        Left = 525
        Top = 232
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Merge'
        TabOrder = 1
        OnClick = btnInvWordClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555500055555555555506600555555555550660E05555555550660EE00
          055555550660EE0EE0555550660EEE0EE0555550660E0EEEE055550660EE0EEE
          E055550000E00EE0E055550666060EE0E055555000000E00E055555550666060
          E055555555000000E05555555555506600555555555555000055}
      end
    end
    object tabGraph: TTabSheet
      Caption = 'Graphs'
      object dbchFeePie: TDBChart
        Left = 0
        Top = 0
        Width = 302
        Height = 260
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Fee Distribution')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        Legend.Alignment = laBottom
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 0
        object Series1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryFees
          SeriesColor = clRed
          Title = 'Fees'
          XLabelsSource = 'AUTHOR'
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1
          PieValues.Order = loNone
          PieValues.ValueSource = 'AMT'
        end
      end
      object dbchTime: TDBChart
        Left = 304
        Top = 0
        Width = 302
        Height = 260
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Time Distribution')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        Legend.Alignment = laBottom
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 1
        object PieSeries1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryTime
          SeriesColor = clRed
          Title = 'Fees'
          XLabelsSource = 'AUTHOR'
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1
          PieValues.Order = loNone
          PieValues.ValueSource = 'AMT'
        end
      end
    end
    object tabDiary: TTabSheet
      Caption = 'Diary'
      DesignSize = (
        601
        261)
      object dbgrDiary: TDBGrid
        Left = 8
        Top = 0
        Width = 601
        Height = 257
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsDiary
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'START_DT'
            Title.Caption = 'Date'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIME'
            Title.Caption = 'Time'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REMINDER_FOR'
            Title.Caption = 'For'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FullDesc'
            Title.Caption = 'Description'
            Width = 299
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIORITY'
            Title.Caption = 'Priority'
            Visible = True
          end>
      end
    end
    object tabDocs: TTabSheet
      Caption = 'Documents'
      DesignSize = (
        601
        261)
      object dbgrDocs: TDBGrid
        Left = 8
        Top = 8
        Width = 593
        Height = 249
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsDocs
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = dbgrDocsDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DOC_NAME'
            Title.Caption = 'Document'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_CREATE'
            Title.Caption = 'Created'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTH1'
            Title.Caption = 'By'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_MODIF'
            Title.Caption = 'Modified'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTH2'
            Title.Caption = 'By'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC1'
            Title.Caption = 'Description'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATH'
            Title.Caption = 'File Name'
            Width = 112
            Visible = True
          end>
      end
    end
    object tabMisc: TTabSheet
      Caption = 'Miscellaneous'
      ImageIndex = 4
      object dbmNotes: TDBMemo
        Left = 0
        Top = 41
        Width = 610
        Height = 220
        Align = alClient
        DataField = 'NOTES'
        DataSource = dsArchive
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 610
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label6: TLabel
          Left = 3
          Top = 4
          Width = 100
          Height = 13
          Caption = 'Archive Box Number:'
        end
        object Label8: TLabel
          Left = 3
          Top = 26
          Width = 31
          Height = 13
          Caption = 'Notes:'
        end
        object dbeBoxNo: TDBEdit
          Left = 112
          Top = 2
          Width = 121
          Height = 21
          DataField = 'BOXNO'
          DataSource = dsArchive
          TabOrder = 0
          OnKeyPress = dbeBoxNoKeyPress
        end
      end
    end
  end
  object btnDisbLedger: TBitBtn
    Left = 96
    Top = 176
    Width = 65
    Height = 20
    Caption = 'Disburse'
    TabOrder = 3
    OnClick = btnDisbLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object btnAntdLedger: TBitBtn
    Left = 168
    Top = 176
    Width = 65
    Height = 20
    Caption = 'AntDisb  '
    TabOrder = 4
    OnClick = btnAntdLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object btnSundLedger: TBitBtn
    Left = 240
    Top = 176
    Width = 65
    Height = 20
    Caption = 'Sundry   '
    TabOrder = 5
    OnClick = btnSundLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object btnDebtLedger: TBitBtn
    Left = 312
    Top = 176
    Width = 65
    Height = 20
    Caption = 'Debtors  '
    TabOrder = 6
    OnClick = btnDebtLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object btnFeeLedger: TBitBtn
    Left = 384
    Top = 176
    Width = 65
    Height = 20
    Caption = 'Fees      '
    TabOrder = 7
    OnClick = btnFeeLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object btnComboLedger: TBitBtn
    Left = 528
    Top = 176
    Width = 65
    Height = 20
    Caption = 'Combo   '
    TabOrder = 8
    OnClick = btnComboLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object btnTrustLedger: TBitBtn
    Left = 456
    Top = 176
    Width = 65
    Height = 20
    Caption = 'Trust      '
    TabOrder = 9
    OnClick = btnTrustLedgerClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888AAA88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
    object qryFees: TUniQuery
    SQL.Strings = (
            
              'SELECT AUTHOR, SUM(AMOUNT) AS AMT FROM FEE WHERE NMATTER = :P_Ma' +
              'tter GROUP BY AUTHOR')
    Left = 528
    Top = 40
  end
object ilstToolbar: TImageList
    Left = 624
    Top = 40
    Bitmap = {
      494C01010D000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000000000000000000000000000FFFF0000000000008484000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000084000000
      84000000FF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000008400000084000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000000000000000008400000084000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000008400000084000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000000000000000000000000000FFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084000000FF000000FF000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000FF0000000000000000000000FF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000000084000000
      84000000FF00000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000084840000FFFF000084840000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF00000000000000000000000084000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF000084840000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      00008484840084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840000000000848484008484840084848400848484000000
      00008484840084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000084848400FFFFFF00000000008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FE3F000000000000
      F81F000000000000F40F000000000000E0070000000000008003000000000000
      4001000000000000000000000000000000000000000000008001000000000000
      C003000000000000E00F000000000000F07F000000000000F8FF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFC01FFE7FFFFFFFFFC00F
      FC3FF9FFFFFFE007FC3FF0FF9FE7E003FE7FF0FF8FC7E003FC3FE07F8787E007
      FC3FC07FC30FE007FC3F843FE01FE007FC1F1E3FF03FE007F20FFE1FF87FE007
      E107FF1FF03FE007E187FF8FE01FC007E007FFC7C30FC007F00FFFE38787E007
      F81FFFF88FC7F803FFFFFFFFFFFFFC03FEFDFFFFFFFFFFFFFE7DFFFFFFFFC007
      FE3D07C1FFFF8003FE1D07C1FC3F0001FE0D07C180010001FE05010180010001
      FE01000180010000FE05020182010000FE0D020181018000FE1D80038001C000
      FE3DC1078001E001FE7DC1078001E007FEFDE38FC813F007FFFFE38FFC3FF003
      FFFFE38FFFFFF803FFFFFFFFFFFFFFFFFFFFBF7FFF7FFEFFFFFFBE7FFE7FFE7F
      FFFFBC7FFC7FFE3FFFFFB87FF87FFE1FC00FB07FF07FFE0F8007A07FE07FFE07
      8003807FC07FFE038001A07FE07FFE078001B07FF07FFE0F800FB87FF87FFE1F
      800FBC7FFC7FFE3F801FBE7FFE7FFE7FC0FFBF7FFF7FFEFFC0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
    object dsArchive: TUniDataSource
    DataSet = qryArchive
    Left = 496
    Top = 72
  end
  object qryTime: TUniQuery
    SQL.Strings = (
            
              'SELECT AUTHOR, SUM(UNITS) AS AMT FROM FEE WHERE NMATTER = :P_Mat' +
              'ter GROUP BY AUTHOR')
    Left = 592
    Top = 40
  end
  object qryDiary: TUniQuery
    SQL.Strings = (
            
              'SELECT * FROM DIARY WHERE FILEID = :P_FileID ORDER BY START_DT, ' +
              'DIARY."TIME"')
    OnCalcFields = qryDiaryCalcFields
    Left = 496
    Top = 104
    object qryDiaryFullDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullDesc'
      Size = 500
      Calculated = True
    end
    object qryDiaryNDIARY: TFloatField
      FieldName = 'NDIARY'
      Required = True
    end
    object qryDiarySTART_DT: TDateTimeField
      FieldName = 'START_DT'
    end
    object qryDiaryEND_DT: TDateTimeField
      FieldName = 'END_DT'
    end
    object qryDiaryREMINDER_FOR: TStringField
      FieldName = 'REMINDER_FOR'
      Size = 3
    end
    object qryDiaryTIME: TStringField
      FieldName = 'TIME'
      Size = 5
    end
    object qryDiaryENTERED_BY: TStringField
      FieldName = 'ENTERED_BY'
      Size = 3
    end
    object qryDiaryCREATION_DATE: TDateTimeField
      FieldName = 'CREATION_DATE'
    end
    object qryDiaryACKNOWLEDGED: TDateTimeField
      FieldName = 'ACKNOWLEDGED'
    end
    object qryDiaryACK_BY: TStringField
      FieldName = 'ACK_BY'
      Size = 3
    end
    object qryDiaryCEASE_DATE: TDateTimeField
      FieldName = 'CEASE_DATE'
    end
    object qryDiaryDESCR: TStringField
      FieldName = 'DESCR'
      Size = 500
    end
    object qryDiaryDELETE_DATE: TDateTimeField
      FieldName = 'DELETE_DATE'
    end
    object qryDiaryDEL_ORD_BY: TStringField
      FieldName = 'DEL_ORD_BY'
      Size = 3
    end
    object qryDiarySEARCH_KEY: TStringField
      FieldName = 'SEARCH_KEY'
      Size = 85
    end
    object qryDiaryPRIORITY: TStringField
      FieldName = 'PRIORITY'
      Size = 2
    end
    object qryDiaryFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryDiaryTASK: TStringField
      FieldName = 'TASK'
    end
    object qryDiaryTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
    object qryDiaryPARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 3
    end
    object qryDiaryLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 50
    end
    object qryDiaryJURISDICTION: TStringField
      FieldName = 'JURISDICTION'
      Size = 50
    end
    object qryDiaryEVENT: TStringField
      FieldName = 'EVENT'
    end
    object qryDiaryDATAFORMFIELD: TStringField
      FieldName = 'DATAFORMFIELD'
      Size = 32
    end
    object qryDiaryNOTIFY: TDateTimeField
      FieldName = 'NOTIFY'
    end
    object qryDiaryEVENTPRINTDESCR: TStringField
      FieldName = 'EVENTPRINTDESCR'
      Size = 1
    end
  end
  object dsDiary: TUniDataSource
    DataSet = qryDiary
    Left = 496
    Top = 136
  end
  object qryDocs: TUniQuery
    SQL.Strings = (
            'SELECT * FROM DOC WHERE FILEID = :P_FileID')
    Left = 528
    Top = 104
  end
  object dsDocs: TUniDataSource
    DataSet = qryDocs
    Left = 528
    Top = 136
  end
  object qryArchive: TUniQuery
    SQL.Strings = (
            'SELECT A.*, A.ROWID FROM ARCHIVE A WHERE A.FILEID = :P_File')
    AfterInsert = qryArchiveAfterEditInsert
    AfterEdit = qryArchiveAfterEditInsert
    AfterPost = qryArchiveAfterCancelPost
    AfterCancel = qryArchiveAfterCancelPost
    AfterScroll = qryArchiveAfterScroll
    Left = 496
    Top = 40
    object qryArchiveNARCHIVE: TFloatField
      FieldName = 'NARCHIVE'
      Required = True
    end
    object qryArchiveNMATTER: TFloatField
      FieldName = 'NMATTER'
    end
    object qryArchiveOPENED: TDateTimeField
      FieldName = 'OPENED'
    end
    object qryArchiveAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qryArchivePARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 3
    end
    object qryArchiveTYPE: TStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object qryArchiveRATE: TFloatField
      FieldName = 'RATE'
    end
    object qryArchiveTITLE: TStringField
      FieldName = 'TITLE'
      Size = 85
    end
    object qryArchiveFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryArchiveACCT: TStringField
      FieldName = 'ACCT'
      Size = 2
    end
    object qryArchiveTRUSTAUTH: TStringField
      FieldName = 'TRUSTAUTH'
      Size = 1
    end
    object qryArchivePARTY1: TStringField
      FieldName = 'PARTY1'
      Size = 85
    end
    object qryArchivePARTY2: TStringField
      FieldName = 'PARTY2'
      Size = 85
    end
    object qryArchivePARTY3: TStringField
      FieldName = 'PARTY3'
      Size = 85
    end
    object qryArchiveSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qryArchiveLONGDESCR: TStringField
      FieldName = 'LONGDESCR'
      Size = 400
    end
    object qryArchiveOFFICE: TStringField
      FieldName = 'OFFICE'
      Size = 3
    end
    object qryArchiveNCLIENT: TFloatField
      FieldName = 'NCLIENT'
    end
    object qryArchiveBILL_TO: TStringField
      FieldName = 'BILL_TO'
      Size = 85
    end
    object qryArchiveLASTTRANS: TDateTimeField
      FieldName = 'LASTTRANS'
    end
    object qryArchiveLASTTRUST: TDateTimeField
      FieldName = 'LASTTRUST'
    end
    object qryArchiveREFERREDBY: TStringField
      FieldName = 'REFERREDBY'
      Size = 85
    end
    object qryArchiveARCHIVED: TDateTimeField
      FieldName = 'ARCHIVED'
    end
    object qryArchiveNOTES: TStringField
      FieldName = 'NOTES'
      Size = 400
    end
    object qryArchiveLITIGATION: TStringField
      FieldName = 'LITIGATION'
      Size = 1
    end
    object qryArchiveSPECULATION: TStringField
      FieldName = 'SPECULATION'
      Size = 1
    end
    object qryArchiveAGENCY: TStringField
      FieldName = 'AGENCY'
      Size = 1
    end
    object qryArchiveGRATIS: TStringField
      FieldName = 'GRATIS'
      Size = 1
    end
    object qryArchiveBILLING_PLAN: TStringField
      FieldName = 'BILLING_PLAN'
      Size = 5
    end
    object qryArchiveCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 85
    end
    object qryArchiveOPREF: TStringField
      FieldName = 'OPREF'
    end
    object qryArchiveBILL_FEES: TFloatField
      FieldName = 'BILL_FEES'
    end
    object qryArchiveRECVD_FEES: TFloatField
      FieldName = 'RECVD_FEES'
    end
    object qryArchivePREV_NCMAUDIT: TFloatField
      FieldName = 'PREV_NCMAUDIT'
    end
    object qryArchivePREV_NTRAUDIT: TFloatField
      FieldName = 'PREV_NTRAUDIT'
    end
    object qryArchiveCONTROLLER: TStringField
      FieldName = 'CONTROLLER'
      Size = 3
    end
    object qryArchiveCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
    end
    object qryArchiveEXPECTED_VALUE: TFloatField
      FieldName = 'EXPECTED_VALUE'
    end
    object qryArchiveWORKFLOW: TStringField
      FieldName = 'WORKFLOW'
      Size = 11
    end
    object qryArchiveBOXNO: TStringField
      FieldName = 'BOXNO'
      Size = 35
    end
    object qryArchiveFEECODE: TStringField
      FieldName = 'FEECODE'
      Size = 5
    end
    object qryArchiveLABELCODE: TStringField
      FieldName = 'LABELCODE'
    end
    object qryArchiveBRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 3
    end
    object qryArchiveROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
object mnuMain: TMainMenu
    Left = 656
    Top = 40
    object mnuFile: TMenuItem
      AutoHotkeys = maManual
      Caption = '&File'
      object mnuFileUnArchive: TMenuItem
        Caption = '&UnArchive'
        OnClick = mnuFileUnArchiveClick
      end
      object mnuFileReopen: TMenuItem
        Caption = '&Reopen'
        Enabled = False
      end
      object mnuFileSnapshot: TMenuItem
        Caption = '&Snapshot'
        OnClick = mnuFileSnapshotClick
      end
      object mnuFileLine1: TMenuItem
        Caption = '-'
      end
      object mnuFilePrint: TMenuItem
        Caption = '&Print'
        object mnuFilePrintLabel: TMenuItem
          Caption = '&Label'
          OnClick = mnuFilePrintLabelClick
        end
        object mnuFilePrintDetails: TMenuItem
          Caption = '&Details'
        end
      end
      object mnuFileLedgers: TMenuItem
        Caption = '&Ledger'
        object mnuFileLedgerFees: TMenuItem
          Caption = '&Fees'
          OnClick = mnuFileLedgerFeesClick
        end
        object mnuFileLedgerSundry: TMenuItem
          Caption = '&Sundries'
          OnClick = mnuFileLedgerSundryClick
        end
        object mnuFileLedgerDisb: TMenuItem
          Caption = '&Disbursements'
          OnClick = mnuFileLedgerDisbClick
        end
        object mnuFileLedgerDebtors: TMenuItem
          Caption = 'De&btors'
          OnClick = mnuFileLedgerDebtorsClick
        end
        object mnuFileLedgerTrust: TMenuItem
          Caption = '&Trust'
          OnClick = mnuFileLedgerTrustClick
        end
        object mnuFileLedgerCombo: TMenuItem
          Caption = '&Combo'
          OnClick = mnuFileLedgerComboClick
        end
      end
      object mnuFileLine2: TMenuItem
        Caption = '-'
      end
      object mnuFileExit: TMenuItem
        Caption = 'E&xit'
        OnClick = mnuFileExitClick
      end
    end
    object mnuSearch: TMenuItem
      Caption = '&Search'
      object mnuSearchFind: TMenuItem
        Caption = '&Find...'
        OnClick = mnuSearchFindClick
      end
      object mnuSearchLine1: TMenuItem
        Caption = '-'
      end
      object mnuSearchFirst: TMenuItem
        Caption = 'F&irst'
        OnClick = mnuSearchFirstClick
      end
      object mnuSearchPrev: TMenuItem
        Caption = '&Previous'
        OnClick = mnuSearchPrevClick
      end
      object mnuSearchNext: TMenuItem
        Caption = '&Next'
        OnClick = mnuSearchNextClick
      end
      object mnuSearchLast: TMenuItem
        Caption = '&Last'
        OnClick = mnuSearchLastClick
      end
    end
    object mnuHelp: TMenuItem
      Caption = '&Help'
      object mnuHelpContents: TMenuItem
        Caption = '&Contents'
      end
      object mnuHelpSearch: TMenuItem
        Caption = '&Search'
      end
    end
  end
    object qryInvoices: TUniQuery
    SQL.Strings = (
            
              'SELECT REFNO, DISPATCHED, NMEMO.NMEMO, GENERATED, FEES, DISB, AN' +
              'TD, SUND'
            'FROM NMEMO '
            'WHERE NMATTER  = :P_Matter '
            'ORDER BY DISPATCHED')
    OnCalcFields = qryInvoicesCalcFields
    Left = 560
    Top = 40
    object qryInvoicesREFNO: TStringField
      FieldName = 'REFNO'
    end
    object qryInvoicesDISPATCHED: TDateTimeField
      FieldName = 'DISPATCHED'
    end
    object qryInvoicesNMEMO: TFloatField
      FieldName = 'NMEMO'
      Required = True
    end
    object qryInvoicesGENERATED: TDateTimeField
      FieldName = 'GENERATED'
    end
    object qryInvoicesFEES: TFloatField
      FieldName = 'FEES'
    end
    object qryInvoicesDISB: TFloatField
      FieldName = 'DISB'
    end
    object qryInvoicesANTD: TFloatField
      FieldName = 'ANTD'
    end
    object qryInvoicesSUND: TFloatField
      FieldName = 'SUND'
    end
  end
  object dsInvoices: TUniDataSource
    DataSet = qryInvoices
    Left = 560
    Top = 72
  end
  object qryMatterInsert: TUniQuery
    SQL.Strings = (
            'INSERT INTO MATTER'
            
              '    (NARCHIVE, NMATTER, OPENED, AUTHOR, CONTROLLER, PARTNER, TYP' +
              'E, RATE,'
            '    TITLE, FILEID, ACCT, TRUSTAUTH, PARTY1, PARTY2, PARTY3,'
            '    SHORTDESCR, LONGDESCR, OFFICE, NCLIENT, BILL_TO,'
            '    LASTTRANS, LASTTRUST, REFERREDBY, ARCHIVED, NOTES,'
            '    LITIGATION, SPECULATION, AGENCY, GRATIS, BILLING_PLAN,'
            
              '    CONTACT, OPREF, BILL_FEES, RECVD_FEES, PREV_NCMAUDIT, PREV_N' +
              'TRAUDIT,'
            '    FEECODE, LABELCODE, MODBY,ENTITY)'
            'VALUES'
            
              '    (:NARCHIVE, :NMATTER, :OPENED, :AUTHOR, :CONTROLLER, :PARTNE' +
              'R, :TYPE, :RATE,'
            
              '    :TITLE, :FILEID, :ACCT, :TRUSTAUTH, :PARTY1, :PARTY2, :PARTY' +
              '3,'
            '    :SHORTDESCR, :LONGDESCR, :OFFICE, :NCLIENT, :BILL_TO,'
            '    :LASTTRANS, :LASTTRUST, :REFERREDBY, :ARCHIVED, :NOTES,'
            '    :LITIGATION, :SPECULATION, :AGENCY, :GRATIS, :BILLING_PLAN,'
            '    :CONTACT, :OPREF, :BILL_FEES, :RECVD_FEES, '
            
              '    :PREV_NCMAUDIT, :PREV_NTRAUDIT, :FEECODE, :LABELCODE, :MODBY' +
              ', :ENTITY)'
            '')
    Left = 560
    Top = 104
  end
  object qryTmpSQL: TUniQuery
    SQL.Strings = (
            'INSERT INTO MATTER'
            '    (NARCHIVE, NMATTER, OPENED, AUTHOR, PARTNER, TYPE, RATE,'
            '    TITLE, FILEID, ACCT, TRUSTAUTH, PARTY1, PARTY2, PARTY3,'
            '    SHORTDESCR, LONGDESCR, OFFICE, NCLIENT, BILL_TO,'
            '    LASTTRANS, LASTTRUST, REFERREDBY, ARCHIVED, NOTES,'
            '    LITIGATION, SPECULATION, AGENCY, GRATIS, BILLING_PLAN,'
            
              '    CONTACT, OPREF, BILL_FEES, RECVD_FEES, PREV_NCMAUDIT, PREV_N' +
              'TRAUDIT)'
            'VALUES'
            
              '    (:NARCHIVE, :NMATTER, :OPENED, :AUTHOR, :PARTNER, :TYPE, :RA' +
              'TE,'
            
              '    :TITLE, :FILEID, :ACCT, :TRUSTAUTH, :PARTY1, :PARTY2, :PARTY' +
              '3,'
            '    :SHORTDESCR, :LONGDESCR, :OFFICE, :NCLIENT, :BILL_TO,'
            '    :LASTTRANS, :LASTTRUST, :REFERREDBY, :ARCHIVED, :NOTES,'
            '    :LITIGATION, :SPECULATION, :AGENCY, :GRATIS, :BILLING_PLAN,'
            
              '    :CONTACT, :OPREF, :BILL_FEES, :RECVD_FEES, :PREV_NCMAUDIT, :' +
              'PREV_NTRAUDIT)'
            '')
    Left = 592
    Top = 104
  end
end
