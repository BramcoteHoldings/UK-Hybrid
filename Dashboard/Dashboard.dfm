object frmDashboard: TfrmDashboard
  Left = 733
  Top = 189
  Caption = 'Dashboard - Firm'
  ClientHeight = 606
  ClientWidth = 1118
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
    Top = 50
    Width = 1118
    Height = 526
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = tsWIP
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 522
    ClientRectLeft = 4
    ClientRectRight = 1114
    ClientRectTop = 26
    object tsWIP: TcxTabSheet
      Caption = 'WIP'
      ImageIndex = 0
      OnShow = tsWIPShow
      object pnlWIP: TPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 496
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
          Top = 397
          Width = 44
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label19: TLabel
          Left = 5
          Top = 427
          Width = 21
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label20: TLabel
          Left = 76
          Top = 370
          Width = 30
          Height = 12
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 156
          Top = 370
          Width = 33
          Height = 12
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 13
          Top = 197
          Width = 40
          Height = 15
          Caption = 'Current'
          Transparent = True
        end
        object Label12: TLabel
          Left = 13
          Top = 215
          Width = 12
          Height = 15
          Caption = '30'
          Transparent = True
        end
        object Label13: TLabel
          Left = 13
          Top = 233
          Width = 12
          Height = 15
          Caption = '60'
          Transparent = True
        end
        object Label14: TLabel
          Left = 13
          Top = 251
          Width = 12
          Height = 15
          Caption = '90'
          Transparent = True
        end
        object Label15: TLabel
          Left = 13
          Top = 269
          Width = 26
          Height = 15
          Caption = '120+'
          Transparent = True
        end
        object Label16: TLabel
          Left = 13
          Top = 293
          Width = 23
          Height = 12
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 13
          Top = 42
          Width = 40
          Height = 15
          Caption = 'Current'
          Transparent = True
        end
        object Label2: TLabel
          Left = 13
          Top = 58
          Width = 12
          Height = 15
          Caption = '30'
          Transparent = True
        end
        object Label3: TLabel
          Left = 13
          Top = 74
          Width = 12
          Height = 15
          Caption = '60'
          Transparent = True
        end
        object Label4: TLabel
          Left = 13
          Top = 90
          Width = 12
          Height = 15
          Caption = '90'
          Transparent = True
        end
        object Label5: TLabel
          Left = 13
          Top = 106
          Width = 26
          Height = 15
          Caption = '120+'
          Transparent = True
        end
        object Label6: TLabel
          Left = 13
          Top = 122
          Width = 23
          Height = 12
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel9: TcxDBLabel
          Left = 50
          Top = 395
          DataBinding.DataField = 'MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardFirm.dsWIPGenerated
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 79
          AnchorX = 129
        end
        object cxDBLabel6: TcxDBLabel
          Left = 137
          Top = 395
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsWipGeneratedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 88
          AnchorX = 225
        end
        object cxDBLabel7: TcxDBLabel
          Left = 137
          Top = 425
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsWipGeneratedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 88
          AnchorX = 225
        end
        object cxDBLabel8: TcxDBLabel
          Left = 50
          Top = 425
          DataBinding.DataField = 'YEAR_TOTAL'
          DataBinding.DataSource = dmDashboardFirm.dsWIPGenerated
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 79
          AnchorX = 129
        end
        object cxDBLabel1: TcxDBLabel
          Left = 97
          Top = 195
          DataBinding.DataField = 'ADJ0'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel2: TcxDBLabel
          Left = 97
          Top = 213
          DataBinding.DataField = 'ADJ1'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel3: TcxDBLabel
          Left = 97
          Top = 231
          DataBinding.DataField = 'ADJ2'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel4: TcxDBLabel
          Left = 97
          Top = 249
          DataBinding.DataField = 'ADJ3'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel5: TcxDBLabel
          Left = 97
          Top = 267
          DataBinding.DataField = 'ADJ10'
          DataBinding.DataSource = dmDashboardFirm.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object lblWiptotal: TcxDBLabel
          Left = 97
          Top = 288
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
          Height = 20
          Width = 106
          AnchorX = 203
          AnchorY = 298
        end
        object cxDBLabel35: TcxDBLabel
          Left = 97
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
          Width = 106
          AnchorX = 203
          AnchorY = 139
        end
        object cxDBLabel34: TcxDBLabel
          Left = 97
          Top = 109
          DataBinding.DataField = 'ADJ10'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Style.Edges = []
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel33: TcxDBLabel
          Left = 97
          Top = 91
          DataBinding.DataField = 'ADJ3'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Style.Edges = []
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel32: TcxDBLabel
          Left = 97
          Top = 73
          DataBinding.DataField = 'ADJ2'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Style.Edges = []
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel31: TcxDBLabel
          Left = 97
          Top = 56
          DataBinding.DataField = 'ADJ1'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Style.Edges = []
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object cxDBLabel13: TcxDBLabel
          Left = 97
          Top = 38
          DataBinding.DataField = 'ADJ0'
          DataBinding.DataSource = dmDashboardFirm.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Properties.ShowAccelChar = False
          Style.Edges = []
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
          Height = 20
          Width = 106
          AnchorX = 203
        end
        object pnlDebtors: TPanel
          Left = 0
          Top = 0
          Width = 1110
          Height = 22
          Align = alTop
          Caption = 'Debtors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object pnlUnbilledWIP: TPanel
          Left = 1
          Top = 162
          Width = 1109
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Unbilled WIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object pnlWIPGenerated: TPanel
          Left = 1
          Top = 322
          Width = 1109
          Height = 20
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'WIP Generated (12 Months)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object chartWIPGenerated: TDBChart
          Left = 228
          Top = 342
          Width = 881
          Height = 137
          BackWall.Brush.Style = bsClear
          Title.Alignment = taRightJustify
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          Title.AdjustFrame = False
          OnClickSeries = chartWIPGeneratedClickSeries
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 19
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series3: TBarSeries
            Legend.Visible = False
            Marks.Visible = False
            DataSource = dmDashboardFirm.qryGraphWIPGenerated
            SeriesColor = clRed
            ShowInLegend = False
            Title = 'Actual'
            XLabelsSource = 'VIEWDATE'
            Emboss.Color = 8487297
            Shadow.Color = 8487297
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'UNBILLED'
          end
          object Series5: TBarSeries
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
          Left = 227
          Top = 185
          Width = 880
          Height = 136
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
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series2: TBarSeries
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
          Left = 232
          Top = 22
          Width = 879
          Height = 137
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
          TopAxis.LabelsFormat.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 21
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnClick = chartDebtorsClick
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TBarSeries
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
        Width = 1110
        Height = 496
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'pnlFees'
        Color = clWhite
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 68
          Width = 44
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label10: TLabel
          Left = 9
          Top = 93
          Width = 21
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label17: TLabel
          Left = 96
          Top = 40
          Width = 39
          Height = 17
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 188
          Top = 40
          Width = 44
          Height = 17
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 8
          Top = 242
          Width = 44
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label9: TLabel
          Left = 96
          Top = 215
          Width = 39
          Height = 17
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 188
          Top = 215
          Width = 44
          Height = 17
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 8
          Top = 269
          Width = 21
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object cxDBLabel14: TcxDBLabel
          Left = 141
          Top = 67
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsBilledFeesBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 21
          Width = 91
          AnchorX = 232
        end
        object cxDBLabel15: TcxDBLabel
          Left = 54
          Top = 66
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardFirm.dsFeesBilledMonth
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 22
          Width = 81
          AnchorX = 135
        end
        object cxDBLabel16: TcxDBLabel
          Left = 44
          Top = 91
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardFirm.dsFeesBilledYTD
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 91
          AnchorX = 135
        end
        object cxDBLabel17: TcxDBLabel
          Left = 141
          Top = 91
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsBilledFeesBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 91
          AnchorX = 232
        end
        object cxDBLabel20: TcxDBLabel
          Left = 151
          Top = 239
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsFeesReceivedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 81
          AnchorX = 232
        end
        object cxDBLabel21: TcxDBLabel
          Left = 152
          Top = 267
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardFirm.dsFeesReceivedBudget
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 24
          Width = 81
          AnchorX = 233
        end
        object cxDBLabel18: TcxDBLabel
          Left = 54
          Top = 267
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardFirm.dsFeeReceivedYear
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 24
          Width = 81
          AnchorX = 135
        end
        object cxDBLabel19: TcxDBLabel
          Left = 55
          Top = 240
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardFirm.dsFeeReceivedMonth
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 23
          Width = 81
          AnchorX = 136
        end
        object pnlFeesBilled: TPanel
          Left = 1
          Top = 1
          Width = 1108
          Height = 21
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvNone
          Caption = 'Fees Billed (Monthly)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object chartFeesBilled: TDBChart
          Left = 234
          Top = 22
          Width = 875
          Height = 136
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
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series6: TBarSeries
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
            Legend.Visible = False
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
          Top = 156
          Width = 1109
          Height = 27
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          BevelInner = bvRaised
          BevelOuter = bvNone
          Caption = 'Fees Received (Monthly)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object chartFeesReceived: TDBChart
          Left = 234
          Top = 188
          Width = 875
          Height = 137
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
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object BarSeries1: TBarSeries
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
          Top = 324
          Width = 1111
          Height = 22
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Lock Up (WIP, Debtors, Disbursements)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object chartLockup: TDBChart
          Left = 270
          Top = 353
          Width = 836
          Height = 136
          AllowPanning = pmNone
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
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series4: TPieSeries
            Marks.Visible = False
            Marks.Callout.Length = 20
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
          Top = 346
          Width = 215
          Height = 158
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
      ImageIndex = 2
      OnShow = tabTopClientShow
      object Panel3: TPanel
        Left = 14
        Top = 7
        Width = 250
        Height = 339
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Label29: TLabel
          Left = 3
          Top = 33
          Width = 25
          Height = 15
          Caption = 'MTD'
          Transparent = True
        end
        object Label30: TLabel
          Left = 3
          Top = 61
          Width = 21
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label35: TLabel
          Left = 7
          Top = 125
          Width = 25
          Height = 15
          Caption = 'MTD'
          Transparent = True
        end
        object Label36: TLabel
          Left = 7
          Top = 150
          Width = 21
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object pnlMatters: TPanel
          Left = 0
          Top = 0
          Width = 250
          Height = 21
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
          Left = 85
          Top = 31
          DataBinding.DataField = 'MTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersOpened
          Transparent = True
          Height = 19
          Width = 50
        end
        object cxDBLabel23: TcxDBLabel
          Left = 85
          Top = 59
          DataBinding.DataField = 'YTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersOpened
          Transparent = True
          Height = 20
          Width = 50
        end
        object cxDBLabel25: TcxDBLabel
          Left = 172
          Top = 31
          DataBinding.DataField = 'MTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersclosed
          Transparent = True
          Height = 19
          Width = 66
        end
        object cxDBLabel26: TcxDBLabel
          Left = 172
          Top = 59
          DataBinding.DataField = 'YTD'
          DataBinding.DataSource = dmDashboardFirm.dsMattersclosed
          Transparent = True
          Height = 20
          Width = 66
        end
        object Panel4: TPanel
          Left = 0
          Top = 92
          Width = 250
          Height = 21
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
          Left = 88
          Top = 122
          DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
          DataBinding.DataSource = dmDashboardFirm.dsClientCountMTD
          Transparent = True
          Height = 18
          Width = 49
        end
        object cxDBLabel30: TcxDBLabel
          Left = 88
          Top = 148
          DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
          DataBinding.DataSource = dmDashboardFirm.dsClientCountYTD
          Transparent = True
          Height = 18
          Width = 49
        end
        object Panel5: TPanel
          Left = -1
          Top = 180
          Width = 251
          Height = 21
          Caption = 'YTD Profit/Loss'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object grdProfitLoss: TcxGrid
          Left = 1
          Top = 200
          Width = 249
          Height = 139
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
          Left = 164
          Top = 122
          DataBinding.DataField = 'NVL(SUM(ESTIMATEDFEE),0)'
          DataBinding.DataSource = dmDashboardFirm.dsClientTotalAmountMTD
          Transparent = True
          Height = 18
          Width = 81
        end
        object cxDBLabel43: TcxDBLabel
          Left = 164
          Top = 148
          DataBinding.DataField = 'NVL(SUM(ESTIMATEDFEE),0)'
          DataBinding.DataSource = dmDashboardFirm.dsClientTotalAmountYTD
          Transparent = True
          Height = 18
          Width = 81
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 277
        Top = 7
        Width = 553
        Height = 303
        TabOrder = 1
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        Properties.TabSlants.Kind = skCutCorner
        LookAndFeel.NativeStyle = True
        ClientRectBottom = 299
        ClientRectLeft = 4
        ClientRectRight = 549
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'Top 10 Clients'
          ImageIndex = 0
          object cxGrid1: TcxGrid
            Left = 275
            Top = 22
            Width = 270
            Height = 251
            Align = alRight
            TabOrder = 0
            LookAndFeel.NativeStyle = True
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
                Width = 173
              end
              object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                MinWidth = 23
                Width = 95
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 545
            Height = 22
            Align = alTop
            TabOrder = 1
            object cxLabel2: TcxLabel
              Left = 169
              Top = -2
              Caption = 'Figures are for rolling 12 months'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 4
              Top = -1
              Caption = 'Previous Year'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 481
              Top = -2
              Caption = 'This Year'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object cxGrid4: TcxGrid
            Left = 0
            Top = 22
            Width = 270
            Height = 251
            Align = alLeft
            TabOrder = 2
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDashboardFirm.dsTopClientsPY
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '$,0.00;-$,0.00'
                  Kind = skSum
                  FieldName = 'TOTAL'
                  Column = cxGridDBColumn4
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
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Client'
                DataBinding.FieldName = 'NAME'
                MinWidth = 23
                Width = 173
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                MinWidth = 23
                Width = 95
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Top 10 Referrers'
          ImageIndex = 1
          object cxGrid2: TcxGrid
            Left = 275
            Top = 22
            Width = 270
            Height = 251
            Align = alRight
            TabOrder = 0
            LookAndFeel.NativeStyle = True
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
            Width = 545
            Height = 22
            Align = alTop
            TabOrder = 1
            object cxLabel1: TcxLabel
              Left = 169
              Top = 0
              Caption = 'Figures are for rolling 12 months'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 0
              Top = 0
              Caption = 'Previous Year'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 483
              Top = 0
              Caption = 'This Year'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object cxGrid6: TcxGrid
            Left = 0
            Top = 22
            Width = 270
            Height = 251
            Align = alLeft
            TabOrder = 2
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDashboardFirm.dsTopReferrersPY
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '$,0.00;-$,0.00'
                  Kind = skSum
                  FieldName = 'TOTAL'
                  Column = cxGridDBColumn6
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
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Referrer'
                DataBinding.FieldName = 'NAME'
                MinWidth = 23
                Width = 150
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                MinWidth = 23
                Width = 97
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 830
        Top = 6
        Width = 255
        Height = 302
        BevelOuter = bvNone
        Caption = 'Panel6'
        Color = clWhite
        TabOrder = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 255
          Height = 25
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
          Top = 25
          Width = 255
          Height = 277
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
        Left = 277
        Top = 316
        Width = 521
        Height = 66
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 3
        object Label31: TLabel
          Left = 8
          Top = 45
          Width = 68
          Height = 15
          Caption = 'Cash at Bank'
          Transparent = True
        end
        object Label32: TLabel
          Left = 209
          Top = 23
          Width = 37
          Height = 17
          Caption = 'Office'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 318
          Top = 23
          Width = 44
          Height = 17
          Caption = 'Service'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 447
          Top = 23
          Width = 31
          Height = 17
          Caption = 'Trust'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 521
          Height = 21
          Align = alTop
          Caption = 'Cashflow'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object lblOffice: TcxLabel
          Left = 151
          Top = 43
          AutoSize = False
          Caption = '$0.00'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 95
          AnchorX = 246
        end
        object lblService: TcxLabel
          Left = 270
          Top = 43
          AutoSize = False
          Caption = '$0.00'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 95
          AnchorX = 365
        end
        object lblTrust: TcxLabel
          Left = 383
          Top = 43
          AutoSize = False
          Caption = '$0.00'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 95
          AnchorX = 478
        end
      end
      object Panel13: TPanel
        Left = 277
        Top = 382
        Width = 521
        Height = 61
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 4
        object Label8: TLabel
          Left = 8
          Top = 35
          Width = 25
          Height = 15
          Caption = 'Total'
          Transparent = True
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 521
          Height = 21
          Align = alTop
          Caption = 'Firms Liability ( Creditors )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cxDBLabel10: TcxDBLabel
          Left = 201
          Top = 31
          DataBinding.DataField = 'NVL(SUM(OWING),0)'
          DataBinding.DataSource = dmDashboardFirm.dsFirmCreditors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 22
          Width = 129
          AnchorX = 330
        end
      end
    end
  end
  object pnltop: TPanel
    Left = 0
    Top = 28
    Width = 1118
    Height = 22
    Align = alTop
    Caption = 'WALLMANS - FIRM BALANCED SCORECARD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 650
    Top = 25
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
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
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbThreeD'
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
    end
    object cbThreeD: TcxBarEditItem
      Caption = 'View 3D '
      Category = 0
      Hint = 'View 3D '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cxBarEditItem1PropertiesEditValueChanged
      InternalEditValue = True
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
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
    XLSSettings.WorksheetName = 'Report'
    Left = 518
    Top = 528
    Version = '20.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
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
    Left = 823
    Top = 68
    PixelsPerInch = 96
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
      ReportDocument.CreationDate = 43780.753562060180000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 96
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
      ReportDocument.CreationDate = 43780.753562094910000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 96
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
      ReportDocument.CreationDate = 43780.753562129630000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsExpanding.ExpandGroupRows = True
      OptionsSize.AutoWidth = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
