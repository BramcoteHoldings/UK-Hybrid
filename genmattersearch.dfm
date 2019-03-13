object Form1: TForm1
  Left = 392
  Top = 165
  Width = 614
  Height = 602
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 525
    Width = 598
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 598
    Height = 525
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = OraDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1FILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        Width = 81
      end
      object cxGrid1DBTableView1CODE: TcxGridDBColumn
        Caption = 'Client'
        DataBinding.FieldName = 'CODE'
        Width = 64
      end
      object cxGrid1DBTableView1SEARCH: TcxGridDBColumn
        Caption = 'Client Name'
        DataBinding.FieldName = 'SEARCH'
        Width = 189
      end
      object cxGrid1DBTableView1SHORTDESCR: TcxGridDBColumn
        Caption = 'Matter Description'
        DataBinding.FieldName = 'SHORTDESCR'
        Width = 245
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
    object OraQuery1: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
            'select m.fileid,c.code, p.search, m.shortdescr'
            'from'
            'matter m,'
            'client c,'
            'phonebook p'
            'where'
            'm.nclient = c.nclient'
            'and c.nclient = p.nclient')
    Active = True
    Left = 93
    Top = 111
  end
  object OraDataSource1: TUniDataSource
    DataSet = OraQuery1
    Left = 154
    Top = 114
  end
end
