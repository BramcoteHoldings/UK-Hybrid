object frmFeeList: TfrmFeeList
  Left = 174
  Top = 102
  Width = 660
  Height = 430
  Caption = 'Fee List'
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 660
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefaultPosOnly
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcFeeList: TPageControl
    Left = 0
    Top = 54
    Width = 652
    Height = 342
    ActivePage = tsFilter
    Align = alClient
    TabIndex = 5
    TabOrder = 0
    object tsFeeList: TTabSheet
      Caption = 'Fees'
      OnHide = tsFeeListHide
      OnShow = tsFeeListShow
      object dbgFees: TRxDBGrid
        Left = 0
        Top = 0
        Width = 644
        Height = 321
        Align = alClient
        DataSource = dsFees
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        PopupMenu = pmFees
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        MultiSelect = True
      end
    end
    object tsDrillDown: TTabSheet
      Caption = 'Drill Down'
      ImageIndex = 5
      OnShow = tsDrillDownShow
      object vtDrillDown: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 644
        Height = 321
        Align = alClient
        ButtonStyle = bsTriangle
        Color = 16776176
        Header.AutoSizeIndex = 0
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Segoe UI'
        Header.Font.Style = []
        Header.MainColumn = -1
        Header.Options = [hoVisible]
        RootNodeCount = 5
        TabOrder = 0
        TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowHorzGridLines, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages]
        OnCollapsed = vtDrillDownCollapsed
        OnExpanded = vtDrillDownExpanded
        OnGetText = vtDrillDownGetText
        OnPaintText = vtDrillDownPaintText
        Columns = <>
      end
    end
    object tsColumns: TTabSheet
      Caption = 'Columns'
      ImageIndex = 3
      object vtColumns: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 644
        Height = 321
        Align = alClient
        Header.AutoSizeIndex = 0
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Segoe UI'
        Header.Font.Style = []
        Header.Options = [hoVisible]
        PopupMenu = pmColumns
        TabOrder = 0
        TreeOptions.MiscOptions = [toAcceptOLEDrop, toEditable, toFullRepaintOnResize, toGridExtensions, toInitOnSave, toToggleOnDblClick, toWheelPanning]
        TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toThemeAware, toUseBlendedImages]
        TreeOptions.SelectionOptions = [toExtendedFocus]
        OnClick = vtColumnsClick
        OnCreateEditor = vtColumnsCreateEditor
        OnEdited = vtColumnsEdited
        OnEditing = vtColumnsEditing
        OnGetText = vtColumnsGetText
        OnPaintText = vtColumnsPaintText
        OnNewText = vtColumnsNewText
        Columns = <
          item
            Position = 0
            Width = 150
            WideText = 'Column'
          end
          item
            Position = 1
            WideText = 'Visible'
          end
          item
            Position = 2
            Width = 70
            WideText = 'Sort Order'
          end
          item
            Position = 3
            Width = 80
            WideText = 'Sort Direction'
          end
          item
            Position = 4
            Width = 60
            WideText = 'Group'
          end
          item
            Position = 5
            Width = 70
            WideText = 'Group Order'
          end
          item
            Position = 6
            Width = 100
            WideText = 'Total Type'
          end>
      end
    end
    object tsStats: TTabSheet
      Caption = 'Statistics'
      OnHide = tsStatsHide
      OnShow = tsStatsShow
      DesignSize = (
        644
        314)
      object gbStats: TGroupBox
        Left = 8
        Top = 6
        Width = 353
        Height = 217
        Caption = 'Billing Statistics'
        TabOrder = 0
        object Label8: TLabel
          Left = 219
          Top = 40
          Width = 38
          Height = 13
          Caption = 'Unbilled'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 152
          Top = 40
          Width = 25
          Height = 13
          Caption = 'Billed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 313
          Top = 40
          Width = 24
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object lTotalTotal: TLabel
          Left = 264
          Top = 64
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalNumber: TLabel
          Left = 264
          Top = 80
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalAverage: TLabel
          Left = 264
          Top = 96
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalPercent: TLabel
          Left = 264
          Top = 112
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalUnits: TLabel
          Left = 264
          Top = 128
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalUnitsMoney: TLabel
          Left = 264
          Top = 144
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalMins: TLabel
          Left = 264
          Top = 160
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalMinsMoney: TLabel
          Left = 264
          Top = 176
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledTotal: TLabel
          Left = 184
          Top = 64
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledNumber: TLabel
          Left = 184
          Top = 80
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledAverage: TLabel
          Left = 184
          Top = 96
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledPercent: TLabel
          Left = 184
          Top = 112
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledUnits: TLabel
          Left = 184
          Top = 128
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledUnitsMoney: TLabel
          Left = 184
          Top = 144
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledMins: TLabel
          Left = 184
          Top = 160
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledMinsMoney: TLabel
          Left = 184
          Top = 176
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledMinsMoney: TLabel
          Left = 104
          Top = 176
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledMins: TLabel
          Left = 104
          Top = 160
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledUnitsMoney: TLabel
          Left = 104
          Top = 144
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledUnits: TLabel
          Left = 104
          Top = 128
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledPercent: TLabel
          Left = 104
          Top = 112
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledAverage: TLabel
          Left = 104
          Top = 96
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledNumber: TLabel
          Left = 104
          Top = 80
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lBilledTotal: TLabel
          Left = 104
          Top = 64
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 64
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object Label10: TLabel
          Left = 8
          Top = 80
          Width = 37
          Height = 13
          Caption = 'Number'
        end
        object Label6: TLabel
          Left = 8
          Top = 96
          Width = 40
          Height = 13
          Caption = 'Average'
        end
        object Label11: TLabel
          Left = 8
          Top = 112
          Width = 37
          Height = 13
          Caption = 'Percent'
        end
        object Label12: TLabel
          Left = 8
          Top = 128
          Width = 24
          Height = 13
          Caption = 'Units'
        end
        object Label15: TLabel
          Left = 8
          Top = 144
          Width = 30
          Height = 13
          Caption = '$/Unit'
        end
        object Label13: TLabel
          Left = 8
          Top = 160
          Width = 63
          Height = 13
          Caption = 'Mins as Units'
        end
        object Label14: TLabel
          Left = 8
          Top = 176
          Width = 63
          Height = 13
          Caption = '$/Actual Unit'
        end
        object lAuthorUnitsMoneyMsg: TLabel
          Left = 8
          Top = 24
          Width = 30
          Height = 13
          Caption = '$/Unit'
        end
        object lAuthorUnitsMoney: TLabel
          Left = 104
          Top = 24
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 8
          Top = 192
          Width = 28
          Height = 13
          Caption = 'Hours'
        end
        object lBilledHours: TLabel
          Left = 104
          Top = 192
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lUnbilledHours: TLabel
          Left = 184
          Top = 192
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lTotalHours: TLabel
          Left = 264
          Top = 192
          Width = 73
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object gbWork: TGroupBox
        Left = 8
        Top = 272
        Width = 632
        Height = 42
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Work Done'
        TabOrder = 1
        object Label16: TLabel
          Left = 8
          Top = 16
          Width = 60
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Days'
        end
        object lDaysWorked: TLabel
          Left = 71
          Top = 16
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'Days'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 135
          Top = 16
          Width = 60
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Hours/Day'
        end
        object lHoursWorked: TLabel
          Left = 199
          Top = 16
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'Days'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 391
          Top = 16
          Width = 60
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '$/Day'
        end
        object lMoneyWorked: TLabel
          Left = 455
          Top = 16
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'Days'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lUnitsWorked: TLabel
          Left = 327
          Top = 16
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'Days'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 263
          Top = 16
          Width = 60
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Units/Day'
        end
      end
      object gbPercentBilledUnBilled: TGroupBox
        Left = 367
        Top = 6
        Width = 273
        Height = 217
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Billed vs Unbilled'
        TabOrder = 2
        object chBilledvsUnBilled: TChart
          Left = 2
          Top = 15
          Width = 269
          Height = 200
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          Legend.Visible = False
          View3D = False
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Series1: TPieSeries
            Marks.ArrowLength = 1
            Marks.Visible = True
            SeriesColor = clRed
            ShowInLegend = False
            Title = 'Billed vs Unbilled'
            Circled = True
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1
            PieValues.Order = loNone
          end
        end
      end
    end
    object tsBudget: TTabSheet
      Caption = 'Budget'
      ImageIndex = 4
      OnHide = tsBudgetHide
      OnShow = tsBudgetShow
      object chBudget: TDBChart
        Left = 0
        Top = 0
        Width = 644
        Height = 314
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = 16744576
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Text.Strings = (
          '')
        Title.Visible = False
        BottomAxis.DateTimeFormat = 'MMM yyyy'
        BottomAxis.Increment = 30
        BottomAxis.LabelsAngle = 270
        BottomAxis.Title.Caption = 'Month'
        Chart3DPercent = 10
        LeftAxis.Title.Caption = 'Total $'
        Legend.ColorWidth = 10
        Legend.ShadowSize = 0
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 2
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 0
        DesignSize = (
          640
          310)
        object pBudgetView: TPanel
          Left = 537
          Top = 200
          Width = 64
          Height = 76
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          Caption = ' '
          Color = clWhite
          TabOrder = 0
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 64
            Height = 76
          end
          object Label32: TLabel
            Left = 1
            Top = 1
            Width = 54
            Height = 13
            Caption = ' View By:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rbBudgetViewMonth: TRadioButton
            Left = 4
            Top = 20
            Width = 59
            Height = 17
            Caption = 'Month'
            TabOrder = 0
            OnClick = rbBudgetViewMonthClick
          end
          object rbBudgetViewQuarter: TRadioButton
            Left = 4
            Top = 37
            Width = 59
            Height = 17
            Caption = 'Quarter'
            TabOrder = 1
            OnClick = rbBudgetViewQuarterClick
          end
          object rbBudgetViewYear: TRadioButton
            Left = 4
            Top = 54
            Width = 59
            Height = 17
            Caption = 'Year'
            TabOrder = 2
            OnClick = rbBudgetViewYearClick
          end
        end
        object Series2: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          DataSource = qBudgetGraphAuthQuarter
          SeriesColor = clRed
          Title = 'Billed'
          XLabelsSource = 'VIEWDATE'
          MultiBar = mbStacked
          UseYOrigin = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'XFIELD'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'BILLED'
        end
        object Series4: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          DataSource = qBudgetGraphAuthQuarter
          SeriesColor = clYellow
          Title = 'UnBilled'
          MultiBar = mbStacked
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'XFIELD'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'UNBILLED'
        end
        object Series3: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = qBudgetGraphAuthQuarter
          SeriesColor = clGreen
          Title = 'Budget'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'XFIELD'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'BUDGET'
        end
      end
    end
    object tsFilter: TTabSheet
      Caption = 'Filter'
      object lAuthor: TLabel
        Left = 8
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Author'
      end
      object Label3: TLabel
        Left = 256
        Top = 68
        Width = 30
        Height = 13
        Caption = 'Matter'
      end
      object Label5: TLabel
        Left = 8
        Top = 68
        Width = 55
        Height = 13
        Caption = 'Department'
      end
      object Label20: TLabel
        Left = 256
        Top = 120
        Width = 58
        Height = 13
        Caption = 'Author Type'
      end
      object Label25: TLabel
        Left = 8
        Top = 146
        Width = 45
        Height = 13
        Caption = 'Fee Type'
      end
      object Label26: TLabel
        Left = 8
        Top = 42
        Width = 34
        Height = 13
        Caption = 'Partner'
      end
      object Label27: TLabel
        Left = 256
        Top = 42
        Width = 26
        Height = 13
        Caption = 'Client'
      end
      object Label28: TLabel
        Left = 8
        Top = 120
        Width = 34
        Height = 13
        Caption = 'Branch'
      end
      object Label29: TLabel
        Left = 256
        Top = 146
        Width = 27
        Height = 13
        Caption = 'Scale'
      end
      object Label30: TLabel
        Left = 8
        Top = 94
        Width = 26
        Height = 13
        Caption = 'Entity'
      end
      object Label31: TLabel
        Left = 256
        Top = 94
        Width = 53
        Height = 13
        Caption = 'Bill Number'
      end
      object sbClearAuthor: TSpeedButton
        Left = 469
        Top = 11
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearEntity: TSpeedButton
        Left = 218
        Top = 89
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearBranch: TSpeedButton
        Left = 218
        Top = 115
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearDepartment: TSpeedButton
        Left = 218
        Top = 63
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearMatter: TSpeedButton
        Left = 469
        Top = 63
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearFeeType: TSpeedButton
        Left = 218
        Top = 141
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearClient: TSpeedButton
        Left = 469
        Top = 37
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearAuthorType: TSpeedButton
        Left = 469
        Top = 115
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearPartner: TSpeedButton
        Left = 218
        Top = 37
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearScale: TSpeedButton
        Left = 469
        Top = 141
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object sbClearBillNumber: TSpeedButton
        Left = 469
        Top = 89
        Width = 23
        Height = 22
        Action = aClear
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF00FF007F7F7F00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF007F7F7F00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000080800000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF000000000000FF
          FF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          000000000000FFFF0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000FFFF0000000000FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
      end
      object eMatter: TEdit
        Left = 320
        Top = 64
        Width = 112
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object btnMatter: TBitBtn
        Left = 435
        Top = 64
        Width = 25
        Height = 21
        Action = aMatterSearch
        TabOrder = 6
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888800000888880000080F000888880F00080F000888880F
          0008000000080000000800F000000F00000800F000800F00000800F000800F00
          00088000000000000088880F00080F0008888800000800000888888000888000
          88888880F08880F0888888800088800088888888888888888888}
      end
      object edClientCode: TEdit
        Left = 320
        Top = 38
        Width = 112
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object btnClientCode: TBitBtn
        Left = 435
        Top = 38
        Width = 25
        Height = 21
        Action = aClientSearch
        TabOrder = 3
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888800000888880000080F000888880F00080F000888880F
          0008000000080000000800F000000F00000800F000800F00000800F000800F00
          00088000000000000088880F00080F0008888800000800000888888000888000
          88888880F08880F0888888800088800088888888888888888888}
      end
      object edBillNum: TEdit
        Left = 320
        Top = 90
        Width = 140
        Height = 21
        TabOrder = 8
      end
      object cbAuthor: TRxDBLookupCombo
        Left = 72
        Top = 12
        Width = 389
        Height = 21
        DropDownCount = 8
        LookupField = 'CODE'
        LookupDisplay = 'CODE;NAME'
        LookupDisplayIndex = 1
        LookupSource = dsFeeEarners
        TabOrder = 0
      end
      object cbFeeType: TRxDBLookupCombo
        Left = 72
        Top = 142
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'CODE;DESCR'
        LookupDisplayIndex = 1
        LookupSource = dsFeeType
        TabOrder = 11
      end
      object cbDept: TRxDBLookupCombo
        Left = 72
        Top = 64
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'CODE;DESCR'
        LookupDisplayIndex = 1
        LookupSource = dsDepartment
        TabOrder = 4
      end
      object cbBranch: TRxDBLookupCombo
        Left = 72
        Top = 116
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'CODE;DESCR'
        LookupDisplayIndex = 1
        LookupSource = dsBranch
        TabOrder = 9
      end
      object cbEntity: TRxDBLookupCombo
        Left = 72
        Top = 90
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'CODE;NAME'
        LookupDisplayIndex = 1
        LookupSource = dsEntity
        TabOrder = 7
        OnChange = cbEntityChange
      end
      object cbAuthorType: TRxDBLookupCombo
        Left = 320
        Top = 116
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'DESCR'
        LookupDisplayIndex = 1
        LookupSource = dsAuthorType
        TabOrder = 10
      end
      object cbScale: TRxDBLookupCombo
        Left = 320
        Top = 142
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'CODE;DESCR'
        LookupDisplayIndex = 1
        LookupSource = dsScaleCost
        TabOrder = 12
      end
      object cbPartner: TRxDBLookupCombo
        Left = 72
        Top = 38
        Width = 140
        Height = 21
        DropDownCount = 10
        DropDownWidth = 200
        LookupField = 'CODE'
        LookupDisplay = 'CODE;NAME'
        LookupDisplayIndex = 1
        LookupSource = dsPartner
        TabOrder = 1
      end
      object pDate: TPanel
        Left = 8
        Top = 251
        Width = 540
        Height = 62
        Caption = ' '
        TabOrder = 14
        object Label1: TLabel
          Left = 8
          Top = 9
          Width = 49
          Height = 13
          Caption = 'Date From'
        end
        object Label2: TLabel
          Left = 8
          Top = 33
          Width = 39
          Height = 13
          Caption = 'Date To'
        end
        object dtpDateTo: TDateTimePicker
          Left = 72
          Top = 33
          Width = 105
          Height = 21
          CalAlignment = dtaLeft
          Date = 0.847006782409153
          Time = 0.847006782409153
          ShowCheckbox = True
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
        end
        object dtpDateFrom: TDateTimePicker
          Left = 72
          Top = 9
          Width = 105
          Height = 21
          CalAlignment = dtaLeft
          Date = 0.847006782409153
          Time = 0.847006782409153
          ShowCheckbox = True
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
        end
        object dcToday: TDateChangeButton
          Left = 184
          Top = 9
          Width = 80
          Height = 21
          Caption = 'Today'
          TabOrder = 2
          TabStop = False
          ChangeType = ctToday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton2: TDateChangeButton
          Left = 184
          Top = 33
          Width = 80
          Height = 21
          Caption = 'Yesterday'
          TabOrder = 6
          TabStop = False
          ChangeType = ctYesterday
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton3: TDateChangeButton
          Left = 272
          Top = 33
          Width = 80
          Height = 21
          Caption = 'Last Week'
          TabOrder = 7
          TabStop = False
          ChangeType = ctLastWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton4: TDateChangeButton
          Left = 272
          Top = 9
          Width = 80
          Height = 21
          Caption = 'This Week'
          TabOrder = 3
          TabStop = False
          ChangeType = ctThisWeek
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton5: TDateChangeButton
          Left = 360
          Top = 9
          Width = 80
          Height = 21
          Caption = 'This Month'
          TabOrder = 4
          TabStop = False
          ChangeType = ctThisMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton6: TDateChangeButton
          Left = 360
          Top = 33
          Width = 80
          Height = 21
          Caption = 'Last Month'
          TabOrder = 8
          TabStop = False
          ChangeType = ctLastMonth
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton8: TDateChangeButton
          Left = 449
          Top = 33
          Width = 80
          Height = 21
          Caption = 'Last Year'
          TabOrder = 9
          TabStop = False
          ChangeType = ctLastYear
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
        object DateChangeButton7: TDateChangeButton
          Left = 449
          Top = 9
          Width = 80
          Height = 21
          Caption = 'Year To Date'
          TabOrder = 5
          TabStop = False
          ChangeType = ctYearToDate
          DateFrom = dtpDateFrom
          DateTo = dtpDateTo
        end
      end
      object pSelect: TPanel
        Left = 8
        Top = 170
        Width = 484
        Height = 76
        Caption = ' '
        TabOrder = 13
        object rgBilled: TRadioGroup
          Left = 9
          Top = 8
          Width = 241
          Height = 57
          Caption = 'Select fees'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'All'
            'Work in Progress'
            'Billed (Generated)'
            'Billings (Invoiced)')
          TabOrder = 0
        end
        object rgValue: TRadioGroup
          Left = 257
          Top = 8
          Width = 217
          Height = 57
          Caption = 'Select value'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'All'
            'Positive Only'
            'Negative Only'
            'Zero value')
          TabOrder = 1
        end
      end
    end
  end
  object ActionToolBar: TActionToolBar
    Left = 0
    Top = 27
    Width = 652
    Height = 27
    ActionManager = ActionManager
    AllowHiding = True
    Caption = 'ActionToolBar'
    EdgeBorders = [ebBottom]
    HorzSeparator = True
    Orientation = boLeftToRight
    PersistentHotKeys = False
    Spacing = 0
  end
  object ActionMainMenuBar: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 652
    Height = 27
    ActionManager = ActionManager
    Caption = 'ActionMainMenuBar'
    EdgeBorders = [ebTop, ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
    object dsFees: TUniDataSource
    AutoEdit = False
    DataSet = qFees
    Left = 531
    Top = 226
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
    Left = 509
    Top = 214
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
object ilstToolbar: TImageList
    Left = 517
    Top = 91
    Bitmap = {
      494C010112001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00800000008000000080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F008000000080000000800000007F7F7F007F7F7F0080000000800000008000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00800000008000
      0000800000008000000080000000000000000000000080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0080000000800000008000000080000000800000008000
      0000800000007F7F7F00000000000000000000000000000000007F7F7F008000
      00008000000080000000800000008000000080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000007F7F7F00800000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      00000000000000000000000000000000FF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000FF0000000000000000007F7F
      7F008000000080000000800000007F7F7F000000000000000000000000000000
      00000000000000000000FF0000000000FF008000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000FF0000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      00000000000000000000FF0000000000FF00800000007F7F7F00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF0080000000800000007F7F7F000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000007F7F7F0000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000FF008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF0080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000FF008000000080000000800000007F7F
      7F00000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00000000007F7F7F000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF0080000000800000008000
      00007F7F7F00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000007F7F7F000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF0080000000800000008000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      00007F7F7F00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000FF0080000000800000007F7F
      7F00000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000FF0080000000800000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF008000000080000000800000008000
      0000800000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000FF00800000007F7F7F000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000000000000000FF000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000FF0080000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      00000000000000000000000000000000FF0000000000000000007F7F7F008000
      000080000000800000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF007F7F7F00000000000000
      000000000000000000000000000000000000FF000000FF000000FF0000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000007F7F7F0080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000000000
      FF000000FF000000FF00000000007F7F7F00000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084848400000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF0000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      84000000FF000000FF000000FF008484840000FFFF0000FFFF0000FFFF008484
      8400FF000000FF000000FF000000848484000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF00000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000FF000000FF00
      0000FF000000FF0000000000000000FF000000FF0000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400000000000000000000000000848484008484840084848400848484008484
      8400FF000000FF000000FF00000084848400000000000000000000000000FF00
      0000FF0000000000000000FF000000FF000000FF000000FF0000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000000000000000000000000000FF00
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF007B7B
      7B00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008400000084000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF007B7B
      7B00BDBDBD00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00BDBDBD007B7B
      7B00FFFFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0084000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000BDBDBD00FFFFFF0000000000FFFFFF00BDBDBD0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFF81FFF00000000
      FFE007FF00000000FF8181FF00000000FE03C07F00000000F803C01F00000000
      E007E00700000000800FF001000000000000000000000000C00FF00300000000
      F007E00F00000000FC07E03F00000000FF03C0FF00000000FFC183FF00000000
      FFF18FFF00000000FFFC3FFF00000000FFFF8003BF7CFEFFFFFF80038F78FE7F
      07C18003C760FC7F07C18003C141FC3F07C18003E001F83F01018003E003F81F
      00018003F003F01F02018003F007F00F02018003F807E00F80038003F80FE007
      C1078003FC0FC007C1078003FC1FC003E38F8003FE1F8283E38F8007FE3F8EC1
      E38F800FFF3F1EF1FFFF801FFF7F7EF9EFFFFFFFFFFFFFFFCFFFF83FFFFF0162
      8007E00FFFFFFFE30003CFC7FFFFFE63800187E3FFFFFC03CFF1A3F3FFE7F803
      EFF131F9C1F3F003FFF138F9C3FBF0038FFF3C79C7FBE0038FF73E39CBFBC003
      8FF33F19DCF3800380019F8BFF070003C0008FC3FFFF0003E001C7E7FFFF01E3
      FFF3E00FFFFF83F7FFF7F83FFFFFC7F7F111FC1FFFFFFFFFFFFFF007C007FE7F
      0000E0038003FC3FD111C0010001FC3F9111C0010001FE7FD11180000001FC3F
      000080000000FC3FD11180000000FC3F91F180008000FC1FD1F18000C000F20F
      0000C001E001E107DFF1C001E007E1879FF1E003F007E007DFFFF007F003F00F
      0000FC1FF803F81FFFFFFFFFFFFFFFFF80038003FFFFFFFF80038003FFFFFFFF
      80038003FFFFFFF980038003FFFFE7FF80038003C00FC3F3800380038007C3E7
      800380038003E1C7800380038001F08F800380038001F81F80038003800FFC3F
      80038003800FF81F80038003801FF09F80038003C0FFC1C780078007C0FF83E3
      800F800FFFFF8FF1801F801FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
    object qBilled: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            
              'SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MIN' +
              'S, COUNT(AMOUNT) AS CNT'
            
              'FROM FEE WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo A' +
              'ND BILLED = '#39'Y'#39)
    Left = 532
    Top = 131
    object qBilledAMT: TFloatField
      FieldName = 'AMT'
    end
    object qBilledUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object qBilledMINS: TFloatField
      FieldName = 'MINS'
    end
    object qBilledCNT: TFloatField
      FieldName = 'CNT'
    end
  end
  object qUnbilled: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            
              'SELECT SUM(AMOUNT) AS AMT, SUM(UNITS) AS UNITS, SUM(MINS) AS MIN' +
              'S, COUNT(AMOUNT) AS CNT'
            
              'FROM FEE WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo A' +
              'ND BILLED <> '#39'Y'#39)
    Left = 589
    Top = 329
    object qUnbilledAMT: TFloatField
      FieldName = 'AMT'
    end
    object qUnbilledUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object qUnbilledMINS: TFloatField
      FieldName = 'MINS'
    end
    object qUnbilledCNT: TFloatField
      FieldName = 'CNT'
    end
  end
  object qWorked: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            
              'SELECT COUNT(CNT) AS DAYS FROM (SELECT COUNT(AMOUNT) AS CNT FROM' +
              ' FEE WHERE CREATED >= :P_DateFrom AND CREATED <= :P_DateTo GROUP' +
              ' BY CREATED)')
    Left = 514
    Top = 284
    object qWorkedDAYS: TFloatField
      FieldName = 'DAYS'
    end
  end
object pmFees: TPopupMenu
    Images = ilstToolbar
    Left = 577
    Top = 282
    object miNewFee: TMenuItem
      Action = aNewFee
    end
    object miOpenFee: TMenuItem
      Action = aOpenFee
      Default = True
    end
    object miDeleteFee: TMenuItem
      Action = aDeleteFee
    end
  end
    object qDelete: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'DELETE FROM FEE WHERE NFEE = -1')
    Left = 438
    Top = 259
  end
