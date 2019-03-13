inherited frmReceiptReqNarrative: TfrmReceiptReqNarrative
  Caption = 'Receipt Requisition Narrative'
  ClientHeight = 522
  ClientWidth = 737
  ExplicitWidth = 753
  ExplicitHeight = 563
  PixelsPerInch = 106
  TextHeight = 15
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 30
    Width = 737
    Height = 492
    Align = alClient
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
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
      object cxGrid1DBTableView1NARRATIVECODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'NARRATIVECODE'
        Width = 190
      end
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Width = 545
      end
      object cxGrid1DBTableView1DTCREATED: TcxGridDBColumn
        DataBinding.FieldName = 'DTCREATED'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1CREATED_BY: TcxGridDBColumn
        DataBinding.FieldName = 'CREATED_BY'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1MODBY: TcxGridDBColumn
        DataBinding.FieldName = 'MODBY'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1MODIFIED: TcxGridDBColumn
        DataBinding.FieldName = 'MODIFIED'
        Visible = False
        VisibleForCustomization = False
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
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT n.*, n.ROWID'
      'FROM narrative n'
      'ORDER BY n.narrativeCODE')
    Active = True
    Left = 227
    Top = 64
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 106
    inherited dxBarDBNavInsert1: TdxBarDBNavButton
      Enabled = True
    end
  end
end
