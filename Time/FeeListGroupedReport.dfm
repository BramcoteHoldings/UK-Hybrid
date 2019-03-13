object qrFeeListGroupedReport: TqrFeeListGroupedReport
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = QuickRepBeforePrint
  DataSet = qFees
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
  PrintIfEmpty = True
  ReportTitle = 'Fee List Grouped'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand5: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 83
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      219.604166666667
      1899.70833333333)
    BandType = rbTitle
    object QRSysData11: TQRSysData
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
    object QRLabel43: TQRLabel
      Left = 304
      Top = 0
      Width = 110
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        804.333333333333
        0
        291.041666666667)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Fee List Grouped'
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
    object QRSysData12: TQRSysData
      Left = 638
      Top = 0
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1688.04166666667
        0
        211.666666666667)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsPageNumber
      Text = 'Page '
      Transparent = False
      FontSize = 10
    end
    object QRLabel46: TQRLabel
      Left = 0
      Top = 48
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        0
        127
        74.0833333333333)
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
    object QRLabel47: TQRLabel
      Left = 80
      Top = 48
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        211.666666666667
        127
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
    object QRLabel50: TQRLabel
      Left = 120
      Top = 64
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        317.5
        169.333333333333
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
    object QRLabel51: TQRLabel
      Left = 575
      Top = 48
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1521.35416666667
        127
        119.0625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Matter#'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel52: TQRLabel
      Left = 656
      Top = 48
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1735.66666666667
        127
        124.354166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Invoiced'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel53: TQRLabel
      Left = 755
      Top = 48
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1997.60416666667
        127
        124.354166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Invoice#'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel54: TQRLabel
      Left = 872
      Top = 48
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2307.16666666667
        127
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Minutes'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel55: TQRLabel
      Left = 653
      Top = 48
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1727.72916666667
        127
        171.979166666667)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = False
      AutoStretch = False
      Caption = 'Amount'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lTitle: TQRLabel
      Left = 345
      Top = 24
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        912.8125
        63.5
        74.0833333333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = True
      Caption = 'lTitle'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel57: TQRLabel
      Left = 808
      Top = 48
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2137.83333333333
        127
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Units'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel58: TQRLabel
      Left = 120
      Top = 48
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        317.5
        127
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
    object QRLabel59: TQRLabel
      Left = 304
      Top = 48
      Width = 107
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        804.333333333333
        127
        283.104166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Matter Description'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object ghFeeGroup: TQRGroup
    Left = 38
    Top = 121
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
    Expression = 'qryFees.CREATED'
    FooterBand = qrgfFeeGroup
    Master = Owner
    ReprintOnNewPage = False
    object qlGroupField: TQRLabel
      Left = 0
      Top = 0
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
        0
        121.708333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Created'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object qtGroupField: TQRDBText
      Left = 80
      Top = 0
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
        0
        164.041666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'CREATED'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand6: TQRBand
    Left = 38
    Top = 140
    Width = 718
    Height = 36
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
      95.25
      1899.70833333333)
    BandType = rbDetail
    object QRDBText17: TQRDBText
      Left = 627
      Top = 0
      Width = 91
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1658.9375
        0
        240.770833333333)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataField = 'AMOUNT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 872
      Top = 0
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2307.16666666667
        0
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataField = 'MINS'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 576
      Top = 0
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1524
        0
        105.833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'FILEID'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText20: TQRDBText
      Left = 120
      Top = 17
      Width = 449
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        317.5
        44.9791666666667
        1187.97916666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'DESCR'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText21: TQRDBText
      Left = 80
      Top = 0
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
        0
        142.875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'AUTHOR'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object qtCreated: TQRDBText
      Left = 0
      Top = 0
      Width = 62
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
        164.041666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'CREATED'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText23: TQRDBText
      Left = 656
      Top = 0
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1735.66666666667
        0
        230.1875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'INVOICEDATE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText24: TQRDBText
      Left = 751
      Top = 0
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1987.02083333333
        0
        134.9375)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataField = 'NMEMO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText25: TQRDBText
      Left = 808
      Top = 0
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2137.83333333333
        0
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataField = 'UNITS'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText26: TQRDBText
      Left = 120
      Top = 1
      Width = 177
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        317.5
        2.64583333333333
        468.3125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'TITLE'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRDBText27: TQRDBText
      Left = 304
      Top = 1
      Width = 265
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        804.333333333333
        2.64583333333333
        701.145833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qFees
      DataField = 'SHORTDESCR'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
  end
  object qrgfFeeGroup: TQRBand
    Left = 38
    Top = 176
    Width = 718
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
      55.5625
      1899.70833333333)
    BandType = rbGroupFooter
    object QRExpr10: TQRExpr
      Left = 627
      Top = 3
      Width = 91
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1658.9375
        7.9375
        240.770833333333)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(qFees.AMOUNT)'
      Mask = '$##,##0.00'
      FontSize = 10
    end
    object QRExpr11: TQRExpr
      Left = 872
      Top = 2
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2307.16666666667
        5.29166666666667
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(qryFees.MINS)'
      FontSize = 10
    end
    object QRExpr12: TQRExpr
      Left = 808
      Top = 2
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2137.83333333333
        5.29166666666667
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(qryFees.UNITS)'
      FontSize = 10
    end
  end
  object QRBand7: TQRBand
    Left = 38
    Top = 197
    Width = 718
    Height = 24
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.5
      1899.70833333333)
    BandType = rbSummary
    object QRExpr7: TQRExpr
      Left = 627
      Top = 2
      Width = 91
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1658.9375
        5.29166666666667
        240.770833333333)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(qFees.AMOUNT)'
      Mask = '$##,##0.00'
      FontSize = 10
    end
    object QRExpr8: TQRExpr
      Left = 872
      Top = 2
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2307.16666666667
        5.29166666666667
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(qryFees.MINS)'
      FontSize = 10
    end
    object QRExpr9: TQRExpr
      Left = 808
      Top = 2
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2137.83333333333
        5.29166666666667
        150.8125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(qryFees.UNITS)'
      FontSize = 10
    end
  end
    object qFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'SELECT'
            '/*+ ORDERED */FEE.CREATED, FEE.AUTHOR, FEE.FILEID, FEE.NMATTER'
            ', FEE.DESCR, FEE.NFEE, FEE.AMOUNT, FEE.UNITS, FEE.MINS'
            ', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK'
            ', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, MATTER.TITLE'
            ', MATTER.SHORTDESCR, MATTER.BRANCH'
            'FROM FEE, MATTER, NMEMO'
            
              'WHERE FEE.NMATTER = MATTER.NMATTER AND FEE.NMEMO = NMEMO.NMEMO(+' +
              ')')
    Debug = True
    Left = 125
    Top = 397
    object qFeesCREATED: TDateTimeField
      DisplayLabel = 'Created'
      FieldName = 'CREATED'
    end
    object qFeesAUTHOR: TStringField
      DisplayLabel = 'Author'
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qFeesFILEID: TStringField
      DisplayLabel = 'Matter#'
      FieldName = 'FILEID'
    end
    object qFeesNMATTER: TFloatField
      FieldName = 'NMATTER'
    end
    object qFeesDESCR: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 100
      FieldName = 'DESCR'
      Size = 1000
    end
    object qFeesNFEE: TFloatField
      DisplayLabel = 'NFee'
      FieldName = 'NFEE'
      Required = True
    end
    object qFeesAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      currency = True
    end
    object qFeesUNITS: TIntegerField
      DisplayLabel = 'Units'
      FieldName = 'UNITS'
    end
    object qFeesMINS: TIntegerField
      DisplayLabel = 'Minutes'
      FieldName = 'MINS'
    end
    object qFeesRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      currency = True
    end
    object qFeesINVOICEDATE: TDateTimeField
      DisplayLabel = 'Invoice Date'
      FieldName = 'INVOICEDATE'
    end
    object qFeesBILLED: TStringField
      DisplayLabel = 'Billed'
      FieldName = 'BILLED'
      Size = 1
    end
    object qFeesTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TYPE'
      Size = 2
    end
    object qFeesTASK: TStringField
      DisplayLabel = 'Task'
      FieldName = 'TASK'
    end
    object qFeesTASK_AMOUNT: TFloatField
      DisplayLabel = 'Task Amount'
      FieldName = 'TASK_AMOUNT'
      currency = True
    end
    object qFeesBILLNO: TStringField
      DisplayLabel = 'Bill No.'
      FieldName = 'BILLNO'
    end
    object qFeesTITLE: TStringField
      DisplayLabel = 'Title'
      FieldName = 'TITLE'
      Required = True
      Size = 85
    end
    object qFeesSHORTDESCR: TStringField
      DisplayLabel = 'Short Matter Description'
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qFeesBRANCH: TStringField
      DisplayLabel = 'Branch'
      FieldName = 'BRANCH'
      Size = 3
    end
  end
end
