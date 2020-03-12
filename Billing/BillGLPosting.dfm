object frmBillGLPostings: TfrmBillGLPostings
  Left = 409
  Top = 215
  Caption = 'Bill GL Postings'
  ClientHeight = 309
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 278
    Width = 718
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      718
      31)
    object Label1: TLabel
      Left = 9
      Top = 10
      Width = 47
      Height = 15
      Caption = 'Bill Total:'
    end
    object DBText1: TDBText
      Left = 62
      Top = 10
      Width = 65
      Height = 16
      DataField = 'TOTAL'
      DataSource = dsBillTotal
    end
    object BitBtn1: TBitBtn
      Left = 637
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object btnExportToExcel: TBitBtn
      Left = 512
      Top = 3
      Width = 114
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Export to Excel'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00494949494949
        49494949494949494943497272727272727250505050504F4F434A72F4F4F3F3
        F3F2F2F2F2F2F1F14F434A73F4F4F4F3F3F3F2F2F2F2F2F150495073F4F4F4F4
        F4F3ED49494949F250495078F572494949494997504F49F250497298F5F47297
        724978504F49EDF25049721CF5F5F5724F98504F497272F250497298FFF5F54F
        9872724927F3F3F372497298FFFF4F9897724F724F27F3F372497298FF4F0897
        97507297724F27F372497398FF97727272F5F572727272F472497308FFFFFFFF
        FFFFF5F5F4F4F4F472497808FFFFFFFFFFFFFFF5F5F4F4F47249780808989898
        98981C987873737372499878737372727272725050504A4A4949}
      TabOrder = 1
      OnClick = btnExportToExcelClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 278
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object grdBillGLPostings: TcxGrid
      Left = 0
      Top = 0
      Width = 718
      Height = 278
      Align = alClient
      TabOrder = 0
      object tvBillGLPostings: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsBillGLPostings
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'AMOUNT'
            Column = tvBillGLPostingsAMOUNT
          end
          item
            Kind = skSum
            FieldName = 'TAX'
            Column = tvBillGLPostingsTAX
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvBillGLPostingsCOMPONENT_CODE_DISPLAY: TcxGridDBColumn
          Caption = 'GL Code'
          DataBinding.FieldName = 'COMPONENT_CODE_DISPLAY'
          Width = 80
        end
        object tvBillGLPostingsDESCR: TcxGridDBColumn
          Caption = 'GL Description'
          DataBinding.FieldName = 'DESCR'
          Width = 163
        end
        object tvBillGLPostingsCREATED_1: TcxGridDBColumn
          Caption = 'Trans Date'
          DataBinding.FieldName = 'CREATED'
          Width = 101
        end
        object tvBillGLPostingsDESCR_1: TcxGridDBColumn
          Caption = 'Trans Description'
          DataBinding.FieldName = 'DESCR_1'
          Width = 160
        end
        object tvBillGLPostingsAMOUNT: TcxGridDBColumn
          Caption = 'Trans Amount'
          DataBinding.FieldName = 'AMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;-$,0.00'
          Width = 109
        end
        object tvBillGLPostingsTAX: TcxGridDBColumn
          Caption = 'Trans Tax'
          DataBinding.FieldName = 'TAX'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 103
        end
      end
      object lvBillGLPostings: TcxGridLevel
        GridView = tvBillGLPostings
      end
    end
  end
  object qryBillGLPostings: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   component_code_display, chart.descr, transitem.created,'
      '         transitem.descr, transitem.amount * -1 AS amount,'
      '         transitem.tax * -1 AS tax'
      '    FROM chart, transitem'
      '   WHERE transitem.chart = chart.code'
      '     AND owner_code = '#39'NMEMO'#39
      '     AND nowner = :nmemo'
      '     AND bank = :entity'
      'ORDER BY naccount')
    Left = 107
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsBillGLPostings: TUniDataSource
    DataSet = qryBillGLPostings
    Left = 185
    Top = 84
  end
  object qryBillTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT total'
      '  FROM nmemo'
      ' WHERE nmemo = :nmemo')
    Left = 106
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
    object qryBillTotalTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
  end
  object dsBillTotal: TUniDataSource
    DataSet = qryBillTotal
    Left = 184
    Top = 138
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 578
    Top = 69
  end
end
