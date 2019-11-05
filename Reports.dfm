object frmReports: TfrmReports
  Left = 399
  Top = 200
  Caption = 'Management Reports'
  ClientHeight = 700
  ClientWidth = 1223
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1223
    700)
  PixelsPerInch = 106
  TextHeight = 15
  object Label1: TLabel
    Left = 960
    Top = 7
    Width = 98
    Height = 15
    AutoSize = False
    Caption = 'Report Description'
  end
  object Label3: TLabel
    Left = 955
    Top = 652
    Width = 83
    Height = 15
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = '&Jump to report'
    FocusControl = tbJumpTo
    ExplicitLeft = 963
    ExplicitTop = 643
  end
  object Label4: TLabel
    Left = 956
    Top = 607
    Width = 120
    Height = 15
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = '&Filter on description'
    FocusControl = edtSearch
    ExplicitLeft = 964
    ExplicitTop = 598
  end
  object dbgrReports: TcxGrid
    Left = 0
    Top = 0
    Width = 943
    Height = 700
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    OnActiveTabChanged = dbgrReportsActiveTabChanged
    ExplicitWidth = 1003
    ExplicitHeight = 691
    object tvReports: TcxGridDBTableView
      OnDblClick = dbgrReportsDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReportsAll
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvReportsNAME: TcxGridDBColumn
        Caption = 'Report Name'
        DataBinding.FieldName = 'NAME'
        MinWidth = 23
        Width = 470
      end
      object tvReportsACCESSLEVEL: TcxGridDBColumn
        Caption = 'Security Level'
        DataBinding.FieldName = 'ACCESSLEVEL'
        MinWidth = 104
        Options.HorzSizing = False
        Options.Moving = False
        Width = 104
      end
      object tvReportsFREQUENCY: TcxGridDBColumn
        Caption = 'Frequency'
        DataBinding.FieldName = 'FREQUENCY'
        MinWidth = 74
      end
    end
    object tvReportsMonthly: TcxGridDBTableView
      OnDblClick = dbgrReportsDblClick
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = tvReportsMonthlyCellClick
      DataController.DataSource = dsReportsMonth
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 58
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvReportsMonthlyNAME: TcxGridDBColumn
        Caption = 'Report'
        DataBinding.FieldName = 'NAME'
        MinWidth = 23
        Width = 429
      end
      object tvReportsMonthlyACCESSLEVEL: TcxGridDBColumn
        Caption = 'Access Level'
        DataBinding.FieldName = 'ACCESSLEVEL'
        MinWidth = 23
        Width = 160
      end
    end
    object tvReportsQuarterly: TcxGridDBTableView
      OnDblClick = dbgrReportsDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReportsQuarterly
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 58
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvReportsQuarterlyNAME: TcxGridDBColumn
        Caption = 'Report'
        DataBinding.FieldName = 'NAME'
        MinWidth = 23
      end
      object tvReportsQuarterlyACCESSLEVEL: TcxGridDBColumn
        Caption = 'Access Level'
        DataBinding.FieldName = 'ACCESSLEVEL'
        MinWidth = 23
      end
    end
    object tvReportsWeekly: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReportsWeekly
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsView.NavigatorOffset = 58
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvReportsWeeklyNAME: TcxGridDBColumn
        Caption = 'Report'
        DataBinding.FieldName = 'NAME'
        MinWidth = 23
      end
      object tvReportsWeeklyACCESSLEVEL: TcxGridDBColumn
        Caption = 'Access Level'
        DataBinding.FieldName = 'ACCESSLEVEL'
        MinWidth = 23
      end
    end
    object tvReportsNotUsed: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsNotUsed
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvReportsNotUsedNAME: TcxGridDBColumn
        Caption = 'Report'
        DataBinding.FieldName = 'NAME'
      end
      object tvReportsNotUsedACCESSLEVEL: TcxGridDBColumn
        Caption = 'Access Level'
        DataBinding.FieldName = 'ACCESSLEVEL'
      end
    end
    object lvReports: TcxGridLevel
      Caption = 'All Reports'
      GridView = tvReports
    end
    object lvReportsMonthly: TcxGridLevel
      Caption = 'Monthly Reports'
      GridView = tvReportsMonthly
    end
    object lvReportsQuarterly: TcxGridLevel
      Caption = 'Quarterly Reports'
      GridView = tvReportsQuarterly
    end
    object lvReportsWeekly: TcxGridLevel
      Caption = 'Weekly'
      GridView = tvReportsWeekly
    end
    object lvReportsNotUsed: TcxGridLevel
      Caption = 'Not Used'
      GridView = tvReportsNotUsed
    end
  end
  object mmoDesc: TDBRichEdit
    Left = 956
    Top = 28
    Width = 259
    Height = 507
    Anchors = [akTop, akRight, akBottom]
    DataField = 'DESCR'
    DataSource = dsReportsAll
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 1
    Zoom = 100
  end
  object btnAddReport: TBitBtn
    Left = 1112
    Top = 544
    Width = 103
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Add Report'
    TabOrder = 2
    OnClick = btnAddReportClick
    ExplicitLeft = 1120
    ExplicitTop = 535
  end
  object btnEditReport: TBitBtn
    Left = 1112
    Top = 576
    Width = 103
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Edit Report'
    TabOrder = 3
    OnClick = btnEditReportClick
    ExplicitLeft = 1120
    ExplicitTop = 567
  end
  object btnSnapshot: TBitBtn
    Left = 1112
    Top = 606
    Width = 103
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&Snapshot'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888888888888888888887007888888870000000000
      0078807700777700770880770777777077088077078777707708807707F87770
      770880FF00777700FF0880FFF000000FFF0880000000000000088800870FF078
      0088888888700788888888888888888888888888888888888888}
    TabOrder = 4
    OnClick = btnSnapshotClick
    ExplicitLeft = 1120
    ExplicitTop = 597
  end
  object btnPrint: TBitBtn
    Left = 1112
    Top = 636
    Width = 103
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = '&Print'
    Default = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFF88880000000000088888777777777778F8808888888880
      808887FFFFFFFFF7F78F00000000000008087777777777777F7F0888888AAA88
      0008788888877788777F08888887778808087FFFFFFFFFFF7F78000000000000
      088077777777777778F7088888888880808078FFFFFFFFF78787800000000008
      08008777777777787877880FFFFFFFF080808878F8FFFFF7F7F78880F00000F0
      00088887F777778777788880FFFFFFFF088888878F8FFFFF7F8888880F00000F
      088888887F77777878F888880FFFFFFFF088888878FFFFFFF7F8888880000000
      0088888887777777778888888888888888888888888888888888}
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btnPrintClick
    ExplicitLeft = 1120
    ExplicitTop = 627
  end
  object btnExit: TBitBtn
    Left = 1112
    Top = 666
    Width = 103
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    Default = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B
      9B64C7C7C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF0000
      4FFF16163DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF0000
      88FF000081FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFD
      FD025A5A9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF0000
      97FF00008FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8F
      B7700101A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848
      B8FFB7B7E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828
      ABD90000ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7
      ECFFFFFFF7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606
      B0FD0303B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFF
      F1FF7575B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808
      BBFF0707C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575
      C9FF0000BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0C
      C9FF0D0DD8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858
      DBFF0000CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414
      D8FF1717EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFE
      FFFF6363E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525
      E5F22222FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3
      D6FFFFFFFEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5E
      F1AF3232FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252
      B4FFADADB0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6
      FC293E3EFBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838
      FCFF4242EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C2C2FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767
      FFFF5151FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353
      FFFF5151F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAA
      FD5DE1E1F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 6
    OnClick = btnExitClick
    ExplicitLeft = 1120
    ExplicitTop = 657
  end
  object tbJumpTo: TEdit
    Left = 956
    Top = 669
    Width = 131
    Height = 23
    Anchors = [akRight, akBottom]
    AutoSize = False
    TabOrder = 7
    OnChange = tbJumpToChange
    ExplicitLeft = 964
    ExplicitTop = 660
  end
  object edtSearch: TEdit
    Left = 956
    Top = 623
    Width = 131
    Height = 23
    Anchors = [akRight, akBottom]
    AutoSize = False
    TabOrder = 8
    OnChange = edtSearchChange
    ExplicitLeft = 964
    ExplicitTop = 614
  end
  object dsReportsAll: TUniDataSource
    DataSet = qryReportsAll
    Left = 367
    Top = 53
  end
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 163
    Top = 51
  end
  object qryRefreshMatView: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'begin'
      '  dbms_mview.refresh('#39'ZZZTEST'#39');'
      'end;'
      '')
    Left = 435
    Top = 197
  end
  object tempStoredProc: TUniStoredProc
    Connection = dmAxiom.uniInsight
    Left = 293
    Top = 51
  end
  object qryReportsAll: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   reports.NAME, reports.report, reports.descr, reports.pr' +
        'inter_name,'
      
        '         reports.accesslevel, reports.report_type, reports.param' +
        '_list,'
      '         reports.refresh_proc, reports.ROWID'
      '    FROM reports'
      'WHERE'
      '    frequency <> '#39'Not Used'#39
      'ORDER BY NAME')
    Options.StrictUpdate = False
    Left = 223
    Top = 51
  end
  object qryReportsMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   reports.NAME, reports.report, reports.descr, reports.pr' +
        'inter_name,'
      
        '         reports.accesslevel, reports.report_type, reports.param' +
        '_list,'
      '         reports.refresh_proc, reports.ROWID'
      '    FROM reports'
      'WHERE'
      '    frequency = '#39'Monthly'#39
      'ORDER BY NAME')
    Options.StrictUpdate = False
    AfterScroll = qryReportsMonthAfterScroll
    Left = 152
    Top = 119
  end
  object dsReportsMonth: TUniDataSource
    DataSet = qryReportsMonth
    Left = 221
    Top = 127
  end
  object qryReportsQuarterly: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   reports.NAME, reports.report, reports.descr, reports.pr' +
        'inter_name,'
      
        '         reports.accesslevel, reports.report_type, reports.param' +
        '_list,'
      '         reports.refresh_proc, reports.ROWID'
      '    FROM reports'
      'WHERE'
      '    frequency = '#39'Quarterly'#39
      'ORDER BY NAME')
    Options.StrictUpdate = False
    AfterScroll = qryReportsQuarterlyAfterScroll
    Left = 151
    Top = 181
  end
  object dsReportsQuarterly: TUniDataSource
    DataSet = qryReportsQuarterly
    Left = 220
    Top = 189
  end
  object qryReportsWeekly: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   reports.NAME, reports.report, reports.descr, reports.pr' +
        'inter_name,'
      
        '         reports.accesslevel, reports.report_type, reports.param' +
        '_list,'
      '         reports.refresh_proc, reports.ROWID'
      '    FROM reports'
      'WHERE'
      '    frequency = '#39'Weekly'#39
      'ORDER BY NAME')
    Options.StrictUpdate = False
    AfterScroll = qryReportsQuarterlyAfterScroll
    Left = 150
    Top = 273
  end
  object dsReportsWeekly: TUniDataSource
    DataSet = qryReportsWeekly
    Left = 219
    Top = 281
  end
  object qryNotUsed: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   reports.NAME, reports.report, reports.descr, reports.pr' +
        'inter_name,'
      
        '         reports.accesslevel, reports.report_type, reports.param' +
        '_list,'
      '         reports.refresh_proc, reports.ROWID'
      '    FROM reports'
      'WHERE'
      '    frequency = '#39'Not Used'#39
      'ORDER BY NAME')
    Options.StrictUpdate = False
    Active = True
    AfterScroll = qryReportsQuarterlyAfterScroll
    Left = 158
    Top = 346
  end
  object dsNotUsed: TUniDataSource
    DataSet = qryNotUsed
    Left = 227
    Top = 354
  end
end
