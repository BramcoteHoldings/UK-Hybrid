object frmDiaryNotify: TfrmDiaryNotify
  Left = 366
  Top = 143
  BorderStyle = bsDialog
  Caption = 'Diary Alert'
  ClientHeight = 303
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 246
    Width = 89
    Height = 15
    Caption = 'Remind again in:'
  end
  object lblEvent: TLabel
    Left = 40
    Top = 12
    Width = 42
    Height = 13
    Caption = 'lblEvent'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLocation: TLabel
    Left = 116
    Top = 52
    Width = 59
    Height = 15
    Caption = 'lblLocation'
  end
  object lblTime: TLabel
    Left = 116
    Top = 33
    Width = 40
    Height = 15
    Caption = 'lblTime'
  end
  object lblsStartTime: TLabel
    Left = 52
    Top = 33
    Width = 57
    Height = 15
    Caption = 'Start Time:'
  end
  object lblsLocation: TLabel
    Left = 52
    Top = 52
    Width = 49
    Height = 15
    Caption = 'Location:'
  end
  object Image1: TImage
    Left = 16
    Top = 8
    Width = 16
    Height = 16
    AutoSize = True
    Picture.Data = {
      07544269746D617036030000424D360300000000000036000000280000001000
      0000100000000100180000000000000300000000000000000000000000000000
      0000E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0
      E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0E3DFE0BBA596634935634935634935664D
      3863493563493563493563493563493563493563493563493563493563493563
      4935BBA596D8B7A1C59D81B28B6FD8B7A1C9A78FB68D71D8B7A1C59D81B28B6F
      D8B7A1C59D81B28B6FD2A98CBE987B634935C0AB9CFFFEFEFFFEFEC29A7DFDFA
      F8FDF8F5C29A7DFBF2ECFBF1EABF9679FAE9DDFBEAE0C29A7DFAE0CFD4BDAE63
      4935C0AB9CFFFEFEFFFEFECFA587FFFCFBFEF9F8CDA385FDF4EFFBF1EACDA385
      FBEAE0FAE9DDCDA385F9E1D2D4BDAE634935C0AB9CD5AF96C29A7DB28B6FCDA3
      85BF9679B28B6FCDA385BF96790940EB0535D30535D3022BB8CDA385BF967963
      4935C8B3A4FFFEFEFFFEFEBF9679FFFEFEFFFEFEBF9679FDFAF8FEF7F42759F4
      FEF7F4FDF4EF0535D3FAE6DBD0C2B5634935C8B3A4FFFEFEFFFEFECDA385FFFE
      FEFFFEFECDA385FFFCFBFDFAF84F78F6FFFCFBFEF7F40535D3FBEAE0D0C2B563
      4935C8B3A4D5AF96C29A7DB28B6FCDA385BF9679B28B6FCDA385BF96797193FB
      4F78F62759F40940EBCDA385C29A7D634935C8B3A4FFFEFEFFFEFEBF9679FFFE
      FEFFFEFEBF9679FFFEFEFFFEFEBF9679FDFAF8FEF7F4BF9679FBF2ECE0D8D266
      4D38C8B3A4FFFEFEFFFEFECDA385FFFEFEFFFEFECDA385FFFEFEFFFEFECDA385
      FFFCFBFDFAF8CDA385FDF4EFFBF2EC634935EAAA8BEAAA8BE9A787E8A482E7A0
      7DE69974E69974E5936AE48E63E4895CE38353E27D4BE17945E0753FDC723BCE
      6B3AEAAA8BFDECE1FFEBE0FFEBE0FEE9DEFEE9DEFDE7DBF8AC85F8AC85F6A57B
      F6A57BF6A57BF6A57BF6A57BF59E71CE6B3AEAAA8BE9A787E8A482E7A07DE699
      74E69974E5936ADE8C65DA845ADA845AD5774AD5774AD5774ACE6B3ACE6B3ACE
      6B3AA3A3A1FFFFFF8B8B88FFFFFF8B8B88FFFFFF8B8B88FFFFFF8B8B88FFFFFF
      6E726FFFFFFF636363FDFDFD616155D0D5D1FFFFFF1F251EE1E0E01F251EE3E3
      E21F251EE8E7E61F251ED0D5D11F251ED0D5D11F251EECECEC1F251EE1E0E0A3
      A3A1}
  end
  object btnDismissAll: TcxButton
    Left = 16
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Dismiss All'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnClick = btnDismissAllClick
  end
  object btnDismiss: TcxButton
    Left = 374
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Dismiss'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 1
    OnClick = btnDismissClick
  end
  object btnOpenEvent: TcxButton
    Left = 285
    Top = 206
    Width = 83
    Height = 25
    Caption = 'Open Event'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 2
    OnClick = btnOpenEventClick
  end
  object btnSnooze: TcxButton
    Left = 381
    Top = 270
    Width = 75
    Height = 23
    Caption = 'Snooze'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 3
    OnClick = btnSnoozeClick
  end
  object cmbReminder: TcxComboBox
    Left = 16
    Top = 270
    Properties.Items.Strings = (
      '5 minutes'
      '10 minutes'
      '15 minutes'
      '20 minutes'
      '30 minutes'
      '1 hour'
      '2 hours'
      '3 hours'
      '4 hours'
      '8 hours'
      '0.5 days'
      '1 day')
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 337
  end
  object grdDiaryNotify: TcxGrid
    Left = 16
    Top = 71
    Width = 440
    Height = 130
    TabOrder = 5
    LookAndFeel.NativeStyle = True
    object tvDiaryNotify: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDiaryNotify
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvDiaryNotifyNDIARY: TcxGridDBColumn
        DataBinding.FieldName = 'NDIARY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = False
        Visible = False
        Width = 20
      end
      object tvDiaryNotifyDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        Width = 290
      end
      object tvDiaryNotifyDUE: TcxGridDBColumn
        Caption = 'Due in'
        DataBinding.FieldName = 'DUE'
        Width = 125
      end
    end
    object grdDiaryNotifyLevel1: TcxGridLevel
      GridView = tvDiaryNotify
    end
  end
  object qryDiaryNotify: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NDIARY, START_DT, END_DT, DESCR, LOCATION, '
      'CASE WHEN (START_DT < SYSDATE)  THEN '#39'Overdue'#39
      
        'ELSE to_char((TO_NUMBER(TO_CHAR(START_DT, '#39'MI'#39')) - TO_NUMBER(TO_' +
        'CHAR(sysdate, '#39'MI'#39')))) || '#39' Min(s)'#39
      'end as due'
      'FROM DIARY '
      'WHERE '
      'REMINDER_FOR = :REMINDER_FOR AND '
      
        'DIARY.NOTIFY <= TO_DATE(to_char(sysdate,'#39'DD/MM/YYYY HH24:MI'#39'), '#39 +
        'DD/MM/YYYY HH24:MI'#39')'
      ''
      ''
      '/*'
      'SELECT NDIARY, START_DT, END_DT, DESCR, LOCATION, '
      'CASE WHEN (START_DT < SYSDATE)  THEN '#39'Overdue'#39
      
        'ELSE to_char((TO_NUMBER(TO_CHAR(START_DT, '#39'MI'#39')) - TO_NUMBER(TO_' +
        'CHAR(sysdate, '#39'MI'#39')))) || '#39' Min(s)'#39
      'end as due'
      'FROM DIARY'
      'WHERE REMINDER_FOR = :REMINDER_FOR'
      'AND DIARY.NOTIFY <= :NOTIFYSTART'
      'AND DIARY.NOTIFY > :NOTIFYEND'
      '*/')
    Left = 275
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REMINDER_FOR'
        Value = nil
      end>
  end
  object dsDiaryNotify: TUniDataSource
    AutoEdit = False
    DataSet = qryDiaryNotify
    Left = 264
    Top = 7
  end
  object qryDiaryUnnotify: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE DIARY SET NOTIFY = NULL WHERE NDIARY = :NDIARY')
    Left = 384
    Top = 94
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NDIARY'
        Value = nil
      end>
  end
  object qryDiarySnooze: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE DIARY SET NOTIFY = :SNOOZE WHERE NDIARY = :NDIARY')
    Left = 391
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SNOOZE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NDIARY'
        Value = nil
      end>
  end
end
