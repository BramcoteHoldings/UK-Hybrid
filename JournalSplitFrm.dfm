object frmJournalSplit: TfrmJournalSplit
  Left = 293
  Top = 125
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Journal Split'
  ClientHeight = 453
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblChartCode: TLabel
    Left = 87
    Top = 8
    Width = 60
    Height = 13
    Caption = 'lblChartCode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblChartDescr: TLabel
    Left = 87
    Top = 24
    Width = 63
    Height = 13
    Caption = 'lblChartDescr'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEntity: TLabel
    Left = 87
    Top = 40
    Width = 36
    Height = 13
    Caption = 'lblEntity'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 7
    Top = 8
    Width = 71
    Height = 13
    Caption = 'Account Code:'
  end
  object Label2: TLabel
    Left = 7
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Description:'
  end
  object Label3: TLabel
    Left = 7
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Entity:'
  end
  object btnSave: TButton
    Left = 197
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 278
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object dbgrChart: TDBGrid
    Left = 8
    Top = 72
    Width = 345
    Height = 329
    Color = clInfoBk
    DataSource = dsChartBreakDown
    PopupMenu = mnuOptions
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColExit = dbgrChartColExit
    OnEditButtonClick = dbgrChartEditButtonClick
    OnKeyPress = dbgrChartKeyPress
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'SUB_CHART'
        PickList.Strings = (
          'Test'
          'Test I'
          'Test II'
          'Test III')
        Title.Caption = 'SUB CHART'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_ROUNDING'
        PickList.Strings = (
          'Y'
          'N')
        Title.Caption = 'ROUNDING ERROR'
        Visible = True
      end>
  end
  object dsChartBreakDown: TUniDataSource
    DataSet = qryChartBreakDown
    Left = 240
    Top = 152
  end
  object qryChartBreakDown: TUniQuery
    DataTypeMap = <>
    SQL.Strings = (
      
        'select chart, sub_chart, percent, entity, is_rounding, rowid fro' +
        'm chartbreakdown'
      'where chart = :chart and entity = :entity')
    CachedUpdates = True
    Left = 232
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chart'
      end
      item
        DataType = ftUnknown
        Name = 'entity'
      end>
    object qryChartBreakDownSUB_CHART: TStringField
      FieldName = 'SUB_CHART'
    end
    object qryChartBreakDownPERCENT: TFloatField
      FieldName = 'PERCENT'
    end
    object qryChartBreakDownENTITY: TStringField
      FieldName = 'ENTITY'
    end
    object qryChartBreakDownCHART: TStringField
      FieldName = 'CHART'
    end
    object qryChartBreakDownIS_ROUNDING: TStringField
      DefaultExpression = 'N'
      FieldName = 'IS_ROUNDING'
      Size = 1
    end
  end
  object mnuOptions: TPopupMenu
    Left = 208
    Top = 16
    object mnuDeleteRecord: TMenuItem
      Caption = 'Delete Record'
      OnClick = mnuDeleteRecordClick
    end
    object mnuDeleteAll: TMenuItem
      Caption = 'Delete All'
      OnClick = mnuDeleteAllClick
    end
    object mnuSep: TMenuItem
      Caption = '-'
    end
    object mnuRebuild: TMenuItem
      Caption = 'Rebuild'
      OnClick = mnuRebuildClick
    end
  end
end
