object frmPostcodeSearch: TfrmPostcodeSearch
  Left = 472
  Top = 307
  Caption = 'Postcode Selection'
  ClientHeight = 459
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object tbarMain: TToolBar
    Left = 0
    Top = 0
    Width = 490
    Height = 31
    BorderWidth = 1
    Caption = 'tbarMain'
    EdgeBorders = [ebTop, ebBottom]
    Images = dmAxiom.ilstToolbar
    Indent = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object tbtnRefresh: TToolButton
      Left = 2
      Top = 0
      Hint = 'Refresh data using current filter'
      Caption = 'tbtnRefresh'
      ImageIndex = 21
      OnClick = tbtnRefreshClick
    end
    object tbtnClearAll: TToolButton
      Left = 25
      Top = 0
      Hint = 'Clear filter and refresh data'
      Caption = 'tbtnClearAll'
      ImageIndex = 16
      OnClick = tbtnClearAllClick
    end
    object ToolButton3: TToolButton
      Left = 48
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
      Visible = False
    end
    object tbtnMerge: TToolButton
      Left = 56
      Top = 0
      Hint = 'Create a merge file'
      Caption = 'tbtnMerge'
      ImageIndex = 14
      Visible = False
    end
    object tbtnPrint: TToolButton
      Left = 79
      Top = 0
      Hint = 'Print'
      Caption = 'tbtnPrint'
      ImageIndex = 6
      Visible = False
    end
  end
  object pageSearch: TcxPageControl
    Left = 0
    Top = 31
    Width = 490
    Height = 428
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabGrid
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    OnChange = pageSearchChange
    ClientRectBottom = 424
    ClientRectLeft = 4
    ClientRectRight = 486
    ClientRectTop = 25
    object tabGrid: TcxTabSheet
      Caption = 'Postcodes'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 20
      ExplicitWidth = 490
      ExplicitHeight = 408
      object Panel1: TPanel
        Left = 0
        Top = 365
        Width = 482
        Height = 34
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 374
        ExplicitWidth = 490
        DesignSize = (
          482
          34)
        object Label8: TLabel
          Left = 7
          Top = 9
          Width = 90
          Height = 14
          Anchors = [akLeft, akBottom]
          Caption = '&Search for Suburb'
          FocusControl = tbSuburbSearch
        end
        object tbSuburbSearch: TEdit
          Left = 101
          Top = 5
          Width = 121
          Height = 22
          Anchors = [akLeft, akBottom]
          TabOrder = 0
          OnChange = tbSuburbSearchChange
          OnKeyDown = tbSuburbSearchKeyDown
        end
        object btnOK: TBitBtn
          Left = 334
          Top = 5
          Width = 69
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&OK'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 1
          OnClick = btnOKClick
          ExplicitLeft = 342
        end
        object btnCancel: TBitBtn
          Left = 410
          Top = 5
          Width = 69
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Cancel'
          Kind = bkCancel
          NumGlyphs = 2
          TabOrder = 2
          OnClick = btnCancelClick
          ExplicitLeft = 418
        end
      end
      object dbgrTasks: TcxGrid
        Left = 0
        Top = 0
        Width = 482
        Height = 365
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 490
        ExplicitHeight = 374
        object tvTasks: TcxGridDBTableView
          OnDblClick = dbgrTasksDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPostcodes
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          object tvTasksSUBURB: TcxGridDBColumn
            Caption = 'Suburb'
            DataBinding.FieldName = 'SUBURB'
            Styles.Header = cxStyle1
            Width = 283
          end
          object tvTasksSTATE: TcxGridDBColumn
            Caption = 'State'
            DataBinding.FieldName = 'STATE'
            Styles.Header = cxStyle2
            Width = 50
          end
          object tvTasksPCODE: TcxGridDBColumn
            Caption = 'Postcode'
            DataBinding.FieldName = 'PCODE'
            Styles.Header = cxStyle3
            Width = 80
          end
        end
        object dbgrTasksLevel1: TcxGridLevel
          GridView = tvTasks
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        482
        399)
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 25
        Height = 14
        Caption = 'State'
        Transparent = True
      end
      object cbState: TComboBox
        Left = 48
        Top = 16
        Width = 57
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'ACT'
          'NSW'
          'NT'
          'QLD'
          'SA'
          'TAS'
          'VIC'
          'WA')
      end
      object btnClearAll: TBitBtn
        Left = 396
        Top = 368
        Width = 75
        Height = 25
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
        TabOrder = 1
        OnClick = btnClearAllClick
        ExplicitLeft = 404
        ExplicitTop = 377
      end
    end
  end
  object qryPostcodes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM POSTCODE ORDER BY SUBURB')
    Left = 392
    object qryPostcodesSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qryPostcodesPCODE: TStringField
      FieldName = 'PCODE'
    end
    object qryPostcodesSUBREAL: TStringField
      FieldName = 'SUBREAL'
      Size = 50
    end
    object qryPostcodesSTATE: TStringField
      FieldName = 'STATE'
    end
  end
  object dsPostcodes: TUniDataSource
    AutoEdit = False
    DataSet = qryPostcodes
    Left = 424
  end
  object tmrLocate: TTimer
    Interval = 400
    OnTimer = tmrLocateTimer
    Left = 360
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 128
    Top = 36
    PixelsPerInch = 96
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
  end
end
