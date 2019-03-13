object frmTaskSearch: TfrmTaskSearch
  Left = 311
  Top = 229
  Width = 468
  Height = 394
  Caption = 'Task Selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pageSearch: TPageControl
    Left = 2
    Top = 8
    Width = 455
    Height = 355
    ActivePage = tabGrid
    TabOrder = 0
    OnChange = pageSearchChange
    object tabGrid: TTabSheet
      Caption = 'Tasks'
      object Label8: TLabel
        Left = 0
        Top = 302
        Width = 76
        Height = 13
        Caption = '&Search for Task'
        FocusControl = tbTaskSearch
      end
      object dbgrTasks: TDBGrid
        Left = 0
        Top = 0
        Width = 445
        Height = 293
        DataSource = dsTasks
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnColumnMoved = dbgrTasksColumnMoved
        OnDblClick = dbgrTasksDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCR'
            Title.Caption = 'Description'
            Title.Color = clInfoBk
            Width = 283
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODE'
            Title.Caption = 'Code'
            Title.Color = clInfoBk
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WORKFLOWTYPE'
            Title.Caption = 'Workflow Type'
            Title.Color = clInfoBk
            Width = 64
            Visible = True
          end>
      end
      object btnCancel: TBitBtn
        Left = 372
        Top = 300
        Width = 73
        Height = 25
        Caption = '&Cancel'
        TabOrder = 1
        Kind = bkCancel
      end
      object btnOK: TBitBtn
        Left = 292
        Top = 300
        Width = 73
        Height = 25
        Caption = '&OK'
        TabOrder = 2
        Kind = bkOK
      end
      object tbTaskSearch: TEdit
        Left = 88
        Top = 302
        Width = 121
        Height = 21
        TabOrder = 3
        OnChange = tbTaskSearchChange
        OnKeyDown = tbTaskSearchKeyDown
      end
    end
    object tabFilters: TTabSheet
      Caption = 'Filter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      object fraEqual: TGroupBox
        Left = 8
        Top = 8
        Width = 305
        Height = 81
        Caption = 'Select Equal to'
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 72
          Height = 13
          Caption = 'Workflow Type'
        end
        object chkGeneral: TCheckBox
          Left = 8
          Top = 48
          Width = 153
          Height = 17
          Caption = 'Include General Tasks?'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object tbWorkflowType: TEdit
          Left = 88
          Top = 24
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object btnWorkflowType: TBitBtn
          Left = 194
          Top = 24
          Width = 24
          Height = 21
          TabOrder = 2
          OnClick = btnWorkflowTypeClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
        end
      end
      object fraIncludes: TGroupBox
        Left = 8
        Top = 96
        Width = 305
        Height = 65
        Caption = 'Select Containing'
        TabOrder = 1
        object Label5: TLabel
          Left = 15
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Description'
        end
        object tbDesc: TEdit
          Left = 80
          Top = 24
          Width = 209
          Height = 21
          TabOrder = 0
        end
      end
      object btnClearAll: TBitBtn
        Left = 368
        Top = 296
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Clear &All'
        TabOrder = 2
        OnClick = btnClearAllClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
    end
  end
    object qryTasks: TUniQuery
    SQL.Strings = (
            'SELECT CODE, SUBSTR(DESCR, 1, 200) AS DESCR, WORKFLOWTYPE'
            'FROM TASKTEMP '
            'WHERE MASTER = '#39'Y'#39)
    Left = 392
    object qryTasksCODE: TStringField
      FieldName = 'CODE'
    end
    object qryTasksDESCR: TStringField
      FieldName = 'DESCR'
      Size = 200
    end
    object qryTasksWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      Size = 11
    end
  end
  object dsTasks: TUniDataSource
    AutoEdit = False
    DataSet = qryTasks
    Left = 424
  end
end
