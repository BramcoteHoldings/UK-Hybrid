object frmDashboard_Team: TfrmDashboard_Team
  Left = 376
  Top = 264
  Caption = 'Dashboard - Team'
  ClientHeight = 726
  ClientWidth = 1134
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
  object pagMain: TcxPageControl
    Left = 0
    Top = 52
    Width = 1134
    Height = 645
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = tabWIP
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 1
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 641
    ClientRectLeft = 4
    ClientRectRight = 1130
    ClientRectTop = 27
    object tabWIP: TcxTabSheet
      Caption = 'WIP'
      ImageIndex = 0
      OnShow = tabWIPShow
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 1134
      ExplicitHeight = 623
      object pnlWIP: TPanel
        Left = 0
        Top = 0
        Width = 1126
        Height = 614
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 1134
        ExplicitHeight = 623
        DesignSize = (
          1126
          614)
        object Panel2: TPanel
          Left = 1
          Top = 208
          Width = 1123
          Height = 209
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel2'
          Color = clWhite
          TabOrder = 0
          ExplicitWidth = 1131
          object Label11: TLabel
            Left = 14
            Top = 27
            Width = 40
            Height = 15
            Caption = 'Current'
          end
          object Label12: TLabel
            Left = 14
            Top = 45
            Width = 12
            Height = 15
            Caption = '30'
          end
          object Label13: TLabel
            Left = 14
            Top = 63
            Width = 12
            Height = 15
            Caption = '60'
          end
          object Label14: TLabel
            Left = 14
            Top = 82
            Width = 12
            Height = 15
            Caption = '90'
          end
          object Label15: TLabel
            Left = 14
            Top = 100
            Width = 26
            Height = 15
            Caption = '120+'
          end
          object Label16: TLabel
            Left = 14
            Top = 119
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
          object chartWIP: TDBChart
            Left = 265
            Top = 23
            Width = 867
            Height = 179
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
            TabOrder = 0
            Anchors = [akLeft, akTop, akRight]
            Locked = True
            ExplicitWidth = 875
            ColorPaletteIndex = 13
            object Series2: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryWIPGraph
              SeriesColor = clRed
              XLabelsSource = #39'CURRENT'#39
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 
                'NVL(SUM(DATE_BETWEEN(TRUNC(FEE.CREATED),TRUNC(SYSDATE)-:P1,TRUNC' +
                '(SYSDATE),NVL(FEE.AMOUNT,0))),0)'
            end
          end
          object pnlUnbilledWIP: TPanel
            Left = 1
            Top = 1
            Width = 1121
            Height = 22
            Align = alTop
            Caption = 'Unbilled WIP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 1129
          end
          object cxDBLabel1: TcxDBLabel
            Left = 141
            Top = 24
            DataBinding.DataField = '0days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Height = 20
            Width = 107
            AnchorX = 248
          end
          object cxDBLabel2: TcxDBLabel
            Left = 141
            Top = 43
            DataBinding.DataField = '30days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Height = 19
            Width = 107
            AnchorX = 248
          end
          object cxDBLabel3: TcxDBLabel
            Left = 141
            Top = 61
            DataBinding.DataField = '60days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Height = 20
            Width = 107
            AnchorX = 248
          end
          object cxDBLabel4: TcxDBLabel
            Left = 141
            Top = 80
            DataBinding.DataField = '90days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Height = 19
            Width = 107
            AnchorX = 248
          end
          object cxDBLabel5: TcxDBLabel
            Left = 141
            Top = 98
            DataBinding.DataField = '120days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Height = 20
            Width = 107
            AnchorX = 248
          end
          object cxLabel4: TcxLabel
            Left = 13
            Top = 180
            AutoSize = False
            Caption = 'Average Days WIP Outstanding'
            Style.TextStyle = [fsBold]
            Properties.WordWrap = True
            Visible = False
            Height = 35
            Width = 117
          end
          object lblWipTotal: TcxLabel
            Left = 142
            Top = 119
            AutoSize = False
            Caption = '$0.00'
            Style.BorderStyle = ebsSingle
            Style.Edges = [bTop]
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taRightJustify
            Height = 19
            Width = 106
            AnchorX = 248
          end
        end
        object pnlWIPGeneratedMain: TPanel
          Left = 2
          Top = 417
          Width = 1122
          Height = 203
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 1
          ExplicitWidth = 1130
          object Label18: TLabel
            Left = 14
            Top = 74
            Width = 45
            Height = 15
            Caption = 'MONTH'
          end
          object Label19: TLabel
            Left = 15
            Top = 97
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label20: TLabel
            Left = 125
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
          object Label21: TLabel
            Left = 218
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
          object pnlWIPGenerated: TPanel
            Left = 1
            Top = 1
            Width = 1120
            Height = 22
            Align = alTop
            Caption = 'Billable Time (12 Months)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 1128
          end
          object chrtWIPGenerated: TDBChart
            Left = 274
            Top = 23
            Width = 847
            Height = 179
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.AdjustFrame = False
            Title.Alignment = taRightJustify
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            OnClickSeries = chrtWIPGeneratedClickSeries
            Legend.Visible = False
            Zoom.Allow = False
            Align = alRight
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            Anchors = [akLeft, akTop, akRight, akBottom]
            Locked = True
            ExplicitWidth = 855
            ColorPaletteIndex = 13
            object Series3: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryWIPGeneratedGraph
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
              DataSource = dmDasboardTeam.qryWIPGeneratedBudgetGraph
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
          object cxDBLabel6: TcxDBLabel
            Left = 170
            Top = 72
            DataBinding.DataField = 'MONTH_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsWipGeneratedBudget
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 95
            AnchorX = 265
          end
          object cxDBLabel7: TcxDBLabel
            Left = 170
            Top = 95
            DataBinding.DataField = 'YEAR_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsWipGeneratedBudget
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 95
            AnchorX = 265
          end
          object cxDBLabel8: TcxDBLabel
            Left = 67
            Top = 95
            DataBinding.DataField = 'YEAR_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsWIPGenerated
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 100
            AnchorX = 167
          end
          object cxDBLabel9: TcxDBLabel
            Left = 67
            Top = 72
            DataBinding.DataField = 'MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsWIPGenerated
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 100
            AnchorX = 167
          end
        end
        object Panel1: TPanel
          Left = 1
          Top = -1
          Width = 1124
          Height = 209
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel1'
          Color = clWhite
          TabOrder = 2
          ExplicitWidth = 1132
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
          object chartDebtors: TDBChart
            Left = 264
            Top = 27
            Width = 860
            Height = 171
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Dark3D = False
            Foot.Visible = False
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            OnClickSeries = chartDebtorsClickSeries
            Legend.Visible = False
            TopAxis.Labels = False
            Zoom.Allow = False
            Align = alCustom
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            Anchors = [akLeft, akTop, akRight]
            Locked = True
            ExplicitWidth = 868
            ColorPaletteIndex = 13
            object Series1: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryAgedDebtorsGraph
              SeriesColor = clRed
              XLabelsSource = 'PER'
              XValues.Name = 'X'
              XValues.Order = loNone
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'Current'
            end
          end
          object pnlDebtors: TPanel
            Left = 1
            Top = 1
            Width = 1122
            Height = 23
            Align = alTop
            Caption = 'Debtors'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            ExplicitWidth = 1130
            object Label8: TLabel
              Left = 63
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
              Left = 194
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
          object cxLabel5: TcxLabel
            Left = 13
            Top = 178
            AutoSize = False
            Caption = 'Average Days Debtors Outstanding'
            Style.TextStyle = [fsBold]
            Properties.WordWrap = True
            Visible = False
            Height = 34
            Width = 154
          end
          object cxLabel6: TcxLabel
            Left = 203
            Top = 174
            Caption = '2005'
            Style.TextStyle = [fsBold]
            Visible = False
          end
          object cxLabel7: TcxLabel
            Left = 295
            Top = 174
            Caption = '2004'
            Style.TextStyle = [fsBold]
            Visible = False
          end
          object cxLabel8: TcxLabel
            Left = 388
            Top = 174
            Caption = '2003'
            Style.TextStyle = [fsBold]
            Visible = False
          end
          object cxDBLabel13: TcxDBLabel
            Left = 155
            Top = 31
            DataBinding.DataField = 'ADJ0'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Height = 20
            Width = 92
            AnchorX = 247
          end
          object cxDBLabel31: TcxDBLabel
            Left = 155
            Top = 50
            DataBinding.DataField = 'ADJ1'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Height = 19
            Width = 92
            AnchorX = 247
          end
          object cxDBLabel32: TcxDBLabel
            Left = 155
            Top = 66
            DataBinding.DataField = 'ADJ2'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Height = 19
            Width = 92
            AnchorX = 247
          end
          object cxDBLabel33: TcxDBLabel
            Left = 155
            Top = 83
            DataBinding.DataField = 'ADJ3'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Height = 20
            Width = 92
            AnchorX = 247
          end
          object cxDBLabel34: TcxDBLabel
            Left = 155
            Top = 100
            DataBinding.DataField = 'ADJ10'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Height = 20
            Width = 92
            AnchorX = 247
          end
          object cxDBLabel35: TcxDBLabel
            Left = 155
            Top = 120
            DataBinding.DataField = 'TOTALAGED'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
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
            Height = 20
            Width = 92
            AnchorX = 247
          end
          object cxDBLabel36: TcxDBLabel
            Left = 81
            Top = 33
            DataBinding.DataField = 'ADJ0'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Height = 19
            Width = 40
          end
          object cxDBLabel37: TcxDBLabel
            Left = 81
            Top = 51
            DataBinding.DataField = 'ADJ1'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Height = 18
            Width = 40
          end
          object cxDBLabel38: TcxDBLabel
            Left = 81
            Top = 68
            DataBinding.DataField = 'ADJ2'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Height = 19
            Width = 40
          end
          object cxDBLabel39: TcxDBLabel
            Left = 81
            Top = 85
            DataBinding.DataField = 'ADJ3'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Height = 19
            Width = 40
          end
          object cxDBLabel40: TcxDBLabel
            Left = 81
            Top = 103
            DataBinding.DataField = 'ADJ10'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Height = 18
            Width = 40
          end
          object cxDBLabel41: TcxDBLabel
            Left = 81
            Top = 120
            DataBinding.DataField = 'TOTALMATTERS'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Edges = [bTop]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
            Height = 18
            Width = 40
          end
        end
      end
    end
    object tabFees: TcxTabSheet
      Caption = 'Fees'
      ImageIndex = 1
      OnShow = tabFeesShow
      object pnlFees: TPanel
        Left = 0
        Top = 0
        Width = 1126
        Height = 614
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1126
          614)
        object pnlLockupMain: TPanel
          Left = -2
          Top = 410
          Width = 1128
          Height = 204
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'pnlLockupMain'
          Color = clWhite
          TabOrder = 0
          object Label22: TLabel
            Left = 15
            Top = 32
            Width = 48
            Height = 15
            Caption = 'Creditors'
          end
          object Label23: TLabel
            Left = 15
            Top = 53
            Width = 41
            Height = 15
            Caption = 'Debtors'
          end
          object Label24: TLabel
            Left = 15
            Top = 75
            Width = 45
            Height = 15
            Caption = 'Sundries'
          end
          object Label25: TLabel
            Left = 15
            Top = 136
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
          object pnlLockup: TPanel
            Left = 1
            Top = 1
            Width = 1126
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
          end
          object chartLockup: TDBChart
            Left = 279
            Top = 24
            Width = 848
            Height = 179
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            ClipPoints = False
            Legend.Visible = False
            Zoom.Allow = False
            Align = alRight
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            Anchors = [akLeft, akTop, akRight, akBottom]
            Locked = True
            ColorPaletteIndex = 13
            object Series4: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryLockupGraph
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
            Left = 127
            Top = 30
            DataBinding.DataField = 'CRED_MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsCreditorsLockup
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 92
            AnchorX = 219
          end
          object cxDBLabel11: TcxDBLabel
            Left = 127
            Top = 51
            DataBinding.DataField = 'DEBTOR_AMOUNT'
            DataBinding.DataSource = dmDasboardTeam.dsDebtorLockup
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 92
            AnchorX = 219
          end
          object cxDBLabel12: TcxDBLabel
            Left = 127
            Top = 73
            DataBinding.DataField = 'SUND_MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsSundryLockup
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 92
            AnchorX = 219
          end
          object cxLabel9: TcxLabel
            Left = 15
            Top = 160
            AutoSize = False
            Caption = 'Average Days Lockup'
            Style.TextStyle = [fsBold]
            Properties.WordWrap = True
            Visible = False
            Height = 35
            Width = 104
          end
          object teLockupTotal: TcxLabel
            Left = 127
            Top = 134
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
            Height = 19
            Width = 92
            AnchorX = 219
          end
          object cxLabel10: TcxLabel
            Left = 14
            Top = 95
            Caption = 'Unbilled Disbs'
          end
          object cxLabel1: TcxLabel
            Left = 15
            Top = 114
            Caption = 'WIP'
          end
          object cxDBLabel43: TcxDBLabel
            Left = 127
            Top = 92
            DataBinding.DataField = 'UNBILL_DISB'
            DataBinding.DataSource = dmDasboardTeam.dsUnbilledDisbs
            Properties.Alignment.Horz = taRightJustify
            Height = 25
            Width = 92
            AnchorX = 219
          end
          object cxDBLabel44: TcxDBLabel
            Left = 127
            Top = 112
            DataBinding.DataField = 'MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsWIPLockup
            Properties.Alignment.Horz = taRightJustify
            Height = 24
            Width = 92
            AnchorX = 219
          end
        end
        object Panel11: TPanel
          Left = -1
          Top = 207
          Width = 1127
          Height = 205
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel11'
          Color = clWhite
          TabOrder = 1
          object Label27: TLabel
            Left = 9
            Top = 74
            Width = 45
            Height = 15
            Caption = 'MONTH'
          end
          object Label28: TLabel
            Left = 10
            Top = 97
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label38: TLabel
            Left = 112
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
          object Label39: TLabel
            Left = 224
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
          object pnlFeesReceived: TPanel
            Left = 1
            Top = 1
            Width = 1125
            Height = 22
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvNone
            Caption = 'Fees Received (Monthly)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object chartReceivedMonthly: TDBChart
            Left = 284
            Top = 23
            Width = 842
            Height = 181
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            OnClickSeries = chartReceivedMonthlyClickSeries
            ClipPoints = False
            Legend.Visible = False
            Zoom.Allow = False
            Align = alRight
            Color = clWhite
            TabOrder = 1
            Anchors = [akLeft, akTop, akRight]
            Locked = True
            ColorPaletteIndex = 13
            object Series7: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryFeesReceivedGraph
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
              DataSource = dmDasboardTeam.qryFeesReceivedBudgetGraph
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
          object cxDBLabel18: TcxDBLabel
            Left = 57
            Top = 95
            DataBinding.DataField = 'FE_RECEIPT'
            DataBinding.DataSource = dmDasboardTeam.dsFeeReceivedYear
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 155
          end
          object cxDBLabel19: TcxDBLabel
            Left = 57
            Top = 72
            DataBinding.DataField = 'FE_RECEIPT'
            DataBinding.DataSource = dmDasboardTeam.dsFeeReceivedMonth
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 155
          end
          object cxDBLabel20: TcxDBLabel
            Left = 173
            Top = 72
            DataBinding.DataField = 'MONTH_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsFeesReceivedBudget
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 271
          end
          object cxDBLabel21: TcxDBLabel
            Left = 173
            Top = 95
            DataBinding.DataField = 'YEAR_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsFeesReceivedBudget
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 271
          end
        end
        object Panel9: TPanel
          Left = -1
          Top = 0
          Width = 1127
          Height = 209
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel9'
          Color = clWhite
          TabOrder = 2
          object Label7: TLabel
            Left = 9
            Top = 74
            Width = 45
            Height = 15
            Caption = 'MONTH'
          end
          object Label10: TLabel
            Left = 10
            Top = 97
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label17: TLabel
            Left = 114
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
            Left = 224
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
          object pnlFeesBilled: TPanel
            Left = 1
            Top = 1
            Width = 1125
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
            TabOrder = 0
          end
          object chartBilledMonthly: TDBChart
            Left = 285
            Top = 23
            Width = 841
            Height = 185
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
            Align = alRight
            Color = clWhite
            TabOrder = 1
            Anchors = [akLeft, akTop, akRight, akBottom]
            Locked = True
            ColorPaletteIndex = 13
            object Series6: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryFeesBilledGraph
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
              DataSource = dmDasboardTeam.qryFeesBilledBudgetGraph
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
          object cxDBLabel14: TcxDBLabel
            Left = 173
            Top = 72
            DataBinding.DataField = 'MONTH_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsBilledFeesBudget
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 271
          end
          object cxDBLabel15: TcxDBLabel
            Left = 59
            Top = 72
            DataBinding.DataField = 'FEES'
            DataBinding.DataSource = dmDasboardTeam.dsFeesBilledMonth
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 157
          end
          object cxDBLabel16: TcxDBLabel
            Left = 59
            Top = 95
            DataBinding.DataField = 'FEES'
            DataBinding.DataSource = dmDasboardTeam.dsFeesBilledYTD
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 157
          end
          object cxDBLabel17: TcxDBLabel
            Left = 173
            Top = 95
            DataBinding.DataField = 'YEAR_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsBilledFeesBudget
            Properties.Alignment.Horz = taRightJustify
            Height = 18
            Width = 98
            AnchorX = 271
          end
        end
      end
    end
    object tabTopClient: TcxTabSheet
      Caption = 'Clients'
      ImageIndex = 2
      OnShow = tabTopClientShow
      object pnlClients: TPanel
        Left = 0
        Top = 0
        Width = 1126
        Height = 614
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1126
          614)
        object Panel5: TPanel
          Left = -3
          Top = 335
          Width = 1129
          Height = 191
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel11'
          Color = clWhite
          TabOrder = 0
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 1127
            Height = 22
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvNone
            Caption = 'Matter Profitability'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object chartMatterProfit: TDBChart
            Left = 1
            Top = 23
            Width = 1127
            Height = 167
            BackWall.Brush.Color = clWhite
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            Chart3DPercent = 35
            Legend.Shadow.HorizSize = 2
            Legend.Shadow.VertSize = 2
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DOptions.Zoom = 92
            Align = alClient
            Color = clWhite
            Enabled = False
            TabOrder = 1
            Locked = True
            ColorPaletteIndex = 13
            object BarSeries1: TBarSeries
              ColorEachPoint = True
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.ShapeStyle = fosRoundRectangle
              Marks.Visible = False
              DataSource = dmDasboardTeam.qryMatterProfitability
              SeriesColor = clRed
              XLabelsSource = 'DESCR'
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'TOTAL'
            end
          end
        end
        object Panel6: TPanel
          Left = 613
          Top = 3
          Width = 270
          Height = 311
          BevelOuter = bvNone
          Caption = 'Panel6'
          Color = clWhite
          TabOrder = 1
          object cxGrid3: TcxGrid
            Left = 0
            Top = 25
            Width = 270
            Height = 286
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object cxGrid3DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDasboardTeam.dsMatterProfitability
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
                MinWidth = 23
                Width = 87
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
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
            TabOrder = 1
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 306
          Top = 5
          Width = 284
          Height = 311
          TabOrder = 2
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          Properties.Style = 1
          LookAndFeel.NativeStyle = True
          ClientRectBottom = 307
          ClientRectLeft = 4
          ClientRectRight = 280
          ClientRectTop = 27
          object cxTabSheet1: TcxTabSheet
            Caption = 'Top 10 Clients'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 22
            ExplicitWidth = 284
            ExplicitHeight = 289
            object grdClients: TcxGrid
              Left = 0
              Top = 23
              Width = 276
              Height = 257
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = True
              ExplicitTop = 22
              ExplicitWidth = 284
              ExplicitHeight = 267
              object tvClients: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmDasboardTeam.dsTopClients
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '$,0.00;-$,0.00'
                    Kind = skSum
                    FieldName = 'TOTAL'
                    Column = tvClientsTOTAL
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
                object tvClientsNAME: TcxGridDBColumn
                  Caption = 'Client'
                  DataBinding.FieldName = 'NAME'
                  MinWidth = 23
                  Width = 150
                end
                object tvClientsTOTAL: TcxGridDBColumn
                  Caption = 'Amount'
                  DataBinding.FieldName = 'TOTAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderGlyphAlignmentHorz = taRightJustify
                  MinWidth = 23
                  Width = 97
                end
              end
              object grdClientsLevel1: TcxGridLevel
                GridView = tvClients
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 276
              Height = 23
              Align = alTop
              TabOrder = 1
              ExplicitLeft = 17
              ExplicitTop = 55
              ExplicitWidth = 185
              object cxLabel2: TcxLabel
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
            object grdReferrers: TcxGrid
              Left = 0
              Top = 22
              Width = 276
              Height = 258
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = True
              object tvReferrers: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmDasboardTeam.dsTopReferrers
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
                GridView = tvReferrers
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 276
              Height = 22
              Align = alTop
              TabOrder = 1
              ExplicitLeft = 28
              ExplicitTop = 57
              ExplicitWidth = 185
              object cxLabel3: TcxLabel
                Left = 36
                Top = -1
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
        object Panel3: TPanel
          Left = 14
          Top = 6
          Width = 270
          Height = 205
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 3
          object Label29: TLabel
            Left = 6
            Top = 36
            Width = 26
            Height = 15
            Caption = 'MTD'
          end
          object Label30: TLabel
            Left = 6
            Top = 57
            Width = 22
            Height = 15
            Caption = 'YTD'
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
            Left = 5
            Top = 89
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
            Top = 141
            Width = 26
            Height = 15
            Caption = 'MTD'
          end
          object Label36: TLabel
            Left = 8
            Top = 164
            Width = 22
            Height = 15
            Caption = 'YTD'
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
            TabOrder = 0
          end
          object cxDBLabel22: TcxDBLabel
            Left = 96
            Top = 33
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersOpened
            Height = 19
            Width = 53
          end
          object cxDBLabel23: TcxDBLabel
            Left = 96
            Top = 54
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersOpened
            Height = 20
            Width = 53
          end
          object cxDBLabel24: TcxDBLabel
            Left = 96
            Top = 87
            DataBinding.DataField = 'MATTS'
            DataBinding.DataSource = dmDasboardTeam.dsTotalMatters
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Edges = [bTop]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Height = 19
            Width = 53
          end
          object cxDBLabel25: TcxDBLabel
            Left = 211
            Top = 33
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersClosed
            Height = 19
            Width = 53
          end
          object cxDBLabel26: TcxDBLabel
            Left = 211
            Top = 54
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersClosed
            Height = 20
            Width = 53
          end
          object cxDBLabel27: TcxDBLabel
            Left = 211
            Top = 87
            DataBinding.DataField = 'CLOSED'
            DataBinding.DataSource = dmDasboardTeam.dsTotalMatters
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Edges = [bTop]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Height = 19
            Width = 53
          end
          object Panel4: TPanel
            Left = 0
            Top = 110
            Width = 270
            Height = 22
            Caption = 'Clients'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object cxDBLabel28: TcxDBLabel
            Left = 92
            Top = 138
            DataBinding.DataField = 'COUNT(DISTINCTMATTER.NCLIENT)'
            DataBinding.DataSource = dmDasboardTeam.dsClientCountMTD
            Height = 19
            Width = 53
          end
          object cxDBLabel30: TcxDBLabel
            Left = 92
            Top = 162
            DataBinding.DataField = 'COUNT(DISTINCTMATTER.NCLIENT)'
            DataBinding.DataSource = dmDasboardTeam.dsClientCountYTD
            Height = 19
            Width = 53
          end
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 29
    Width = 1134
    Height = 23
    Align = alTop
    Caption = 'pnlTop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object cbThreeD: TcxCheckBox
    Left = 222
    Top = 683
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
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 587
    Top = 48
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      29
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbtnInd_Scorecard'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 257
          Visible = True
          ItemName = 'cmbteams'
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
          ItemName = 'btnPrint'
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
      UseOwnFont = False
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
    object cmbteams: TdxBarLookupCombo
      Caption = 'Teams:'
      Category = 0
      Hint = 'Team List'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000004D1000004D1000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FF00000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FF00000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
      ShowCaption = True
      Width = 110
      OnCloseUp = cmbteamsCloseUp
      AllowResizing = False
      KeyField = 'CODE'
      ListField = 'DESCR'
      ListSource = dsDepts
      RowCount = 20
      PopupWidth = 130
    end
    object bbtnInd_Scorecard: TdxBarButton
      Caption = 'My Scorecard'
      Category = 0
      Hint = 'My Scorecard'
      Visible = ivAlways
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      OnClick = bbtnInd_ScorecardClick
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
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'threeDview'
      Category = 0
      Hint = 'threeDview'
      Visible = ivAlways
      Control = cbThreeD
    end
    object btnPrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnPrintClick
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
    Left = 534
    Top = 541
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
      mmHeight = 34396
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
  object qryDepts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct ed.CODE, ed.DESCR FROM EMPDEPT ed, employee e'
      'where '
      'e.DEPT = ed.code'
      'and e.NFEE_AUTHORITY in'
      '(select distinct nfee_authority from fee_authority_relation'
      
        'start with NFEE_AUTHORITY_RELATED_TO = (select nfee_authority fr' +
        'om employee where code = :code)'
      'connect by prior NFEE_AUTHORITY = NFEE_AUTHORITY_RELATED_TO'
      'and NFEE_AUTHORITY <> NFEE_AUTHORITY_related_to)')
    Left = 629
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dsDepts: TUniDataSource
    DataSet = qryDepts
    Left = 681
    Top = 9
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select Get_Dept_Author(:dept) as inlist from dual')
    Left = 215
    Top = 494
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dept'
        Value = nil
      end>
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink4
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
      ReportDocument.CreationDate = 43152.622163078700000000
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
      ReportDocument.CreationDate = 43152.622163368050000000
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
      ReportDocument.CreationDate = 43152.622163657400000000
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
end
