object frmWIPBreakdown: TfrmWIPBreakdown
  Left = 274
  Top = 115
  Caption = 'WIP'
  ClientHeight = 599
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 15
  object grdWIP: TcxGrid
    Left = 0
    Top = 0
    Width = 992
    Height = 566
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    ExplicitHeight = 569
    object tvWIP: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsWIP
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvWIPAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'FILEID'
          Column = tvWIPFILEID
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;-$,0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = tvWIPAMOUNT
        end
        item
          Kind = skCount
          FieldName = 'FILEID'
          Column = tvWIPFILEID
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 7
      FixedDataRows.SeparatorWidth = 7
      NewItemRow.SeparatorWidth = 7
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NavigatorOffset = 58
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      OptionsView.IndicatorWidth = 14
      Preview.LeftIndent = 23
      Preview.RightIndent = 6
      object tvWIPNFEE: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        MinWidth = 23
      end
      object tvWIPCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        MinWidth = 23
        Width = 113
      end
      object tvWIPAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        MinWidth = 23
        Width = 46
      end
      object tvWIPPARTNERNAME: TcxGridDBColumn
        Caption = 'Partner'
        DataBinding.FieldName = 'PARTNERNAME'
        MinWidth = 23
        Width = 173
      end
      object tvWIPFILEID: TcxGridDBColumn
        Caption = 'Matter'
        DataBinding.FieldName = 'FILEID'
        MinWidth = 23
        Width = 97
      end
      object tvWIPDESCR: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCR'
        MinWidth = 23
        Width = 231
      end
      object tvWIPAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        MinWidth = 23
      end
      object tvWIPUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        MinWidth = 23
      end
      object tvWIPMINS: TcxGridDBColumn
        Caption = 'Minutes'
        DataBinding.FieldName = 'MINS'
        MinWidth = 23
      end
      object tvWIPRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        MinWidth = 23
      end
      object tvWIPINVOICEDATE: TcxGridDBColumn
        Caption = 'Invoice Date'
        DataBinding.FieldName = 'INVOICEDATE'
        MinWidth = 23
      end
      object tvWIPBILLED: TcxGridDBColumn
        Caption = 'Billed'
        DataBinding.FieldName = 'BILLED'
        MinWidth = 23
      end
      object tvWIPTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        MinWidth = 23
      end
      object tvWIPTASK: TcxGridDBColumn
        Caption = 'Task'
        DataBinding.FieldName = 'TASK'
        MinWidth = 23
      end
      object tvWIPBILLNO: TcxGridDBColumn
        Caption = 'Bill No'
        DataBinding.FieldName = 'BILLNO'
        MinWidth = 23
        Width = 88
      end
      object tvWIPTITLE: TcxGridDBColumn
        DataBinding.FieldName = 'TITLE'
        MinWidth = 23
        Width = 185
      end
      object tvWIPBRANCH: TcxGridDBColumn
        DataBinding.FieldName = 'BRANCH'
        MinWidth = 23
        Width = 198
      end
      object tvWIPDEPT: TcxGridDBColumn
        DataBinding.FieldName = 'DEPT'
        MinWidth = 23
        Width = 153
      end
      object tvWIPPARTDEPT: TcxGridDBColumn
        DataBinding.FieldName = 'PARTDEPT'
        MinWidth = 23
        Width = 149
      end
      object tvWIPBILLTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'BILLTYPE'
        MinWidth = 23
        Width = 104
      end
      object tvWIPTIME_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TIME_TYPE'
        MinWidth = 23
        Width = 81
      end
    end
    object grdWIPLevel1: TcxGridLevel
      GridView = tvWIP
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 566
    Width = 992
    Height = 33
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 148
    ExplicitTop = 499
    ExplicitWidth = 185
    DesignSize = (
      992
      33)
    object BitBtn1: TBitBtn
      Left = 900
      Top = 1
      Width = 87
      Height = 28
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E6E6E619B2B2B24D9292926D8D8D8D729B9B
        9B64C7C7C738F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FCFCFC0391919F6E2B2B6BD4050563FA000065FF000060FF0000
        4FFF16163DE96262629DD4D4D42BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F4F4F40B6060909F000084FF00008EFF00008EFF00008FFF00008CFF0000
        88FF000081FF010154FF34343CCBC2C2C23DFFFFFF00FFFFFF00FFFFFF00FDFD
        FD025A5A9AA5000096FF000097FF00009BFF00009FFF0000A0FF00009DFF0000
        97FF00008FFF000088FF000062FF36363EC9D6D6D629FFFFFF00FFFFFF008F8F
        B7700101A3FF08089EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848
        B8FFB7B7E3FF2727A5FF00008CFF010152FF7171718EFFFFFF00DDDDEF222828
        ABD90000ABFF2828A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7
        ECFFFFFFF7FF5E5EB7FF00009AFF020287FF2E2E45D1FFFFFF009797E5690606
        B0FD0303B9FF0000C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFF
        F1FF7575B9FF0606B1FF0101ABFF0202A0FF12135DEDFFFFFF005859D0AB0808
        BBFF0707C8FF0505D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575
        C9FF0000BEFF0101C3FF0303B8FF0303ACFF0F0F6EF2FFFFFF004B4BD2BC0C0C
        C9FF0D0DD8FF0B0BDCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858
        DBFF0000CAFF0303CBFF0606C5FF0606B8FF111178F1FFFFFF007272E6931414
        D8FF1717EAFF0B0BF1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFE
        FFFF6363E5FF0303D7FF0A0ACFFF0A0AC3FF21217FE2FFFFFF00BBBBF7452525
        E5F22222FBFF3F3FE9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3
        D6FFFFFFFEFF6161E5FF0808DBFF0F0FCAFF4F4F85B2FFFFFF00F3F3FD0C5E5E
        F1AF3232FFFF5252EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252
        B4FFADADB0FF4D4DE1FF1818EDFF1818B1F5B6B6B949FFFFFF00FFFFFF00D6D6
        FC293E3EFBE75353FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838
        FCFF4242EBFF3232FFFF1F1FE9FF7E7EA784FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00C2C2FC404848FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767
        FFFF5151FFFF3030FBFD7C7CB488FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00DCDCFE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353
        FFFF5151F2D2A6A6CD5CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAA
        FD5DE1E1F81EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object dsWIP: TUniDataSource
    DataSet = qryWIP
    Left = 658
    Top = 117
  end
  object qryWIP: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      
        '/*+ ORDERED */FEE.NFEE,/*+ ORDERED */trunc(FEE.CREATED) "CREATED' +
        '", FEE.AUTHOR, FEE.FILEID, FEE.NMATTER'
      ', FEE.DESCR, FEE.AMOUNT, FEE.UNITS, FEE.MINS'
      ', FEE.RATE, FEE.INVOICEDATE, FEE.BILLED, FEE.TYPE, FEE.TASK'
      
        ', FEE.TASK_AMOUNT, NMEMO.REFNO AS BILLNO, PHONEBOOK.SEARCH AS TI' +
        'TLE'
      
        ', MATTER.SHORTDESCR, BR.DESCR "BRANCH",FEETYPE.DESCR AS FEETYPE,' +
        'PART.NAME AS PARTNERNAME, AUTH.NAME AS AUTHORNAME'
      
        ', DPT.DESCR AS DEPT, PARTDPT.DESCR AS PARTDEPT, BILLTYPE, TIME_T' +
        'YPE, FEE.ROWID'
      
        'FROM FEE, MATTER, NMEMO, PHONEBOOK, FEETYPE, EMPLOYEE PART, EMPL' +
        'OYEE AUTH, BRANCH BR, EMPDEPT DPT, EMPDEPT PARTDPT'
      
        'WHERE FEE.NMATTER = MATTER.NMATTER AND FEE.NMEMO = NMEMO.NMEMO(+' +
        ')'
      'AND FEE.TYPE = FEETYPE.CODE AND FEE.PARTNER = PART.CODE'
      'AND FEE.AUTHOR = AUTH.NAME'
      'and FEE.AUTHOR = '#39'CMC'#39
      'AND MATTER.BRANCH = BR.CODE'
      'AND FEE.DEPT = DPT.CODE'
      'AND PART.DEPT = PARTDPT.CODE'
      'AND MATTER.NCLIENT = PHONEBOOK.NCLIENT')
    Left = 653
    Top = 66
  end
  object PopupMenu1: TPopupMenu
    Left = 198
    Top = 166
    object Print1: TMenuItem
      Caption = 'Print Grid'
      OnClick = Print1Click
    end
    object ExporttoExcel1: TMenuItem
      Caption = 'Export to Excel'
      OnClick = ExporttoExcel1Click
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 370
    Top = 119
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 67
    Top = 109
    PixelsPerInch = 106
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdWIP
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 106
      BuiltInReportLink = True
    end
  end
end
