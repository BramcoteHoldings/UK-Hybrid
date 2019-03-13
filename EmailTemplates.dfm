object frmEmailTemplates: TfrmEmailTemplates
  Left = 0
  Top = 0
  Caption = 'Email Templates'
  ClientHeight = 485
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 17
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 992
    Height = 455
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEmailTemplate
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
      OptionsView.NavigatorOffset = 61
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 15
      Preview.LeftIndent = 24
      Preview.RightIndent = 6
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        MinWidth = 24
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1DESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 24
        Width = 631
      end
      object cxGrid1DBTableView1BODY_TEXT: TcxGridDBColumn
        Caption = 'Body'
        DataBinding.FieldName = 'BODY_TEXT'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekBlob
        Properties.PopupHeight = 243
        Properties.PopupWidth = 304
        MinWidth = 24
        Width = 358
      end
      object cxGrid1DBTableView1SYSTEM_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'SYSTEM_DATE'
        Visible = False
        MinWidth = 24
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1WHO: TcxGridDBColumn
        DataBinding.FieldName = 'WHO'
        Visible = False
        MinWidth = 24
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    ImageOptions.LargeImages = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 607
    Top = 98
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      30
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 851
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barbtnEditTemplate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      MultiLine = True
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Import Template'
      Category = 0
      Hint = 'Import Template'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object barbtnEditTemplate: TdxBarButton
      Caption = 'Edit Template'
      Category = 0
      Hint = 'Edit Template'
      Visible = ivAlways
      OnClick = barbtnEditTemplateClick
    end
    object dxBarButton4: TdxBarButton
      Action = DatasetDelete1
      Caption = 'Delete Template'
      Category = 0
      PaintStyle = psCaption
    end
  end
  object qryEmailTemplate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      'email_templates.*, email_templates.rowid'
      'from'
      'email_templates')
    Left = 320
    Top = 144
  end
  object dsEmailTemplate: TUniDataSource
    DataSet = qryEmailTemplate
    Left = 415
    Top = 143
  end
  object dlFile: TOpenDialog
    Filter = 'JPG|*.jpg|HTML|*.html'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Title = 'Select document template'
    Left = 183
    Top = 177
  end
  object ActionManager1: TActionManager
    Left = 456
    Top = 298
    StyleName = 'Platform Default'
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsEmailTemplate
    end
  end
end
