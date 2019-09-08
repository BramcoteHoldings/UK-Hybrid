object frmDashboard_Ind: TfrmDashboard_Ind
  Left = 98
  Top = -55
  Caption = 'Dashboard - Individual'
  ClientHeight = 688
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pagMain: TcxPageControl
    Left = 0
    Top = 47
    Width = 1112
    Height = 641
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tabWIP
    Properties.CustomButtons.Buttons = <>
    Properties.ScrollOpposite = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 637
    ClientRectLeft = 4
    ClientRectRight = 1108
    ClientRectTop = 26
    object tabWIP: TcxTabSheet
      Caption = 'WIP'
      ImageIndex = 0
      OnShow = tabWIPShow
      object pnlWIP: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 611
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          1104
          611)
        object Label11: TLabel
          Left = 11
          Top = 54
          Width = 40
          Height = 15
          Caption = 'Current'
          Transparent = True
        end
        object Label12: TLabel
          Left = 11
          Top = 69
          Width = 12
          Height = 15
          Caption = '30'
          Transparent = True
        end
        object Label13: TLabel
          Left = 11
          Top = 84
          Width = 12
          Height = 15
          Caption = '60'
          Transparent = True
        end
        object Label14: TLabel
          Left = 11
          Top = 98
          Width = 12
          Height = 15
          Caption = '90'
          Transparent = True
        end
        object Label15: TLabel
          Left = 11
          Top = 113
          Width = 26
          Height = 15
          Caption = '120+'
          Transparent = True
        end
        object Label16: TLabel
          Left = 11
          Top = 128
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
          Left = 124
          Top = 242
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
          Left = 64
          Top = 242
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
          Left = 6
          Top = 267
          Width = 45
          Height = 15
          Caption = 'MONTH'
          Transparent = True
        end
        object Label19: TLabel
          Left = 7
          Top = 285
          Width = 22
          Height = 15
          Caption = 'YTD'
          Transparent = True
        end
        object pnlUnbilledWIP: TPanel
          Left = 1
          Top = 1
          Width = 1102
          Height = 18
          Align = alTop
          Caption = 'Unbilled WIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object pnlWIPGenerated: TPanel
          Left = 0
          Top = 194
          Width = 1105
          Height = 18
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Recorded Time (12 Months)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object lblWipCurrent: TcxDBLabel
          Left = 72
          Top = 52
          DataBinding.DataField = '0days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 74
          AnchorX = 146
        end
        object lblWipTotal: TcxLabel
          Left = 75
          Top = 127
          AutoSize = False
          Caption = 'lblWipTotal'
          Style.BorderStyle = ebsSingle
          Style.Edges = [bTop]
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 71
          AnchorX = 146
        end
        object lblwip120: TcxDBLabel
          Left = 72
          Top = 111
          DataBinding.DataField = '120days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 74
          AnchorX = 146
        end
        object lblWip90: TcxDBLabel
          Left = 72
          Top = 97
          DataBinding.DataField = '90days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 15
          Width = 74
          AnchorX = 146
        end
        object lblWip60: TcxDBLabel
          Left = 72
          Top = 82
          DataBinding.DataField = '60days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 74
          AnchorX = 146
        end
        object lblWip30: TcxDBLabel
          Left = 72
          Top = 67
          DataBinding.DataField = '30days'
          DataBinding.DataSource = dmDashboardInd.dsWIPFigures
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 74
          AnchorX = 146
        end
        object cxDBLabel9: TcxDBLabel
          Left = 52
          Top = 265
          DataBinding.DataField = 'MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsWIPGenerated
          Transparent = True
          Height = 20
          Width = 59
        end
        object cxDBLabel6: TcxDBLabel
          Left = 114
          Top = 265
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsWipGeneratedBudget
          Transparent = True
          Height = 20
          Width = 59
        end
        object cxDBLabel7: TcxDBLabel
          Left = 114
          Top = 283
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsWipGeneratedBudget
          Transparent = True
          Height = 20
          Width = 59
        end
        object cxDBLabel8: TcxDBLabel
          Left = 52
          Top = 283
          DataBinding.DataField = 'YEAR_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsWIPGenerated
          Transparent = True
          Height = 20
          Width = 59
        end
        object chartWIP: TDBChart
          Tag = 1
          Left = 201
          Top = 20
          Width = 904
          Height = 164
          BackWall.Brush.Style = bsClear
          Foot.Font.Name = 'Segoe UI'
          Foot.Visible = False
          SubFoot.Font.Name = 'Segoe UI'
          SubTitle.Font.Name = 'Segoe UI'
          Title.Font.Name = 'Segoe UI'
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          OnClickSeries = chartWIPClickSeries
          BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
          BottomAxis.Title.Font.Name = 'Segoe UI'
          DepthAxis.LabelsFormat.Font.Name = 'Segoe UI'
          DepthAxis.Title.Font.Name = 'Segoe UI'
          DepthTopAxis.LabelsFormat.Font.Name = 'Segoe UI'
          DepthTopAxis.Title.Font.Name = 'Segoe UI'
          LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
          LeftAxis.Title.Font.Name = 'Segoe UI'
          Legend.Font.Name = 'Segoe UI'
          Legend.Title.Font.Name = 'Segoe UI'
          Legend.Visible = False
          RightAxis.LabelsFormat.Font.Name = 'Segoe UI'
          RightAxis.Title.Font.Name = 'Segoe UI'
          TopAxis.LabelsFormat.Font.Name = 'Segoe UI'
          TopAxis.Title.Font.Name = 'Segoe UI'
          Zoom.Allow = False
          Align = alCustom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          Anchors = [akLeft, akTop, akRight]
          Locked = True
          OnClick = chartWIPClick
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series2: TBarSeries
            Marks.Font.Name = 'Segoe UI'
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
        object cxGrid3: TcxGrid
          Left = 199
          Top = 211
          Width = 903
          Height = 146
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 13
          LookAndFeel.Kind = lfOffice11
          object cxGrid3DBChartView1: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'VIEWDATE'
            DataController.DataSource = dmDashboardInd.dsWIPGeneratedGraph
            DiagramColumn.Active = True
            DiagramColumn.Legend.Alignment = cpaCenter
            Legend.Alignment = cpaCenter
            Legend.Border = lbNone
            Legend.Position = cppTop
            object cxGrid3DBChartView1Series1: TcxGridDBChartSeries
              DataBinding.FieldName = 'UNBILLED'
              DisplayText = 'Recorded Billable Time'
              Styles.Values = cxStyle3
            end
            object cxGrid3DBChartView1Series2: TcxGridDBChartSeries
              DataBinding.FieldName = 'WIPBUDGET'
              DisplayText = 'Billable Time - Budget'
              Styles.Values = cxStyle2
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBChartView1
          end
        end
      end
    end
    object tabDebtors: TcxTabSheet
      Caption = 'Debtors'
      ImageIndex = 5
      OnShow = tabDebtorsShow
      DesignSize = (
        1104
        611)
      object Label1: TLabel
        Left = 11
        Top = 43
        Width = 40
        Height = 15
        Caption = 'Current'
      end
      object Label2: TLabel
        Left = 11
        Top = 59
        Width = 12
        Height = 15
        Caption = '30'
      end
      object Label3: TLabel
        Left = 11
        Top = 74
        Width = 12
        Height = 15
        Caption = '60'
      end
      object Label4: TLabel
        Left = 11
        Top = 90
        Width = 12
        Height = 15
        Caption = '90'
      end
      object Label5: TLabel
        Left = 11
        Top = 106
        Width = 26
        Height = 15
        Caption = '120+'
      end
      object Label6: TLabel
        Left = 11
        Top = 125
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
      object pnlDebtors: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 19
        Align = alTop
        Caption = 'Debtors'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 53
          Top = 3
          Width = 66
          Height = 15
          Caption = 'No. Matters'
        end
        object Label9: TLabel
          Left = 128
          Top = 3
          Width = 45
          Height = 15
          Caption = 'Amount'
        end
      end
      object chartDebtors: TDBChart
        Left = 198
        Top = 20
        Width = 908
        Height = 347
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        OnClickSeries = chartDebtorsClickSeries
        Legend.Visible = False
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        Anchors = [akLeft, akTop, akRight]
        OnClick = chartDebtorsClick
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series10: TBarSeries
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
      object cxDBLabel36: TcxDBLabel
        Left = 65
        Top = 43
        DataBinding.DataField = 'ADJ0'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
        Transparent = True
        Height = 16
        Width = 33
      end
      object cxDBLabel13: TcxDBLabel
        Left = 123
        Top = 43
        DataBinding.DataField = 'ADJ0'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 16
        Width = 68
        AnchorX = 191
      end
      object cxDBLabel31: TcxDBLabel
        Left = 123
        Top = 59
        DataBinding.DataField = 'ADJ1'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 16
        Width = 68
        AnchorX = 191
      end
      object cxDBLabel32: TcxDBLabel
        Left = 123
        Top = 74
        DataBinding.DataField = 'ADJ2'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 16
        Width = 68
        AnchorX = 191
      end
      object cxDBLabel33: TcxDBLabel
        Left = 123
        Top = 90
        DataBinding.DataField = 'ADJ3'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 16
        Width = 68
        AnchorX = 191
      end
      object cxDBLabel34: TcxDBLabel
        Left = 123
        Top = 106
        DataBinding.DataField = 'ADJ10'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 16
        Width = 68
        AnchorX = 191
      end
      object cxDBLabel35: TcxDBLabel
        Left = 115
        Top = 123
        DataBinding.DataField = 'TOTALAGED'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtors
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsNone
        Style.Edges = [bTop]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 16
        Width = 78
        AnchorX = 193
      end
      object cxDBLabel41: TcxDBLabel
        Left = 65
        Top = 123
        DataBinding.DataField = 'TOTALMATTERS'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
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
        Height = 16
        Width = 33
      end
      object cxDBLabel40: TcxDBLabel
        Left = 65
        Top = 106
        DataBinding.DataField = 'ADJ10'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
        Transparent = True
        Height = 16
        Width = 33
      end
      object cxDBLabel39: TcxDBLabel
        Left = 65
        Top = 90
        DataBinding.DataField = 'ADJ3'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
        Transparent = True
        Height = 16
        Width = 33
      end
      object cxDBLabel38: TcxDBLabel
        Left = 65
        Top = 74
        DataBinding.DataField = 'ADJ2'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
        Transparent = True
        Height = 16
        Width = 33
      end
      object cxDBLabel37: TcxDBLabel
        Left = 65
        Top = 59
        DataBinding.DataField = 'ADJ1'
        DataBinding.DataSource = dmDashboardInd.dsAgedDebtorsMatterCnt
        Transparent = True
        Height = 16
        Width = 33
      end
    end
    object tabFeesBilled: TcxTabSheet
      Caption = 'Fees Billed'
      ImageIndex = 1
      OnShow = tabFeesBilledShow
      object pnlFees: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 299
        Align = alTop
        Color = clWhite
        TabOrder = 0
        DesignSize = (
          1104
          299)
        object Label17: TLabel
          Left = 267
          Top = 114
          Width = 24
          Height = 11
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 327
          Top = 114
          Width = 27
          Height = 11
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 214
          Top = 128
          Width = 45
          Height = 15
          Caption = 'MONTH'
        end
        object Label10: TLabel
          Left = 214
          Top = 141
          Width = 22
          Height = 15
          Caption = 'YTD'
        end
        object Label27: TLabel
          Left = 267
          Top = 539
          Width = 45
          Height = 15
          Caption = 'MONTH'
          Transparent = True
          Visible = False
        end
        object Label34: TLabel
          Left = 319
          Top = 514
          Width = 24
          Height = 11
          Caption = 'Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label38: TLabel
          Left = 380
          Top = 514
          Width = 27
          Height = 11
          Caption = 'Budget'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label42: TLabel
          Left = 8
          Top = 279
          Width = 23
          Height = 15
          Caption = 'YTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel14: TcxDBLabel
          Left = 317
          Top = 126
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledBudget
          Height = 15
          Width = 58
        end
        object cxDBLabel17: TcxDBLabel
          Left = 317
          Top = 139
          DataBinding.DataField = 'YEAR_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledBudget
          Height = 15
          Width = 58
        end
        object cxDBLabel16: TcxDBLabel
          Left = 254
          Top = 139
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledYTD
          Height = 15
          Width = 59
        end
        object cxDBLabel15: TcxDBLabel
          Left = 254
          Top = 126
          DataBinding.DataField = 'NVL(SUM(AMOUNT),0)'
          DataBinding.DataSource = dmDashboardInd.dsFeesBilledMonth
          Height = 15
          Width = 59
        end
        object pnlFeesBilled: TPanel
          Left = 1
          Top = 1
          Width = 1102
          Height = 18
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
        end
        object cxDBLabel20: TcxDBLabel
          Left = 371
          Top = 537
          DataBinding.DataField = 'MONTH_BUDGET'
          DataBinding.DataSource = dmDashboardInd.dsFeesReceivedBudget
          Transparent = True
          Visible = False
          Height = 15
          Width = 58
        end
        object cxDBLabel19: TcxDBLabel
          Left = 306
          Top = 536
          DataBinding.DataField = 'FE_RECEIPT'
          DataBinding.DataSource = dmDashboardInd.dsFeeReceivedMonth
          Transparent = True
          Visible = False
          Height = 15
          Width = 59
        end
        object grdFeeBilled: TcxGrid
          Left = 0
          Top = 18
          Width = 221
          Height = 258
          TabOrder = 7
          LookAndFeel.NativeStyle = True
          object tvFeeBilled: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardInd.dsFeesListBudget
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$,0.00;-$,0.00'
                Kind = skSum
                FieldName = 'FEES'
                Column = tvFeeBilledFEES_PAID
              end
              item
                Format = '$,0.00;-$,0.00'
                Kind = skSum
                FieldName = 'FEES_BUDGET'
                Column = tvFeeBilledFEES_BUDGET
              end>
            DataController.Summary.SummaryGroups = <>
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
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            Styles.Content = cxStyle1
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object tvFeeBilledDISP_PERIOD: TcxGridDBColumn
              Caption = 'Period'
              DataBinding.FieldName = 'DISP_PERIOD'
              MinWidth = 35
              Width = 35
            end
            object tvFeeBilledFEES_PAID: TcxGridDBColumn
              Caption = 'Fees'
              DataBinding.FieldName = 'FEES'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 76
            end
            object tvFeeBilledFEES_BUDGET: TcxGridDBColumn
              Caption = 'Budget'
              DataBinding.FieldName = 'FEES_BUDGET'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 77
            end
            object tvFeeBilledRATIO: TcxGridDBColumn
              Caption = '%'
              DataBinding.FieldName = 'RATIO'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 30
              Width = 31
            end
            object tvFeeBilledPERIOD: TcxGridDBColumn
              DataBinding.FieldName = 'PERIOD'
              Visible = False
            end
          end
          object grdFeeBilledLevel1: TcxGridLevel
            GridView = tvFeeBilled
          end
        end
        object cxDBLabel3: TcxDBLabel
          Left = 31
          Top = 279
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
          Visible = False
          Height = 17
          Width = 74
          AnchorX = 105
          AnchorY = 296
        end
        object cxDBLabel4: TcxDBLabel
          Left = 107
          Top = 279
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
          Width = 76
          AnchorX = 183
          AnchorY = 296
        end
        object grdFeesBilled: TcxGrid
          Left = 221
          Top = 18
          Width = 881
          Height = 280
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 10
          LookAndFeel.Kind = lfStandard
          object grdFeesBilledDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardInd.dsFeesListBudget
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object grdFeesBilledDBTableView1DISP_PERIOD: TcxGridDBColumn
              DataBinding.FieldName = 'DISP_PERIOD'
            end
            object grdFeesBilledDBTableView1FEES: TcxGridDBColumn
              DataBinding.FieldName = 'FEES'
            end
            object grdFeesBilledDBTableView1FEES_BUDGET: TcxGridDBColumn
              DataBinding.FieldName = 'FEES_BUDGET'
            end
            object grdFeesBilledDBTableView1PERIOD: TcxGridDBColumn
              DataBinding.FieldName = 'PERIOD'
            end
            object grdFeesBilledDBTableView1RATIO: TcxGridDBColumn
              DataBinding.FieldName = 'RATIO'
            end
          end
          object tvFeesBilled: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'DISP_PERIOD'
            DataController.DataSource = dmDashboardInd.dsFeesListBudget
            DiagramColumn.Active = True
            DiagramColumn.AxisCategory.Title.Alignment = cpaCenter
            Legend.Border = lbNone
            Legend.Position = cppTop
            OptionsCustomize.DataGroupMoving = False
            object tvFeesBilledSeries1: TcxGridDBChartSeries
              DataBinding.FieldName = 'FEES'
              DisplayText = 'Fees Billed'
              Styles.Values = cxStyle3
            end
            object tvFeesBilledSeries2: TcxGridDBChartSeries
              DataBinding.FieldName = 'FEES_BUDGET'
              DisplayText = 'Fees Billed - Budget'
              Styles.Values = cxStyle2
            end
          end
          object grdFeesBilledLevel1: TcxGridLevel
            GridView = tvFeesBilled
          end
        end
      end
    end
    object tabFeesReceived: TcxTabSheet
      Caption = 'Fees Received'
      ImageIndex = 6
      OnShow = tabFeesReceivedShow
      object pnlFeesReceived: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 299
        Align = alTop
        TabOrder = 0
        object Label28: TLabel
          Left = 8
          Top = 279
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
        object cxDBLabel18: TcxDBLabel
          Left = 50
          Top = 277
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
          Visible = False
          Height = 17
          Width = 59
        end
        object cxDBLabel21: TcxDBLabel
          Left = 124
          Top = 277
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
          Height = 17
          Width = 58
        end
        object grdFeeReceived: TcxGrid
          Left = 0
          Top = 18
          Width = 221
          Height = 258
          TabOrder = 2
          LookAndFeel.NativeStyle = True
          object tvFeeReceived: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmDashboardInd.dsFeesReceivedGrid
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$,0.00;-$,0.00'
                Kind = skSum
                FieldName = 'FEES_PAID'
                Column = cxGridDBColumn4
              end
              item
                Format = '$,0.00;-$,0.00'
                Kind = skSum
                FieldName = 'FEES_BUDGET'
                Column = cxGridDBColumn5
              end>
            DataController.Summary.SummaryGroups = <>
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
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            Styles.Content = cxStyle1
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Period'
              DataBinding.FieldName = 'DISP_PERIOD'
              MinWidth = 35
              Width = 35
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Fees'
              DataBinding.FieldName = 'FEES_PAID'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 74
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Budget'
              DataBinding.FieldName = 'FEES_BUDGET'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Width = 76
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = '%'
              DataBinding.FieldName = 'RATIO'
              HeaderAlignmentHorz = taRightJustify
              MinWidth = 30
              Width = 30
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'PERIOD'
              Visible = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = tvFeeReceived
          end
        end
        object grdFeesReceived: TcxGrid
          Left = 221
          Top = 18
          Width = 877
          Height = 279
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          object tvFeesReceived: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'DISP_PERIOD'
            DataController.DataSource = dmDashboardInd.dsFeesReceivedGrid
            DiagramColumn.Active = True
            Legend.Position = cppTop
            object tvFeesReceivedSeries2: TcxGridDBChartSeries
              DataBinding.FieldName = 'FEES_PAID'
              DisplayText = 'Fees Received'
              Styles.Values = cxStyle3
            end
            object tvFeesReceivedSeries1: TcxGridDBChartSeries
              DataBinding.FieldName = 'FEES_BUDGET'
              DisplayText = 'Fees Received - Budget'
              Styles.Values = cxStyle2
            end
          end
          object grdFeesReceivedLevel1: TcxGridLevel
            GridView = tvFeesReceived
          end
        end
        object pnlFeesReceivedTitle: TPanel
          Left = 1
          Top = 1
          Width = 1102
          Height = 18
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
          TabOrder = 4
        end
      end
    end
    object tabLockUp: TcxTabSheet
      Caption = 'Lock Up'
      ImageIndex = 4
      OnShow = tabLockUpShow
      object pnlLockupGraph: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 611
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Label22: TLabel
          Left = 7
          Top = 32
          Width = 48
          Height = 15
          Caption = 'Creditors'
          Transparent = True
        end
        object Label23: TLabel
          Left = 7
          Top = 52
          Width = 41
          Height = 15
          Caption = 'Debtors'
          Transparent = True
        end
        object Label24: TLabel
          Left = 7
          Top = 71
          Width = 45
          Height = 15
          Caption = 'Sundries'
          Transparent = True
        end
        object Label40: TLabel
          Left = 7
          Top = 88
          Width = 70
          Height = 15
          Caption = 'Unbilled Disb'
          Transparent = True
        end
        object Label41: TLabel
          Left = 7
          Top = 108
          Width = 21
          Height = 15
          Caption = 'WIP'
          Transparent = True
        end
        object Label25: TLabel
          Left = 7
          Top = 129
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
          Width = 1104
          Height = 19
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
          Left = 191
          Top = 19
          Width = 913
          Height = 175
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
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series4: TBarSeries
            Legend.Visible = False
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
          Left = 77
          Top = 30
          DataBinding.DataField = 'CRED_MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsLockupCredSund
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 153
        end
        object cxDBLabel11: TcxDBLabel
          Left = 77
          Top = 50
          DataBinding.DataField = 'DEBTOR_AMOUNT'
          DataBinding.DataSource = dmDashboardInd.dsDebtorLockup
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 153
        end
        object cxDBLabel12: TcxDBLabel
          Left = 77
          Top = 69
          DataBinding.DataField = 'SUND_MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsLockupCredSund
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 153
        end
        object cxDBLabel1: TcxDBLabel
          Left = 77
          Top = 86
          DataBinding.DataField = 'UNBILL_DISB'
          DataBinding.DataSource = dmDashboardInd.dsUnbilledDisbs
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 153
        end
        object cxDBLabel2: TcxDBLabel
          Left = 77
          Top = 106
          DataBinding.DataField = 'MONTH_TOTAL'
          DataBinding.DataSource = dmDashboardInd.dsWIPLockup
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 153
        end
        object teLockupTotal: TcxLabel
          Left = 77
          Top = 127
          AutoSize = False
          Caption = 'teLockupTotal'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Edges = [bTop]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 16
          Width = 76
          AnchorX = 153
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
        Width = 1104
        Height = 489
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object pnlMatterProfit: TPanel
          Left = 11
          Top = 160
          Width = 217
          Height = 210
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 217
            Height = 20
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
            Top = 20
            Width = 217
            Height = 190
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = True
            object tvMatterProfitability: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmDashboardInd.dsClientMilestones
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Header = False
              object tvMatterProfitabilityDESCR: TcxGridDBColumn
                DataBinding.FieldName = 'DESCR'
              end
              object tvMatterProfitabilityTOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
                Width = 75
              end
            end
            object glvMatterProfitability: TcxGridLevel
              GridView = tvMatterProfitability
            end
          end
        end
        object Panel3: TPanel
          Left = 11
          Top = 5
          Width = 217
          Height = 154
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object Label29: TLabel
            Left = 4
            Top = 29
            Width = 31
            Height = 14
            AutoSize = False
            Caption = 'MTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 4
            Top = 46
            Width = 28
            Height = 15
            AutoSize = False
            Caption = 'YTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 129
            Top = 29
            Width = 36
            Height = 15
            Caption = 'Closed'
          end
          object Label32: TLabel
            Left = 129
            Top = 46
            Width = 36
            Height = 15
            Caption = 'Closed'
          end
          object Label33: TLabel
            Left = 3
            Top = 62
            Width = 66
            Height = 15
            AutoSize = False
            Caption = 'Total Matters'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 7
            Top = 103
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
            Left = 7
            Top = 120
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
            Left = 76
            Top = 27
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersOpened
            Transparent = True
            Height = 16
            Width = 43
          end
          object cxDBLabel23: TcxDBLabel
            Left = 76
            Top = 44
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersOpened
            Transparent = True
            Height = 17
            Width = 43
          end
          object cxDBLabel24: TcxDBLabel
            Left = 76
            Top = 60
            DataBinding.DataField = 'MATTS'
            DataBinding.DataSource = dmDashboardInd.dsTotalMatters
            Style.BorderStyle = ebsNone
            Style.Edges = []
            Transparent = True
            Height = 20
            Width = 43
          end
          object cxDBLabel25: TcxDBLabel
            Left = 170
            Top = 27
            DataBinding.DataField = 'MTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersClosed
            Transparent = True
            Height = 16
            Width = 43
          end
          object cxDBLabel26: TcxDBLabel
            Left = 170
            Top = 44
            DataBinding.DataField = 'YTD'
            DataBinding.DataSource = dmDashboardInd.dsMattersClosed
            Transparent = True
            Height = 17
            Width = 43
          end
          object cxDBLabel27: TcxDBLabel
            Left = 170
            Top = 60
            DataBinding.DataField = 'CLOSED'
            DataBinding.DataSource = dmDashboardInd.dsTotalMatters
            Style.BorderStyle = ebsNone
            Style.Edges = []
            Transparent = True
            Height = 19
            Width = 43
          end
          object Panel4: TPanel
            Left = 0
            Top = 80
            Width = 217
            Height = 18
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
            Left = 76
            Top = 100
            DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
            DataBinding.DataSource = dmDashboardInd.dsClientCountMTD
            Transparent = True
            Height = 18
            Width = 43
          end
          object cxDBLabel30: TcxDBLabel
            Left = 76
            Top = 116
            DataBinding.DataField = 'COUNT(CLIENT.NCLIENT)'
            DataBinding.DataSource = dmDashboardInd.dsClientCountYTD
            Transparent = True
            Height = 18
            Width = 43
          end
          object pnlMatters: TPanel
            Left = 0
            Top = 0
            Width = 217
            Height = 18
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
        object GroupBox1: TGroupBox
          Left = 234
          Top = 5
          Width = 295
          Height = 365
          Caption = 'Top 20 Clients (Contributor)'
          TabOrder = 2
          object grdTopClients: TcxGrid
            Left = 6
            Top = 37
            Width = 282
            Height = 321
            Align = alCustom
            TabOrder = 0
            LookAndFeel.NativeStyle = True
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
              OptionsBehavior.CellHints = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object tvTopClientsNAME: TcxGridDBColumn
                Caption = 'Client'
                DataBinding.FieldName = 'NAME'
                Width = 149
              end
              object tvTopClientsTOTAL: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                Width = 103
              end
            end
            object grdTopClientsLevel1: TcxGridLevel
              GridView = tvTopClients
            end
          end
          object Panel1: TPanel
            Left = 6
            Top = 16
            Width = 282
            Height = 17
            BevelOuter = bvNone
            TabOrder = 1
            object cxLabel10: TcxLabel
              Left = 36
              Top = -2
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
        object GroupBox2: TGroupBox
          Left = 537
          Top = 5
          Width = 295
          Height = 365
          Caption = 'Top 20 Referrers'
          TabOrder = 3
          object grdTopReferrers: TcxGrid
            Left = 5
            Top = 37
            Width = 285
            Height = 321
            Align = alCustom
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
              OptionsBehavior.CellHints = True
              OptionsBehavior.ColumnHeaderHints = False
              OptionsCustomize.ColumnFiltering = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Referrer'
                DataBinding.FieldName = 'NAME'
                Width = 130
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'TOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                HeaderGlyphAlignmentHorz = taRightJustify
                Width = 84
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object Panel2: TPanel
            Left = 10
            Top = 91
            Width = 285
            Height = 17
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
          end
          object cxLabel11: TcxLabel
            Left = 59
            Top = 15
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
    object tabCalendar: TcxTabSheet
      Caption = 'Monthly Chargeable/Non Chargeable Units - Summary'
      ImageIndex = 3
      OnShow = tabCalendarShow
      object pnlCalendar: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 611
        Align = alClient
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 569
          Width = 1102
          Height = 41
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGroupBox1: TcxGroupBox
            Left = 6
            Top = 2
            Caption = 'MTD (Hours)'
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Transparent = True
            Height = 34
            Width = 372
            object cxLabel1: TcxLabel
              Left = 7
              Top = 14
              Caption = 'Chargeable'
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 99
              Top = 14
              Caption = 'Non Chargeable'
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 303
              Top = 14
              Caption = 'Total'
              Transparent = True
            end
            object lblMthChargeable: TcxLabel
              Left = 66
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 28
              AnchorX = 94
            end
            object lblMthNonChargeable: TcxLabel
              Left = 189
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 28
              AnchorX = 217
            end
            object lblMonthTotal: TcxLabel
              Left = 332
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 28
              AnchorX = 360
            end
            object cxLabel9: TcxLabel
              Left = 217
              Top = 14
              Caption = 'Overhead'
              Transparent = True
            end
            object lblMthOverhead: TcxLabel
              Left = 268
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 28
              AnchorX = 296
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 381
            Top = 2
            Caption = 'YTD (Hours)'
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Transparent = True
            Height = 34
            Width = 400
            object cxLabel13: TcxLabel
              Left = 7
              Top = 14
              Caption = 'Chargeable'
              Transparent = True
            end
            object cxLabel14: TcxLabel
              Left = 104
              Top = 14
              Caption = 'Non Chargeable'
              Transparent = True
            end
            object cxLabel15: TcxLabel
              Left = 320
              Top = 14
              Caption = 'Total'
              Transparent = True
            end
            object lblYearChargeable: TcxLabel
              Left = 69
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 33
              AnchorX = 102
            end
            object lblYearNonChargeable: TcxLabel
              Left = 191
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 32
              AnchorX = 223
            end
            object lblYeartotal: TcxLabel
              Left = 351
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 40
              AnchorX = 391
            end
            object Overhead: TcxLabel
              Left = 227
              Top = 14
              Caption = 'Overhead'
              Transparent = True
            end
            object lblYearOverhead: TcxLabel
              Left = 280
              Top = 14
              AutoSize = False
              Caption = '0'
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 16
              Width = 32
              AnchorX = 312
            end
          end
        end
        object Scheduler: TcxScheduler
          Left = 1
          Top = 26
          Width = 1102
          Height = 543
          DateNavigator.ShowDatesContainingHolidaysInColor = True
          DateNavigator.Visible = False
          ViewDay.CanShow = False
          ViewDay.TimeRulerPopupMenu.UseBuiltInPopupMenu = False
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
          OptionsView.ShowEventsWithoutResource = True
          Storage = cxSchedulerStorage1
          TabOrder = 1
          Selection = 3
          Splitters = {
            020300007E00000091030000830000003C0400000100000041040000C9010000}
          StoredClientBounds = {01000000010000004D0400001E020000}
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 1102
          Height = 25
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
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 28
    Width = 1112
    Height = 19
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
  object cmbEmployee: TcxLookupComboBox
    Left = 7
    Top = 494
    Properties.DropDownRows = 20
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsEmployeeList
    Properties.OnCloseUp = cmbEmployeePropertiesCloseUp
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Visible = False
    Width = 199
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
    Left = 755
    Top = 21
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
      FloatClientHeight = 23
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
    end
    object dxBarLookupCombo1: TdxBarLookupCombo
      Caption = 'Employee:  '
      Category = 0
      Hint = 'Employee:  '
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
      OnCloseUp = dxBarLookupCombo1CloseUp
      KeyField = 'CODE'
      ListField = 'NAME'
      ListFieldIndex = 1
      ListSource = dsEmployeeList
      RowCount = 15
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
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = cxBarEditItem1PropertiesEditValueChanged
      InternalEditValue = True
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
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
    Left = 696
    Top = 592
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
  object cxSchedulerStorage1: TcxSchedulerStorage
    CustomFields = <>
    Resources.Items = <>
    Left = 1060
    Top = 580
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
      'UNION'
      'SELECT CODE, NAME '
      'FROM EMPLOYEE '
      'WHERE'
      'ACTIVE = '#39'Y'#39' '
      'AND ISTIME_RECORDER = '#39'Y'#39
      'AND code = :code'
      'ORDER BY 2')
    Left = 416
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dsEmployeeList: TUniDataSource
    DataSet = qryEmployeeList
    Left = 557
    Top = 184
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink3
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPreferences, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPreferences, pvoPrint, pvoPrintStyles, pvoReportFileOperations, pvoPageMargins]
    Version = 0
    Left = 765
    Top = 117
    PixelsPerInch = 96
    object ComponentPrinterLink4: TdxCustomContainerReportLink
      Active = True
      Component = tabWIP
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
      ReportDocument.CreationDate = 43715.477522546290000000
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
      Component = tabDebtors
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
      ReportDocument.CreationDate = 43715.477522650460000000
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
      Component = tabFeesBilled
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
      ReportDocument.CreationDate = 43715.477522812500000000
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
    object ComponentPrinterLink10: TdxCustomContainerReportLink
      Component = tabFeesReceived
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
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 96
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
    object ComponentPrinterLink1: TdxCustomContainerReportLink
      Component = tabLockUp
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
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 96
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
    object ComponentPrinterLink2: TdxCustomContainerReportLink
      Component = tabTopClient
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
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
    object ComponentPrinterLink3: TdxCustomContainerReportLink
      Component = tabCalendar
      PageNumberFormat = pnfNumeral
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
      TimeFormat = 0
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
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
end
