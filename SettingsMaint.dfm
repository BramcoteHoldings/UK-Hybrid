object frmEmpSettingsMaint: TfrmEmpSettingsMaint
  Left = 344
  Top = 178
  Caption = 'Employee Settings Maintenance'
  ClientHeight = 637
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 1289
    Height = 35
    Align = alTop
    TabOrder = 0
    object cmbEmployee: TcxLookupComboBox
      Left = 81
      Top = 8
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end
        item
          Width = 40
          FieldName = 'CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEmployee
      Properties.OnCloseUp = cmbEmployeePropertiesCloseUp
      TabOrder = 0
      Width = 203
    end
    object cxLabel1: TcxLabel
      Left = 19
      Top = 9
      Caption = 'Employee:'
      Transparent = True
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 63
    Width = 1289
    Height = 574
    Align = alClient
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsSettings
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1EMP: TcxGridDBColumn
        DataBinding.FieldName = 'EMP'
        Visible = False
      end
      object cxGrid1DBTableView1OWNER: TcxGridDBColumn
        DataBinding.FieldName = 'OWNER'
        Width = 154
      end
      object cxGrid1DBTableView1ITEM: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM'
        Width = 366
      end
      object cxGrid1DBTableView1VALUE: TcxGridDBColumn
        DataBinding.FieldName = 'VALUE'
        Width = 510
      end
      object cxGrid1DBTableView1INTVALUE: TcxGridDBColumn
        DataBinding.FieldName = 'INTVALUE'
        Width = 131
      end
      object cxGrid1DBTableView1OPTIONS: TcxGridDBColumn
        DataBinding.FieldName = 'OPTIONS'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekBlob
        Options.Editing = False
        Options.Focusing = False
        Width = 126
      end
      object cxGrid1DBTableView1ROWID: TcxGridDBColumn
        DataBinding.FieldName = 'ROWID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 521
    Top = 49
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 203
      FloatTop = 252
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object qrySettings: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select settings.*, settings.rowid'
      'from'
      'settings'
      'where'
      'emp = :emp')
    Left = 316
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
  end
  object dsSettings: TUniDataSource
    DataSet = qrySettings
    Left = 432
    Top = 152
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'employee'
      'where'
      'active = '#39'Y'#39
      'order by name')
    Left = 341
    Top = 40
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 457
    Top = 31
  end
end
