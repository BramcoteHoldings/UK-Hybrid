inherited frmAdvRegionMaint: TfrmAdvRegionMaint
  Caption = 'Advertising Region Maintenance'
  ClientHeight = 448
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 28
    Width = 645
    Height = 420
    Align = alClient
    TabOrder = 4
    ExplicitLeft = 88
    ExplicitTop = 96
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1REGION: TcxGridDBColumn
        Caption = 'Region'
        DataBinding.FieldName = 'CODE'
      end
      object cxGrid1DBTableView1CREATEDDATE: TcxGridDBColumn
        DataBinding.FieldName = 'CREATEDDATE'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1CREATEDUSER: TcxGridDBColumn
        DataBinding.FieldName = 'CREATEDUSER'
        Visible = False
        VisibleForCustomization = False
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
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.region as code, Q.ROWID'
      'FROM ADV_REGION Q'
      'ORDER BY Q.region')
    Active = True
    Left = 86
    Top = 65
  end
  inherited bmMain: TdxBarManager
    DockControlHeights = (
      0
      0
      28
      0)
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
end
