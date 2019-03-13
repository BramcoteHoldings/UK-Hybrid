object fmMarketEventEventTypes: TfmMarketEventEventTypes
  Left = 492
  Top = 260
  BorderStyle = bsDialog
  Caption = 'Marketing Event Types'
  ClientHeight = 538
  ClientWidth = 862
  Color = clBtnFace
  Constraints.MinWidth = 290
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdEvents: TcxGrid
    Left = 0
    Top = 28
    Width = 862
    Height = 510
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ExplicitWidth = 560
    ExplicitHeight = 417
    object grdEventsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dmMarketEventDataModule.dsEventTypes
      DataController.Filter.MaxValueListCount = 1000
      DataController.KeyFieldNames = 'EVENT_TYPE_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnPopup.MaxDropDownItemCount = 12
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.NavigatorOffset = 20
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
      object grdEventsDBTableView1EVENT_TYPE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'EVENT_TYPE_ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = False
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Width = 93
      end
      object grdEventsDBTableView1EVENT_TYPE_DESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'EVENT_TYPE_DESCR'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 20
        Properties.ReadOnly = False
        Options.Filtering = False
      end
    end
    object grdEventsLevel1: TcxGridLevel
      GridView = grdEventsDBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockColor = clBtnFace
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 60
    Top = 83
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
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavInsert1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavDelete1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavEdit1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavCancel1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
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
      ShortCut = 16499
      OnClick = dxBarButton1Click
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
      CaptionEx = '&Add'
      HintEx = 'Insert'
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
      CaptionEx = '&Delete'
      HintEx = 'Delete'
    end
    object dxBarDBNavEdit1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnEdit
      CaptionEx = '&Edit'
      HintEx = 'Edit'
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
      CaptionEx = '&Save'
      HintEx = 'Save'
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
      CaptionEx = '&Cancel'
      HintEx = 'Cancel'
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = dmMarketEventDataModule.dsEventTypes
    DBCheckLinks = <>
    VisibleButtons = [dxbnInsert, dxbnDelete, dxbnEdit, dxbnPost, dxbnCancel]
    Left = 108
    Top = 81
  end
end
