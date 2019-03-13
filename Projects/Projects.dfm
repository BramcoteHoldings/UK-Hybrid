object frmProjects: TfrmProjects
  Left = 0
  Top = 0
  Caption = 'Project Templates'
  ClientHeight = 748
  ClientWidth = 1165
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 106
  TextHeight = 17
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 30
    Width = 1165
    Height = 718
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabProjectList
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 714
    ClientRectLeft = 4
    ClientRectRight = 1161
    ClientRectTop = 29
    object tabProjectList: TcxTabSheet
      Caption = 'Projects'
      ImageIndex = 0
      OnShow = tabProjectListShow
      object gridProjects: TcxGrid
        Left = 0
        Top = 0
        Width = 1157
        Height = 685
        Align = alClient
        TabOrder = 0
        object tvProjects: TcxGridDBTableView
          OnDblClick = actEditProjectExecute
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsProjects
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NavigatorOffset = 55
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          object tvProjectsCODE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CODE'
            Width = 65
          end
          object tvProjectsDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            Width = 1049
          end
          object tvProjectsWORKFLOWTYPE: TcxGridDBColumn
            Caption = 'Workflow'
            DataBinding.FieldName = 'WORKFLOWTYPE'
            Width = 147
          end
          object tvProjectsNPROJECTTEMPL: TcxGridDBColumn
            DataBinding.FieldName = 'NPROJECTTEMPL'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object gridProjectsLevel1: TcxGridLevel
          GridView = tvProjects
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      object cxLabel2: TcxLabel
        Left = 52
        Top = 31
        Caption = 'Code:'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 20
        Top = 64
        Caption = 'Description'
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 29
        Top = 96
        Caption = 'Workflow:'
        Transparent = True
      end
      object edtCode: TcxTextEdit
        Left = 111
        Top = 32
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 134
      end
      object edtDescription: TcxTextEdit
        Left = 111
        Top = 63
        TabOrder = 4
        Width = 134
      end
      object cmbWorkflow: TcxLookupComboBox
        Left = 111
        Top = 95
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListSource = dsWorkflowType
        TabOrder = 5
        Width = 193
      end
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1075
    Top = 407
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
      FloatLeft = 1317
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'bbtnDeleteProject'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Project Template'
      Category = 0
      Hint = 'New Project Template'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
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
    object dxBarButton3: TdxBarButton
      Action = actEditProject
      Caption = 'Edit Project Template'
      Category = 0
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
    end
    object bbtnDeleteProject: TdxBarButton
      Action = actDeleteProject
      Category = 0
    end
  end
  object qryProjects: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select project_template.*,'
      '       project_template.rowid '
      'from project_template')
    BeforeDelete = qryProjectsBeforeDelete
    Left = 219
    Top = 236
  end
  object dsProjects: TUniDataSource
    DataSet = qryProjects
    Left = 297
    Top = 240
  end
  object ActionManager1: TActionManager
    Images = dmAxiom.ilstToolbar
    Left = 903
    Top = 209
    StyleName = 'Platform Default'
    object actEditProject: TAction
      Caption = 'Edit Project'
      OnExecute = actEditProjectExecute
      OnUpdate = actEditProjectUpdate
    end
    object actDeleteProject: TAction
      Caption = 'Delete Project'
      ImageIndex = 1
      OnExecute = actDeleteProjectExecute
      OnUpdate = actDeleteProjectUpdate
    end
  end
  object qryWorkflowType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM workflowtype'
      'order by descr')
    Left = 423
    Top = 126
  end
  object dsWorkflowType: TUniDataSource
    DataSet = qryWorkflowType
    Left = 475
    Top = 132
  end
end
