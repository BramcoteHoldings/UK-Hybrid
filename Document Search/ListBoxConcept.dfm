object frmdtSearchMaintain: TfrmdtSearchMaintain
  Left = 0
  Top = 0
  Caption = 'frmdtSearchMaintain'
  ClientHeight = 639
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object cxDBListBox1: TcxDBListBox
    Left = 9
    Top = 9
    Width = 200
    Height = 273
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ItemHeight = 16
    TabOrder = 0
    DataBinding.DataSource = dsIndexes
    DataBinding.DataField = 'INDEXNAME'
  end
  object cxDBListBox2: TcxDBListBox
    Left = 240
    Top = 9
    Width = 200
    Height = 273
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ItemHeight = 16
    TabOrder = 1
    DataBinding.DataSource = dsIndexUsers
    DataBinding.DataField = 'USERID'
  end
  object cxGrid1: TcxGrid
    Left = 9
    Top = 290
    Width = 313
    Height = 250
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsIndexes
      DataController.KeyFieldNames = 'NDOCINDEX'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 8
      FixedDataRows.SeparatorWidth = 8
      NewItemRow.SeparatorWidth = 8
      OptionsView.NavigatorOffset = 63
      OptionsView.IndicatorWidth = 15
      Preview.LeftIndent = 25
      Preview.RightIndent = 6
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsIndexUsers: TUniDataSource
    DataSet = QryIndexUsers
    Left = 592
    Top = 207
  end
  object QryIndexUsers: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select NDocIndex, UserID, SystemDate'
      'from DocIndexUser')
    Active = True
    Left = 480
    Top = 207
  end
  object qryIndexes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select NDocIndex, IndexName, Location'
      'from DocIndex')
    Active = True
    Left = 480
    Top = 143
  end
  object dsIndexes: TUniDataSource
    DataSet = qryIndexes
    Left = 592
    Top = 143
  end
end
