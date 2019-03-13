inherited frmAdvSubMediaMaint: TfrmAdvSubMediaMaint
  Caption = 'Advertising Sub Media Maintenance'
  ClientHeight = 554
  ClientWidth = 783
  ExplicitWidth = 789
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 228
    Width = 783
    Height = 5
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Beveled = True
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 28
    Width = 783
    Height = 200
    Align = alTop
    TabOrder = 4
    ExplicitLeft = 19
    ExplicitTop = 107
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMedia
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
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
    Top = 261
    Width = 783
    Height = 293
    Align = alClient
    TabOrder = 5
    ExplicitLeft = 63
    ExplicitTop = 297
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.DetailKeyFieldNames = 'ADV_MEDIA_ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Advertising Sub Media'
        DataBinding.FieldName = 'DESCR'
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
    Top = 233
    Width = 783
    Height = 28
    Align = dalTop
    BarManager = bmMain
    ExplicitTop = 205
  end
  inherited dsSource: TUniDataSource
    Left = 167
    Top = 140
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM adv_submedia Q'
      'ORDER BY 1')
    MasterSource = dsMedia
    MasterFields = 'ID'
    DetailFields = 'ADV_MEDIA_ID'
    Active = True
    Left = 111
    Top = 126
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited bmMain: TdxBarManager
    DockControlHeights = (
      0
      0
      28
      0)
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
    inherited dxBarDBNavInsert4: TdxBarDBNavButton
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
