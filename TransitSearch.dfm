object frmTransitSearch: TfrmTransitSearch
  Left = 373
  Top = 182
  Caption = 'Transit Selection'
  ClientHeight = 371
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    463
    371)
  PixelsPerInch = 96
  TextHeight = 14
  object pageSearch: TPageControl
    Left = 2
    Top = 8
    Width = 455
    Height = 355
    ActivePage = tabGrid
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = pageSearchChange
    object tabGrid: TTabSheet
      Caption = 'Tasks'
      object Label8: TLabel
        Left = 0
        Top = 304
        Width = 88
        Height = 14
        Caption = '&Search for Transit'
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
          end>
      end
      object btnCancel: TBitBtn
        Left = 372
        Top = 300
        Width = 73
        Height = 25
        Caption = '&Cancel'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
      end
      object btnOK: TBitBtn
        Left = 292
        Top = 300
        Width = 73
        Height = 25
        Caption = '&OK'
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 2
      end
      object tbTaskSearch: TEdit
        Left = 96
        Top = 302
        Width = 121
        Height = 22
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
      DesignSize = (
        447
        326)
      object fraIncludes: TGroupBox
        Left = 8
        Top = 96
        Width = 305
        Height = 65
        Caption = 'Select Containing'
        TabOrder = 0
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
        Top = 295
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Clear &All'
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
        TabOrder = 1
        OnClick = btnClearAllClick
      end
    end
  end
  object qryTransit: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, SUBSTR(DESCR, 1, 200) AS DESCR, WORKFLOWTYPE'
      'FROM TASKTEMP '
      'WHERE MASTER = '#39'Y'#39)
    Left = 392
  end
  object dsTasks: TUniDataSource
    AutoEdit = False
    DataSet = qryTransit
    Left = 424
  end
end
