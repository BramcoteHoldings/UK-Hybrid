object frmDashboard: TfrmDashboard
  Left = 733
  Top = 189
  Caption = 'Dashboard - Firm'
  ClientHeight = 661
  ClientWidth = 1203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 15
  object pagMain: TcxPageControl
    Left = 0
    Top = 53
    Width = 1203
    Height = 567
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = tsWIP
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 567
    ClientRectRight = 1203
    ClientRectTop = 22
    object tsWIP: TcxTabSheet
      Caption = 'WIP'
      ImageIndex = 0
      OnShow = tsWIPShow
      object pnlWIP: TPanel
        Left = 0
        Top = 0
        Width = 1203
        Height = 545
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label18: TLabel
          Left = 3
          Top = 429
          Width = 45
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label19: TLabel
          Left = 5
          Top = 452
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label20: TLabel
          Left = 82
          Top = 399
          Width = 35
          Height = 15
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 167
          Top = 399
          Width = 41
          Height = 15
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 14
          Top = 212
          Width = 40
          Height = 15
          Caption = 'Current'
          Transparent = True
        end
        object Label12: TLabel
          Left = 14
          Top = 231
          Width = 12
          Height = 15
          Caption = '30'
          Transparent = True
        end
        object Label13: TLabel
          Left = 14
          Top = 249
          Width = 12
          Height = 15
          Caption = '60'
          Transparent = True
        end
        object Label14: TLabel
          Left = 14
          Top = 268
          Width = 12
          Height = 15
          Caption = '90'
          Transparent = True
        end
        object Label15: TLabel
          Left = 14
          Top = 286
          Width = 26
          Height = 15
          Caption = '120+'
          Transparent = True
        end
        object Label16: TLabel
          Left = 14
          Top = 306
          Width = 27
          Height = 15
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 14
          Top = 45
          Width = 40
          Height = 15
          Caption = 'Current'
          Transparent = True
        end
        object Label2: TLabel
          Left = 14
          Top = 62
          Width = 12
          Height = 15
          Caption = '30'
          Transparent = True
        end
        object Label3: TLabel
          Left = 14
          Top = 80
          Width = 12
          Height = 15
          Caption = '60'
          Transparent = True
        end
        object Label4: TLabel
          Left = 14
          Top = 97
          Width = 12
          Height = 15
          Caption = '90'
          Transparent = True
        end
        object Label5: TLabel
          Left = 14
          Top = 114
          Width = 26
          Height = 15
          Caption = '120+'
          Transparent = True
        end
        object Label6: TLabel
          Left = 14
          Top = 132
          Width = 27
          Height = 15
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel9: TcxDBLabel
          Left = 53
          Top = 427
          DataBinding.DataField = 'MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardFirm.dsWIPGenerated
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 87
          AnchorX = 140
        end
        object cxDBLabel6: TcxDBLabel
          Left = 148
          Top = 427
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsWipGeneratedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 94
          AnchorX = 242
        end
        object cxDBLabel7: TcxDBLabel
          Left = 148
          Top = 450
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsWipGeneratedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 94
          AnchorX = 242
        end
        object cxDBLabel8: TcxDBLabel
          Left = 53
          Top = 450
          DataBinding.DataField = 'YEAR_TOTAL'
          DataBinding.DataSource = dmDashboardFirm.dsWIPGenerated
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 87
          AnchorX = 140
        end
        object cxDBLabel1: TcxDBLabel
          Left = 104
          Top = 210
          DataBinding.DataField = 'ADJ0'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel2: TcxDBLabel
          Left = 104
          Top = 228
          DataBinding.DataField = 'ADJ1'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel3: TcxDBLabel
          Left = 104
          Top = 247
          DataBinding.DataField = 'ADJ2'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel4: TcxDBLabel
          Left = 104
          Top = 265
          DataBinding.DataField = 'ADJ3'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel5: TcxDBLabel
          Left = 104
          Top = 284
          DataBinding.DataField = 'ADJ10'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 115
          AnchorX = 219
        end
        object lblWiptotal: TcxDBLabel
          Left = 104
          Top = 303
          DataBinding.DataField = 'TOTALWIP'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShowAccelChar = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.Edges = [bTop]
          Style.TextStyle = [fsBold]
          Transparent = True
          Height = 22
          Width = 115
          AnchorX = 219
          AnchorY = 314
        end
        object cxDBLabel35: TcxDBLabel
          Left = 104
          Top = 129
          DataBinding.DataField = 'TOTALAGED'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          ParentColor = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.Color = clWhite
          Style.Edges = [bTop]
          Style.TextStyle = [fsBold]
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
          AnchorY = 139
        end
        object cxDBLabel34: TcxDBLabel
          Left = 104
          Top = 110
          DataBinding.DataField = 'ADJ10'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel33: TcxDBLabel
          Left = 104
          Top = 92
          DataBinding.DataField = 'ADJ3'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel32: TcxDBLabel
          Left = 104
          Top = 75
          DataBinding.DataField = 'ADJ2'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel31: TcxDBLabel
          Left = 104
          Top = 59
          DataBinding.DataField = 'ADJ1'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 115
          AnchorX = 219
        end
        object cxDBLabel13: TcxDBLabel
          Left = 104
          Top = 40
          DataBinding.DataField = 'ADJ0'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 115
          AnchorX = 219
        end
        object pnlDebtors: TPanel
          Left = 0
          Top = 0
          Width = 1203
          Height = 23
          Align = alTop
          Caption = 'Debtors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object pnlUnbilledWIP: TPanel
          Left = 1
          Top = 174
          Width = 1201
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Unbilled WIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object pnlWIPGenerated: TPanel
          Left = 1
          Top = 346
          Width = 1201
          Height = 22
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'WIP Generated (12 Months)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object chartWIPGenerated: TDBChart
          Left = 246
          Top = 368
          Width = 955
          Height = 148
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.AdjustFrame = False
          Title.Alignment = taRightJustify
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartWIPGeneratedClickSeries
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 19
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          ColorPaletteIndex = 13
          object Series3: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryGraphWIPGenerated
            SeriesColor = clRed
            ShowInLegend = False
            Title = 'Actual'
            XLabelsSource = 'VIEWDATE'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'UNBILLED'
          end
          object Series5: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryWIPGeneratedBudgetGraph
            SeriesColor = 10485760
            Title = 'Budget'
            XLabelsSource = 'VIEWDATE'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'WIPBUDGET'
          end
        end
        object chartUnbilledWIP: TDBChart
          Left = 245
          Top = 198
          Width = 955
          Height = 147
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Foot.Visible = False
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartUnbilledWIPClickSeries
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 20
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          ColorPaletteIndex = 13
          object Series2: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryWIPGraph
            SeriesColor = clRed
            XLabelsSource = #39'CURRENT'#39
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'APAID0'
          end
        end
        object chartDebtors: TDBChart
          Left = 249
          Top = 23
          Width = 954
          Height = 149
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Foot.Visible = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Name = 'Arial Narrow'
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartDebtorsClickSeries
          Legend.Font.Charset = ANSI_CHARSET
          Legend.Font.Name = 'Arial Narrow'
          Legend.Visible = False
          TopAxis.Labels = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 21
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnClick = chartDebtorsClick
          ColorPaletteIndex = 13
          object Series1: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryAgedDebtorsGraph
            SeriesColor = clRed
            XLabelsSource = 'PER'
            XValues.Name = 'X'
            XValues.Order = loNone
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'Current'
          end
        end
      end
    end
    object tsFees: TcxTabSheet
      Caption = 'Fees'
      ImageIndex = 1
      OnShow = tsFeesShow
      object pnlFees: TPanel
        Left = 0
        Top = 0
        Width = 1203
        Height = 545
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'pnlFees'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 9
          Top = 74
          Width = 45
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label10: TLabel
          Left = 10
          Top = 97
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label17: TLabel
          Left = 103
          Top = 44
          Width = 35
          Height = 15
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 202
          Top = 44
          Width = 41
          Height = 15
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 9
          Top = 261
          Width = 45
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label9: TLabel
          Left = 103
          Top = 231
          Width = 35
          Height = 15
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 202
          Top = 231
          Width = 41
          Height = 15
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 9
          Top = 285
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object cxDBLabel14: TcxDBLabel
          Left = 151
          Top = 72
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsBilledFeesBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 98
          AnchorX = 249
        end
        object cxDBLabel15: TcxDBLabel
          Left = 59
          Top = 70
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardFirm.dsFeesBilledMonth
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 86
          AnchorX = 145
        end
        object cxDBLabel16: TcxDBLabel
          Left = 47
          Top = 95
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardFirm.dsFeesBilledYTD
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 98
          AnchorX = 145
        end
        object cxDBLabel17: TcxDBLabel
          Left = 151
          Top = 95
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsBilledFeesBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 98
          AnchorX = 249
        end
        object cxDBLabel20: TcxDBLabel
          Left = 163
          Top = 257
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsFeesReceivedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 86
          AnchorX = 249
        end
        object cxDBLabel21: TcxDBLabel
          Left = 164
          Top = 282
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsFeesReceivedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 86
          AnchorX = 250
        end
        object cxDBLabel18: TcxDBLabel
          Left = 59
          Top = 282
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardFirm.dsFeeReceivedYear
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 86
          AnchorX = 145
        end
        object cxDBLabel19: TcxDBLabel
          Left = 60
          Top = 258
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardFirm.dsFeeReceivedMonth
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 87
          AnchorX = 147
        end
        object pnlFeesBilled: TPanel
          Left = 1
          Top = 1
          Width = 1201
          Height = 22
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvNone
          Caption = 'Fees Billed (Monthly)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object chartFeesBilled: TDBChart
          Left = 253
          Top = 23
          Width = 948
          Height = 147
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartFeesBilledClickSeries
          ClipPoints = False
          LeftAxis.TickOnLabelsOnly = False
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 9
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          ColorPaletteIndex = 13
          object Series6: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryFeesBilledGraph
            SeriesColor = clRed
            Title = 'Actual'
            XLabelsSource = 'TO_CHAR(INVOICEDATE,'#39'MON-YY'#39')'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES'
          end
          object Series9: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryFeesBilledBudgetGraph
            SeriesColor = 10485760
            ShowInLegend = False
            Title = 'Budget'
            XLabelsSource = 'RPT_PERIOD'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES_BUDGET'
          end
        end
        object pnlFeesReceived: TPanel
          Left = 2
          Top = 167
          Width = 1201
          Height = 30
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          BevelInner = bvRaised
          BevelOuter = bvNone
          Caption = 'Fees Received (Monthly)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object chartFeesReceived: TDBChart
          Left = 253
          Top = 203
          Width = 948
          Height = 148
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartFeesReceivedClickSeries
          ClipPoints = False
          LeftAxis.TickOnLabelsOnly = False
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 11
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          ColorPaletteIndex = 13
          object BarSeries1: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryFeesReceivedGraph
            SeriesColor = clRed
            Title = 'Actual'
            XLabelsSource = 'DISP_PERIOD'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES_PAID'
          end
          object Series7: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryBFeesReceivedBudgetGraph
            SeriesColor = 10485760
            Title = 'Budget'
            XLabelsSource = 'PERIOD'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES_BUDGET'
          end
        end
        object pnlLockup: TPanel
          Left = 2
          Top = 350
          Width = 1204
          Height = 23
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Lock Up (WIP, Debtors, Disbursements)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object chartLockup: TDBChart
          Left = 291
          Top = 380
          Width = 908
          Height = 147
          AllowPanning = pmNone
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          Legend.Alignment = laBottom
          Legend.ColorWidth = 25
          Legend.Shadow.HorizSize = 1
          Legend.Shadow.VertSize = 1
          Legend.Symbol.Width = 25
          Legend.TextStyle = ltsPlain
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          Enabled = False
          TabOrder = 13
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          ColorPaletteIndex = 13
          object Series4: TPieSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.Callout.Length = 20
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryLockupGraph
            SeriesColor = clRed
            XLabelsSource = 'LOCKUP'
            XValues.Order = loAscending
            YValues.Name = 'Pie'
            YValues.Order = loAscending
            YValues.ValueSource = 'MONTH_TOTAL'
            CustomXRadius = 195
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
            Frame.Width = 4
            OtherSlice.Legend.Visible = False
            OtherSlice.Text = 'Other'
          end
        end
        object cxGrid5: TcxGrid
          Left = 2
          Top = 373
          Width = 231
          Height = 170
          Align = alCustom
          TabOrder = 14
          LookAndFeel.NativeStyle = True
          object cxGrid5DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardFirm.dsLockupGraph
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            object cxGrid5DBTableView1WORKFLOW: TcxGridDBColumn
              DataBinding.FieldName = 'LOCKUP'
              MinWidth = 23
              Width = 74
            end
            object cxGrid5DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'MONTH_TOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$,0.00;($,0.00)'
              MinWidth = 23
              Width = 74
            end
          end
          object cxGrid5Level1: TcxGridLevel
            GridView = cxGrid5DBTableView1
          end
        end
      end
    end
    object tabTopClient: TcxTabSheet
      Caption = 'Clients'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      OnShow = tabTopClientShow
      object Panel3: TPanel
        Left = 15
        Top = 7
        Width = 270
        Height = 366
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label29: TLabel
          Left = 3
          Top = 36
          Width = 26
          Height = 15
          Caption = 'MTD'
          Transparent = True
        end
        object Label30: TLabel
          Left = 3
          Top = 66
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label35: TLabel
          Left = 7
          Top = 134
          Width = 26
          Height = 15
          Caption = 'MTD'
          Transparent = True
        end
        object Label36: TLabel
          Left = 7
          Top = 162
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object pnlMatters: TPanel
          Left = 0
          Top = 0
          Width = 270
          Height = 22
          Align = alTop
          Caption = 'New Matters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cxDBLabel22: TcxDBLabel
          Left = 92
          Top = 33
          DataBinding.DataField = 'MTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersOpened
          Transparent = True
          Height = 19
          Width = 53
        end
        object cxDBLabel23: TcxDBLabel
          Left = 92
          Top = 63
          DataBinding.DataField = 'YTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersOpened
          Transparent = True
          Height = 20
          Width = 53
        end
        object cxDBLabel25: TcxDBLabel
          Left = 185
          Top = 33
          DataBinding.DataField = 'MTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersclosed
          Transparent = True
          Height = 19
          Width = 71
        end
        object cxDBLabel26: TcxDBLabel
          Left = 185
          Top = 63
          DataBinding.DataField = 'YTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersclosed
          Transparent = True
          Height = 20
          Width = 71
        end
        object Panel4: TPanel
          Left = 0
          Top = 99
          Width = 270
          Height = 22
          Caption = 'New Clients'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object cxDBLabel28: TcxDBLabel
          Left = 95
          Top = 132
          DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
          DataBinding.DataSource = dmDashboardFirm.dsClientCountMTD
          Transparent = True
          Height = 18
          Width = 53
        end
        object cxDBLabel30: TcxDBLabel
          Left = 95
          Top = 159
          DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
          DataBinding.DataSource = dmDashboardFirm.dsClientCountYTD
          Transparent = True
          Height = 20
          Width = 53
        end
        object Panel5: TPanel
          Left = -1
          Top = 194
          Width = 271
          Height = 22
          Caption = 'YTD Profit/Loss'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object grdProfitLoss: TcxGrid
          Left = 1
          Top = 215
          Width = 269
          Height = 151
          TabOrder = 9
          LookAndFeel.NativeStyle = True
          object tvProfitLoss: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardFirm.dsProfit_Loss
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$,0.00;($,0.00)'
                Kind = skSum
                FieldName = 'AMOUNT'
                Column = tvProfitLossSUMAMOUNT
              end
              item
                Format = 'Profit/Loss'
                OnGetText = cxGrid4DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
                Column = tvProfitLossEXPENSE
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            object tvProfitLossEXPENSE: TcxGridDBColumn
              DataBinding.FieldName = #39'INCOME'#39
              MinWidth = 23
              SortIndex = 0
              SortOrder = soDescending
              Width = 141
            end
            object tvProfitLossSUMAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$,0.00;($,0.00)'
              MinWidth = 23
              Width = 126
            end
          end
          object grdProfitLossLevel1: TcxGridLevel
            GridView = tvProfitLoss
          end
        end
        object cxDBLabel42: TcxDBLabel
          Left = 177
          Top = 132
          DataBinding.DataField = 'NVL(SUM(ESTIMATEDFEE),0)'
          DataBinding.DataSource = dmDashboardFirm.dsClientTotalAmountMTD
          Transparent = True
          Height = 18
          Width = 86
        end
        object cxDBLabel43: TcxDBLabel
          Left = 177
          Top = 159
          DataBinding.DataField = 'NVL(SUM(ESTIMATEDFEE),0)'
          DataBinding.DataSource = dmDashboardFirm.dsClientTotalAmountYTD
          Transparent = True
          Height = 20
          Width = 86
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 298
        Top = 7
        Width = 284
        Height = 328
        TabOrder = 1
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 1
        Properties.TabSlants.Kind = skCutCorner
        LookAndFeel.NativeStyle = True
        TabSlants.Kind = skCutCorner
        ClientRectBottom = 324
        ClientRectLeft = 4
        ClientRectRight = 280
        ClientRectTop = 27
        object cxTabSheet1: TcxTabSheet
          Caption = 'Top 10 Clients'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 22
          ExplicitWidth = 284
          ExplicitHeight = 306
          object cxGrid1: TcxGrid
            Left = 0
            Top = 24
            Width = 276
            Height = 273
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            ExplicitTop = 22
            ExplicitWidth = 284
            ExplicitHeight = 284
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDashboardFirm.dsTopClients
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '$,0.00;-$,0.00'
                  Kind = skSum
                  FieldName = 'TOTAL'
                  Column = cxGrid1DBTableView1TOTAL
                end>
              DataController.Summary.SummaryGroups = <>
              FilterRow.SeparatorWidth = 7
              FixedDataRows.SeparatorWidth = 7
              NewItemRow.SeparatorWidth = 7
              OptionsBehavior.CellHints = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NavigatorOffset = 58
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.IndicatorWidth = 14
              Preview.LeftIndent = 23
              Preview.RightIndent = 6
              object cxGrid1DBTableView1NAME: TcxGridDBColumn
                Caption = 'Client'
                DataBinding.FieldName = 'NAME'
                MinWidth = 23
                Width = 150
              end
              object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                MinWidth = 23
                Width = 97
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 276
            Height = 24
            Align = alTop
            TabOrder = 1
            ExplicitLeft = 19
            ExplicitTop = 48
            ExplicitWidth = 185
            object cxLabel2: TcxLabel
              Left = 44
              Top = 3
              Caption = 'Figures are for rolling 12 months'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Top 10 Referrers'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 22
          ExplicitWidth = 284
          ExplicitHeight = 306
          object cxGrid2: TcxGrid
            Left = 0
            Top = 23
            Width = 276
            Height = 274
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            ExplicitTop = 22
            ExplicitWidth = 284
            ExplicitHeight = 284
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDashboardFirm.dsTopReferrers
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '$,0.00;-$,0.00'
                  Kind = skSum
                  FieldName = 'TOTAL'
                  Column = cxGridDBColumn2
                end>
              DataController.Summary.SummaryGroups = <>
              FilterRow.SeparatorWidth = 7
              FixedDataRows.SeparatorWidth = 7
              NewItemRow.SeparatorWidth = 7
              OptionsBehavior.CellHints = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NavigatorOffset = 58
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.IndicatorWidth = 14
              Preview.LeftIndent = 23
              Preview.RightIndent = 6
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Referrer'
                DataBinding.FieldName = 'NAME'
                MinWidth = 23
                Width = 150
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                MinWidth = 23
                Width = 97
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 276
            Height = 23
            Align = alTop
            TabOrder = 1
            ExplicitLeft = 14
            ExplicitTop = 49
            ExplicitWidth = 185
            object cxLabel1: TcxLabel
              Left = 36
              Top = 0
              Caption = 'Figures are for rolling 12 months'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 586
        Top = 7
        Width = 275
        Height = 326
        BevelOuter = bvNone
        Caption = 'Panel6'
        Color = clWhite
        TabOrder = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 275
          Height = 28
          Align = alTop
          Caption = 'Matter Profitability by Type $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 28
          Width = 275
          Height = 298
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardFirm.dsMatterProfitability
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            object cxGrid3DBTableView1DESCR: TcxGridDBColumn
              DataBinding.FieldName = 'DESCR'
              MinWidth = 23
            end
            object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              MinWidth = 92
              Width = 92
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object Panel8: TPanel
        Left = 298
        Top = 340
        Width = 562
        Height = 71
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 3
        object Label31: TLabel
          Left = 8
          Top = 48
          Width = 68
          Height = 15
          Caption = 'Cash at Bank'
          Transparent = True
        end
        object Label32: TLabel
          Left = 225
          Top = 25
          Width = 35
          Height = 15
          Caption = 'Office'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 343
          Top = 25
          Width = 42
          Height = 15
          Caption = 'Service'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 481
          Top = 25
          Width = 28
          Height = 15
          Caption = 'Trust'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 562
          Height = 22
          Align = alTop
          Caption = 'Cashflow'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object lblOffice: TcxLabel
          Left = 163
          Top = 46
          AutoSize = False
          Caption = '$0.00'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 101
          AnchorX = 264
        end
        object lblService: TcxLabel
          Left = 291
          Top = 46
          AutoSize = False
          Caption = '$0.00'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 101
          AnchorX = 392
        end
        object lblTrust: TcxLabel
          Left = 413
          Top = 46
          AutoSize = False
          Caption = '$0.00'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 102
          AnchorX = 515
        end
      end
      object Panel13: TPanel
        Left = 298
        Top = 411
        Width = 562
        Height = 67
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 4
        object Label8: TLabel
          Left = 8
          Top = 37
          Width = 26
          Height = 15
          Caption = 'Total'
          Transparent = True
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 562
          Height = 22
          Align = alTop
          Caption = 'Firms Liability ( Creditors )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cxDBLabel10: TcxDBLabel
          Left = 216
          Top = 33
          DataBinding.DataField = 'NVL(SUM(OWING),0)'
          DataBinding.DataSource = dmDashboardFirm.dsFirmCreditors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 25
          Width = 139
          AnchorX = 355
        end
      end
    end
  end
  object pnltop: TPanel
    Left = 0
    Top = 30
    Width = 1203
    Height = 23
    Align = alTop
    Caption = 'WALLMANS - FIRM BALANCED SCORECARD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object cbThreeD: TcxCheckBox
    Left = 330
    Top = 627
    Caption = 'View 3D'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    OnClick = cbThreeDClick
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 650
    Top = 25
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      30
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 824
      FloatTop = 499
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbtnTeamScorecard'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnIndScorecard'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBtnexit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBDate'
        end>
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBtnexit: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBtnexitClick
    end
    object dxBDate: TdxBarStatic
      Align = iaRight
      Caption = 'Date'
      Category = 0
      Hint = 'Date'
      Visible = ivAlways
    end
    object bbtnTeamScorecard: TdxBarButton
      Caption = 'Team Scorecard'
      Category = 0
      Hint = 'Team Scorecard'
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = bbtnTeamScorecardClick
    end
    object bbtnIndScorecard: TdxBarButton
      Caption = 'My Scorecard'
      Category = 0
      Hint = 'My Scorecard'
      Visible = ivAlways
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      OnClick = bbtnIndScorecardClick
    end
    object bbtnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 21
      PaintStyle = psCaptionGlyph
      OnClick = bbtnRefreshClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = dxBarButton1Click
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'threeDview'
      Category = 0
      Hint = 'threeDview'
      Visible = ivAlways
      Control = cbThreeD
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5 x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 518
    Top = 528
    Version = '16.03'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink1
    Version = 0
    Left = 807
    Top = 124
    PixelsPerInch = 106
    object ComponentPrinterLink1: TdxCustomContainerReportLink
      Active = True
      Component = pnlWIP
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 6700
      PrinterPage.Margins.Right = 6700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43152.601547372690000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
    object ComponentPrinterLink5: TdxCustomContainerReportLink
      Active = True
      Component = pnlFees
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
      ReportDocument.CreationDate = 43152.601547604160000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {436F6D706F6E656E745072696E7465724C696E6B390D0A}
    end
    object ComponentPrinterLink9: TdxGridReportLink
      Active = True
      Component = cxGrid5
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
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43152.601547615740000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsExpanding.ExpandGroupRows = True
      OptionsSize.AutoWidth = True
      PixelsPerInch = 106
      BuiltInReportLink = True
    end
  end
end
