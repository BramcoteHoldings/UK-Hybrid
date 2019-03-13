inherited frmAdvSubMediaMaint: TfrmAdvSubMediaMaint
  Caption = 'Advertising Sub Media Maintenance'
  ClientHeight = 554
  ClientWidth = 783
  ExplicitWidth = 789
  ExplicitHeight = 582
  PixelsPerInch = 106
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 230
    Width = 783
    Height = 5
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Beveled = True
    ExplicitTop = 228
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 30
    Width = 783
    Height = 200
    Align = alTop
    TabOrder = 4
    ExplicitTop = 28
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMedia
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsView.NavigatorOffset = 55
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 22
      Preview.RightIndent = 6
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Advertising Media'
        DataBinding.FieldName = 'DESCR'
      end
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid [2]
    Left = 0
    Top = 263
    Width = 783
    Height = 291
    Align = alClient
    TabOrder = 5
    ExplicitTop = 261
    ExplicitHeight = 293
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.DetailKeyFieldNames = 'ADV_MEDIA_ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsView.NavigatorOffset = 55
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 13
      Preview.LeftIndent = 22
      Preview.RightIndent = 6
      object cxGrid2DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Advertising Sub Media'
        DataBinding.FieldName = 'CODE'
      end
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid2DBTableView1ADV_MEDIA_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ADV_MEDIA_ID'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object dxBarDockControl1: TdxBarDockControl [3]
    Left = 0
    Top = 235
    Width = 783
    Height = 28
    Align = dalTop
    BarManager = bmMain
    ExplicitTop = 233
  end
  inherited dsSource: TUniDataSource
    Left = 167
    Top = 140
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.id, q.adv_media_id, q.descr as code, Q.ROWID'
      'FROM adv_submedia Q'
      'ORDER BY 3')
    MasterSource = dsMedia
    MasterFields = 'ID'
    DetailFields = 'ADV_MEDIA_ID'
    Active = True
    AfterInsert = qrySourceAfterInsert
    Left = 111
    Top = 126
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptInput
        Value = 1.000000000000000000
      end>
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 106
    inherited bmMainBar2: TdxBar
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavInsert4'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPost3'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavDelete3'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavCancel3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev3'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext3'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrint'
        end>
    end
    object bmMainBar3: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainToolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 807
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFileExit'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    inherited dxBarDBNavFirst1: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavPrev3: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavNext3: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavLast3: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavInsert4: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavDelete3: TdxBarDBNavButton
      Enabled = True
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 257
    Top = 149
  end
  inherited rpMaintReport: TppReport
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppSystemVariable1: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblEntity: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLine1: TppLine
        LayerName = Foreground
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
    end
  end
  object qryMedia: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM adv_media Q'
      'ORDER BY 1')
    Active = True
    Left = 57
    Top = 51
  end
  object dsMedia: TUniDataSource
    DataSet = qryMedia
    Left = 106
    Top = 63
  end
end
