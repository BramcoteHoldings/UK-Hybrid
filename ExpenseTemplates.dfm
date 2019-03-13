object frmExpenseTemplates: TfrmExpenseTemplates
  Left = 0
  Top = 0
  Caption = 'Expense Templates'
  ClientHeight = 739
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    943
    739)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 33
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Template'
    TabOrder = 0
    DesignSize = (
      925
      273)
    Height = 273
    Width = 925
    object grdExpenseTemplates: TcxGrid
      Left = 9
      Top = 116
      Width = 909
      Height = 150
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object tvExpenseTemplates: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellClick = tvExpenseTemplatesCellClick
        DataController.DataSource = dsExpenseTemplates
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvExpenseTemplatesCODE: TcxGridDBColumn
          Caption = 'Code'
          DataBinding.FieldName = 'CODE'
          Width = 84
        end
        object tvExpenseTemplatesDESCRIPTION: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESCR'
          Width = 711
        end
      end
      object lvExpenseTemplates: TcxGridLevel
        GridView = tvExpenseTemplates
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 9
      Top = 17
      Caption = 'Details'
      TabOrder = 1
      Height = 93
      Width = 477
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 79
        Top = 25
        DataBinding.DataField = 'CODE'
        DataBinding.DataSource = dsExpenseTemplates
        TabOrder = 0
        Width = 76
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 26
        Caption = 'Code'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 53
        Caption = 'Description'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 79
        Top = 52
        DataBinding.DataField = 'DESCR'
        DataBinding.DataSource = dsExpenseTemplates
        TabOrder = 3
        Width = 264
      end
      object btnNew: TcxButton
        Left = 383
        Top = 12
        Width = 75
        Height = 25
        Action = DatasetInsert1
        TabOrder = 4
      end
      object cxButton1: TcxButton
        Left = 383
        Top = 36
        Width = 75
        Height = 25
        Action = DatasetPost1
        TabOrder = 5
      end
      object cxButton2: TcxButton
        Left = 383
        Top = 60
        Width = 75
        Height = 25
        Action = DatasetCancel1
        TabOrder = 6
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 310
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Template Definitions'
    TabOrder = 1
    DesignSize = (
      925
      418)
    Height = 418
    Width = 925
    object grdExpenseTemplateLink: TcxGrid
      Left = 9
      Top = 19
      Width = 909
      Height = 389
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object tvExpenseTemplateLink: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsExpenses_Template_Link
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvExpenseTemplateLinkEXP_TEMPLATE_CODE: TcxGridDBColumn
          Caption = 'Expense Template'
          DataBinding.FieldName = 'EXP_TEMPLATE_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsExpenseTemplates
          Width = 194
        end
        object tvExpenseTemplateLinkEXPENSE_CODE: TcxGridDBColumn
          Caption = 'Expense Code'
          DataBinding.FieldName = 'EXPENSE_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSundryType
          Width = 458
        end
        object tvExpenseTemplateLinkEXPENSE_DESCR: TcxGridDBColumn
          Caption = 'Expense Description'
          DataBinding.ValueType = 'String'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Width = 122
        end
        object tvExpenseTemplateLinkEXPENSE_AMOUNT: TcxGridDBColumn
          Caption = 'Expense Amount'
          DataBinding.ValueType = 'Currency'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Width = 121
        end
      end
      object lvExpenseTemplateLink: TcxGridLevel
        GridView = tvExpenseTemplateLink
      end
    end
  end
  object dxBarManager1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 781
    Top = 185
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 877
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object qryExpenseTemplates: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select EXPENSE_TEMPLATES.*, EXPENSE_TEMPLATES.rowid'
      'from'
      'EXPENSE_TEMPLATES'
      'order by descr')
    Left = 116
    Top = 151
  end
  object dsExpenseTemplates: TUniDataSource
    DataSet = qryExpenseTemplates
    Left = 215
    Top = 164
  end
  object qryExpenses_Template_Link: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select EXPENSE_TEMPLATE_LINK.*, EXPENSE_TEMPLATE_LINK.rowid'
      'from'
      'EXPENSE_TEMPLATE_LINK'
      'where'
      'exp_template_code = :exp_template_code')
    OnNewRecord = qryExpenses_Template_LinkNewRecord
    Left = 305
    Top = 519
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'exp_template_code'
        Value = nil
      end>
  end
  object dsExpenses_Template_Link: TUniDataSource
    DataSet = qryExpenses_Template_Link
    Left = 416
    Top = 520
  end
  object qrySundryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'sundrytype'
      'where'
      'active = '#39'Y'#39
      'and '
      'entity = :entity'
      'order by descr')
    Left = 177
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsSundryType: TUniDataSource
    DataSet = qrySundryType
    Left = 270
    Top = 390
  end
  object ActionManager1: TActionManager
    Left = 551
    Top = 65
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Action1'
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&New'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsExpenseTemplates
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Save'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsExpenseTemplates
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsExpenseTemplates
    end
  end
end
