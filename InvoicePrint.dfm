object frmInvoicePrint: TfrmInvoicePrint
  Left = 667
  Top = 200
  Width = 1015
  Height = 659
  Caption = 'Invoice Print'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pagReports: TPageControl
    Left = 22
    Top = 13
    Width = 721
    Height = 575
    ActivePage = tabInvoicePrint
    TabOrder = 0
    Visible = False
    object tabInvoicePrint: TTabSheet
      Caption = 'tabInvoicePrint'
      object qrInvoice: TQuickRep
        Left = -45
        Top = -25
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qryItems
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
          127.000000000000000000
          2970.000000000000000000
          127.000000000000000000
          2100.000000000000000000
          127.000000000000000000
          127.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        ReportTitle = 'Bill Print'
        SnapToGrid = True
        Units = Inches
        Zoom = 100
        object DetailBand1: TQRBand
          Left = 48
          Top = 254
          Width = 698
          Height = 20
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
            52.916666666666670000
            1846.791666666667000000)
          BandType = rbDetail
          object QRDBText9: TQRDBText
            Left = 0
            Top = 1
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              2.645833333333333000
              174.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryItems
            DataField = 'CREATED'
            Mask = 'ddddd'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText10: TQRDBText
            Left = 80
            Top = 1
            Width = 59
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              211.666666666666700000
              2.645833333333333000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryItems
            DataField = 'AUTHOR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 144
            Top = 1
            Width = 393
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              381.000000000000000000
              2.645833333333330000
              1039.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = qryItems
            DataField = 'DESCR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 545
            Top = 1
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1441.979166666667000000
              2.645833333333333000
              158.750000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryItems
            DataField = 'AMOUNT'
            Mask = '$#,##0.00'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 671
            Top = 0
            Width = 27
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1775.354166666667000000
              0.000000000000000000
              71.437500000000000000)
            Alignment = taRightJustify
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryItems
            DataField = 'TAX'
            Mask = '$#,##0.00'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object TitleBand1: TQRBand
          Left = 48
          Top = 48
          Width = 698
          Height = 185
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = TitleBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            489.479166666666700000
            1846.791666666667000000)
          BandType = rbTitle
          object QRLabel1: TQRLabel
            Left = 459
            Top = 32
            Width = 22
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1214.437500000000000000
              84.666666666666670000
              58.208333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Bill:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText1: TQRDBText
            Left = 488
            Top = 32
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1291.166666666667000000
              84.666666666666670000
              127.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryInvoice
            DataField = 'REFNO'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 0
            Top = 56
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              148.166666666666700000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryPhonebook
            DataField = 'TITLE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 0
            Top = 72
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              190.500000000000000000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryPhonebook
            DataField = 'NAME'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 0
            Top = 88
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              232.833333333333300000
              177.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryPhonebook
            DataField = 'ADDRESS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 0
            Top = 104
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              275.166666666666700000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryPhonebook
            DataField = 'SSP'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 0
            Top = 144
            Width = 23
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              381.000000000000000000
              60.854166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'RE:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 40
            Top = 144
            Width = 585
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              105.833333333333000000
              381.000000000000000000
              1547.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = qryMatter
            DataField = 'LONGDESCR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 488
            Top = 56
            Width = 59
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1291.166666666667000000
              148.166666666666700000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatter
            DataField = 'AUTHOR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 439
            Top = 56
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1161.520833333333000000
              148.166666666666700000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Author:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 440
            Top = 8
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1164.166666666667000000
              21.166666666666670000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Matter:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText15: TQRDBText
            Left = 488
            Top = 8
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1291.166666666667000000
              21.166666666666670000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qryMatter
            DataField = 'FILEID'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object qrlblDate: TQRLabel
            Left = 0
            Top = 0
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              0.000000000000000000
              148.166666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrlblDate'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 0
            Top = 168
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              444.500000000000000000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Date'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 80
            Top = 168
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              211.666666666666700000
              444.500000000000000000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Auth/Type'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 144
            Top = 168
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              381.000000000000000000
              444.500000000000000000
              182.562500000000000000)
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
          object QRLabel9: TQRLabel
            Left = 558
            Top = 168
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1476.375000000000000000
              444.500000000000000000
              121.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Amount'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 674
            Top = 168
            Width = 24
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1783.291666666667000000
              444.500000000000000000
              63.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'Tax'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object qrghItems: TQRGroup
          Left = 48
          Top = 233
          Width = 698
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = qrghItemsBeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1846.791666666667000000)
          Expression = 'TYPE'
          FooterBand = qrgfType
          Master = qrInvoice
          ReprintOnNewPage = False
          object qrlblType: TQRLabel
            Left = 0
            Top = 2
            Width = 59
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              5.291666666666667000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'qrlblType'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object qrgfType: TQRBand
          Left = 48
          Top = 274
          Width = 698
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = qrgfTypeBeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1846.791666666667000000)
          BandType = rbGroupFooter
          object qrlblTypeFtr: TQRLabel
            Left = 40
            Top = 1
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              105.833333333333300000
              2.645833333333333000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr1: TQRExpr
            Left = 507
            Top = 1
            Width = 98
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1341.437500000000000000
              2.645833333333333000
              259.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(AMOUNT)'
            Mask = '$#,##0.00'
            FontSize = 10
          end
          object QRExpr4: TQRExpr
            Left = 633
            Top = 0
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1674.812500000000000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(TAX)'
            Mask = '$#,##0.00'
            FontSize = 10
          end
        end
        object SummaryBand1: TQRBand
          Left = 48
          Top = 294
          Width = 698
          Height = 21
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
            55.562500000000000000
            1846.791666666667000000)
          BandType = rbSummary
          object QRLabel3: TQRLabel
            Left = 40
            Top = 1
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              105.833333333333300000
              2.645833333333333000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total'
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
          object QRExpr2: TQRExpr
            Left = 495
            Top = 1
            Width = 110
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1309.687500000000000000
              2.645833333333333000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(AMOUNT)'
            Mask = '$#,##0.00'
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 624
            Top = 0
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1651.000000000000000000
              0.000000000000000000
              195.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(TAX)'
            Mask = '$#,##0.00'
            FontSize = 10
          end
        end
      end
    end
  end
    object qryInvoice: TUniQuery
    SQL.Strings = (
            
              'SELECT M.ROWID, M.REFNO, M.NMEMO, M.NMATTER, M.FILEID, m.dispatc' +
              'hed'
            'FROM NMEMO M'
            'WHERE M.NMEMO = :NMEMO')
    CachedUpdates = True
    Left = 400
    Top = 18
  end
  object qryItems: TUniQuery
    SQL.Strings = (
            'SELECT'
            '  1 AS type,'
            '  created,'
            '  author,'
            '  descr,'
            '  amount,'
            '  tax'
            'FROM'
            '  fee'
            'WHERE'
            '  nmatter = :nmatter AND'
            '  nmemo = :nmemo'
            'UNION ALL'
            'SELECT'
            '  1 AS type,'
            '  SYSDATE,'
            '  NULL AS author,'
            '  '#39'Fee Adjustment'#39','
            '  MAX(b.fees) - SUM(f.amount),'
            '  (MAX(b.fees) - SUM(f.amount)) / 10'
            'FROM'
            '  nmemo b,'
            '  fee f'
            'WHERE'
            '  b.nmatter = :nmatter AND'
            '  b.nmemo = :nmemo AND'
            '  f.nmatter = :nmatter AND'
            '  f.nmemo = :nmemo'
            'GROUP BY b.nmemo'
            'HAVING MAX(b.fees) <> SUM(f.amount)'
            'UNION ALL'
            'SELECT '
            '  2 AS type,'
            '  created,'
            '  sundrytype AS author,'
            '  descr, '
            '  (0 - amount) AS amount,'
            '    DECODE(alloc.billed,'
            '         '#39'Y'#39','
            '         0 - alloc.tax,'
            '         DECODE((r.rate-r.bill_rate),'
            '                '#39'0'#39','
            '                0 - alloc.tax,'
            '                ROUND((0 - alloc.amount) * ABS(r.rate)) / 100'
            '               )'
            '        ) AS tax'
            'FROM '
            '  alloc,'
            '  taxrate r'
            'WHERE'
            '  nmatter = :nmatter AND'
            '  nmemo = :nmemo AND'
            '  (ncheque > 0 OR type = '#39'J2'#39' OR type = '#39'DR'#39') AND'
            '  alloc.taxcode = r.taxcode(+)'
            'UNION ALL'
            'SELECT'
            '  3 AS type,'
            '  reqdate AS created,'
            '  sundrytype AS author,'
            '  descr,'
            '  amount,'
            '  tax'
            'FROM'
            '  cheqreq'
            'WHERE'
            '  fileid = :fileid AND'
            '  nmemo = :nmemo'
            'UNION ALL'
            'SELECT'
            '  4 AS type,'
            '  created,'
            '  type AS author,'
            '  descr,'
            '  amount,'
            '  tax'
            'FROM'
            '  sundry'
            'WHERE'
            '  nmatter = :nmatter AND'
            '  nmemo = :nmemo'
            'UNION ALL'
            'SELECT'
            '  5 AS type,'
            '  invoice_date AS created,'
            '  m.author AS author,'
            '  c.descr,'
            '  (a.amount * -1) AS amount,'
            '  (a.tax * -1) AS Tax'
            'FROM matter m, alloc a, invoice c'
            'WHERE m.nmatter = a.nmatter'
            'AND   a.ninvoice = c.ninvoice'
            'AND   a.nmemo = :nmemo'
            'AND   m.nmatter = :nmatter '
            'ORDER BY 1, 2')
    Left = 502
    Top = 20
  end
  object qryPhonebook: TUniQuery
    SQL.Strings = (
            
              'SELECT title, name, address, suburb||'#39' '#39'||state||'#39' '#39'||postcode a' +
              's SSP FROM PHONEBOOK WHERE SEARCH = :Search')
    Left = 582
    Top = 12
  end
  object qryMatter: TUniQuery
    SQL.Strings = (
            
              'SELECT BILL_TO, AUTHOR, LONGDESCR, FILEID FROM MATTER WHERE FILE' +
              'ID = :FILEID')
    Left = 568
    Top = 66
  end
end
