object frmExpenseAllocations: TfrmExpenseAllocations
  Left = 476
  Top = 272
  BorderStyle = bsDialog
  Caption = 'Expense Allocations'
  ClientHeight = 313
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 10
    Top = 37
    Width = 75
    Height = 14
    Caption = 'Master Chart :'
  end
  object Label2: TLabel
    Left = 10
    Top = 55
    Width = 68
    Height = 14
    Caption = 'Description :'
  end
  object lblMasterChart: TLabel
    Left = 82
    Top = 37
    Width = 81
    Height = 14
    Caption = 'lblMasterChart'
  end
  object lblDescription: TLabel
    Left = 82
    Top = 54
    Width = 77
    Height = 14
    Caption = 'lblDescription'
  end
  object Label3: TLabel
    Left = 10
    Top = 293
    Width = 58
    Height = 14
    Caption = 'Allocated :'
  end
  object lblTotalPercent: TLabel
    Left = 58
    Top = 293
    Width = 12
    Height = 14
    Caption = 'XX'
  end
  object Label4: TLabel
    Left = 98
    Top = 293
    Width = 73
    Height = 14
    Caption = 'Unallocated :'
  end
  object lblTotalPercentUn: TLabel
    Left = 162
    Top = 293
    Width = 12
    Height = 14
    Caption = 'XX'
  end
  object dbgrExpenseAllocations: TcxGrid
    Left = 10
    Top = 84
    Width = 417
    Height = 200
    TabOrder = 0
    OnExit = dbgrExpenseAllocationsExit
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    object tvExpenseAllocations: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsExpenseAllocations
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvExpenseAllocationsDBColumn1: TcxGridDBColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'COMPONENT_CODE_DISPLAY'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = dbgrExpenseAllocationsDBTableView1DBColumn1PropertiesButtonClick
        Properties.OnValidate = dbgrExpenseAllocationsDBTableView1DBColumn1PropertiesValidate
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 100
      end
      object tvExpenseAllocationsDBDescription: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 139
      end
      object tvExpenseAllocationsDBColumn2: TcxGridDBColumn
        Caption = 'Percentage'
        DataBinding.FieldName = 'PERCENTAGE'
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 77
      end
      object tvExpenseAllocationsDBColumn3: TcxGridDBColumn
        Caption = 'Rounding'
        DataBinding.FieldName = 'IS_ROUNDING'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 70
      end
    end
    object dbgrExpenseAllocationsLevel1: TcxGridLevel
      GridView = tvExpenseAllocations
    end
  end
  object qryExpenseAllocations: TUniQuery
    UpdatingTable = 'GL_EXPENSE_ALLOCATIONS'
    SQLInsert.Strings = (
      'INSERT INTO GL_EXPENSE_ALLOCATIONS'
      
        '  (CODE, BANK, MASTER_CODE, MASTER_BANK, DESCR, COMPONENT_CODE_D' +
        'ISPLAY, PERCENTAGE, IS_ROUNDING)'
      'VALUES'
      
        '  (:CODE, :BANK, :MASTER_CODE, :MASTER_BANK, :DESCR, :COMPONENT_' +
        'CODE_DISPLAY, :PERCENTAGE, :IS_ROUNDING)')
    SQLDelete.Strings = (
      'DELETE FROM GL_EXPENSE_ALLOCATIONS'
      'WHERE'
      '  ROWID = :Old_ROWID')
    SQLUpdate.Strings = (
      'UPDATE GL_EXPENSE_ALLOCATIONS'
      'SET'
      
        '  CODE = :CODE, BANK = :BANK, MASTER_CODE = :MASTER_CODE, MASTER' +
        '_BANK = :MASTER_BANK, DESCR = :DESCR, COMPONENT_CODE_DISPLAY = :' +
        'COMPONENT_CODE_DISPLAY, PERCENTAGE = :PERCENTAGE, IS_ROUNDING = ' +
        ':IS_ROUNDING'
      'WHERE'
      '  ROWID = :Old_ROWID')
    SQLLock.Strings = (
      'SELECT * FROM GL_EXPENSE_ALLOCATIONS'
      'WHERE'
      '  ROWID = :Old_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT CODE, BANK, MASTER_CODE, MASTER_BANK, DESCR, COMPONENT_CO' +
        'DE_DISPLAY, PERCENTAGE, IS_ROUNDING FROM GL_EXPENSE_ALLOCATIONS'
      'WHERE'
      '  ROWID = :Old_ROWID')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT gl.*, gl.ROWID'
      '  FROM gl_expense_allocations gl'
      ' WHERE master_code = :code AND master_bank = :bank')
    CachedUpdates = True
    AfterPost = qryExpenseAllocationsAfterPost
    AfterDelete = qryExpenseAllocationsAfterDelete
    OnNewRecord = qryExpenseAllocationsNewRecord
    Left = 383
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'bank'
        Value = nil
      end>
  end
  object dsExpenseAllocations: TUniDataSource
    DataSet = qryExpenseAllocations
    Left = 333
    Top = 26
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
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 253
    Top = 27
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
      FloatLeft = 742
      FloatTop = 574
      FloatClientWidth = 227
      FloatClientHeight = 52
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone, dsBottom]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = '&OK'
      Category = 0
      Hint = 'OK'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object btnDelete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btnDeleteClick
    end
  end
end
