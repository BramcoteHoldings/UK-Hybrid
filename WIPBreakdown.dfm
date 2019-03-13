object frmWIPBreakdown: TfrmWIPBreakdown
  Left = 181
  Top = 256
  Caption = 'WIP'
  ClientHeight = 516
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 15
  object grdWIP: TcxGrid
    Left = 0
    Top = 0
    Width = 1006
    Height = 487
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    ExplicitWidth = 860
    ExplicitHeight = 486
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
        Caption = 'FileID'
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
    Top = 487
    Width = 1006
    Height = 29
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      1006
      29)
    object cxButton1: TcxButton
      Left = 911
      Top = -1
      Width = 86
      Height = 26
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000004D1000004D1000000000000000000000FFFFFF00FFFFFF00FFFF
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
      OptionsImage.Spacing = 5
      TabOrder = 0
      OnClick = cxButton1Click
      ExplicitTop = 5
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
    Active = True
    Left = 653
    Top = 66
  end
end
