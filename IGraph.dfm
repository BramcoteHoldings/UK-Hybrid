object frmInvoiceGraph: TfrmInvoiceGraph
  Left = 304
  Top = 213
  Caption = 'frmInvoiceGraph'
  ClientHeight = 298
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbchFeePie: TDBChart
    Left = 0
    Top = 9
    Width = 516
    Height = 289
    AllowPanning = pmNone
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    MarginBottom = 1
    MarginLeft = 1
    MarginRight = 1
    MarginTop = 1
    Title.Font.Height = -13
    Title.Font.Name = 'Segoe UI'
    Title.Text.Strings = (
      'Invoice Fee Distribution')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Zoom.Allow = False
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 8
    ColorPaletteIndex = 13
    object Series1: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      DataSource = qryInvoice
      SeriesColor = clRed
      Title = 'Fees'
      XLabelsSource = 'AUTHOR'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'AMOUNT'
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Visible = False
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
      OtherSlice.Text = 'Other'
    end
  end
  object qryInvoice: TUniQuery
    DataTypeMap = <>
    SQL.Strings = (
      
        'SELECT FEE.AUTHOR AS AUTHOR, SUM(FEE.AMOUNT) AS AMOUNT FROM FEE ' +
        'WHERE NMEMO = :P_Invoice GROUP BY AUTHOR')
    Left = 488
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Invoice'
      end>
  end
end
