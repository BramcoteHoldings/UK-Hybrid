object frmLedgerSearch: TfrmLedgerSearch
  Left = 468
  Top = 192
  Caption = 'Ledger Selection'
  ClientHeight = 518
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    595
    518)
  PixelsPerInch = 106
  TextHeight = 15
  object pageSearch: TcxPageControl
    Left = 4
    Top = 4
    Width = 584
    Height = 510
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Properties.ActivePage = tabGrid
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnChange = cxPageControl1Change
    ClientRectBottom = 506
    ClientRectLeft = 4
    ClientRectRight = 580
    ClientRectTop = 27
    object tabGrid: TcxTabSheet
      Caption = 'Display Grid'
      ImageIndex = 0
      object grdChart: TcxGrid
        Left = 0
        Top = 0
        Width = 576
        Height = 444
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvChart: TcxGridDBTableView
          OnDblClick = dbgrLedgersDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsMatters
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 54
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 21
          object tvChartCODE: TcxGridDBColumn
            Caption = 'Chart'
            DataBinding.FieldName = 'CODE'
            MinWidth = 21
            Styles.Header = cxStyle1
            Width = 75
          end
          object tvChartREPORT_DESC: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'REPORT_DESC'
            MinWidth = 21
            Styles.Header = cxStyle2
            Width = 166
          end
          object tvChartTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            MinWidth = 21
            Styles.Header = cxStyle3
            Width = 32
          end
          object tvChartREPORT_LEVEL: TcxGridDBColumn
            Caption = 'Level'
            DataBinding.FieldName = 'REPORT_LEVEL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            MinWidth = 21
            Styles.Header = cxStyle4
            Width = 38
          end
          object tvChartADDTO: TcxGridDBColumn
            Caption = 'Add To'
            DataBinding.FieldName = 'ADDTO'
            MinWidth = 21
            Styles.Header = cxStyle5
            Width = 75
          end
          object tvChartBALANCE: TcxGridDBColumn
            Caption = 'Balance'
            DataBinding.FieldName = 'BALANCE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            HeaderAlignmentHorz = taRightJustify
            MinWidth = 21
            Styles.Header = cxStyle6
            VisibleForCustomization = False
            Width = 75
          end
        end
        object grdChartLevel1: TcxGridLevel
          GridView = tvChart
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 444
        Width = 576
        Height = 35
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 408
        DesignSize = (
          576
          35)
        object Label7: TLabel
          Left = 8
          Top = 10
          Width = 35
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = '&Search'
          FocusControl = tbLedgerSearch
        end
        object tbLedgerSearch: TEdit
          Left = 58
          Top = 5
          Width = 137
          Height = 23
          Anchors = [akLeft, akBottom]
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = tbLedgerSearchChange
          OnKeyDown = tbLedgerSearchKeyDown
        end
        object btnNew: TBitBtn
          Left = 314
          Top = 3
          Width = 80
          Height = 27
          Anchors = [akRight, akBottom]
          Caption = '&New'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
            055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
            88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
            F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
            F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
            0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
            00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
            0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
            05555575FF777777755555500055555555555557775555555555}
          NumGlyphs = 2
          TabOrder = 1
          OnClick = btnNewClick
        end
        object btnOK: TBitBtn
          Left = 408
          Top = 3
          Width = 78
          Height = 27
          Anchors = [akRight, akBottom]
          Caption = '&OK'
          Default = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          ModalResult = 1
          NumGlyphs = 2
          TabOrder = 2
        end
        object btnCancel: TBitBtn
          Left = 494
          Top = 3
          Width = 78
          Height = 27
          Anchors = [akRight, akBottom]
          Caption = '&Cancel'
          Kind = bkCancel
          NumGlyphs = 2
          TabOrder = 3
        end
      end
    end
    object tabFilters: TcxTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      DesignSize = (
        576
        479)
      object fraEqual: TcxGroupBox
        Left = 13
        Top = 5
        Caption = 'Select Equal to'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 63
        Width = 327
        object Label4: TLabel
          Left = 9
          Top = 26
          Width = 25
          Height = 15
          Caption = 'Type'
        end
        object Label6: TLabel
          Left = 146
          Top = 26
          Width = 133
          Height = 15
          Caption = '(Specify all desired types)'
        end
        object tbType: TEdit
          Left = 86
          Top = 21
          Width = 52
          Height = 23
          TabOrder = 0
        end
      end
      object fraIncludes: TcxGroupBox
        Left = 13
        Top = 72
        Caption = 'Select Containing'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 52
        Width = 327
        object Label5: TLabel
          Left = 10
          Top = 24
          Width = 60
          Height = 15
          Caption = 'Description'
        end
        object tbDesc: TEdit
          Left = 79
          Top = 19
          Width = 224
          Height = 23
          TabOrder = 0
        end
      end
      object gbLess: TcxGroupBox
        Left = 13
        Top = 129
        Caption = 'Select balance'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Visible = False
        Height = 79
        Width = 327
        object Label3: TLabel
          Left = 16
          Top = 21
          Width = 49
          Height = 15
          Caption = 'Less than'
        end
        object Label2: TLabel
          Left = 16
          Top = 47
          Width = 65
          Height = 15
          Caption = 'Greater than'
        end
        object tbBalanceLess: TEdit
          Left = 86
          Top = 21
          Width = 95
          Height = 23
          TabOrder = 0
        end
        object tbBalanceGreater: TEdit
          Left = 86
          Top = 47
          Width = 95
          Height = 23
          TabOrder = 1
        end
      end
      object glLedger: TGLComponentFilterCxGroup
        Left = 13
        Top = 210
        Caption = 'GL Components'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        hideEmpty = False
        Height = 138
        Width = 327
      end
      object btnClear: TBitBtn
        Left = 489
        Top = 449
        Width = 80
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'Clear &All'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        TabOrder = 4
        OnClick = btnClearAllClick
      end
    end
  end
  object qryLedgers: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT BANK, CODE, REPORT_DESC, TYPE, REPORT_LEVEL,'
      'BALANCE, ADDTO, COMPONENT_CODE_DISPLAY'
      'FROM'
      '     CHART'
      'WHERE'
      '     BANK = :BANK'
      'AND'
      '     ALLOW_DIRECT_POSTING = '#39'Y'#39
      'ORDER BY CODE')
    SpecificOptions.Strings = (
      'Oracle.SequenceMode=smInsert')
    Left = 407
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BANK'
        Value = nil
      end>
  end
  object dsMatters: TUniDataSource
    AutoEdit = False
    DataSet = qryLedgers
    Left = 470
    Top = 83
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 235
    Top = 6
    PixelsPerInch = 106
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
  end
end
