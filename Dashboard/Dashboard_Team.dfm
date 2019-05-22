object frmDashboard_Team: TfrmDashboard_Team
  Left = 376
  Top = 264
  Caption = 'Dashboard - Team'
  ClientHeight = 674
  ClientWidth = 1053
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
    Top = 49
    Width = 1053
    Height = 599
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = tabWIP
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    ExplicitTop = 47
    ClientRectBottom = 595
    ClientRectLeft = 4
    ClientRectRight = 1049
    ClientRectTop = 26
    object tabWIP: TcxTabSheet
      Caption = 'WIP'
      ImageIndex = 0
      OnShow = tabWIPShow
      object pnlWIP: TPanel
        Left = 0
        Top = 0
        Width = 1045
        Height = 569
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1045
          569)
        object Panel2: TPanel
          Left = 1
          Top = 193
          Width = 1042
          Height = 194
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel2'
          Color = clWhite
          TabOrder = 0
          object Label11: TLabel
            Left = 13
            Top = 25
            Width = 40
            Height = 15
            Caption = 'Current'
          end
          object Label12: TLabel
            Left = 13
            Top = 42
            Width = 12
            Height = 15
            Caption = '30'
          end
          object Label13: TLabel
            Left = 13
            Top = 59
            Width = 12
            Height = 15
            Caption = '60'
          end
          object Label14: TLabel
            Left = 13
            Top = 76
            Width = 12
            Height = 15
            Caption = '90'
          end
          object Label15: TLabel
            Left = 13
            Top = 93
            Width = 26
            Height = 15
            Caption = '120+'
          end
          object Label16: TLabel
            Left = 13
            Top = 110
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
            Left = 246
            Top = 21
            Width = 804
            Height = 167
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
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series2: TBarSeries
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
            Width = 1040
            Height = 20
            Align = alTop
            Caption = 'Aged WIP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object cxDBLabel1: TcxDBLabel
            Left = 131
            Top = 23
            DataBinding.DataField = '0days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 99
            AnchorX = 230
          end
          object cxDBLabel2: TcxDBLabel
            Left = 131
            Top = 40
            DataBinding.DataField = '30days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 99
            AnchorX = 230
          end
          object cxDBLabel3: TcxDBLabel
            Left = 131
            Top = 57
            DataBinding.DataField = '60days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 99
            AnchorX = 230
          end
          object cxDBLabel4: TcxDBLabel
            Left = 131
            Top = 74
            DataBinding.DataField = '90days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 99
            AnchorX = 230
          end
          object cxDBLabel5: TcxDBLabel
            Left = 131
            Top = 91
            DataBinding.DataField = '120days'
            DataBinding.DataSource = dmDasboardTeam.dsWIPFigures
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 99
            AnchorX = 230
          end
          object cxLabel4: TcxLabel
            Left = 12
            Top = 167
            AutoSize = False
            Caption = 'Average Days WIP Outstanding'
            Style.TextStyle = [fsBold]
            Properties.WordWrap = True
            Visible = False
            Height = 32
            Width = 109
          end
          object lblWipTotal: TcxLabel
            Left = 132
            Top = 110
            AutoSize = False
            Caption = '$0.00'
            Style.BorderStyle = ebsSingle
            Style.Edges = [bTop]
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 19
            Width = 98
            AnchorX = 230
          end
        end
        object pnlWIPGeneratedMain: TPanel
          Left = 2
          Top = 387
          Width = 1041
          Height = 188
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Color = clWhite
          TabOrder = 1
          object Label18: TLabel
            Left = 13
            Top = 69
            Width = 45
            Height = 15
            Caption = 'MONTH'
          end
          object Label19: TLabel
            Left = 14
            Top = 90
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label20: TLabel
            Left = 116
            Top = 41
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
            Left = 203
            Top = 41
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
            Width = 1039
            Height = 20
            Align = alTop
            Caption = 'Billable Time (12 Months)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object chrtWIPGenerated: TDBChart
            Left = 255
            Top = 21
            Width = 785
            Height = 166
            BackWall.Brush.Style = bsClear
            Title.Alignment = taRightJustify
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            Title.AdjustFrame = False
            OnClickSeries = chrtWIPGeneratedClickSeries
            Legend.Visible = False
            Zoom.Allow = False
            Align = alRight
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            Anchors = [akLeft, akTop, akRight, akBottom]
            Locked = True
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series3: TBarSeries
              Legend.Visible = False
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
            Left = 158
            Top = 66
            DataBinding.DataField = 'MONTH_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsWipGeneratedBudget
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 88
            AnchorX = 246
          end
          object cxDBLabel7: TcxDBLabel
            Left = 158
            Top = 88
            DataBinding.DataField = 'YEAR_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsWipGeneratedBudget
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 88
            AnchorX = 246
          end
          object cxDBLabel8: TcxDBLabel
            Left = 62
            Top = 88
            DataBinding.DataField = 'YEAR_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsWIPGenerated
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 93
            AnchorX = 155
          end
          object cxDBLabel9: TcxDBLabel
            Left = 62
            Top = 66
            DataBinding.DataField = 'MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsWIPGenerated
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 93
            AnchorX = 155
          end
        end
        object Panel1: TPanel
          Left = 1
          Top = -1
          Width = 1043
          Height = 194
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel1'
          Color = clWhite
          TabOrder = 2
          object Label1: TLabel
            Left = 13
            Top = 33
            Width = 40
            Height = 15
            Caption = 'Current'
          end
          object Label2: TLabel
            Left = 13
            Top = 49
            Width = 12
            Height = 15
            Caption = '30'
          end
          object Label3: TLabel
            Left = 13
            Top = 65
            Width = 12
            Height = 15
            Caption = '60'
          end
          object Label4: TLabel
            Left = 13
            Top = 81
            Width = 12
            Height = 15
            Caption = '90'
          end
          object Label5: TLabel
            Left = 13
            Top = 98
            Width = 26
            Height = 15
            Caption = '120+'
          end
          object Label6: TLabel
            Left = 13
            Top = 114
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
            Left = 245
            Top = 25
            Width = 798
            Height = 159
            BackWall.Brush.Style = bsClear
            BackWall.Dark3D = False
            Foot.Visible = False
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            OnClickSeries = chartDebtorsClickSeries
            Legend.Visible = False
            TopAxis.Labels = False
            TopAxis.LabelsFormat.Visible = False
            Zoom.Allow = False
            Align = alCustom
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            Anchors = [akLeft, akTop, akRight]
            Locked = True
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series1: TBarSeries
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
            Width = 1041
            Height = 22
            Align = alTop
            Caption = 'Debtors'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label8: TLabel
              Left = 59
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
              Left = 180
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
            Left = 12
            Top = 165
            AutoSize = False
            Caption = 'Average Days Debtors Outstanding'
            Style.TextStyle = [fsBold]
            Properties.WordWrap = True
            Transparent = True
            Visible = False
            Height = 32
            Width = 143
          end
          object cxLabel6: TcxLabel
            Left = 189
            Top = 162
            Caption = '2005'
            Style.TextStyle = [fsBold]
            Visible = False
          end
          object cxLabel7: TcxLabel
            Left = 274
            Top = 162
            Caption = '2004'
            Style.TextStyle = [fsBold]
            Visible = False
          end
          object cxLabel8: TcxLabel
            Left = 360
            Top = 162
            Caption = '2003'
            Style.TextStyle = [fsBold]
            Visible = False
          end
          object cxDBLabel13: TcxDBLabel
            Left = 144
            Top = 29
            DataBinding.DataField = 'ADJ0'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 85
            AnchorX = 229
          end
          object cxDBLabel31: TcxDBLabel
            Left = 144
            Top = 46
            DataBinding.DataField = 'ADJ1'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 85
            AnchorX = 229
          end
          object cxDBLabel32: TcxDBLabel
            Left = 144
            Top = 61
            DataBinding.DataField = 'ADJ2'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 85
            AnchorX = 229
          end
          object cxDBLabel33: TcxDBLabel
            Left = 144
            Top = 77
            DataBinding.DataField = 'ADJ3'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 85
            AnchorX = 229
          end
          object cxDBLabel34: TcxDBLabel
            Left = 144
            Top = 93
            DataBinding.DataField = 'ADJ10'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtors
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 85
            AnchorX = 229
          end
          object cxDBLabel35: TcxDBLabel
            Left = 144
            Top = 111
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
            Transparent = True
            Height = 19
            Width = 85
            AnchorX = 229
          end
          object cxDBLabel36: TcxDBLabel
            Left = 75
            Top = 31
            DataBinding.DataField = 'ADJ0'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Transparent = True
            Height = 17
            Width = 38
          end
          object cxDBLabel37: TcxDBLabel
            Left = 75
            Top = 47
            DataBinding.DataField = 'ADJ1'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Transparent = True
            Height = 17
            Width = 38
          end
          object cxDBLabel38: TcxDBLabel
            Left = 75
            Top = 63
            DataBinding.DataField = 'ADJ2'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Transparent = True
            Height = 17
            Width = 38
          end
          object cxDBLabel39: TcxDBLabel
            Left = 75
            Top = 79
            DataBinding.DataField = 'ADJ3'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Transparent = True
            Height = 17
            Width = 38
          end
          object cxDBLabel40: TcxDBLabel
            Left = 75
            Top = 95
            DataBinding.DataField = 'ADJ10'
            DataBinding.DataSource = dmDasboardTeam.dsAgedDebtorsMatterCnt
            Transparent = True
            Height = 18
            Width = 38
          end
          object cxDBLabel41: TcxDBLabel
            Left = 75
            Top = 111
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
            Transparent = True
            Visible = False
            Height = 18
            Width = 38
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
        Width = 1045
        Height = 569
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1045
          569)
        object pnlLockupMain: TPanel
          Left = -2
          Top = 380
          Width = 1047
          Height = 190
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'pnlLockupMain'
          Color = clWhite
          TabOrder = 0
          object Label22: TLabel
            Left = 14
            Top = 30
            Width = 48
            Height = 15
            Caption = 'Creditors'
          end
          object Label23: TLabel
            Left = 14
            Top = 49
            Width = 41
            Height = 15
            Caption = 'Debtors'
          end
          object Label24: TLabel
            Left = 14
            Top = 70
            Width = 45
            Height = 15
            Caption = 'Sundries'
          end
          object Label25: TLabel
            Left = 14
            Top = 126
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
            Width = 1045
            Height = 22
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
            Left = 259
            Top = 23
            Width = 787
            Height = 166
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
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series4: TBarSeries
              Legend.Visible = False
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
            Left = 118
            Top = 28
            DataBinding.DataField = 'CRED_MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsCreditorsLockup
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 86
            AnchorX = 204
          end
          object cxDBLabel11: TcxDBLabel
            Left = 118
            Top = 47
            DataBinding.DataField = 'DEBTOR_AMOUNT'
            DataBinding.DataSource = dmDasboardTeam.dsDebtorLockup
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 86
            AnchorX = 204
          end
          object cxDBLabel12: TcxDBLabel
            Left = 118
            Top = 68
            DataBinding.DataField = 'SUND_MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsSundryLockup
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 86
            AnchorX = 204
          end
          object cxLabel9: TcxLabel
            Left = 14
            Top = 149
            AutoSize = False
            Caption = 'Average Days Lockup'
            Style.TextStyle = [fsBold]
            Properties.WordWrap = True
            Transparent = True
            Visible = False
            Height = 32
            Width = 96
          end
          object teLockupTotal: TcxLabel
            Left = 118
            Top = 124
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
            Height = 19
            Width = 86
            AnchorX = 204
          end
          object cxLabel10: TcxLabel
            Left = 13
            Top = 88
            Caption = 'Unbilled Disbs'
          end
          object cxLabel1: TcxLabel
            Left = 14
            Top = 106
            Caption = 'WIP'
          end
          object cxDBLabel43: TcxDBLabel
            Left = 118
            Top = 86
            DataBinding.DataField = 'UNBILL_DISB'
            DataBinding.DataSource = dmDasboardTeam.dsUnbilledDisbs
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 22
            Width = 86
            AnchorX = 204
          end
          object cxDBLabel44: TcxDBLabel
            Left = 118
            Top = 104
            DataBinding.DataField = 'MONTH_TOTAL'
            DataBinding.DataSource = dmDasboardTeam.dsWIPLockup
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 22
            Width = 86
            AnchorX = 204
          end
        end
        object Panel11: TPanel
          Left = -1
          Top = 192
          Width = 1046
          Height = 191
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel11'
          Color = clWhite
          TabOrder = 1
          object Label27: TLabel
            Left = 9
            Top = 69
            Width = 45
            Height = 15
            Caption = 'MONTH'
          end
          object Label28: TLabel
            Left = 10
            Top = 90
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label38: TLabel
            Left = 104
            Top = 41
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
            Left = 208
            Top = 41
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
            Width = 1044
            Height = 20
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
            Left = 264
            Top = 21
            Width = 781
            Height = 169
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
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series7: TBarSeries
              Legend.Visible = False
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
              Legend.Visible = False
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
            Left = 53
            Top = 88
            DataBinding.DataField = 'FE_RECEIPT'
            DataBinding.DataSource = dmDasboardTeam.dsFeeReceivedYear
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 91
            AnchorX = 144
          end
          object cxDBLabel19: TcxDBLabel
            Left = 53
            Top = 66
            DataBinding.DataField = 'FE_RECEIPT'
            DataBinding.DataSource = dmDasboardTeam.dsFeeReceivedMonth
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 91
            AnchorX = 144
          end
          object cxDBLabel20: TcxDBLabel
            Left = 161
            Top = 66
            DataBinding.DataField = 'MONTH_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsFeesReceivedBudget
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 91
            AnchorX = 252
          end
          object cxDBLabel21: TcxDBLabel
            Left = 161
            Top = 88
            DataBinding.DataField = 'YEAR_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsFeesReceivedBudget
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 91
            AnchorX = 252
          end
        end
        object Panel9: TPanel
          Left = -1
          Top = 0
          Width = 1046
          Height = 194
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel9'
          Color = clWhite
          TabOrder = 2
          object Label7: TLabel
            Left = 9
            Top = 69
            Width = 45
            Height = 15
            Caption = 'MONTH'
          end
          object Label10: TLabel
            Left = 10
            Top = 90
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label17: TLabel
            Left = 106
            Top = 41
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
            Left = 208
            Top = 41
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
            Width = 1044
            Height = 20
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
            Left = 265
            Top = 21
            Width = 780
            Height = 172
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
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series6: TBarSeries
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
              Legend.Visible = False
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
            Left = 161
            Top = 66
            DataBinding.DataField = 'MONTH_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsBilledFeesBudget
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 91
            AnchorX = 252
          end
          object cxDBLabel15: TcxDBLabel
            Left = 55
            Top = 66
            DataBinding.DataField = 'FEES'
            DataBinding.DataSource = dmDasboardTeam.dsFeesBilledMonth
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 18
            Width = 91
            AnchorX = 146
          end
          object cxDBLabel16: TcxDBLabel
            Left = 55
            Top = 88
            DataBinding.DataField = 'FEES'
            DataBinding.DataSource = dmDasboardTeam.dsFeesBilledYTD
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 91
            AnchorX = 146
          end
          object cxDBLabel17: TcxDBLabel
            Left = 161
            Top = 88
            DataBinding.DataField = 'YEAR_BUDGET'
            DataBinding.DataSource = dmDasboardTeam.dsBilledFeesBudget
            Properties.Alignment.Horz = taRightJustify
            Transparent = True
            Height = 17
            Width = 91
            AnchorX = 252
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
        Width = 1045
        Height = 569
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1045
          569)
        object Panel5: TPanel
          Left = -3
          Top = 311
          Width = 1048
          Height = 193
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvLowered
          Caption = 'Panel11'
          Color = clWhite
          TabOrder = 0
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 1046
            Height = 20
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
          object cxGrid1: TcxGrid
            Left = 1
            Top = 21
            Width = 1046
            Height = 171
            Align = alClient
            TabOrder = 1
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NavigatorOffset = 54
              OptionsView.IndicatorWidth = 13
              Preview.LeftIndent = 21
            end
            object cxGrid1DBChartView1: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'DESCR'
              DataController.DataSource = dmDasboardTeam.dsMatterProfitability
              DiagramArea.Values.HotSpotSize = 16
              DiagramArea.Values.MarkerSize = 8
              DiagramColumn.Active = True
              DiagramColumn.Legend.Position = cppTop
              DiagramColumn.Values.VaryColorsByCategory = True
              DiagramLine.Values.HotSpotSize = 16
              DiagramLine.Values.MarkerSize = 8
              DiagramStackedArea.Values.HotSpotSize = 16
              DiagramStackedArea.Values.MarkerSize = 8
              Legend.Border = lbNone
              Legend.Position = cppTop
              object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
                DataBinding.FieldName = 'TOTAL'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBChartView1
            end
          end
        end
        object Panel6: TPanel
          Left = 569
          Top = 3
          Width = 251
          Height = 288
          BevelOuter = bvNone
          Caption = 'Panel6'
          Color = clWhite
          TabOrder = 1
          object cxGrid3: TcxGrid
            Left = 0
            Top = 24
            Width = 251
            Height = 264
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object cxGrid3DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDasboardTeam.dsMatterProfitability
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NavigatorOffset = 54
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Header = False
              OptionsView.IndicatorWidth = 13
              Preview.LeftIndent = 21
              object cxGrid3DBTableView1DESCR: TcxGridDBColumn
                DataBinding.FieldName = 'DESCR'
                MinWidth = 21
              end
              object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
                MinWidth = 21
                Width = 80
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 251
            Height = 24
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
          Left = 284
          Top = 4
          Width = 264
          Height = 290
          TabOrder = 2
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          Properties.Style = 1
          LookAndFeel.NativeStyle = True
          ClientRectBottom = 286
          ClientRectLeft = 4
          ClientRectRight = 260
          ClientRectTop = 26
          object cxTabSheet1: TcxTabSheet
            Caption = 'Top 10 Clients'
            ImageIndex = 0
            object grdClients: TcxGrid
              Left = 0
              Top = 22
              Width = 256
              Height = 238
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = True
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
                OptionsBehavior.CellHints = True
                OptionsBehavior.ColumnHeaderHints = False
                OptionsCustomize.ColumnFiltering = False
                OptionsSelection.CellSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.NavigatorOffset = 54
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.IndicatorWidth = 13
                Preview.LeftIndent = 21
                object tvClientsNAME: TcxGridDBColumn
                  Caption = 'Client'
                  DataBinding.FieldName = 'NAME'
                  MinWidth = 21
                  Width = 139
                end
                object tvClientsTOTAL: TcxGridDBColumn
                  Caption = 'Amount'
                  DataBinding.FieldName = 'TOTAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderGlyphAlignmentHorz = taRightJustify
                  MinWidth = 21
                  Width = 90
                end
              end
              object grdClientsLevel1: TcxGridLevel
                GridView = tvClients
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 256
              Height = 22
              Align = alTop
              TabOrder = 1
              object cxLabel2: TcxLabel
                Left = 41
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
          object cxTabSheet2: TcxTabSheet
            Caption = 'Top 10 Referrers'
            ImageIndex = 1
            object grdReferrers: TcxGrid
              Left = 0
              Top = 23
              Width = 256
              Height = 237
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
                OptionsBehavior.CellHints = True
                OptionsBehavior.ColumnHeaderHints = False
                OptionsCustomize.ColumnFiltering = False
                OptionsSelection.CellSelect = False
                OptionsView.CellEndEllipsis = True
                OptionsView.NavigatorOffset = 54
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.IndicatorWidth = 13
                Preview.LeftIndent = 21
                object cxGridDBColumn1: TcxGridDBColumn
                  Caption = 'Referrer'
                  DataBinding.FieldName = 'NAME'
                  MinWidth = 21
                  Width = 139
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Amount'
                  DataBinding.FieldName = 'TOTAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderGlyphAlignmentHorz = taRightJustify
                  MinWidth = 21
                  Width = 90
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = tvReferrers
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 256
              Height = 23
              Align = alTop
              TabOrder = 1
              object cxLabel3: TcxLabel
                Left = 33
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
        object Panel3: TPanel
          Left = 13
          Top = 5
          Width = 251
          Height = 191
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 3
          object Label29: TLabel
            Left = 5
            Top = 33
            Width = 26
            Height = 15
            Caption = 'MTD'
          end
          object Label30: TLabel
            Left = 5
            Top = 53
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object Label31: TLabel
            Left = 149
            Top = 33
            Width = 36
            Height = 15
            Caption = 'Closed'
            Transparent = True
          end
          object Label32: TLabel
            Left = 149
            Top = 53
            Width = 36
            Height = 15
            Caption = 'Closed'
            Transparent = True
          end
          object Label33: TLabel
            Left = 4
            Top = 83
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
            Top = 131
            Width = 26
            Height = 15
            Caption = 'MTD'
          end
          object Label36: TLabel
            Left = 8
            Top = 152
            Width = 22
            Height = 15
            Caption = 'YTD'
          end
          object pnlMatters: TPanel
            Left = 0
            Top = 0
            Width = 251
            Height = 20
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
            Left = 89
            Top = 31
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersOpened
            Transparent = True
            Height = 17
            Width = 49
          end
          object cxDBLabel23: TcxDBLabel
            Left = 89
            Top = 50
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersOpened
            Transparent = True
            Height = 19
            Width = 49
          end
          object cxDBLabel24: TcxDBLabel
            Left = 89
            Top = 80
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
            Transparent = True
            Height = 19
            Width = 49
          end
          object cxDBLabel25: TcxDBLabel
            Left = 196
            Top = 31
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersClosed
            Transparent = True
            Height = 17
            Width = 49
          end
          object cxDBLabel26: TcxDBLabel
            Left = 196
            Top = 50
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDasboardTeam.dsMattersClosed
            Transparent = True
            Height = 19
            Width = 49
          end
          object cxDBLabel27: TcxDBLabel
            Left = 196
            Top = 80
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
            Transparent = True
            Height = 19
            Width = 49
          end
          object Panel4: TPanel
            Left = 0
            Top = 102
            Width = 251
            Height = 20
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
            Left = 86
            Top = 129
            DataBinding.DataField = 'COUNT(DISTINCTMATTER.NCLIENT)'
            DataBinding.DataSource = dmDasboardTeam.dsClientCountMTD
            Transparent = True
            Height = 17
            Width = 49
          end
          object cxDBLabel30: TcxDBLabel
            Left = 86
            Top = 150
            DataBinding.DataField = 'COUNT(DISTINCTMATTER.NCLIENT)'
            DataBinding.DataSource = dmDasboardTeam.dsClientCountYTD
            Transparent = True
            Height = 18
            Width = 49
          end
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 28
    Width = 1053
    Height = 21
    Align = alTop
    Caption = 'pnlTop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 26
  end
  object cbThreeD: TcxCheckBox
    Left = 206
    Top = 634
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
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 587
    Top = 48
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
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
          UserWidth = 233
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
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
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
    Left = 534
    Top = 541
    Version = '19.02'
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
      mmHeight = 34396
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
  object qryDepts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT distinct ed.CODE, ed.DESCR '
      'FROM EMPDEPT ed, employee e'
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
    PixelsPerInch = 96
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
      ReportDocument.CreationDate = 43607.465252847220000000
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
      PrinterPage.Margins.Left = 6700
      PrinterPage.Margins.Right = 6700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43607.465253344900000000
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
      ReportDocument.CreationDate = 43607.465253807870000000
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
  end
end
