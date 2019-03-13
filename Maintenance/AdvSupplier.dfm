inherited frmAdvSupplierMaint: TfrmAdvSupplierMaint
  Caption = 'Advertising Supplier'
  ClientHeight = 453
  ClientWidth = 782
  ExplicitWidth = 788
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 28
    Width = 782
    Height = 425
    Align = alClient
    TabOrder = 4
    ExplicitLeft = 532
    ExplicitWidth = 425
    ExplicitHeight = 250
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CODE: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'CODE'
      end
      object cxGrid1DBTableView1ROWID: TcxGridDBColumn
        DataBinding.FieldName = 'ROWID'
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
      'SELECT Q.SUPPLIER AS CODE, Q.ROWID'
      'FROM ADV_SUPPLIER Q'
      'ORDER BY Q.SUPPLIER')
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
