object frmRptMatterDetails: TfrmRptMatterDetails
  Left = 261
  Top = 159
  Width = 696
  Height = 480
  Caption = 'Matter Details Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object pagLedgers: TPageControl
    Left = 0
    Top = 0
    Width = 893
    Height = 577
    ActivePage = tabRptDetails
    TabIndex = 0
    TabOrder = 0
    Visible = False
    object tabRptDetails: TTabSheet
      Caption = 'Details'
      object qrDetails: TQuickRep
        Left = -28
        Top = -22
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        BeforePrint = qrDetailsBeforePrint
        DataSet = qryDetails
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
        object QRBand8: TQRBand
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
          object QRSysData14: TQRSysData
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
          object QRLabel47: TQRLabel
            Left = 311
            Top = 0
            Width = 95
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              822.854166666667
              0
              251.354166666667)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = False
            AutoStretch = False
            Caption = 'Matter Details'
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
        object QRBand9: TQRBand
          Left = 38
          Top = 57
          Width = 718
          Height = 536
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
            1418.16666666667
            1899.70833333333)
          BandType = rbDetail
          object QRLabel105: TQRLabel
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
          object QRDBText43: TQRDBText
            Left = 88
            Top = 22
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              58.2083333333333
              89.9583333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'TITLE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel106: TQRLabel
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
          object QRDBText44: TQRDBText
            Left = 416
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
              1100.66666666667
              21.1666666666667
              111.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
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
          object QRDBText90: TQRDBText
            Left = 88
            Top = 54
            Width = 241
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              87.3125
              232.833333333333
              142.875
              637.645833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'ADDRESS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText92: TQRDBText
            Left = 88
            Top = 86
            Width = 55
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              227.541666666667
              145.520833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'SUBURB'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText93: TQRDBText
            Left = 216
            Top = 86
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              571.5
              227.541666666667
              111.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'STATE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText94: TQRDBText
            Left = 256
            Top = 86
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              677.333333333333
              227.541666666667
              193.145833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'POSTCODE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText95: TQRDBText
            Left = 88
            Top = 38
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              100.541666666667
              198.4375)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'LONGNAME'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel107: TQRLabel
            Left = 0
            Top = 110
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
              291.041666666667
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
          object QRDBText96: TQRDBText
            Left = 88
            Top = 110
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              291.041666666667
              44.9791666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'DX'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText97: TQRDBText
            Left = 152
            Top = 110
            Width = 43
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              402.166666666667
              291.041666666667
              113.770833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'DXLOC'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel108: TQRLabel
            Left = 0
            Top = 134
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              354.541666666667
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
          object QRDBText98: TQRDBText
            Left = 88
            Top = 133
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              351.895833333333
              232.833333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'WORKPHONE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText99: TQRDBText
            Left = 88
            Top = 150
            Width = 86
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              396.875
              227.541666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'HOMEPHONE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel109: TQRLabel
            Left = 0
            Top = 150
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              396.875
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
          object QRDBText100: TQRDBText
            Left = 88
            Top = 166
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              439.208333333333
              66.1458333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'FAX'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel110: TQRLabel
            Left = 0
            Top = 166
            Width = 23
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              439.208333333333
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
          object QRDBText101: TQRDBText
            Left = 416
            Top = 32
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1100.66666666667
              84.6666666666667
              164.041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'PARTNER'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel111: TQRLabel
            Left = 336
            Top = 32
            Width = 43
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              84.6666666666667
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
          object QRDBText102: TQRDBText
            Left = 416
            Top = 64
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1100.66666666667
              169.333333333333
              142.875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'AUTHOR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel112: TQRLabel
            Left = 336
            Top = 64
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              169.333333333333
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
          object QRDBText103: TQRDBText
            Left = 552
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
              1460.5
              21.1666666666667
              148.166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'OPENED'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel113: TQRLabel
            Left = 488
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
              1291.16666666667
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
          object QRDBText104: TQRDBText
            Left = 416
            Top = 88
            Width = 35
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1100.66666666667
              232.833333333333
              92.6041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'TYPE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel114: TQRLabel
            Left = 336
            Top = 88
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              232.833333333333
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
          object QRDBText105: TQRDBText
            Left = 416
            Top = 136
            Width = 297
            Height = 57
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              150.8125
              1100.66666666667
              359.833333333333
              785.8125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'LONGDESCR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel115: TQRLabel
            Left = 336
            Top = 136
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              359.833333333333
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
          object QRLabel116: TQRLabel
            Left = 336
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
              889
              508
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
          object QRDBText108: TQRDBText
            Left = 416
            Top = 192
            Width = 297
            Height = 81
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              214.3125
              1100.66666666667
              508
              785.8125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'NOTES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrlblLabelPartner: TQRLabel
            Left = 488
            Top = 32
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1291.16666666667
              84.6666666666667
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
            Left = 488
            Top = 64
            Width = 94
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1291.16666666667
              169.333333333333
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
            Left = 488
            Top = 88
            Width = 84
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1291.16666666667
              232.833333333333
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
          object QRLabel120: TQRLabel
            Left = 0
            Top = 312
            Width = 102
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              825.5
              269.875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Work In Progress'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText112: TQRDBText
            Left = 160
            Top = 312
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              825.5
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'UNBILL_FEES'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText115: TQRDBText
            Left = 160
            Top = 328
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              867.833333333333
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'BILL_FEES'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel121: TQRLabel
            Left = 0
            Top = 328
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
              867.833333333334
              174.625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fees Billed'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText117: TQRDBText
            Left = 160
            Top = 344
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              910.166666666667
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'UNBILL_DISB'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel122: TQRLabel
            Left = 0
            Top = 344
            Width = 138
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              910.166666666667
              365.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Unbilled Disbursements'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText119: TQRDBText
            Left = 160
            Top = 376
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              994.833333333333
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'UNBILL_SUND'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel123: TQRLabel
            Left = 0
            Top = 376
            Width = 102
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              994.833333333333
              269.875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Unbilled Sundries'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText121: TQRDBText
            Left = 160
            Top = 392
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              1037.16666666667
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'DEBTORS'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel124: TQRLabel
            Left = 0
            Top = 392
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              1037.16666666667
              121.708333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Debtors'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel125: TQRLabel
            Left = 206
            Top = 232
            Width = 59
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              545.041666666667
              613.833333333333
              156.104166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Balances'
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
          object QRDBText123: TQRDBText
            Left = 160
            Top = 360
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              952.5
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'UNBILL_ANTD'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel126: TQRLabel
            Left = 0
            Top = 360
            Width = 157
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              952.5
              415.395833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Anticipated Disbursements'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText125: TQRDBText
            Left = 160
            Top = 264
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              698.5
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'TRUST_BAL'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel127: TQRLabel
            Left = 0
            Top = 264
            Width = 112
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              698.5
              296.333333333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Trust Moneys'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText127: TQRDBText
            Left = 160
            Top = 280
            Width = 129
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              423.333333333333
              740.833333333333
              341.3125)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'CL_TRUST_BAL'
            Mask = '$#,##0.00 CR;$#,##0.00 DR; '
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel128: TQRLabel
            Left = 0
            Top = 280
            Width = 128
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              0
              740.833333333333
              338.666666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cleared Trust Moneys'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel1: TQRLabel
            Left = 336
            Top = 112
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              296.333333333333
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
          object QRDBText1: TQRDBText
            Left = 416
            Top = 112
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1100.66666666667
              296.333333333333
              238.125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'SHORTDESCR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 336
            Top = 48
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              889
              127
              148.166666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Controller'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 416
            Top = 48
            Width = 87
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1100.66666666667
              127
              230.1875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'CONTROLLER'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrlblLabelController: TQRLabel
            Left = 488
            Top = 48
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              1291.16666666667
              127
              293.6875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrlblLabelController'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 88
            Top = 8
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.9791666666667
              232.833333333333
              21.1666666666667
              150.8125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryDetails
            DataField = 'CLIENTID'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
  end
    object qryDetails: TUniQuery
    SQL.Strings = (
            'SELECT M.OPENED, M.PARTNER, M.CONTROLLER, M.AUTHOR, M.TYPE, '
            '  M.FILEID, M.SHORTDESCR, M.LONGDESCR, M.NOTES,'
            
              '  M.TRUST_BAL, M.CL_TRUST_BAL, M.UNBILL_FEES, M.BILL_FEES, M.UNB' +
              'ILL_DISB,'
            '  M.UNBILL_ANTD, M.UNBILL_SUND, M.DEBTORS, M.CLIENTID,'
            
              '  M.TITLE, P.LONGNAME, P.ADDRESS, P.SUBURB, P.STATE, P.POSTCODE,' +
              ' P.DX, P.DXLOC,'
            '  P.WORKPHONE, P.HOMEPHONE, P.FAX'
            'FROM MATTER M, PHONEBOOK P'
            'WHERE M.NMATTER = :NMATTER'
            '  AND P.NCLIENT = M.NCLIENT(+)')
    Left = 160
    object qryDetailsOPENED: TDateTimeField
      FieldName = 'OPENED'
      Required = True
    end
    object qryDetailsPARTNER: TStringField
      FieldName = 'PARTNER'
      Required = True
      Size = 3
    end
    object qryDetailsCONTROLLER: TStringField
      FieldName = 'CONTROLLER'
      Required = True
      Size = 3
    end
    object qryDetailsAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Required = True
      Size = 3
    end
    object qryDetailsTYPE: TStringField
      FieldName = 'TYPE'
      Required = True
      Size = 5
    end
    object qryDetailsFILEID: TStringField
      FieldName = 'FILEID'
      Required = True
      Size = 12
    end
    object qryDetailsSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Required = True
      Size = 40
    end
    object qryDetailsLONGDESCR: TStringField
      FieldName = 'LONGDESCR'
      Required = True
      Size = 400
    end
    object qryDetailsNOTES: TStringField
      FieldName = 'NOTES'
      Size = 400
    end
    object qryDetailsTRUST_BAL: TFloatField
      FieldName = 'TRUST_BAL'
    end
    object qryDetailsCL_TRUST_BAL: TFloatField
      FieldName = 'CL_TRUST_BAL'
    end
    object qryDetailsUNBILL_FEES: TFloatField
      FieldName = 'UNBILL_FEES'
    end
    object qryDetailsBILL_FEES: TFloatField
      FieldName = 'BILL_FEES'
    end
    object qryDetailsUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
    end
    object qryDetailsUNBILL_ANTD: TFloatField
      FieldName = 'UNBILL_ANTD'
    end
    object qryDetailsUNBILL_SUND: TFloatField
      FieldName = 'UNBILL_SUND'
    end
    object qryDetailsDEBTORS: TFloatField
      FieldName = 'DEBTORS'
    end
    object qryDetailsTITLE: TStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object qryDetailsLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 150
    end
    object qryDetailsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 100
    end
    object qryDetailsSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 35
    end
    object qryDetailsSTATE: TStringField
      FieldName = 'STATE'
    end
    object qryDetailsPOSTCODE: TStringField
      FieldName = 'POSTCODE'
      Size = 10
    end
    object qryDetailsDX: TStringField
      FieldName = 'DX'
      Size = 6
    end
    object qryDetailsDXLOC: TStringField
      FieldName = 'DXLOC'
      Size = 50
    end
    object qryDetailsWORKPHONE: TStringField
      FieldName = 'WORKPHONE'
      Size = 15
    end
    object qryDetailsHOMEPHONE: TStringField
      FieldName = 'HOMEPHONE'
      Size = 15
    end
    object qryDetailsFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qryDetailsCLIENTID: TStringField
      FieldName = 'CLIENTID'
      Size = 35
    end
  end
end
