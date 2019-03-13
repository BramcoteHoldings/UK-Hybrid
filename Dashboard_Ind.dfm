object frmDashboard_Ind: TfrmDashboard_Ind
  Left = 441
  Top = 193
  Caption = 'Dashboard - Individual'
  ClientHeight = 864
  ClientWidth = 1379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 15
  object Label37: TLabel
    Left = 15
    Top = 73
    Width = 41
    Height = 15
    Caption = 'Debtors'
  end
  object Label39: TLabel
    Left = 15
    Top = 52
    Width = 75
    Height = 15
    Caption = 'Unbilled Disbs'
  end
  object pagMain: TcxPageControl
    Left = 0
    Top = 53
    Width = 1379
    Height = 811
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabWIP
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 1
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 807
    ClientRectLeft = 4
    ClientRectRight = 1375
    ClientRectTop = 27
    object tabWIP: TcxTabSheet
      Caption = 'WIP'
      ImageIndex = 0
      OnShow = tabWIPShow
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 1379
      ExplicitHeight = 789
      object pnlWIP: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 780
        Align = alClient
        Caption = 'pnlWIP'
        Color = clWhite
        TabOrder = 0
        ExplicitWidth = 1379
        ExplicitHeight = 789
        DesignSize = (
          1371
          780)
        object Label6: TLabel
          Left = 14
          Top = 122
          Width = 27
          Height = 15
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 14
          Top = 270
          Width = 40
          Height = 15
          Caption = 'Current'
          Transparent = True
        end
        object Label12: TLabel
          Left = 14
          Top = 288
          Width = 12
          Height = 15
          Caption = '30'
          Transparent = True
        end
        object Label13: TLabel
          Left = 14
          Top = 307
          Width = 12
          Height = 15
          Caption = '60'
          Transparent = True
        end
        object Label14: TLabel
          Left = 14
          Top = 325
          Width = 12
          Height = 15
          Caption = '90'
          Transparent = True
        end
        object Label15: TLabel
          Left = 14
          Top = 344
          Width = 26
          Height = 15
          Caption = '120+'
          Transparent = True
        end
        object Label16: TLabel
          Left = 14
          Top = 362
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
        object Label21: TLabel
          Left = 155
          Top = 470
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
        object Label20: TLabel
          Left = 80
          Top = 470
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
        object Label18: TLabel
          Left = 14
          Top = 500
          Width = 45
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label19: TLabel
          Left = 15
          Top = 523
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object Label1: TLabel
          Left = 14
          Top = 36
          Width = 40
          Height = 15
          Caption = 'Current'
        end
        object Label2: TLabel
          Left = 14
          Top = 53
          Width = 12
          Height = 15
          Caption = '30'
        end
        object Label3: TLabel
          Left = 14
          Top = 70
          Width = 12
          Height = 15
          Caption = '60'
        end
        object Label4: TLabel
          Left = 14
          Top = 88
          Width = 12
          Height = 15
          Caption = '90'
        end
        object Label5: TLabel
          Left = 14
          Top = 105
          Width = 26
          Height = 15
          Caption = '120+'
        end
        object pnlDebtors: TPanel
          Left = 1
          Top = 1
          Width = 1369
          Height = 23
          Align = alTop
          Caption = 'Debtors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 1377
          object Label8: TLabel
            Left = 66
            Top = 3
            Width = 66
            Height = 15
            Caption = 'No. Matters'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 159
            Top = 3
            Width = 45
            Height = 15
            Caption = 'Amount'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object pnlUnbilledWIP: TPanel
          Left = 0
          Top = 205
          Width = 1370
          Height = 22
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Unbilled WIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 1378
        end
        object pnlWIPGenerated: TPanel
          Left = 0
          Top = 410
          Width = 1370
          Height = 22
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Billable Time (12 Months)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          ExplicitWidth = 1378
        end
        object cxDBLabel41: TcxDBLabel
          Left = 81
          Top = 120
          DataBinding.DataField = 'TOTALMATTERS'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
          ParentFont = False
          Style.BorderStyle = ebsSingle
          Style.Edges = [bTop]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 18
          Width = 40
        end
        object cxDBLabel35: TcxDBLabel
          Left = 143
          Top = 120
          DataBinding.DataField = 'TOTALAGED'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.BorderStyle = ebsSingle
          Style.Edges = [bTop]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 20
          Width = 97
          AnchorX = 240
        end
        object lblWipCurrent: TcxDBLabel
          Left = 89
          Top = 268
          DataBinding.DataField = '0days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 92
          AnchorX = 181
        end
        object lblWipTotal: TcxLabel
          Left = 96
          Top = 360
          AutoSize = False
          Caption = 'lblWipTotal'
          Style.BorderStyle = ebsSingle
          Style.Edges = [bTop]
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 87
          AnchorX = 183
        end
        object lblwip120: TcxDBLabel
          Left = 89
          Top = 342
          DataBinding.DataField = '120days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 92
          AnchorX = 181
        end
        object lblWip90: TcxDBLabel
          Left = 89
          Top = 323
          DataBinding.DataField = '90days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 92
          AnchorX = 181
        end
        object lblWip60: TcxDBLabel
          Left = 89
          Top = 305
          DataBinding.DataField = '60days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 92
          AnchorX = 181
        end
        object lblWip30: TcxDBLabel
          Left = 89
          Top = 286
          DataBinding.DataField = '30days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 92
          AnchorX = 181
        end
        object cxDBLabel9: TcxDBLabel
          Left = 65
          Top = 497
          DataBinding.DataField = 'MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsWIPGenerated
          Transparent = True
          Height = 19
          Width = 72
        end
        object cxDBLabel6: TcxDBLabel
          Left = 142
          Top = 497
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsWipGeneratedBudget
          Transparent = True
          Height = 19
          Width = 73
        end
        object cxDBLabel7: TcxDBLabel
          Left = 142
          Top = 520
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsWipGeneratedBudget
          Transparent = True
          Height = 19
          Width = 73
        end
        object cxDBLabel8: TcxDBLabel
          Left = 65
          Top = 520
          DataBinding.DataField = 'YEAR_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsWIPGenerated
          Transparent = True
          Height = 19
          Width = 72
        end
        object chrtWIPGenerated: TDBChart
          Tag = 2
          Left = 242
          Top = 433
          Width = 1121
          Height = 167
          AllowPanning = pmNone
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.AdjustFrame = False
          Title.Alignment = taRightJustify
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chrtWIPGeneratedClickSeries
          BottomAxis.LabelsMultiLine = True
          LeftAxis.LabelsMultiLine = True
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 4
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnUnDock = chrtWIPGeneratedUnDock
          ExplicitWidth = 1129
          ColorPaletteIndex = 13
          object Series3: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryWIPGeneratedGraph
            SeriesColor = clRed
            ShowInLegend = False
            Title = 'Actual Data'
            XLabelsSource = 'VIEWDATE'
            XValues.Name = 'X'
            XValues.Order = loNone
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
            DataSource = dmDashboardInd.qryWIPGeneratedBudgetGraph
            SeriesColor = 10485760
            XLabelsSource = 'VIEWDATE'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'WIPBUDGET'
          end
        end
        object chartWIP: TDBChart
          Tag = 1
          Left = 243
          Top = 228
          Width = 1124
          Height = 174
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Foot.Visible = False
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartWIPClickSeries
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 2
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnClick = chartWIPClick
          ExplicitWidth = 1132
          ColorPaletteIndex = 13
          object Series2: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryWIPGraph
            SeriesColor = clRed
            XLabelsSource = #39'CURRENT'#39
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = '1'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 
              'NVL(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED),TRUNC(SYSDATE)-:P1,TRUNC' +
              '(SYSDATE),NVL(FEE.AMOUNT,0))),0)'
          end
        end
        object chartDebtors: TDBChart
          Left = 245
          Top = 24
          Width = 1125
          Height = 183
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartDebtorsClickSeries
          Legend.Visible = False
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 27
          Anchors = [akLeft, akTop, akRight]
          OnClick = chartDebtorsClick
          ExplicitWidth = 1133
          ColorPaletteIndex = 13
          object Series10: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryAgedDebtorsGraph
            SeriesColor = clRed
            XLabelsSource = #39'CURRENT'#39
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'Current'
          end
        end
        object cxDBLabel13: TcxDBLabel
          Left = 152
          Top = 31
          DataBinding.DataField = 'ADJ0'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 86
          AnchorX = 238
        end
        object cxDBLabel36: TcxDBLabel
          Left = 81
          Top = 33
          DataBinding.DataField = 'ADJ0'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
          Transparent = True
          Height = 19
          Width = 40
        end
        object cxDBLabel40: TcxDBLabel
          Left = 81
          Top = 103
          DataBinding.DataField = 'ADJ10'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
          Transparent = True
          Height = 18
          Width = 40
        end
        object cxDBLabel39: TcxDBLabel
          Left = 81
          Top = 85
          DataBinding.DataField = 'ADJ3'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
          Transparent = True
          Height = 19
          Width = 40
        end
        object cxDBLabel38: TcxDBLabel
          Left = 81
          Top = 68
          DataBinding.DataField = 'ADJ2'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
          Transparent = True
          Height = 19
          Width = 40
        end
        object cxDBLabel37: TcxDBLabel
          Left = 81
          Top = 51
          DataBinding.DataField = 'ADJ1'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
          Transparent = True
          Height = 18
          Width = 40
        end
        object cxDBLabel31: TcxDBLabel
          Left = 152
          Top = 50
          DataBinding.DataField = 'ADJ1'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 86
          AnchorX = 238
        end
        object cxDBLabel32: TcxDBLabel
          Left = 152
          Top = 66
          DataBinding.DataField = 'ADJ2'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 86
          AnchorX = 238
        end
        object cxDBLabel33: TcxDBLabel
          Left = 152
          Top = 83
          DataBinding.DataField = 'ADJ3'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 86
          AnchorX = 238
        end
        object cxDBLabel34: TcxDBLabel
          Left = 152
          Top = 100
          DataBinding.DataField = 'ADJ10'
          DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 86
          AnchorX = 238
        end
      end
    end
    object tabFees: TcxTabSheet
      Caption = 'Fees'
      ImageIndex = 1
      OnShow = tabFeesShow
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 1379
      ExplicitHeight = 789
      object pnlFees: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 729
        Align = alTop
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1379
        DesignSize = (
          1371
          729)
        object Label17: TLabel
          Left = 331
          Top = 142
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
          Left = 406
          Top = 142
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
        object Label7: TLabel
          Left = 265
          Top = 159
          Width = 38
          Height = 16
          Caption = 'MONTH'
        end
        object Label10: TLabel
          Left = 265
          Top = 175
          Width = 19
          Height = 16
          Caption = 'YTD'
        end
        object Label27: TLabel
          Left = 332
          Top = 669
          Width = 38
          Height = 16
          Caption = 'MONTH'
          Transparent = True
          Visible = False
        end
        object Label34: TLabel
          Left = 397
          Top = 639
          Width = 35
          Height = 15
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label38: TLabel
          Left = 472
          Top = 639
          Width = 41
          Height = 15
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label28: TLabel
          Left = 10
          Top = 702
          Width = 21
          Height = 16
          Caption = 'YTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label42: TLabel
          Left = 10
          Top = 327
          Width = 21
          Height = 16
          Caption = 'YTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBLabel14: TcxDBLabel
          Left = 393
          Top = 157
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledBudget
          Height = 18
          Width = 73
        end
        object cxDBLabel17: TcxDBLabel
          Left = 393
          Top = 173
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledBudget
          Height = 19
          Width = 73
        end
        object cxDBLabel16: TcxDBLabel
          Left = 316
          Top = 173
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledYTD
          Height = 19
          Width = 73
        end
        object cxDBLabel15: TcxDBLabel
          Left = 316
          Top = 157
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledMonth
          Height = 18
          Width = 73
        end
        object pnlFeesBilled: TPanel
          Left = 1
          Top = 1
          Width = 1369
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
          TabOrder = 4
          ExplicitWidth = 1377
        end
        object cxDBLabel20: TcxDBLabel
          Left = 460
          Top = 667
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesReceivedBudget
          Transparent = True
          Visible = False
          Height = 18
          Width = 73
        end
        object cxDBLabel21: TcxDBLabel
          Left = 153
          Top = 698
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesReceivedBudget
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Narrow'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 23
          Width = 73
        end
        object cxDBLabel18: TcxDBLabel
          Left = 62
          Top = 698
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardInd.dsFeeReceivedYear
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Narrow'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 23
          Width = 73
        end
        object cxDBLabel19: TcxDBLabel
          Left = 381
          Top = 666
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardInd.dsFeeReceivedMonth
          Transparent = True
          Visible = False
          Height = 18
          Width = 72
        end
        object chartBilledMonthly: TDBChart
          Left = 232
          Top = 22
          Width = 1137
          Height = 299
          AllowPanning = pmNone
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartBilledMonthlyClickSeries
          ClipPoints = False
          LeftAxis.TickOnLabelsOnly = False
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 5
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnUnDock = chartBilledMonthlyUnDock
          ExplicitWidth = 1145
          ColorPaletteIndex = 13
          object Series6: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryFeesBilledGraph
            SeriesColor = clRed
            Title = 'Actual Data'
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
            DataSource = dmDashboardInd.qryFeesBilledBudgetGraph
            SeriesColor = 10485760
            ShowInLegend = False
            XLabelsSource = 'RPT_PERIOD'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES_BUDGET'
          end
        end
        object chartReceivedMonthly: TDBChart
          Left = 232
          Top = 367
          Width = 1137
          Height = 317
          AllowPanning = pmNone
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartReceivedMonthlyClickSeries
          ClipPoints = False
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 10
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnUnDock = chartReceivedMonthlyUnDock
          ExplicitWidth = 1145
          ColorPaletteIndex = 13
          object Series7: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryFeesReceivedGraph
            SeriesColor = clRed
            ShowInLegend = False
            Title = 'Actual Data'
            XLabelsSource = 'DISP_PERIOD'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES_PAID'
          end
          object Series8: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryFeesReceivedBudgetGraph
            SeriesColor = 10485760
            ShowInLegend = False
            XLabelsSource = 'RPT_PERIOD'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'FEES_BUDGET'
          end
        end
        object pnlFeesReceived: TPanel
          Left = 1
          Top = 343
          Width = 1369
          Height = 22
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
          TabOrder = 11
          ExplicitWidth = 1377
        end
        object grdFeeBilled: TcxGrid
          Left = 0
          Top = 0
          Width = 228
          Height = 321
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 12
          LookAndFeel.NativeStyle = True
          object tvFeeBilled: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardInd.dsFeesListBudget
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'FEES'
                Column = tvFeeBilledFEES_PAID
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            Styles.Content = cxStyle1
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object tvFeeBilledDISP_PERIOD: TcxGridDBColumn
              Caption = 'Period'
              DataBinding.FieldName = 'DISP_PERIOD'
              MinWidth = 40
              Width = 40
            end
            object tvFeeBilledFEES_PAID: TcxGridDBColumn
              Caption = 'Fees'
              DataBinding.FieldName = 'FEES'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 23
            end
            object tvFeeBilledFEES_BUDGET: TcxGridDBColumn
              Caption = 'Budget'
              DataBinding.FieldName = 'FEES_BUDGET'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 23
            end
            object tvFeeBilledRATIO: TcxGridDBColumn
              Caption = '%'
              DataBinding.FieldName = 'RATIO'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 35
              Width = 35
            end
            object tvFeeBilledPERIOD: TcxGridDBColumn
              DataBinding.FieldName = 'PERIOD'
              Visible = False
              MinWidth = 23
            end
          end
          object grdFeeBilledLevel1: TcxGridLevel
            GridView = tvFeeBilled
          end
        end
        object cxDBLabel3: TcxDBLabel
          Left = 38
          Top = 327
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledYTD
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Narrow'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 92
          AnchorX = 130
          AnchorY = 344
        end
        object cxDBLabel4: TcxDBLabel
          Left = 133
          Top = 327
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledBudget
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taBottomJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Narrow'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 94
          AnchorX = 227
          AnchorY = 344
        end
        object grdFeeReceived: TcxGrid
          Left = 0
          Top = 363
          Width = 228
          Height = 321
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 15
          LookAndFeel.NativeStyle = True
          object tvFeeReceived: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardInd.dsFeesReceivedGrid
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'FEES'
                Column = cxGridDBColumn4
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            Styles.Content = cxStyle1
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Period'
              DataBinding.FieldName = 'DISP_PERIOD'
              MinWidth = 40
              Width = 40
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Fees'
              DataBinding.FieldName = 'FEES_PAID'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 23
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Budget'
              DataBinding.FieldName = 'FEES_BUDGET'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 23
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = '%'
              DataBinding.FieldName = 'RATIO'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 35
              Width = 35
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'PERIOD'
              Visible = False
              MinWidth = 23
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = tvFeeReceived
          end
        end
      end
    end
    object tabLockUp: TcxTabSheet
      Caption = 'Lock Up'
      ImageIndex = 4
      OnShow = tabLockUpShow
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 1379
      ExplicitHeight = 789
      object pnlLockupGraph: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 780
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        ExplicitWidth = 1379
        ExplicitHeight = 789
        object Label22: TLabel
          Left = 9
          Top = 39
          Width = 48
          Height = 15
          Caption = 'Creditors'
          Transparent = True
        end
        object Label23: TLabel
          Left = 9
          Top = 59
          Width = 41
          Height = 15
          Caption = 'Debtors'
          Transparent = True
        end
        object Label24: TLabel
          Left = 9
          Top = 80
          Width = 45
          Height = 15
          Caption = 'Sundries'
          Transparent = True
        end
        object Label40: TLabel
          Left = 9
          Top = 100
          Width = 70
          Height = 15
          Caption = 'Unbilled Disb'
          Transparent = True
        end
        object Label41: TLabel
          Left = 9
          Top = 121
          Width = 21
          Height = 15
          Caption = 'WIP'
          Transparent = True
        end
        object Label25: TLabel
          Left = 9
          Top = 160
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
        object pnlLockup: TPanel
          Left = 0
          Top = 0
          Width = 1371
          Height = 23
          Align = alTop
          Caption = 'Lock Up'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 1379
        end
        object chartLockup: TDBChart
          Left = 238
          Top = 23
          Width = 1133
          Height = 218
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartLockupClickSeries
          ClipPoints = False
          Legend.Visible = False
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnUnDock = chartLockupUnDock
          ExplicitWidth = 1141
          ColorPaletteIndex = 13
          object Series4: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.ShapeStyle = fosRoundRectangle
            Marks.Visible = False
            DataSource = dmDashboardInd.qryLockupGraph
            SeriesColor = clRed
            ShowInLegend = False
            XLabelsSource = 'LOCKUP'
            XValues.Name = 'X'
            XValues.Order = loNone
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'MONTH_TOTAL'
          end
        end
        object cxDBLabel10: TcxDBLabel
          Left = 96
          Top = 37
          DataBinding.DataField = 'CRED_MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsLockupCredSund
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 94
          AnchorX = 190
        end
        object cxDBLabel11: TcxDBLabel
          Left = 96
          Top = 57
          DataBinding.DataField = 'DEBTOR_AMOUNT'
          DataBinding.DataSource = dmDashboardInd.dsDebtorLockup
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 94
          AnchorX = 190
        end
        object cxDBLabel12: TcxDBLabel
          Left = 96
          Top = 77
          DataBinding.DataField = 'SUND_MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsLockupCredSund
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 94
          AnchorX = 190
        end
        object cxDBLabel1: TcxDBLabel
          Left = 96
          Top = 98
          DataBinding.DataField = 'UNBILL_DISB'
          DataBinding.DataSource = dmDashboardInd.dsUnbilledDisbs
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 19
          Width = 94
          AnchorX = 190
        end
        object cxDBLabel2: TcxDBLabel
          Left = 96
          Top = 119
          DataBinding.DataField = 'MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsWIPLockup
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 18
          Width = 94
          AnchorX = 190
        end
        object teLockupTotal: TcxLabel
          Left = 96
          Top = 158
          AutoSize = False
          Caption = 'teLockupTotal'
          ParentFont = False
          Style.BorderStyle = ebsSingle
          Style.Edges = [bTop]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 94
          AnchorX = 190
        end
      end
    end
    object tabTopClient: TcxTabSheet
      Caption = 'Clients'
      ImageIndex = 2
      OnShow = tabTopClientShow
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 1379
      ExplicitHeight = 789
      object pnlClients: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 608
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 1379
        object cxPageControl1: TcxPageControl
          Left = 306
          Top = 8
          Width = 295
          Height = 321
          TabOrder = 0
          Properties.ActivePage = tsTopClients
          Properties.CustomButtons.Buttons = <>
          Properties.ShowFrame = True
          Properties.Style = 1
          Properties.TabSlants.Kind = skCutCorner
          LookAndFeel.NativeStyle = True
          TabSlants.Kind = skCutCorner
          ClientRectBottom = 317
          ClientRectLeft = 4
          ClientRectRight = 291
          ClientRectTop = 27
          object tsTopClients: TcxTabSheet
            Caption = 'Top 10 Clients (Contributor)'
            ImageIndex = 0
            ExplicitLeft = 1
            ExplicitTop = 22
            ExplicitWidth = 293
            ExplicitHeight = 298
            object grdTopClients: TcxGrid
              Left = 0
              Top = 22
              Width = 287
              Height = 268
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = True
              ExplicitWidth = 293
              ExplicitHeight = 276
              object tvTopClients: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmDashboardInd.dsTopClients
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '$,0.00;-$,0.00'
                    Kind = skSum
                    FieldName = 'TOTAL'
                    Column = tvTopClientsTOTAL
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
                object tvTopClientsNAME: TcxGridDBColumn
                  Caption = 'Client'
                  DataBinding.FieldName = 'NAME'
                  MinWidth = 23
                  Width = 172
                end
                object tvTopClientsTOTAL: TcxGridDBColumn
                  Caption = 'Amount'
                  DataBinding.FieldName = 'TOTAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderGlyphAlignmentHorz = taRightJustify
                  MinWidth = 23
                  Width = 119
                end
              end
              object grdTopClientsLevel1: TcxGridLevel
                GridView = tvTopClients
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 287
              Height = 22
              Align = alTop
              TabOrder = 1
              ExplicitLeft = 61
              ExplicitTop = 48
              ExplicitWidth = 185
              object cxLabel10: TcxLabel
                Left = 44
                Top = 1
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
            object grdTopReferrers: TcxGrid
              Left = 0
              Top = 22
              Width = 287
              Height = 268
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = True
              object cxGridDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmDashboardInd.dsTopReferrers
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
              Width = 287
              Height = 22
              Align = alTop
              TabOrder = 1
              ExplicitLeft = 41
              ExplicitTop = 44
              ExplicitWidth = 185
              object cxLabel11: TcxLabel
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
          Left = 14
          Top = 198
          Width = 270
          Height = 261
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 2
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 270
            Height = 25
            Align = alTop
            Caption = 'Matter Profitability by Type %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object grdMatterProfitability: TcxGrid
            Left = 0
            Top = 25
            Width = 270
            Height = 236
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = True
            object tvMatterProfitability: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDashboardInd.dsClientMilestones
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
              object tvMatterProfitabilityDESCR: TcxGridDBColumn
                DataBinding.FieldName = 'DESCR'
                MinWidth = 23
              end
              object tvMatterProfitabilityTOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
                MinWidth = 23
                Width = 87
              end
            end
            object glvMatterProfitability: TcxGridLevel
              GridView = tvMatterProfitability
            end
          end
        end
        object Panel3: TPanel
          Left = 14
          Top = 6
          Width = 270
          Height = 191
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          object Label29: TLabel
            Left = 5
            Top = 36
            Width = 27
            Height = 15
            Caption = 'MTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 5
            Top = 57
            Width = 23
            Height = 15
            Caption = 'YTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 160
            Top = 36
            Width = 36
            Height = 15
            Caption = 'Closed'
          end
          object Label32: TLabel
            Left = 160
            Top = 57
            Width = 36
            Height = 15
            Caption = 'Closed'
          end
          object Label33: TLabel
            Left = 3
            Top = 77
            Width = 74
            Height = 15
            Caption = 'Total Matters'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 8
            Top = 128
            Width = 27
            Height = 15
            Caption = 'MTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 8
            Top = 149
            Width = 23
            Height = 15
            Caption = 'YTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBLabel22: TcxDBLabel
            Left = 95
            Top = 33
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersOpened
            Height = 19
            Width = 53
          end
          object cxDBLabel23: TcxDBLabel
            Left = 95
            Top = 54
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersOpened
            Height = 20
            Width = 53
          end
          object cxDBLabel24: TcxDBLabel
            Left = 95
            Top = 75
            DataBinding.DataField = 'MATTS'
            DataBinding.DataSource = dmDashboardInd.dsTotalMatters
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Edges = []
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Height = 20
            Width = 53
          end
          object cxDBLabel25: TcxDBLabel
            Left = 211
            Top = 33
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersClosed
            Height = 19
            Width = 53
          end
          object cxDBLabel26: TcxDBLabel
            Left = 211
            Top = 54
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersClosed
            Height = 20
            Width = 53
          end
          object cxDBLabel27: TcxDBLabel
            Left = 211
            Top = 75
            DataBinding.DataField = 'CLOSED'
            DataBinding.DataSource = dmDashboardInd.dsTotalMatters
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Edges = []
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Height = 20
            Width = 53
          end
          object Panel4: TPanel
            Left = 0
            Top = 99
            Width = 270
            Height = 22
            Caption = 'Clients'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object cxDBLabel28: TcxDBLabel
            Left = 95
            Top = 126
            DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
            DataBinding.DataSource = dmDashboardInd.dsClientCountMTD
            Height = 18
            Width = 53
          end
          object cxDBLabel30: TcxDBLabel
            Left = 95
            Top = 147
            DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
            DataBinding.DataSource = dmDashboardInd.dsClientCountYTD
            Height = 19
            Width = 53
          end
          object pnlMatters: TPanel
            Left = 0
            Top = 0
            Width = 270
            Height = 22
            Align = alTop
            Caption = 'Matters'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
        end
      end
    end
    object tabCalendar: TcxTabSheet
      Caption = 'Monthly Chargeable/Non Chargeable Units - Summary'
      ImageIndex = 3
      OnShow = tabCalendarShow
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 1379
      ExplicitHeight = 789
      object pnlCalendar: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 780
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1379
        ExplicitHeight = 789
        object Panel5: TPanel
          Left = 1
          Top = 728
          Width = 1369
          Height = 51
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 737
          ExplicitWidth = 1377
          object cxGroupBox1: TcxGroupBox
            Left = 7
            Top = 2
            Caption = 'MTD (Hours)'
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Transparent = True
            Height = 43
            Width = 443
            object cxLabel1: TcxLabel
              Left = 9
              Top = 17
              Caption = 'Chargeable'
            end
            object cxLabel2: TcxLabel
              Left = 123
              Top = 17
              Caption = 'Non Chargeable'
            end
            object cxLabel3: TcxLabel
              Left = 367
              Top = 17
              Caption = 'Total'
            end
            object lblMthChargeable: TcxLabel
              Left = 82
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 35
              AnchorX = 117
            end
            object lblMthNonChargeable: TcxLabel
              Left = 220
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 35
              AnchorX = 255
            end
            object lblMonthTotal: TcxLabel
              Left = 403
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 34
              AnchorX = 437
            end
            object cxLabel9: TcxLabel
              Left = 260
              Top = 17
              Caption = 'Overhead'
            end
            object lblMthOverhead: TcxLabel
              Left = 323
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 35
              AnchorX = 358
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 457
            Top = 2
            Caption = 'YTD (Hours)'
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Transparent = True
            Height = 43
            Width = 473
            object cxLabel13: TcxLabel
              Left = 9
              Top = 17
              Caption = 'Chargeable'
            end
            object cxLabel14: TcxLabel
              Left = 122
              Top = 17
              Caption = 'Non Chargeable'
            end
            object cxLabel15: TcxLabel
              Left = 373
              Top = 17
              Caption = 'Total'
            end
            object lblYearChargeable: TcxLabel
              Left = 78
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 41
              AnchorX = 119
            end
            object lblYearNonChargeable: TcxLabel
              Left = 216
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 40
              AnchorX = 256
            end
            object lblYeartotal: TcxLabel
              Left = 411
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 51
              AnchorX = 462
            end
            object Overhead: TcxLabel
              Left = 263
              Top = 17
              Caption = 'Overhead'
            end
            object lblYearOverhead: TcxLabel
              Left = 323
              Top = 17
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 39
              AnchorX = 362
            end
          end
        end
        object Scheduler: TcxScheduler
          Left = 1
          Top = 32
          Width = 1369
          Height = 696
          DateNavigator.ShowDatesContainingHolidaysInColor = True
          DateNavigator.Visible = False
          ViewAgenda.EventTextMinWidth = 140
          ViewDay.CanShow = False
          ViewDay.TimeRulerPopupMenu.UseBuiltInPopupMenu = False
          ViewGantt.Scales.MajorUnitSeparatorWidth = 6
          ViewGantt.Scales.MinorUnitWidth = 58
          ViewGantt.TreeBrowser.Width = 288
          ViewTimeGrid.Scales.MajorUnitSeparatorWidth = 6
          ViewTimeGrid.Scales.MinorUnitWidth = 58
          ViewWeek.CompressWeekEnd = False
          ViewWeek.ShowEndTime = False
          ViewWeeks.Active = True
          ViewWeeks.CompressWeekEnd = False
          ViewWeeks.GroupingKind = gkByDate
          ViewWeeks.ShowEndTime = False
          ViewWeeks.ShowTimeAsClock = True
          Align = alClient
          ContentPopupMenu.UseBuiltInPopupMenu = False
          ControlBox.Visible = False
          DragMode = dmManual
          EventOperations.DialogShowing = False
          EventOperations.ReadOnly = True
          EventOperations.Recurrence = False
          EventPopupMenu.UseBuiltInPopupMenu = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          LookAndFeel.NativeStyle = True
          OptionsCustomize.ControlsSizing = False
          OptionsCustomize.IntegralSizing = False
          OptionsView.DayBorderColor = clBlue
          OptionsView.GroupSeparatorWidth = 13
          OptionsView.HorzSplitterWidth = 6
          OptionsView.ShowEventsWithoutResource = True
          OptionsView.VertSplitterWidth = 6
          Storage = cxSchedulerStorage1
          TabOrder = 1
          ExplicitWidth = 1377
          ExplicitHeight = 705
          Selection = 35
          Splitters = {
            020300007E00000091030000830000003C0400000100000041040000C9010000}
          StoredClientBounds = {010000000100000058050000B7020000}
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 1369
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Monthly Chargeable/Non Chargeable Units - Summary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ExplicitWidth = 1377
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 30
    Width = 1379
    Height = 23
    Align = alTop
    Caption = 'WALLMANS -  BALANCED SCORECARD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object cbThreeD: TcxCheckBox
    Left = 1002
    Top = 743
    Caption = 'View 3D'
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    OnClick = cbThreeDClick
  end
  object cmbEmployee: TcxLookupComboBox
    Left = 107
    Top = 818
    Properties.DropDownRows = 20
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListSource = dsEmployeeList
    Properties.OnCloseUp = cmbEmployeePropertiesCloseUp
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Visible = False
    Width = 247
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
    Left = 687
    Top = 3
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
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'empContainer'
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
      ShortCut = 16499
      OnClick = dxBtnexitClick
    end
    object dxBDate: TdxBarStatic
      Align = iaRight
      Caption = 'Date'
      Category = 0
      Hint = 'Date'
      Visible = ivAlways
    end
    object empContainer: TdxBarControlContainerItem
      Caption = 'Employee List'
      Category = 0
      Hint = 'Employee List'
      Visible = ivAlways
      Control = cmbEmployee
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Employee:'
      Category = 0
      Hint = 'Employee:'
      Visible = ivAlways
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
      Caption = 'threeD'
      Category = 0
      Hint = 'threeD'
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
    Left = 696
    Top = 592
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
  object cxSchedulerStorage1: TcxSchedulerStorage
    CustomFields = <>
    Resources.Items = <>
    Left = 1067
    Top = 617
  end
  object qryEmployeeList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct e.CODE, e.name '
      'FROM  employee e'
      'where '
      'e.NFEE_AUTHORITY in'
      '(select distinct nfee_authority from fee_authority_relation'
      
        'start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority fr' +
        'om employee where code = :code)'
      'connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      'and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)'
      'order by e.name')
    Left = 567
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dsEmployeeList: TUniDataSource
    DataSet = qryEmployeeList
    Left = 638
    Top = 5
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink5
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPreferences, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPreferences, pvoPrint, pvoPrintStyles, pvoReportFileOperations, pvoPageMargins]
    Version = 0
    Left = 765
    Top = 117
    PixelsPerInch = 106
    object ComponentPrinterLink4: TdxCustomContainerReportLink
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
      ReportDocument.CreationDate = 43152.620158067130000000
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
      PrinterPage.Margins.Left = 6700
      PrinterPage.Margins.Right = 6700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43152.620158368050000000
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
    object ComponentPrinterLink9: TdxCustomContainerReportLink
      Active = True
      Component = pnlClients
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
      ReportDocument.CreationDate = 43152.620158634260000000
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
      AggregatedReportLinks = {
        436F6D706F6E656E745072696E7465724C696E6B31310D0A436F6D706F6E656E
        745072696E7465724C696E6B31320D0A436F6D706F6E656E745072696E746572
        4C696E6B31330D0A}
    end
    object ComponentPrinterLink10: TdxCustomContainerReportLink
      Component = pnlCalendar
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 6700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 6700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
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
    object ComponentPrinterLink11: TdxGridReportLink
      Active = True
      Component = grdMatterProfitability
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
      ReportDocument.CreationDate = 43152.620158657410000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
    end
    object ComponentPrinterLink12: TdxGridReportLink
      Active = True
      Component = grdTopClients
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
      ReportDocument.CreationDate = 43152.620158680550000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
    end
    object ComponentPrinterLink13: TdxGridReportLink
      Component = grdTopReferrers
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
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
    end
    object ComponentPrinterLink1: TdxCustomContainerReportLink
      Component = pnlLockupGraph
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
  end
  object dxPageSetupDialog1: TdxPageSetupDialog
    OptionsEnabled = [psoCenterOnPage, psoMargins, psoPageOrder, psoStyleCaption, psoHFAutoText, psoHFBackground, psoHFFont, psoHFText, psoHFFunctions, psoHFMargins, psoHFReverse, psoHFVertAlignment]
    OptionsVisible = [psoCenterOnPage, psoMargins, psoPageOrder, psoStyleCaption, psoHFAutoText, psoHFBackground, psoHFFont, psoHFText, psoHFFunctions, psoHFMargins, psoHFReverse, psoHFVertAlignment]
    Left = 665
    Top = 120
  end
  object dxPrintStyleManager1: TdxPrintStyleManager
    PageSetupDialog = dxPageSetupDialog1
    Version = 0
    Left = 516
    Top = 111
  end
  object dxPSEngineController1: TdxPSEngineController
    Active = True
    DialogsLookAndFeel.NativeStyle = True
    PreviewDialogStyle = 'Ribbon2010'
    Left = 691
    Top = 182
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 877
    Top = 25
    PixelsPerInch = 106
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
  end
end