object ActionManager: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = aNewFee
            Caption = '&New Fee'
            ImageIndex = 0
            ShowCaption = False
            ShortCut = 16462
          end
          item
            Action = aOpenFee
            Caption = '&Open Fee'
            ImageIndex = 1
            ShowCaption = False
            ShortCut = 16463
          end
          item
            Action = aOpenMatter
            Caption = 'O&pen Matter'
            ImageIndex = 2
            ShowCaption = False
            ShortCut = 16461
          end
          item
            Action = aDeleteFee
            Caption = '&Delete Fee'
            ImageIndex = 3
            ShowCaption = False
            ShortCut = 16452
          end
          item
            Caption = '-'
          end
          item
            Action = aRefresh
            Caption = '&Refresh'
            ImageIndex = 8
            ShowCaption = False
            ShortCut = 116
          end
          item
            Action = aClearAll
            Caption = '&Clear All'
            ImageIndex = 9
            ShowCaption = False
            ShortCut = 121
          end
          item
            Caption = '-'
          end
          item
            Action = aReportFeeListSummary
            Caption = '&Fee List Summary'
            ImageIndex = 6
            ShowCaption = False
            ShortCut = 16464
          end
          item
            Caption = '-'
          end
          item
            Action = aToday
            Caption = '&Today'
            ImageIndex = 13
          end>
        ActionBar = ActionToolBar
      end
      item
        Items = <
          item
            Items = <
              item
                Action = aNewFee
                Caption = '&New Fee'
                ImageIndex = 0
                ShortCut = 16462
              end
              item
                Action = aOpenFee
                Caption = '&Open Fee'
                ImageIndex = 1
                ShortCut = 16463
              end
              item
                Caption = '-'
              end
              item
                Action = aOpenMatter
                Caption = 'O&pen Matter'
                ImageIndex = 2
                ShortCut = 16461
              end
              item
                Caption = '-'
              end
              item
                Action = aDeleteFee
                Caption = '&Delete Fee'
                ImageIndex = 3
                ShortCut = 16452
              end
              item
                Caption = '-'
              end
              item
                Items = <
                  item
                    Action = aReportFeeListSummary
                    Caption = '&Fee List Summary'
                    ImageIndex = 6
                    ShortCut = 16464
                  end
                  item
                    Action = aStatisticsReport
                    Caption = '&Statistics'
                    ImageIndex = 6
                  end
                  item
                    Action = aReportAuthorSummary
                    Caption = '&Author Summary'
                  end
                  item
                    Action = aReportGroupedList
                    Caption = '&Grouped List'
                  end>
                Caption = '&Report'
                UsageCount = 1
              end
              item
                Items = <
                  item
                    Action = aGraphFeesByDate
                    Caption = '&Fees By Date'
                    ImageIndex = 4
                  end
                  item
                    Action = aGraphAuthorFees
                    Caption = '&Author Fees'
                    ImageIndex = 5
                  end
                  item
                    Action = aGraphFeeTypes
                    Caption = 'F&ee Types'
                    ImageIndex = 5
                  end
                  item
                    Action = aGraphDepartments
                    Caption = '&Departments'
                    ImageIndex = 5
                  end>
                Caption = '&Graph'
                UsageCount = 1
              end
              item
                Caption = '-'
              end
              item
                Action = aExit
                Caption = '&Exit'
                ShortCut = 32883
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = aRefresh
                Caption = '&Refresh'
                ImageIndex = 8
                ShortCut = 116
              end
              item
                Action = aClearAll
                Caption = '&Clear All'
                ImageIndex = 9
                ShortCut = 121
              end>
            Caption = '&View'
          end>
        ActionBar = ActionMainMenuBar
      end
      item
      end>
    Images = ilstToolbar
    Left = 505
    Top = 97
    object aNewFee: TAction
      Category = 'File'
      Caption = 'New Fee'
      Hint = 'New Fee'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = aNewFeeExecute
      OnUpdate = aNewFeeUpdate
    end
    object aOpenFee: TAction
      Category = 'File'
      Caption = 'Open Fee'
      Hint = 'Open Fee'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = aOpenFeeExecute
      OnUpdate = aOpenFeeUpdate
    end
    object aOpenMatter: TAction
      Category = 'File'
      Caption = 'Open Matter'
      Hint = 'Open Matter'
      ImageIndex = 2
      ShortCut = 16461
      OnExecute = aOpenMatterExecute
      OnUpdate = aOpenMatterUpdate
    end
    object aDeleteFee: TAction
      Category = 'File'
      Caption = 'Delete Fee'
      Hint = 'Delete Fee'
      ImageIndex = 3
      ShortCut = 16452
      OnExecute = aDeleteFeeExecute
      OnUpdate = aDeleteFeeUpdate
    end
    object aRefresh: TAction
      Category = 'View'
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 8
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aClearAll: TAction
      Category = 'View'
      Caption = 'Clear All'
      Hint = 'Clear All'
      ImageIndex = 9
      ShortCut = 121
      OnExecute = aClearAllExecute
    end
    object aReportFeeListSummary: TAction
      Category = 'Report'
      Caption = 'Fee List Summary'
      ImageIndex = 6
      ShortCut = 16464
      OnExecute = aReportFeeListSummaryExecute
    end
    object aExit: TAction
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exit Window'
      ShortCut = 32883
      OnExecute = aExitExecute
    end
    object aReportAuthorSummary: TAction
      Category = 'Report'
      Caption = 'Author Summary'
      Hint = 'Author Summary'
      OnExecute = aReportAuthorSummaryExecute
      OnUpdate = aReportAuthorSummaryUpdate
    end
    object aReportGroupedList: TAction
      Category = 'Report'
      Caption = 'Grouped List'
      Hint = 'Grouped List'
      OnExecute = aReportGroupedListExecute
    end
    object aGraphFeesByDate: TAction
      Category = 'Graph'
      Caption = 'Fees By Date'
      Hint = 'Fees By Date'
      ImageIndex = 4
      OnExecute = aGraphFeesByDateExecute
    end
    object aGraphAuthorFees: TAction
      Category = 'Graph'
      Caption = 'Author Fees'
      Hint = 'Author Fees'
      ImageIndex = 5
      OnExecute = aGraphAuthorFeesExecute
      OnUpdate = aGraphAuthorFeesUpdate
    end
    object aGraphFeeTypes: TAction
      Category = 'Graph'
      Caption = 'Fee Types'
      Hint = 'Fee Types'
      ImageIndex = 5
      OnExecute = aGraphFeeTypesExecute
    end
    object aGraphDepartments: TAction
      Category = 'Graph'
      Caption = 'Departments'
      Hint = 'Departments'
      ImageIndex = 5
      OnExecute = aGraphDepartmentsExecute
      OnUpdate = aGraphDepartmentsUpdate
    end
    object aClear: TAction
      Category = 'Buttons'
      ImageIndex = 11
      OnExecute = aClearExecute
    end
    object aMatterSearch: TAction
      Category = 'Buttons'
      Hint = 'Matter Search'
      ImageIndex = 12
      OnExecute = aMatterSearchExecute
    end
    object aClientSearch: TAction
      Category = 'Buttons'
      Hint = 'Client Search'
      ImageIndex = 12
      OnExecute = aClientSearchExecute
    end
    object aToday: TAction
      Category = 'View'
      Caption = 'Today'
      Hint = 'What have I done today'
      ImageIndex = 13
      OnExecute = aTodayExecute
    end
    object aStatisticsReport: TAction
      Category = 'Report'
      Caption = 'Statistics'
      ImageIndex = 6
      OnExecute = aStatisticsReportExecute
    end
    object aColumnUp: TAction
      Category = 'Columns'
      Caption = 'Up'
      ImageIndex = 14
      OnExecute = aColumnUpExecute
      OnUpdate = aColumnUpUpdate
    end
    object aColumnDown: TAction
      Category = 'Columns'
      Caption = 'Down'
      ImageIndex = 15
      OnExecute = aColumnDownExecute
      OnUpdate = aColumnDownUpdate
    end
  end
  object dsFeeEarners: TDataSource
    DataSet = qFeeEarners
    Left = 523
    Top = 154
  end
    object qFeeEarners: TUniQuery
    SQL.Strings = (
            'SELECT NULL AS CODE, NULL AS NAME FROM DUAL'
            'UNION'
            'SELECT CODE, NAME FROM EMPLOYEE WHERE'
            'ACTIVE = '#39'Y'#39' '
            '--AND : = '#39'Y'#39
            'ORDER BY NAME')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 519
    Top = 154
    object qFeeEarnersCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qFeeEarnersNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object qFeeType: TUniQuery
    SQL.Strings = (
            'select * from feetype'
            'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 545
    Top = 13
    object qFeeTypeCODE: TStringField
      DisplayWidth = 5
      FieldName = 'CODE'
    end
    object qFeeTypeDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object qFeeTypeBILLABLE: TStringField
      FieldName = 'BILLABLE'
      Size = 1
    end
    object qFeeTypeTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 8
    end
    object qFeeTypeRATE: TFloatField
      FieldName = 'RATE'
    end
  end
object dsFeeType: TDataSource
    DataSet = qFeeType
    Left = 549
    Top = 25
  end
    object qDepartment: TUniQuery
    SQL.Strings = (
            'select * from empdept'
            'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 490
    Top = 14
    object qDepartmentCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qDepartmentDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object qDepartmentCOSTCENTRE: TStringField
      FieldName = 'COSTCENTRE'
      Size = 3
    end
  end
object dsDepartment: TDataSource
    DataSet = qDepartment
    Left = 489
    Top = 34
  end
    object qBranch: TUniQuery
    SQL.Strings = (
            'select * from branch'
            'where entity = :entity'
            'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 437
    Top = 14
    object qBranchCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qBranchENTITY: TStringField
      FieldName = 'ENTITY'
      Size = 2
    end
    object qBranchADD1: TStringField
      FieldName = 'ADD1'
      Size = 60
    end
    object qBranchDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object qBranchADD2: TStringField
      FieldName = 'ADD2'
      Size = 60
    end
    object qBranchSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qBranchSTATE: TStringField
      FieldName = 'STATE'
    end
    object qBranchPOSTCODE: TStringField
      FieldName = 'POSTCODE'
    end
    object qBranchDXADDRESS: TStringField
      FieldName = 'DXADDRESS'
      Size = 60
    end
    object qBranchPHONE: TStringField
      FieldName = 'PHONE'
      Size = 30
    end
    object qBranchFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
  end
object dsBranch: TDataSource
    DataSet = qBranch
    Left = 446
    Top = 35
  end
    object qEntity: TUniQuery
    SQL.Strings = (
            'select * from entity'
            'order by name')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 377
    Top = 14
    object qEntityCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 2
    end
    object qEntityNEXTMATTER: TFloatField
      FieldName = 'NEXTMATTER'
    end
    object qEntityCODE: TStringField
      FieldName = 'CODE'
      Size = 2
    end
    object qEntityNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object qEntityTYPE: TStringField
      FieldName = 'TYPE'
      Size = 1
    end
    object qEntityACTIVE: TStringField
      FieldName = 'ACTIVE'
      Size = 1
    end
    object qEntitySEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qEntityACN: TStringField
      FieldName = 'ACN'
      Size = 30
    end
    object qEntitySTARTED: TDateTimeField
      FieldName = 'STARTED'
    end
    object qEntitySTOPPED: TDateTimeField
      FieldName = 'STOPPED'
    end
    object qEntityDEFAULT_ENTITY: TStringField
      FieldName = 'DEFAULT_ENTITY'
      Size = 1
    end
    object qEntityDEFAULT_BANK: TStringField
      FieldName = 'DEFAULT_BANK'
      Size = 2
    end
    object qEntityCASH_OR_ACCRUAL: TStringField
      FieldName = 'CASH_OR_ACCRUAL'
      Size = 1
    end
    object qEntityNEW_FEE_DR: TStringField
      FieldName = 'NEW_FEE_DR'
      Size = 12
    end
    object qEntityNEW_FEE_CR: TStringField
      FieldName = 'NEW_FEE_CR'
      Size = 12
    end
    object qEntityNEW_SUND_DR: TStringField
      FieldName = 'NEW_SUND_DR'
      Size = 12
    end
    object qEntityNEXTARCHIVE: TFloatField
      FieldName = 'NEXTARCHIVE'
    end
    object qEntityNEW_SUND_CR: TStringField
      FieldName = 'NEW_SUND_CR'
      Size = 12
    end
    object qEntityNEW_DISB_DR: TStringField
      FieldName = 'NEW_DISB_DR'
      Size = 12
    end
    object qEntityNEW_DISB_CR: TStringField
      FieldName = 'NEW_DISB_CR'
      Size = 12
    end
    object qEntityNEW_ANTD_DR: TStringField
      FieldName = 'NEW_ANTD_DR'
      Size = 12
    end
    object qEntityNEW_ANTD_CR: TStringField
      FieldName = 'NEW_ANTD_CR'
      Size = 12
    end
    object qEntityBILL_FEE_DR: TStringField
      FieldName = 'BILL_FEE_DR'
      Size = 12
    end
    object qEntityBILL_FEE_CR: TStringField
      FieldName = 'BILL_FEE_CR'
      Size = 12
    end
    object qEntityBILL_OVERFEE_DR: TStringField
      FieldName = 'BILL_OVERFEE_DR'
      Size = 12
    end
    object qEntityBILL_OVERFEE_CR: TStringField
      FieldName = 'BILL_OVERFEE_CR'
      Size = 12
    end
    object qEntityBILL_DISCFEE_DR: TStringField
      FieldName = 'BILL_DISCFEE_DR'
      Size = 12
    end
    object qEntityBILL_DISCFEE_CR: TStringField
      FieldName = 'BILL_DISCFEE_CR'
      Size = 12
    end
    object qEntityBILL_SUND_DR: TStringField
      FieldName = 'BILL_SUND_DR'
      Size = 12
    end
    object qEntityBILL_SUND_CR: TStringField
      FieldName = 'BILL_SUND_CR'
      Size = 12
    end
    object qEntityBILL_DISB_DR: TStringField
      FieldName = 'BILL_DISB_DR'
      Size = 12
    end
    object qEntityBILL_DISB_CR: TStringField
      FieldName = 'BILL_DISB_CR'
      Size = 12
    end
    object qEntityBILL_ANTD_DR: TStringField
      FieldName = 'BILL_ANTD_DR'
      Size = 12
    end
    object qEntityBILL_ANTD_CR: TStringField
      FieldName = 'BILL_ANTD_CR'
      Size = 12
    end
    object qEntityREC_FEE_CR: TStringField
      FieldName = 'REC_FEE_CR'
      Size = 12
    end
    object qEntityREC_SUND_CR: TStringField
      FieldName = 'REC_SUND_CR'
      Size = 12
    end
    object qEntityREC_DISB_CR: TStringField
      FieldName = 'REC_DISB_CR'
      Size = 12
    end
    object qEntityREC_UNDISB_CR: TStringField
      FieldName = 'REC_UNDISB_CR'
      Size = 12
    end
    object qEntityREC_ANTD_CR: TStringField
      FieldName = 'REC_ANTD_CR'
      Size = 12
    end
    object qEntityWOFF_FEE_DR: TStringField
      FieldName = 'WOFF_FEE_DR'
      Size = 12
    end
    object qEntityWOFF_FEE_CR: TStringField
      FieldName = 'WOFF_FEE_CR'
      Size = 12
    end
    object qEntityWOFF_UNSUND_DR: TStringField
      FieldName = 'WOFF_UNSUND_DR'
      Size = 12
    end
    object qEntityWOFF_UNSUND_CR: TStringField
      FieldName = 'WOFF_UNSUND_CR'
      Size = 12
    end
    object qEntityWOFF_SUND_DR: TStringField
      FieldName = 'WOFF_SUND_DR'
      Size = 12
    end
    object qEntityWOFF_SUND_CR: TStringField
      FieldName = 'WOFF_SUND_CR'
      Size = 12
    end
    object qEntityWOFF_UNDISB_DR: TStringField
      FieldName = 'WOFF_UNDISB_DR'
      Size = 12
    end
    object qEntityWOFF_UNDISB_CR: TStringField
      FieldName = 'WOFF_UNDISB_CR'
      Size = 12
    end
    object qEntityWOFF_DISB_DR: TStringField
      FieldName = 'WOFF_DISB_DR'
      Size = 12
    end
    object qEntityWOFF_DISB_CR: TStringField
      FieldName = 'WOFF_DISB_CR'
      Size = 12
    end
    object qEntityWOFF_ANTD_DR: TStringField
      FieldName = 'WOFF_ANTD_DR'
      Size = 12
    end
    object qEntityWOFF_ANTD_CR: TStringField
      FieldName = 'WOFF_ANTD_CR'
      Size = 12
    end
    object qEntityCREDITORS: TStringField
      FieldName = 'CREDITORS'
      Size = 12
    end
    object qEntityNJOURNAL: TFloatField
      FieldName = 'NJOURNAL'
    end
    object qEntityWPDIR: TStringField
      FieldName = 'WPDIR'
      Size = 255
    end
    object qEntityLASTBILL: TStringField
      FieldName = 'LASTBILL'
      Size = 12
    end
    object qEntityLASTCREDITNOTE: TStringField
      FieldName = 'LASTCREDITNOTE'
      Size = 12
    end
    object qEntityCLIENTCODE: TStringField
      FieldName = 'CLIENTCODE'
      Size = 1
    end
    object qEntityCLIENTPAD: TIntegerField
      FieldName = 'CLIENTPAD'
    end
    object qEntityCLIENTLENGTH: TIntegerField
      FieldName = 'CLIENTLENGTH'
    end
    object qEntityCLIENTACRONYM: TStringField
      FieldName = 'CLIENTACRONYM'
      Size = 1
    end
    object qEntityMATTERCODE: TStringField
      FieldName = 'MATTERCODE'
      Size = 1
    end
    object qEntityMATTERPAD: TIntegerField
      FieldName = 'MATTERPAD'
    end
    object qEntityMATTERSEPERATOR: TStringField
      FieldName = 'MATTERSEPERATOR'
      Size = 1
    end
    object qEntityCREDITORCODE: TStringField
      FieldName = 'CREDITORCODE'
      Size = 1
    end
    object qEntityCREDITORPAD: TStringField
      FieldName = 'CREDITORPAD'
      Size = 1
    end
    object qEntityCREDITORLENGTH: TIntegerField
      FieldName = 'CREDITORLENGTH'
    end
    object qEntityCREDITORACRONYM: TStringField
      FieldName = 'CREDITORACRONYM'
      Size = 1
    end
    object qEntityABN: TStringField
      FieldName = 'ABN'
      Size = 30
    end
    object qEntityLOCKDATE: TDateTimeField
      FieldName = 'LOCKDATE'
    end
    object qEntityFINANCIALYEARENDING: TDateTimeField
      FieldName = 'FINANCIALYEARENDING'
    end
    object qEntityNEW_UPCRED_DR: TStringField
      FieldName = 'NEW_UPCRED_DR'
      Size = 12
    end
    object qEntityNEW_UPCRED_CR: TStringField
      FieldName = 'NEW_UPCRED_CR'
      Size = 12
    end
    object qEntityBILL_UPCRED_DR: TStringField
      FieldName = 'BILL_UPCRED_DR'
      Size = 12
    end
    object qEntityBILL_UPCRED_CR: TStringField
      FieldName = 'BILL_UPCRED_CR'
      Size = 12
    end
    object qEntityREC_UPCRED_CR: TStringField
      FieldName = 'REC_UPCRED_CR'
      Size = 12
    end
    object qEntityWOFF_UPCRED_DR: TStringField
      FieldName = 'WOFF_UPCRED_DR'
      Size = 12
    end
    object qEntityWOFF_UPCRED_CR: TStringField
      FieldName = 'WOFF_UPCRED_CR'
      Size = 12
    end
    object qEntityCLOSE_ARCHIVE: TStringField
      FieldName = 'CLOSE_ARCHIVE'
      Size = 1
    end
  end
object dsEntity: TDataSource
    DataSet = qEntity
    Left = 376
    Top = 38
  end
    object qAuthorType: TUniQuery
    SQL.Strings = (
            'SELECT * FROM emptype ORDER BY descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 322
    Top = 13
    object qAuthorTypeCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qAuthorTypeDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object qAuthorTypeREPORTGROUP: TIntegerField
      FieldName = 'REPORTGROUP'
    end
  end
object dsAuthorType: TDataSource
    DataSet = qAuthorType
    Left = 319
    Top = 38
  end
    object qScaleCost: TUniQuery
    SQL.Strings = (
            'select * from scalecost'
            'order by descr')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 372
    Top = 119
    object qScaleCostCODE: TStringField
      FieldName = 'CODE'
    end
    object qScaleCostTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
    object qScaleCostCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qScaleCostDESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
    object qScaleCostNOTES: TStringField
      FieldName = 'NOTES'
      Size = 400
    end
    object qScaleCostUNIT: TStringField
      FieldName = 'UNIT'
      Size = 6
    end
    object qScaleCostPARENT: TStringField
      FieldName = 'PARENT'
    end
    object qScaleCostDAYS: TIntegerField
      FieldName = 'DAYS'
    end
    object qScaleCostDEFAULTTIME: TFloatField
      FieldName = 'DEFAULTTIME'
    end
    object qScaleCostAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qScaleCostRATE: TFloatField
      FieldName = 'RATE'
    end
  end
object dsScaleCost: TDataSource
    DataSet = qScaleCost
    Left = 374
    Top = 143
  end
    object qPartner: TUniQuery
    SQL.Strings = (
            'SELECT code, name from employee where '
            'ispartner = '#39'Y'#39' and active = '#39'Y'#39)
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 318
    Top = 112
    object qPartnerCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qPartnerNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
object dsPartner: TDataSource
    DataSet = qPartner
    Left = 318
    Top = 144
  end
    object qBudgetGraphAuthMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            '--Fees on author per month'
            ''
            'SELECT m.author, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(b.unbilled,0) AS unbilled, '
            '  NVL(m.billedfees,0) AS budget, '
            '  NVL(m.wip,0) AS wip, '
            '  m.month, m.year, m.quarter, '
            '  TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author,'
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY author, year,month'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY author, year,month'
            '  ) b,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author, '
            '      year,'
            '      month,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY employee, month, year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY employee, year, month'
            '  ) m'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.month(+)    = m.month'
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.month(+)    = m.month'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') '
            '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
            '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
            'UNION'
            'SELECT m.author, '
            '  NVL(m.billed,0) AS billed,'
            '  NVL(a.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.month, m.year, m.quarter, '
            '  TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY author, year,month'
            '  ) m,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY author, year,month'
            '  ) a,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author, '
            '      year,'
            '      month,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY employee, month, year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY employee, year, month'
            '  ) b'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.month(+)    = m.month'
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.month(+)    = m.month'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') '
            '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
            '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
            'UNION'
            'SELECT m.author, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(m.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.month, m.year, m.quarter, '
            '  TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY author, year,month'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY author, year,month'
            '  ) m,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author, '
            '      year,'
            '      month,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY employee, month, year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY employee, year, month'
            '  ) b'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.month(+)    = m.month'
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.month(+)    = m.month'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') '
            '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
            '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
            'ORDER BY author,year,month')
    Left = 148
    Top = 125
    object qBudgetGraphAuthMonthAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qBudgetGraphAuthMonthBILLED: TFloatField
      FieldName = 'BILLED'
    end
    object qBudgetGraphAuthMonthUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qBudgetGraphAuthMonthBUDGET: TFloatField
      FieldName = 'BUDGET'
    end
    object qBudgetGraphAuthMonthWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetGraphAuthMonthMONTH: TFloatField
      FieldName = 'MONTH'
    end
    object qBudgetGraphAuthMonthYEAR: TFloatField
      FieldName = 'YEAR'
    end
    object qBudgetGraphAuthMonthQUARTER: TFloatField
      FieldName = 'QUARTER'
    end
    object qBudgetGraphAuthMonthVIEWDATE: TDateTimeField
      FieldName = 'VIEWDATE'
    end
  end
  object qBudgetGraphAuthQuarter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            '--Fees on author per quarter'
            ''
            'SELECT m.author, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(b.unbilled,0) AS unbilled, '
            '  NVL(m.billedfees,0) AS budget, '
            '  NVL(m.wip,0) AS wip, '
            '  m.quarter, m.year,  '
            '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.year as viewdate,'
            
              '  TO_DATE('#39'1-'#39' || DECODE(m.quarter,1,1,2,3,3,6,4,9) || '#39'-'#39' ||m.y' +
              'ear,'#39'dd-mm-yyyy'#39') as xfield'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY author, year,quarter'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY author, year,quarter'
            '  ) b,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author,'
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY employee, '
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY employee, year, quarter'
            '  ) m'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.quarter(+)  = m.quarter'
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.quarter(+)  = m.quarter'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.author, '
            '  NVL(m.billed,0) AS billed,'
            '  NVL(a.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.quarter, m.year,  '
            '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.year as viewdate,'
            
              '  TO_DATE('#39'1-'#39' || DECODE(m.quarter,1,1,2,3,3,6,4,9) || '#39'-'#39' ||m.y' +
              'ear,'#39'dd-mm-yyyy'#39') as xfield'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY author, year,quarter'
            '  ) m,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY author, year,quarter'
            '  ) a,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author,'
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY employee, '
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY employee, year, quarter'
            '  ) b'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.quarter(+)  = m.quarter'
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.quarter(+)  = m.quarter'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.author, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(m.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.quarter, m.year,  '
            '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.year as viewdate,'
            
              '  TO_DATE('#39'1-'#39' || DECODE(m.quarter,1,1,2,3,3,6,4,9) || '#39'-'#39' ||m.y' +
              'ear,'#39'dd-mm-yyyy'#39') as xfield'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY author, year,quarter'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY author, year,quarter'
            '  ) m,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author,'
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY employee, '
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY employee, year, quarter'
            '  ) b'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.quarter(+)  = m.quarter'
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.quarter(+)  = m.quarter'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'ORDER BY author, year, quarter')
    Left = 148
    Top = 184
    object qBudgetGraphAuthQuarterAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qBudgetGraphAuthQuarterBILLED: TFloatField
      FieldName = 'BILLED'
    end
    object qBudgetGraphAuthQuarterUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qBudgetGraphAuthQuarterBUDGET: TFloatField
      FieldName = 'BUDGET'
    end
    object qBudgetGraphAuthQuarterWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetGraphAuthQuarterQUARTER: TFloatField
      FieldName = 'QUARTER'
    end
    object qBudgetGraphAuthQuarterYEAR: TFloatField
      FieldName = 'YEAR'
    end
    object qBudgetGraphAuthQuarterVIEWDATE: TStringField
      FieldName = 'VIEWDATE'
      Size = 82
    end
    object qBudgetGraphAuthQuarterXFIELD: TDateTimeField
      FieldName = 'XFIELD'
    end
  end
  object qBudgetGraphAuthYear: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            '--Fees on author per year'
            ''
            'SELECT m.author, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(b.unbilled,0) AS unbilled, '
            '  NVL(m.billedfees,0) AS budget, '
            '  NVL(m.wip,0) AS wip, '
            '  m.year,  '
            '  m.year as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY author, year'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY author, year'
            '  ) b,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author,'
            '      year'
            '    FROM budget '
            '    GROUP BY employee, '
            '      year '
            '    ORDER BY employee, year'
            '  ) m'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.author, '
            '  NVL(m.billed,0) AS billed,'
            '  NVL(a.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.year,  '
            '  m.year as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY author, year'
            '  ) m,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY author, year'
            '  ) a,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author,'
            '      year '
            '    FROM budget '
            '    GROUP BY employee, '
            '      year'
            '    ORDER BY employee'
            '  ) b'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.author, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(m.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.year,  '
            '  m.year as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY author, year'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY author, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY author, year'
            '  ) m,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, emplo' +
              'yee AS author,'
            '      year'
            '    FROM budget '
            '    GROUP BY employee, '
            '      year'
            '    ORDER BY employee, year'
            '  ) b'
            'WHERE '
            '    a.author(+)   = m.author '
            'AND a.year(+)     = m.year'
            'AND b.author(+)   = m.author'
            'AND b.year(+)     = m.year'
            'AND m.author = :author'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'ORDER BY author, year')
    Left = 148
    Top = 237
    object qBudgetGraphAuthYearAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qBudgetGraphAuthYearBILLED: TFloatField
      FieldName = 'BILLED'
    end
    object qBudgetGraphAuthYearUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qBudgetGraphAuthYearBUDGET: TFloatField
      FieldName = 'BUDGET'
    end
    object qBudgetGraphAuthYearWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetGraphAuthYearYEAR: TFloatField
      FieldName = 'YEAR'
    end
    object qBudgetGraphAuthYearVIEWDATE: TFloatField
      FieldName = 'VIEWDATE'
    end
  end
  object qBudgetGraphDeptYear: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            '--Fees on department per year'
            ''
            'SELECT m.dept, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(b.unbilled,0) AS unbilled, '
            '  NVL(m.billedfees,0) AS budget, '
            '  NVL(m.wip,0) AS wip, '
            '  m.year,  '
            '  m.year as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY dept, year'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY dept, year'
            '  ) b,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept,'
            '      year'
            '    FROM budget '
            '    GROUP BY department, '
            '      year '
            '    ORDER BY department, year'
            '  ) m'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.dept, '
            '  NVL(m.billed,0) AS billed,'
            '  NVL(a.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.year,  '
            '  m.year as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY dept, year'
            '  ) m,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY dept, year'
            '  ) a,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept,'
            '      year '
            '    FROM budget '
            '    GROUP BY department, '
            '      year'
            '    ORDER BY department'
            '  ) b'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.dept, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(m.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.year,  '
            '  m.year as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY dept, year'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER)'
            '    ORDER BY dept, year'
            '  ) m,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept,'
            '      year'
            '    FROM budget '
            '    GROUP BY department, '
            '      year'
            '    ORDER BY department, year'
            '  ) b'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'ORDER BY dept, year')
    Left = 224
    Top = 251
    object qBudgetGraphDeptYearDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
    object qBudgetGraphDeptYearBILLED: TFloatField
      FieldName = 'BILLED'
    end
    object qBudgetGraphDeptYearUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qBudgetGraphDeptYearBUDGET: TFloatField
      FieldName = 'BUDGET'
    end
    object qBudgetGraphDeptYearWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetGraphDeptYearYEAR: TFloatField
      FieldName = 'YEAR'
    end
    object qBudgetGraphDeptYearVIEWDATE: TFloatField
      FieldName = 'VIEWDATE'
    end
  end
  object qBudgetGraphDeptQuarter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            '--Fees on department per quarter'
            ''
            'SELECT m.dept, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(b.unbilled,0) AS unbilled, '
            '  NVL(m.billedfees,0) AS budget, '
            '  NVL(m.wip,0) AS wip, '
            '  m.quarter, m.year,  '
            '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.year as viewdate,'
            
              '  TO_DATE('#39'1-'#39' || DECODE(m.quarter,1,1,2,3,3,6,4,9) || '#39'-'#39' ||m.y' +
              'ear,'#39'dd-mm-yyyy'#39') as xfield'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee'
            '    WHERE billed = '#39'Y'#39
            '    GROUP BY dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY dept, year,quarter'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee'
            '    WHERE billed = '#39'N'#39
            '    GROUP BY dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY dept, year,quarter'
            '  ) b,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept,'
            '      year,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter'
            '    FROM budget'
            '    GROUP BY department,'
            '      year,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER)'
            '    ORDER BY department, year, quarter'
            '  ) m'
            'WHERE'
            '    a.dept(+)   = m.dept'
            'AND a.quarter(+)  = m.quarter'
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.quarter(+)  = m.quarter'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.dept,'
            '  NVL(m.billed,0) AS billed,'
            '  NVL(a.unbilled,0) AS unbilled,'
            '  NVL(b.billedfees,0) AS budget,'
            '  NVL(b.wip,0) AS wip,'
            '  m.quarter, m.year,'
            '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.year as viewdate,'
            
              '  TO_DATE('#39'1-'#39' || DECODE(m.quarter,1,1,2,3,3,6,4,9) || '#39'-'#39' ||m.y' +
              'ear,'#39'dd-mm-yyyy'#39') as xfield'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY dept, year,quarter'
            '  ) m,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY dept, year,quarter'
            '  ) a,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept,'
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY department,'
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY department, year, quarter'
            '  ) b'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.quarter(+)  = m.quarter'
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.quarter(+)  = m.quarter'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'UNION'
            'SELECT m.dept,'
            '  NVL(a.billed,0) AS billed,'
            '  NVL(m.unbilled,0) AS unbilled,'
            '  NVL(b.billedfees,0) AS budget,'
            '  NVL(b.wip,0) AS wip,'
            '  m.quarter, m.year,'
            '  '#39'Q'#39' || m.quarter || '#39' '#39' || m.year as viewdate,'
            
              '  TO_DATE('#39'1-'#39' || DECODE(m.quarter,1,1,2,3,3,6,4,9) || '#39'-'#39' ||m.y' +
              'ear,'#39'dd-mm-yyyy'#39') as xfield'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee'
            '    WHERE billed = '#39'Y'#39
            '    GROUP BY dept,'
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY dept, year,quarter'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created, '#39'Q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created, '#39'YYYY'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'Q'#39') AS INTEGER)'
            '    ORDER BY dept, year,quarter'
            '  ) m,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept,'
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY department, '
            '      year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY department, year, quarter'
            '  ) b'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.quarter(+)  = m.quarter'
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.quarter(+)  = m.quarter'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND m.year BETWEEN :firstyear AND :lastyear'
            'ORDER BY dept, year, quarter')
    Left = 224
    Top = 199
    object qBudgetGraphDeptQuarterDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
    object qBudgetGraphDeptQuarterBILLED: TFloatField
      FieldName = 'BILLED'
    end
    object qBudgetGraphDeptQuarterUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qBudgetGraphDeptQuarterBUDGET: TFloatField
      FieldName = 'BUDGET'
    end
    object qBudgetGraphDeptQuarterWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetGraphDeptQuarterQUARTER: TFloatField
      FieldName = 'QUARTER'
    end
    object qBudgetGraphDeptQuarterYEAR: TFloatField
      FieldName = 'YEAR'
    end
    object qBudgetGraphDeptQuarterVIEWDATE: TStringField
      FieldName = 'VIEWDATE'
      Size = 82
    end
    object qBudgetGraphDeptQuarterXFIELD: TDateTimeField
      FieldName = 'XFIELD'
    end
  end
  object qBudgetGraphDeptMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            '--Fees on department per month'
            ''
            'SELECT m.dept, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(b.unbilled,0) AS unbilled, '
            '  NVL(m.billedfees,0) AS budget, '
            '  NVL(m.wip,0) AS wip, '
            '  m.month, m.year, m.quarter, '
            '  TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept,'
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY dept, year,month'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY dept, year,month'
            '  ) b,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept, '
            '      year,'
            '      month,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY department, month, year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY department, year, month'
            '  ) m'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.month(+)    = m.month'
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.month(+)    = m.month'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') '
            '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
            '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
            'UNION'
            'SELECT m.dept, '
            '  NVL(m.billed,0) AS billed,'
            '  NVL(a.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.month, m.year, m.quarter, '
            '  TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY dept, year,month'
            '  ) m,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY dept, year,month'
            '  ) a,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept, '
            '      year,'
            '      month,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY department, month, year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY department, year, month'
            '  ) b'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.month(+)    = m.month'
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.month(+)    = m.month'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') '
            '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
            '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
            'UNION'
            'SELECT m.dept, '
            '  NVL(a.billed,0) AS billed,'
            '  NVL(m.unbilled,0) AS unbilled, '
            '  NVL(b.billedfees,0) AS budget, '
            '  NVL(b.wip,0) AS wip, '
            '  m.month, m.year, m.quarter, '
            '  TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') as viewdate'
            'FROM'
            ' ('
            '    SELECT SUM(amount) AS billed, dept, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'Y'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY dept, year,month'
            '  ) a,'
            '  ('
            '    SELECT SUM(amount) AS unbilled, dept, '
            '      CAST(TO_CHAR(created, '#39'yyyy'#39') AS INTEGER) AS year,'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER) AS month, '
            '      CAST(TO_CHAR(created, '#39'q'#39') AS INTEGER) AS quarter'
            '    FROM fee '
            '    WHERE billed = '#39'N'#39' '
            '    GROUP BY dept, '
            '      CAST(TO_CHAR(created,'#39'yyyy'#39') AS INTEGER),'
            '      CAST(TO_CHAR(created,'#39'mm'#39') AS INTEGER), '
            '      CAST(TO_CHAR(created,'#39'q'#39') AS INTEGER)'
            '    ORDER BY dept, year,month'
            '  ) m,'
            '  ('
            
              '    SELECT SUM(billedfees) AS billedfees, sum(wip) AS wip, depar' +
              'tment AS dept, '
            '      year,'
            '      month,'
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) AS quarter  '
            '    FROM budget '
            '    GROUP BY department, month, year, '
            
              '      CAST(TO_CHAR(TO_DATE(month || '#39'-'#39' || year, '#39'MM/YYYY'#39'),'#39'Q'#39')' +
              ' AS INTEGER) '
            '    ORDER BY department, year, month'
            '  ) b'
            'WHERE '
            '    a.dept(+)   = m.dept '
            'AND a.month(+)    = m.month'
            'AND a.year(+)     = m.year'
            'AND b.dept(+)   = m.dept'
            'AND b.month(+)    = m.month'
            'AND b.year(+)     = m.year'
            'AND m.dept = :dept'
            'AND TO_DATE(m.month || '#39'-'#39' || m.year, '#39'MM-YYYY'#39') '
            '  BETWEEN TO_DATE(:firstdate,'#39'MM-YYYY'#39') '
            '  AND     TO_DATE(:lastdate,'#39'MM-YYYY'#39')'
            'ORDER BY dept,year,month')
    Left = 224
    Top = 142
    object qBudgetGraphDeptMonthDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
    object qBudgetGraphDeptMonthBILLED: TFloatField
      FieldName = 'BILLED'
    end
    object qBudgetGraphDeptMonthUNBILLED: TFloatField
      FieldName = 'UNBILLED'
    end
    object qBudgetGraphDeptMonthBUDGET: TFloatField
      FieldName = 'BUDGET'
    end
    object qBudgetGraphDeptMonthWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetGraphDeptMonthMONTH: TFloatField
      FieldName = 'MONTH'
    end
    object qBudgetGraphDeptMonthYEAR: TFloatField
      FieldName = 'YEAR'
    end
    object qBudgetGraphDeptMonthQUARTER: TFloatField
      FieldName = 'QUARTER'
    end
    object qBudgetGraphDeptMonthVIEWDATE: TDateTimeField
      FieldName = 'VIEWDATE'
    end
  end
object pmColumns: TPopupMenu
    Images = ilstToolbar
    Left = 45
    Top = 170
    object miUp: TMenuItem
      Action = aColumnUp
    end
    object miDown: TMenuItem
      Action = aColumnDown
    end
  end
end
