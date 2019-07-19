inherited frmTeams: TfrmTeams
  Left = 709
  Top = 74
  Caption = 'Teams'
  ClientHeight = 595
  ClientWidth = 834
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 840
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 10
    Top = 43
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label2: TLabel [1]
    Left = 10
    Top = 70
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object dbtbDescr: TcxDBTextEdit [2]
    Left = 96
    Top = 66
    AutoSize = False
    DataBinding.DataField = 'DESCR'
    DataBinding.DataSource = dsSource
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 21
    Width = 398
  end
  object dbtbCode: TcxDBButtonEdit [3]
    Left = 96
    Top = 37
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = dsSource
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
          FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
          00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
          00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
          00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
          FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
          00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Kind = bkGlyph
      end>
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = dbtbCodePropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 179
  end
  object cxGroupBox1: TcxGroupBox [4]
    Left = 10
    Top = 93
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Employees'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 2
    ExplicitWidth = 570
    ExplicitHeight = 465
    Height = 495
    Width = 812
    object grdEmpList: TcxGrid
      Left = 2
      Top = 48
      Width = 808
      Height = 445
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      ExplicitWidth = 566
      ExplicitHeight = 415
      object grdEmpListDBTableView1: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Post.Enabled = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsTeamEmployees
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.SeparatorWidth = 7
        FixedDataRows.SeparatorWidth = 7
        NewItemRow.SeparatorWidth = 7
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NavigatorOffset = 55
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.IndicatorWidth = 13
        Preview.LeftIndent = 22
        Preview.RightIndent = 6
        object grdEmpListDBTableView1Member: TcxGridDBColumn
          Caption = 'Member'
          DataBinding.FieldName = 'EMP_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dmAxiom.dsEmplyeeList
          Properties.OnChange = grdEmpListDBTableView1MemberPropertiesChange
          Width = 94
        end
        object grdEmpListDBTableView1NAME: TcxGridDBColumn
          Caption = 'Name'
          DataBinding.FieldName = 'EMP_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dmAxiom.dsEmplyeeList
          Options.Editing = False
          Options.Focusing = False
          Width = 369
        end
      end
      object grdEmpListBandedTableView1: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.SeparatorWidth = 7
        FixedDataRows.SeparatorWidth = 7
        NewItemRow.SeparatorWidth = 7
        OptionsView.NavigatorOffset = 55
        OptionsView.GroupByBox = False
        OptionsView.IndicatorWidth = 13
        Preview.LeftIndent = 22
        Preview.RightIndent = 6
        Bands = <
          item
            Caption = 'Bound'
            Width = 198
          end
          item
            Caption = 'Unbound'
          end>
      end
      object tvEmpList: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsEmployee
        DataController.KeyFieldNames = 'CODE'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.SeparatorWidth = 7
        FixedDataRows.SeparatorWidth = 7
        NewItemRow.SeparatorWidth = 7
        OptionsCustomize.ColumnFiltering = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NavigatorOffset = 55
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.IndicatorWidth = 13
        OptionsView.BandHeaders = False
        Preview.LeftIndent = 22
        Preview.RightIndent = 6
        Bands = <
          item
            Caption = 'UnBound'
          end
          item
            Caption = 'Bound'
          end>
        object tvEmpListMember: TcxGridDBBandedColumn
          Caption = 'Member'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = tvEmpListMemberPropertiesChange
          HeaderAlignmentHorz = taCenter
          MinWidth = 56
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvEmpListCODE: TcxGridDBBandedColumn
          Caption = 'Code'
          DataBinding.FieldName = 'CODE'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Editing = False
          Options.Focusing = False
          Width = 55
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object tvEmpListNAME: TcxGridDBBandedColumn
          Caption = 'Name'
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Options.Focusing = False
          Width = 250
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object tvEmpListDESCR: TcxGridDBBandedColumn
          Caption = 'Department'
          DataBinding.FieldName = 'DESCR'
          Options.Focusing = False
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object grdEmpListLevel1: TcxGridLevel
        GridView = grdEmpListDBTableView1
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 2
      Top = 20
      Width = 808
      Height = 28
      Align = dalTop
      BarManager = bmMain
      ExplicitWidth = 566
    end
  end
  inherited dsSource: TUniDataSource
    Top = 21
  end
  inherited ilstToolbar: TImageList
    Left = 361
    Top = 38
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT T.*, T.ROWID '
      'FROM TEAM T '
      'ORDER BY T.CODE')
    AfterScroll = qrySourceAfterScroll
    Top = 18
  end
  inherited bmMain: TdxBarManager
    CanCustomize = False
    Categories.Strings = (
      'MemberList'
      'Default'
      'File'
      'Search'
      'Help'
      'Menus'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True)
    Left = 385
    Top = 65
    PixelsPerInch = 96
    inherited bmMainBar1: TdxBar
      Font.Height = -9
      IsMainMenu = True
      MultiLine = True
      OldName = 'Main Menu1'
      WholeRow = True
    end
    inherited bmMainBar2: TdxBar
      AllowClose = False
      IsMainMenu = False
      MultiLine = False
      OldName = 'Toolbar1'
      WholeRow = False
    end
    object bmMainBar3: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MemberList'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 24
      FloatClientHeight = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'MemberList'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton [3]
      Action = actTeamSave
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    inherited mnuFileDelete: TdxBarButton
      Category = 2
    end
    inherited mnuFilePrint: TdxBarButton
      Category = 2
    end
    inherited mnuFileExit: TdxBarButton
      Category = 2
    end
    inherited mnuSearchFirst: TdxBarButton
      Category = 3
    end
    inherited mnuSearchPrior: TdxBarButton
      Category = 3
    end
    inherited mnuSearchNext: TdxBarButton
      Category = 3
    end
    inherited mnuSearchLast: TdxBarButton
      Category = 3
    end
    inherited mnuHelpHelp: TdxBarButton
      Category = 4
    end
    inherited mnuFile: TdxBarSubItem
      Category = 5
    end
    inherited mnuSearch: TdxBarSubItem
      Category = 5
    end
    inherited mnuHelp: TdxBarSubItem
      Category = 5
    end
    inherited dxBarDBNavFirst1: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavPrev3: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavNext3: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavLast3: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavInsert4: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavDelete3: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavPost3: TdxBarDBNavButton
      Category = 6
    end
    inherited dxBarDBNavCancel3: TdxBarDBNavButton
      Category = 6
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 339
    Top = 70
  end
  inherited rpMaintReport: TppReport
    Left = 549
    Top = 79
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppLine1: TppLine [0]
      end
      inherited ppSystemVariable1: TppSystemVariable [1]
      end
      inherited ppSystemVariable2: TppSystemVariable [2]
      end
      inherited pplblEntity: TppLabel [3]
      end
      inherited pplblTitle: TppLabel [4]
      end
    end
  end
  inherited plSource: TppDBPipeline
    object plSourceppField1: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 2
    end
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select e.code, e.name, ed.descr '
      'from employee e, empdept ed '
      'where e.active = '#39'Y'#39
      'and e.dept = ed.code'
      'order by e.name')
    Left = 194
    Top = 208
  end
  object qryEmployeeCode: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from team_employee t, employee e'
      'where t.team_code = :code'
      'and t.emp_code = e.code'
      'and t.emp_code = :emp')
    Left = 220
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 252
    Top = 226
  end
  object ActionManager1: TActionManager
    Images = ilstToolbar
    Left = 384
    Top = 257
    StyleName = 'XP Style'
    object actTeamSave: TAction
      Caption = 'Save'
      ImageIndex = 8
      OnExecute = actTeamSaveExecute
      OnUpdate = actTeamSaveUpdate
    end
  end
  object qryTemp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 304
    Top = 304
  end
  object qryTeamEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select t.*, t.rowid from team_employee t'
      'where t.team_code = :code')
    AfterInsert = qryTeamEmployeesAfterInsert
    OnNewRecord = qryTeamEmployeesNewRecord
    Left = 60
    Top = 363
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dsTeamEmployees: TUniDataSource
    DataSet = qryTeamEmployees
    Left = 146
    Top = 373
  end
end
