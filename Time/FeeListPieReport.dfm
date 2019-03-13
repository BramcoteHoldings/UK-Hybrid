object qrFeeListPieReport: TqrFeeListPieReport
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  AfterPrint = QuickRepAfterPrint
  BeforePrint = QuickRepBeforePrint
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
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object TitleBand2: TQRBand
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
    BeforePrint = TitleBand2BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      2764.895833333333000000
      1899.708333333333000000)
    BandType = rbDetail
    object QRSysData5: TQRSysData
      Left = 0
      Top = 0
      Width = 118
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
        312.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsDateTime
      Text = 'Printed '
      Transparent = False
      FontSize = 10
    end
    object lPieTitle: TQRLabel
      Left = 334
      Top = 23
      Width = 50
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        883.708333333333300000
        60.854166666666670000
        132.291666666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = True
      Caption = 'lPieTitle'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object qrChart: TQRChart
      Left = 4
      Top = 45
      Width = 713
      Height = 998
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2640.541666666670000000
        10.583333333333300000
        119.062500000000000000
        1886.479166666670000000)
      object QRDBChart1: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          'Fee Breakdown By Author')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        object Series1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Visible = True
          DataSource = qPie
          SeriesColor = clRed
          XLabelsSource = 'LABELS'
          Circled = True
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loNone
          PieValues.ValueSource = 'PIE'
        end
      end
    end
    object QRSysData1: TQRSysData
      Left = 322
      Top = 0
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        851.958333333333300000
        0.000000000000000000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsReportTitle
      Transparent = False
      FontSize = 10
    end
  end
    object qPie: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'select '#39'label 1'#39' as labels, 10 as pie from dual'
            'union'
            'select '#39'label 2'#39' as labels, 20 as pie from dual')
    Left = 68
    Top = 97
    object qPieLABELS: TStringField
      FieldName = 'LABELS'
      FixedChar = True
      Size = 7
    end
    object qPiePIE: TFloatField
      FieldName = 'PIE'
    end
  end
end
