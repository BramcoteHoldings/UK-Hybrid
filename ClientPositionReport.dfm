object qrClientPositionReport: TqrClientPositionReport
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
  DataSet = qClientDetails
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
  Options = []
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = 'Client Position Report'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object HeaderBand: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 1045
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = HeaderBandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      2764.895833333333000000
      1899.708333333333000000)
    BandType = rbColumnHeader
    object lReportTitle: TQRSysData
      Left = 286
      Top = 26
      Width = 145
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.312500000000000000
        756.708333333333300000
        68.791666666666670000
        383.645833333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsReportTitle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = False
      FontSize = 20
    end
    object lCompany: TQRLabel
      Left = 316
      Top = 0
      Width = 86
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        836.083333333333300000
        0.000000000000000000
        227.541666666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'lCompany'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 15
    end
    object sDateTime: TQRSysData
      Left = 597
      Top = 0
      Width = 121
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1579.562500000000000000
        0.000000000000000000
        320.145833333333300000)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsDateTime
      Text = 'Printed: '
      Transparent = False
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 11
      Top = 87
      Width = 109
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        29.104166666666670000
        230.187500000000000000
        288.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Client Details'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRLabel2: TQRLabel
      Left = 63
      Top = 115
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        166.687500000000000000
        304.270833333333300000
        124.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Name:'
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
    object QRDBText1: TQRDBText
      Left = 113
      Top = 115
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        304.270833333333300000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'NAME'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 67
      Top = 134
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        177.270833333333300000
        354.541666666666700000
        113.770833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Code:'
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
    object QRDBText2: TQRDBText
      Left = 113
      Top = 134
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        354.541666666666700000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'CODE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 297
      Top = 115
      Width = 64
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        785.812500000000000000
        304.270833333333300000
        169.333333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Address:'
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
    object QRDBText3: TQRDBText
      Left = 364
      Top = 115
      Width = 349
      Height = 137
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        362.479166666667000000
        963.083333333333000000
        304.270833333333000000
        923.395833333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'ADDRESS'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 31
      Top = 153
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        82.020833333333330000
        404.812500000000000000
        209.020833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PB Search:'
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
    object QRDBText4: TQRDBText
      Left = 113
      Top = 153
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        404.812500000000000000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'SEARCH'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 15
      Top = 172
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        39.687500000000000000
        455.083333333333300000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Home Phone:'
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
    object QRDBText5: TQRDBText
      Left = 113
      Top = 172
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        455.083333333333300000
        235.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'HOMEPHONE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 20
      Top = 191
      Width = 90
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666670000
        505.354166666666700000
        238.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Work Phone:'
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
    object QRDBText6: TQRDBText
      Left = 113
      Top = 191
      Width = 90
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        505.354166666666700000
        238.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'WORKPHONE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 79
      Top = 210
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        209.020833333333300000
        555.625000000000000000
        82.020833333333330000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Fax:'
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
    object QRDBText7: TQRDBText
      Left = 113
      Top = 210
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        555.625000000000000000
        68.791666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'FAX'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = -2
      Top = 229
      Width = 112
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        -5.291666666666667000
        605.895833333333300000
        296.333333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'E-Mail Address:'
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
    object QRDBText8: TQRDBText
      Left = 113
      Top = 229
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        605.895833333333300000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'EMAIL'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 0
      Top = 296
      Width = 2714
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333300000
        0.000000000000000000
        783.166666666667000000
        7180.791666666670000000)
      Shape = qrsHorLine
    end
    object QRDBText9: TQRDBText
      Left = 444
      Top = 365
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1174.750000000000000000
        965.729166666667000000
        396.875000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALWIP'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 137
      Top = 365
      Width = 143
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        362.479166666666700000
        965.729166666666700000
        378.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Unbilled Fees:'
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
    object QRLabel11: TQRLabel
      Left = 176
      Top = 385
      Width = 104
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        465.666666666666700000
        1018.645833333333000000
        275.166666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Unbilled:'
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
    object QRDBText10: TQRDBText
      Left = 444
      Top = 471
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1174.750000000000000000
        1246.187500000000000000
        396.875000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALUNBDISB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Mask = '$#,0.00;($#,0.00)'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 139
      Top = 491
      Width = 141
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        367.770833333333300000
        1299.104166666667000000
        373.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Amount Billed:'
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
    object QRDBText11: TQRDBText
      Left = 444
      Top = 491
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1174.750000000000000000
        1299.104166666670000000
        396.875000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALBILLED'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 444
      Top = 510
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1174.750000000000000000
        1349.375000000000000000
        396.875000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALPAID'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 147
      Top = 510
      Width = 133
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        388.937500000000000000
        1349.375000000000000000
        351.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Amount Paid:'
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
    object QRLabel14: TQRLabel
      Left = 108
      Top = 529
      Width = 172
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        285.750000000000000000
        1399.645833333333000000
        455.083333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Amount Written Off:'
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
    object QRDBText13: TQRDBText
      Left = 444
      Top = 529
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1174.750000000000000000
        1399.645833333330000000
        396.875000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALWRITEOFF'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 444
      Top = 548
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        1174.750000000000000000
        1449.916666666670000000
        396.875000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALOWING'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 97
      Top = 548
      Width = 183
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        256.645833333333300000
        1449.916666666667000000
        484.187500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Amount Outstanding:'
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
    object QRLabel16: TQRLabel
      Left = 11
      Top = 318
      Width = 141
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        29.104166666666670000
        841.375000000000000000
        373.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Current Balances'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRLabel17: TQRLabel
      Left = 11
      Top = 339
      Width = 125
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        29.104166666666670000
        896.937500000000000000
        330.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(at time report was printed)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel18: TQRLabel
      Left = -3
      Top = 248
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        -7.937500000000000000
        656.166666666666700000
        298.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Service Partner:'
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
    object QRDBText15: TQRDBText
      Left = 113
      Top = 248
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        656.166666666666700000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'PARTNER'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel19: TQRLabel
      Left = -6
      Top = 267
      Width = 116
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        -15.875000000000000000
        706.437500000000000000
        306.916666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Introduced Date:'
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
    object QRDBText16: TQRDBText
      Left = 113
      Top = 267
      Width = 91
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        706.437500000000000000
        240.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'INTRODUCED'
      Mask = 'dd mmmm yyyy'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape2: TQRShape
      Left = 0
      Top = 62
      Width = 2714
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333300000
        0.000000000000000000
        164.041666666667000000
        7180.791666666670000000)
      Shape = qrsHorLine
    end
    object Cheques: TQRLabel
      Left = 293
      Top = 385
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        775.229166666666700000
        1018.645833333333000000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Cheques'
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
    object Sundries: TQRLabel
      Left = 293
      Top = 405
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        775.229166666666700000
        1071.562500000000000000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Sundries'
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
    object Anticipated: TQRLabel
      Left = 293
      Top = 425
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        775.229166666666700000
        1124.479166666667000000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Anticipated'
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
    object QRDBText17: TQRDBText
      Left = 372
      Top = 385
      Width = 110
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        984.250000000000000000
        1018.645833333330000000
        291.041666666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALUNBILLEDDISB'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 372
      Top = 405
      Width = 110
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        984.250000000000000000
        1071.562500000000000000
        291.041666666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALSUNDRIES'
      Mask = '$#,0.00;($#,0.00)'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 372
      Top = 425
      Width = 110
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        984.250000000000000000
        1124.479166666670000000
        291.041666666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALCHEQREQ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Mask = '$#,0.00;($#,0.00)'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel20: TQRLabel
      Left = 98
      Top = 471
      Width = 202
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        259.291666666666700000
        1246.187500000000000000
        534.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Unbilled Disbursments:'
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
    object QRLabel21: TQRLabel
      Left = 293
      Top = 445
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        775.229166666666700000
        1177.395833333333000000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Creditors'
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
    object QRDBText20: TQRDBText
      Left = 372
      Top = 444
      Width = 110
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        984.250000000000000000
        1174.750000000000000000
        291.041666666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qClientDetails
      DataField = 'TOTALCREDITORS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      Mask = '$#,0.00;($#,0.00)'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
    object qClientDetails: TUniQuery
    SQL.Strings = (
            'SELECT'
            '  p.nname  AS nname,'
            '  NVL(P.GIVENNAMES, B.GIVENNAMES) AS givennames,'
            '  NVL(P.LASTNAME, B.LASTNAME)  AS lastname,'
            '  p.search AS search,'
            '  TRIM(DECODE(p.WHICHADDRESS,'
            #39'S'#39', NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
            
              '     DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB) ' +
              '|| '#39' '#39' ||'
            
              '     DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) || ' +
              #39' '#39' ||'
            
              '     DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POST' +
              'CODE) ||'
            
              '     DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), P' +
              '.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL,' +
              ' NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
            ''
            'NULL, NVL(P.ADDRESS, B.ADDRESS) || chr(13) || chr(10) ||'
            
              '      DECODE(P.ADDRESS, NULL, NVL(P.SUBURB, B.SUBURB), P.SUBURB)' +
              ' || '#39' '#39' ||'
            
              '      DECODE(P.ADDRESS, NULL, NVL(P.STATE, B.STATE), P.STATE) ||' +
              ' '#39' '#39' ||'
            
              '      DECODE(P.ADDRESS, NULL, NVL(P.POSTCODE, B.POSTCODE), P.POS' +
              'TCODE) ||'
            
              '      DECODE(DECODE(P.ADDRESS, NULL, NVL(P.COUNTRY, B.COUNTRY), ' +
              'P.COUNTRY),NULL,'#39#39', chr(13) || chr(10) || DECODE(P.ADDRESS, NULL' +
              ', NVL(P.COUNTRY, B.COUNTRY), P.COUNTRY)),'
            ''
            
              #39'P'#39', NVL(P.POSTALADDRESS, B.POSTALADDRESS) || chr(13) || chr(10)' +
              ' ||'
            
              '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSUBURB, B.POSTALS' +
              'UBURB), P.POSTALSUBURB) || '#39' '#39' ||'
            
              '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALSTATE, B.POSTALST' +
              'ATE), P.POSTALSTATE) || '#39' '#39' ||'
            
              '     DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALPOSTCODE, B.POSTA' +
              'LPOSTCODE), P.POSTALPOSTCODE) ||'
            
              '     DECODE(DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B' +
              '.POSTALCOUNTRY), P.POSTALCOUNTRY),NULL,'#39#39', chr(13) || chr(10) ||' +
              ' DECODE(P.POSTALADDRESS, NULL, NVL(P.POSTALCOUNTRY, B.POSTALCOUN' +
              'TRY), P.POSTALCOUNTRY)),'
            ''
            
              #39'D'#39', '#39'DX '#39' || NVL(P.DX, B.DX) || chr(13) || chr(10) || NVL(P.DXL' +
              'OC, B.DXLOC)'
            ')) AS address,'
            '  NVL(P.WORKPHONE, B.WORKPHONE)   AS workphone,'
            '  NVL(P.HOMEPHONE, B.HOMEPHONE)   AS homephone,'
            '  NVL(P.FAX, B.FAX)               AS fax,'
            '  c.code                          AS code,'
            '  NVL(P.NAME, B.NAME)             AS name,'
            '  NVL(P.SHORTNAME, B.SHORTNAME)   AS shortname,'
            '  NVL(P.LONGNAME, B.LONGNAME)     AS longname,'
            '  NVL(P.EMAIL, B.EMAIL)           AS email,'
            '  NVL(P.MOBILE, B.MOBILE)         AS mobile,'
            '  c.introduced,'
            '  c.partner AS partnercode,'
            '  e.name    AS partner,'
            '  monies.totalwip,'
            '  monies.totalunbdisb,'
            '  monies.totalbilled,'
            '  monies.totalpaid,'
            '  monies.totalwriteoff,'
            '  monies.totalowing,'
            '  monies.totalunbilleddisb,'
            '  monies.totalcheqreq,'
            '  monies.totalsundries,'
            '  monies.totalcreditors'
            'FROM'
            '  client c,'
            '  phonebook p,'
            '  phonebook b,'
            '  employee e,'
            '  ('
            '    SELECT'
            '      m.nclient,'
            '      SUM(NVL(wip.amount,0) + NVL(uft.tax,0)) AS totalwip,'
            
              '      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0) + NVL(ubad.amount,0' +
              ') + NVL(uct.tax,0) + NVL(usund.amount,0) + NVL(ust.tax,0)) AS to' +
              'talunbdisb,'
            
              '      SUM(NVL(ubd.amount,0) + NVL(uat.tax,0)) AS totalunbilleddi' +
              'sb,'
            '      SUM(NVL(ubad.amount,0) + NVL(uct.tax,0)) AS totalcheqreq,'
            
              '      SUM(NVL(usund.amount,0) + NVL(ust.tax,0)) AS totalsundries' +
              ','
            '      SUM(NVL(bills.total,0)) AS totalbilled,'
            '      SUM(NVL(bills.paid,0)) AS totalpaid,'
            '      SUM(NVL(bills.totalwoff,0)) AS totalwriteoff,'
            '      SUM(NVL(bills.owing,0)) AS totalowing,'
            
              '      SUM(NVL(ucred.amount,0) + NVL(ucredtax.tax,0)) AS totalcre' +
              'ditors'
            '    FROM matter m,'
            '      (SELECT m.nmatter, NVL(SUM(NVL(f.amount,0)),0) AS amount '
            '        FROM fee f, matter m     '
            '        WHERE f.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND f.billed = '#39'N'#39'          '
            '        GROUP BY m.nmatter) wip,'
            '    '
            '      (SELECT m.nmatter, NVL(SUM(f.tax),0) AS tax    '
            '        FROM fee f,matter m      '
            '        WHERE f.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND f.billed = '#39'N'#39' '
            '          AND f.billtype = '#39'Billable'#39'         '
            '          AND NVL(f.type,'#39'NA'#39') <> '#39'wo'#39' '
            '        GROUP BY m.nmatter) uft,'
            '    '
            
              '      (SELECT m.nmatter, NVL(SUM(NVL(a.amount * -1,0)),0) AS amo' +
              'unt '
            '        FROM alloc a, matter m   '
            '        WHERE a.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND NVL(a.billed,'#39'N'#39') = '#39'N'#39' '
            '          AND NVL(a.trust,'#39'G'#39') <> '#39'T'#39' '
            
              '          AND (NVL(a.ncheque,0) > 0 OR (NVL(a.njournal,0) > 0 AN' +
              'D a.type = '#39'J2'#39')) '
            '        GROUP BY m.nmatter) ubd,'
            '    '
            
              '      (SELECT m.nmatter, NVL(SUM(NVL(a.tax * -1,0)),0) AS tax   ' +
              ' '
            '        FROM alloc a,matter m    '
            '        WHERE a.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND NVL(a.billed,'#39'N'#39') = '#39'N'#39' '
            '          AND NVL(a.trust,'#39'G'#39') <> '#39'T'#39' '
            
              '          AND (NVL(a.ncheque,0) > 0 OR (NVL(a.njournal,0) > 0 AN' +
              'D a.type = '#39'J2'#39')) '
            '        GROUP BY m.nmatter) uat,'
            '    '
            
              '      (SELECT m.nmatter, NVL(SUM(NVL(c.amount  ,0)),0) AS amount' +
              ' '
            '        FROM cheqreq c, matter m '
            '        WHERE c.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND c.billed = '#39'N'#39'          '
            '        GROUP BY m.nmatter) ubad,'
            '    '
            '      (SELECT m.nmatter, NVL(SUM(c.tax),0) AS tax    '
            '        FROM cheqreq c, matter m '
            '        WHERE c.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND c.billed = '#39'N'#39'          '
            '        GROUP BY m.nmatter) uct,'
            '    '
            '      (SELECT m.nmatter, SUM(NVL(s.amount, 0))  AS amount '
            '        FROM sundry s, matter m  '
            '        WHERE s.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND s.billed = '#39'N'#39'          '
            '        GROUP BY m.nmatter) usund,'
            '    '
            '      (SELECT m.nmatter, NVL(SUM(s.tax),0) AS tax    '
            '        FROM sundry s, matter m  '
            '        WHERE s.nmatter = m.nmatter '
            '          AND m.nclient = :nclient  '
            '          AND s.billed = '#39'N'#39'          '
            '          AND NVL(s.type,'#39'NA'#39') <> '#39'wo'#39' '
            '        GROUP BY m.nmatter) ust,'
            ''
            '       (SELECT nvl(SUM(a.tax * -1),0) AS amount'
            '        FROM matter m, alloc a, invoice c'
            '        WHERE m.nmatter = a.nmatter'
            '          AND a.ninvoice = c.ninvoice'
            '          AND a.nmemo is null'
            '          AND m.nmatter = m.nmatter '
            '          AND m.nclient = :nclient '
            '          AND a.billed = '#39'N'#39')'#9'ucred,'
            ''
            '      (SELECT nvl(SUM(a.amount * -1),0) AS tax'
            '        FROM matter m, alloc a, invoice c'
            '        WHERE m.nmatter = a.nmatter'
            '          AND a.ninvoice = c.ninvoice'
            '          AND a.nmemo is null'
            '          AND m.nmatter = m.nmatter '
            '          AND m.nclient = :nclient '
            '          AND a.billed = '#39'N'#39') ucredtax,'
            ''
            '      (SELECT'
            '        m.nmatter,'
            
              '        sum((NVL(fees_woff,0) + NVL(disb_woff,0) + NVL(antd_woff' +
              ',0) + NVL(sund_woff,0) + NVL(tax_woff,0) + NVL(upcred_woff,0) ))' +
              ' AS totalwoff,'
            '        total,'
            '        owing,'
            
              '        sum(NVL(fees_paid,0) + NVL(disb_paid,0) + NVL(antd_paid,' +
              '0) + NVL(sund_paid,0) + NVL(tax_paid,0) + + NVL(upcred_paid,0)) ' +
              'AS paid'
            '      FROM '
            '        nmemo n, matter m   '
            '      WHERE '
            '        n.nmatter  = m.nmatter'
            '      AND '
            '        m.nclient = :nclient '
            '      AND rv_type NOT IN ('#39'C'#39','#39'R'#39')'
            '      AND refno <> '#39'DRAFT'#39
            '      GROUP BY m.nmatter, total, owing'
            '      ORDER BY nmatter DESC) bills'
            '    '
            '    WHERE m.nclient = :nclient'
            '      AND bills.nmatter(+) = m.nmatter'
            '      AND ubad.nmatter(+) = m.nmatter'
            '      AND ubd.nmatter(+) = m.nmatter'
            '      AND wip.nmatter(+) = m.nmatter'
            '      AND usund.nmatter(+) = m.nmatter'
            '      AND ust.nmatter(+) = m.nmatter'
            '      AND uct.nmatter(+) = m.nmatter'
            '      AND uat.nmatter(+) = m.nmatter'
            '      AND uft.nmatter(+) = m.nmatter'
            '    GROUP BY m.nclient'
            '  ) monies'
            'WHERE'
            '  c.nclient = :nclient '
            '  AND p.nclient = c.nclient '
            '  AND p.nnamemaster = b.nname (+) '
            '  AND monies.nclient(+) = c.nclient'
            '  AND e.code(+) = c.partner')
    Left = 76
    Top = 32
    object qClientDetailsNNAME: TFloatField
      FieldName = 'NNAME'
      Required = True
    end
    object qClientDetailsGIVENNAMES: TStringField
      FieldName = 'GIVENNAMES'
      Size = 60
    end
    object qClientDetailsLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Size = 60
    end
    object qClientDetailsSEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qClientDetailsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 246
    end
    object qClientDetailsWORKPHONE: TStringField
      FieldName = 'WORKPHONE'
      Size = 30
    end
    object qClientDetailsHOMEPHONE: TStringField
      FieldName = 'HOMEPHONE'
      Size = 30
    end
    object qClientDetailsFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qClientDetailsCODE: TStringField
      FieldName = 'CODE'
      Required = True
    end
    object qClientDetailsNAME: TStringField
      FieldName = 'NAME'
      Size = 85
    end
    object qClientDetailsSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 40
    end
    object qClientDetailsLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 150
    end
    object qClientDetailsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qClientDetailsMOBILE: TStringField
      FieldName = 'MOBILE'
      Size = 30
    end
    object qClientDetailsTOTALWIP: TFloatField
      FieldName = 'TOTALWIP'
    end
    object qClientDetailsTOTALUNBDISB: TFloatField
      FieldName = 'TOTALUNBDISB'
    end
    object qClientDetailsTOTALBILLED: TFloatField
      FieldName = 'TOTALBILLED'
    end
    object qClientDetailsTOTALPAID: TFloatField
      FieldName = 'TOTALPAID'
    end
    object qClientDetailsTOTALWRITEOFF: TFloatField
      FieldName = 'TOTALWRITEOFF'
    end
    object qClientDetailsTOTALOWING: TFloatField
      FieldName = 'TOTALOWING'
    end
    object qClientDetailsINTRODUCED: TDateTimeField
      FieldName = 'INTRODUCED'
    end
    object qClientDetailsPARTNERCODE: TStringField
      FieldName = 'PARTNERCODE'
      Size = 3
    end
    object qClientDetailsPARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 40
    end
    object qClientDetailsTOTALUNBILLEDDISB: TFloatField
      FieldName = 'TOTALUNBILLEDDISB'
    end
    object qClientDetailsTOTALCHEQREQ: TFloatField
      FieldName = 'TOTALCHEQREQ'
    end
    object qClientDetailsTOTALSUNDRIES: TFloatField
      FieldName = 'TOTALSUNDRIES'
    end
    object qClientDetailsTOTALCREDITORS: TFloatField
      FieldName = 'TOTALCREDITORS'
    end
  end
end
