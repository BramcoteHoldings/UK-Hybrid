object frmBudgetImport: TfrmBudgetImport
  Left = 292
  Top = 171
  Caption = 'Budget Import'
  ClientHeight = 617
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    938
    617)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 17
    Width = 60
    Height = 15
    Caption = 'Import File:'
  end
  object Label2: TLabel
    Left = 10
    Top = 57
    Width = 66
    Height = 15
    Caption = 'Budget Type'
  end
  object Label3: TLabel
    Left = 270
    Top = 57
    Width = 72
    Height = 15
    Caption = 'Financial Year'
  end
  object cxGrid1: TcxGrid
    Left = 10
    Top = 88
    Width = 921
    Height = 507
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    object tvBudgetImp: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = tvBudgetImpCustomDrawCell
      DataController.Options = [dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      Styles.Header = dmAxiom.UnreadStyle
      object tvBudgetImpGLCode: TcxGridColumn
        Caption = 'Code'
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = dmAxiom.cxStyle4
      end
      object tvBudgetImpP1: TcxGridColumn
        Caption = 'Period 1'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP2: TcxGridColumn
        Caption = 'Period 2'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP3: TcxGridColumn
        Caption = 'Period 3'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP4: TcxGridColumn
        Caption = 'Period 4'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP5: TcxGridColumn
        Caption = 'Period 5'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP6: TcxGridColumn
        Caption = 'Period 6'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP7: TcxGridColumn
        Caption = 'Period 7'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP8: TcxGridColumn
        Caption = 'Period 8'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP9: TcxGridColumn
        Caption = 'Period 9'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP10: TcxGridColumn
        Caption = 'Period 10'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP11: TcxGridColumn
        Caption = 'Period 11'
        Options.Editing = False
        Options.Focusing = False
      end
      object tvBudgetImpP12: TcxGridColumn
        Caption = 'Period 12'
        Options.Editing = False
        Options.Focusing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvBudgetImp
    end
  end
  object btnEdFileToOpen: TcxButtonEdit
    Left = 83
    Top = 13
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 497
  end
  object cxButton1: TcxButton
    Left = 595
    Top = 11
    Width = 80
    Height = 27
    Caption = 'Load'
    LookAndFeel.NativeStyle = True
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object pbImport: TcxButton
    Left = 684
    Top = 11
    Width = 80
    Height = 27
    Caption = 'Import'
    Enabled = False
    LookAndFeel.NativeStyle = True
    TabOrder = 2
    OnClick = pbImportClick
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 596
    Width = 938
    Height = 21
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 300
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 306
      Top = 4
      Width = 614
      Height = 15
      object ProgressBar: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        ParentFont = False
        Properties.BarStyle = cxbsGradient
        Properties.BeginColor = clGreen
        Properties.EndColor = clLime
        Properties.PeakValue = 20.000000000000000000
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 614
      end
    end
  end
  object cmbType: TcxComboBox
    Left = 83
    Top = 53
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Author'
      'Department'
      'General Ledger')
    Properties.OnChange = cmbTypePropertiesChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 170
  end
  object pbClose: TcxButton
    Left = 852
    Top = 53
    Width = 81
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'Close'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7
      C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF1616
      3DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4
      F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF0000
      81FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFDFD025A5A
      9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF0000
      8FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8FB7700101
      A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7
      E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828ABD90000
      ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFF
      F7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606B0FD0303
      B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575
      B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808BBFF0707
      C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000
      BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0CC9FF0D0D
      D8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000
      CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414D8FF1717
      EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363
      E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525E5F22222
      FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFF
      FEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5EF1AF3232
      FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADAD
      B0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6FC293E3E
      FBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242
      EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C2
      FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151
      FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151
      F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1
      F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 7
    OnClick = pbCloseClick
  end
  object cmbPeriod: TcxComboBox
    Left = 347
    Top = 53
    Properties.DropDownRows = 20
    Properties.Items.Strings = (
      '2009'
      '2010'
      '2011'
      '2012'
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '2024'
      '2025'
      '2026'
      '2027'
      '2028'
      '2029'
      '2030')
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 79
  end
  object rgTypeIncome: TcxRadioGroup
    Left = 434
    Top = 44
    Enabled = False
    Properties.Columns = 4
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = 'Billed Fees'
      end
      item
        Caption = 'Rcvd Fees'
      end
      item
        Caption = 'WIP'
      end
      item
        Caption = 'Time'
      end>
    Properties.WordWrap = True
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Transparent = True
    Height = 35
    Width = 337
  end
  object cxLabel2: TcxLabel
    Left = 783
    Top = 14
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'Delimiter:'
    Transparent = True
    Height = 18
    Width = 67
  end
  object cmbDelimeter: TcxComboBox
    Left = 845
    Top = 12
    Anchors = [akTop, akRight]
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'Comma (,)'
      'TAB'
      'Semicolon (;)')
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 10
    Text = 'Comma (,)'
    Width = 86
  end
  object OpenDialog: TOpenDialog
    Filter = 'CSV|*.csv'
    Left = 775
    Top = 126
  end
  object qryBudgetInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO budget'
      
        '  (ENTITY, CREATED, PERIOD, CALENDAR_YEAR, EMPLOYEE, DEPARTMENT,' +
        ' ACCOUNTCODE, ACCOUNTVALUE, BILLEDFEES, WIP, TIME, MONTH, FINANC' +
        'IAL_YEAR, RECEIVEDFEES)'
      'VALUES'
      
        '  (:ENTITY, :CREATED, :PERIOD, :CALENDAR_YEAR, :EMPLOYEE, :DEPAR' +
        'TMENT, :ACCOUNTCODE, :ACCOUNTVALUE, :BILLEDFEES, :WIP, :TIME, :M' +
        'ONTH, :FINANCIAL_YEAR, :RECEIVEDFEES)'
      '')
    Left = 323
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CALENDAR_YEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPARTMENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNTCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNTVALUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLEDFEES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WIP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MONTH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FINANCIAL_YEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECEIVEDFEES'
        Value = nil
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 93
    Top = 132
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyleR: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyleG: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object cxStyleD: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindowText
    end
  end
  object qryBudgetUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE BUDGET'
      'SET'
      '  ENTITY = :ENTITY,'
      '  CREATED = :CREATED,'
      '  PERIOD = :PERIOD,'
      '  CALENDAR_YEAR = :CALENDAR_YEAR,'
      '  EMPLOYEE = :EMPLOYEE,'
      '  DEPARTMENT = :DEPARTMENT,'
      '  ACCOUNTCODE = :ACCOUNTCODE,'
      '  ACCOUNTVALUE = :ACCOUNTVALUE,'
      '  BILLEDFEES = :BILLEDFEES,'
      '  WIP = :WIP,'
      '  TIME = :TIME,'
      '  MONTH = :MONTH,'
      '  YEAR = :YEAR,'
      '  FINANCIAL_YEAR = :FINANCIAL_YEAR,'
      '  RECEIVEDFEES = :RECEIVEDFEES,'
      '  DAYS_PER_MONTH = :DAYS_PER_MONTH'
      'WHERE'
      '  NBUDGET = :OLD_NBUDGET')
    Left = 142
    Top = 269
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERIOD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CALENDAR_YEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPARTMENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNTCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCOUNTVALUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BILLEDFEES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WIP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MONTH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'YEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FINANCIAL_YEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RECEIVEDFEES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DAYS_PER_MONTH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NBUDGET'
        Value = nil
      end>
  end
end
