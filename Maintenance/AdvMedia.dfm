inherited frmMaint1: TfrmMaint1
  Caption = 'Advertising Media Maintenance'
  ClientHeight = 457
  ClientWidth = 792
  ExplicitWidth = 798
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 28
    Width = 792
    Height = 429
    Align = alClient
    TabOrder = 4
    ExplicitLeft = 63
    ExplicitTop = 83
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
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
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT Q.*, Q.ROWID'
      'FROM adv_media Q'
      'ORDER BY 2')
    Active = True
  end
  inherited bmMain: TdxBarManager
    DockControlHeights = (
      0
      0
      28
      0)
    inherited dxBarDBNavInsert4: TdxBarDBNavButton
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
