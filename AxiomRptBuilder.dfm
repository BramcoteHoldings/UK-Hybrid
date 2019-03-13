object frmAxiomRptCreation: TfrmAxiomRptCreation
  Left = 400
  Top = 248
  Width = 479
  Height = 261
  Caption = 'Axiom Report Creation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Reports: TcxButton
    Left = 34
    Top = 20
    Width = 130
    Height = 25
    Caption = 'Create Reports ...'
    TabOrder = 0
    OnClick = ReportsClick
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
      000000000000000000FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFEC
      ECECECECECECFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFF00
      1500FFFFFFFFFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFFD
      FDFDFDFDFDFDFFFF00FFFFEC7AFFFFFDFDFDFDFDFDFDFFFF00FFFFEC37FFFFFF
      FFFFFFFFFFFFFFFF00FFFFEC7AFFFF00150015FFFFFFFFFF00FFFFEC37FFFFFF
      FFFFFFFFFFFFFFFF00FFFFEC7AFFECECECECECECECECECFF00FFFFEC37FFFFFF
      FFFFFFFFFFFFFFFF00FFFFEC7A377A377A377A377A377A3700FFFFECD3D3D3D3
      D3D3D3D3D3D3D3D300FFFFEC04040404040404040404040400FF}
    LookAndFeel.NativeStyle = True
  end
  object pnlStatusBar: TdxStatusBar
    Left = 0
    Top = 214
    Width = 471
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.EllipsisType = dxetSmartPath
        Fixed = False
      end>
    LookAndFeel.NativeStyle = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ShowHint = True
    ParentShowHint = False
  end
  object cxButton1: TcxButton
    Left = 187
    Top = 19
    Width = 130
    Height = 25
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 2
    OnClick = cxButton1Click
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
    LookAndFeel.NativeStyle = True
  end
    object tbTable: TUniTable
    TableName = 'RB_TABLE'
    Connection = dmAxiom.uniInsight
    Left = 34
    Top = 59
  end
  object dsTable: TUniDataSource
    DataSet = tbTable
    Left = 68
    Top = 61
  end
  object tbFields: TUniTable
    TableName = 'RB_FIELD'
    Connection = dmAxiom.uniInsight
    Left = 37
    Top = 107
  end
  object dsFields: TUniDataSource
    DataSet = tbFields
    Left = 70
    Top = 108
  end
  object tbJoins: TUniTable
    TableName = 'RB_JOIN'
    Connection = dmAxiom.uniInsight
    Left = 39
    Top = 147
  end
  object dsJoins: TUniDataSource
    DataSet = tbJoins
    Left = 72
    Top = 147
  end
  object tbFolder: TUniTable
    TableName = 'AXIOM.RB_FOLDER'
    Connection = dmAxiom.uniInsight
    Left = 225
    Top = 7
  end
  object tbItem: TUniTable
    TableName = 'AXIOM.RB_ITEM'
    Connection = dmAxiom.uniInsight
    Left = 228
    Top = 40
  end
  object dsFolder: TUniDataSource
    DataSet = tbFolder
    Left = 257
    Top = 6
  end
  object dsItem: TUniDataSource
    DataSet = tbItem
    Left = 262
    Top = 38
  end
object plTables: TppDBPipeline
    DataSource = dsTable
    UserName = 'plTable'
    Left = 103
    Top = 63
  end
  object plFields: TppDBPipeline
    DataSource = dsFields
    UserName = 'plFields'
    Left = 106
    Top = 105
  end
  object plJoins: TppDBPipeline
    DataSource = dsJoins
    UserName = 'plJoins'
    Left = 113
    Top = 151
  end
  object AxiomDictionary: TppDataDictionary
    AutoJoin = True
    BuilderSettings.DatabaseName = 'uniInsight'
    BuilderSettings.SessionType = 'ODACSession'
    FieldFieldNames.AutoSearch = 'AutoSearch'
    FieldFieldNames.DataType = 'DATATYPE'
    FieldFieldNames.FieldName = 'FIELD_NAME'
    FieldFieldNames.FieldAlias = 'FIELD_ALIAS'
    FieldFieldNames.Mandatory = 'Mandatory'
    FieldFieldNames.Searchable = 'Searchable'
    FieldFieldNames.Selectable = 'Selectable'
    FieldFieldNames.Sortable = 'Sortable'
    FieldFieldNames.TableName = 'TABLE_NAME'
    FieldPipeline = plFields
    JoinFieldNames.TableName1 = 'TABLE_NAME1'
    JoinFieldNames.TableName2 = 'TABLE_NAME2'
    JoinFieldNames.JoinType = 'JOIN_TYPE'
    JoinFieldNames.FieldNames1 = 'FIELD_NAMES1'
    JoinFieldNames.FieldNames2 = 'FIELD_NAMES2'
    JoinFieldNames.Operators = 'Operators'
    JoinPipeline = plJoins
    TableFieldNames.TableName = 'TABLE_NAME'
    TableFieldNames.TableAlias = 'TABLE_ALIAS'
    TablePipeline = plTables
    UserName = 'AxiomDictionary'
    Left = 170
    Top = 105
  end
  object ppDesigner: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Axiom Report Builder'
    DataSettings.DatabaseName = 'uniInsight'
    DataSettings.SessionType = 'ODACSession'
    DataSettings.AllowEditSQL = True
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtOracle
    DataSettings.DataDictionary = AxiomDictionary
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL1
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = ppReport
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 220
    Top = 106
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = daODACQueryDataView1.Cheque
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 222
    Top = 139
    Version = '6.03'
    mmColumnWidth = 0
    DataPipelineName = 'Cheque'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'APPROVAL'
        DataPipeline = daODACQueryDataView1.Cheque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Cheque'
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 5821
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
      object daODACQueryDataView1: TdaODACQueryDataView
        Report = ppReport
        UserName = 'Query_Cheque'
        Height = 0
        Left = 0
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 0
        TypeColumnWidth = 52
        Width = 0
        AutoSearchTabOrder = 0
        object Cheque: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'Cheque'
          object ppField1: TppField
            FieldAlias = 'Printer'
            FieldName = 'PRINTER'
            FieldLength = 10
            DisplayWidth = 10
            Position = 0
            TableName = 'CHEQUE'
          end
          object ppField2: TppField
            FieldAlias = 'Ncheque'
            FieldName = 'NCHEQUE'
            FieldLength = 10
            DataType = dtDouble
            DisplayWidth = 10
            Position = 1
            TableName = 'CHEQUE'
          end
          object ppField3: TppField
            FieldAlias = 'Created'
            FieldName = 'CREATED'
            FieldLength = 10
            DataType = dtDateTime
            DisplayWidth = 10
            Position = 2
            TableName = 'CHEQUE'
          end
          object ppField4: TppField
            FieldAlias = 'Acct'
            FieldName = 'ACCT'
            FieldLength = 10
            DisplayWidth = 10
            Position = 3
            TableName = 'CHEQUE'
          end
          object ppField5: TppField
            FieldAlias = 'Type'
            FieldName = 'TYPE'
            FieldLength = 10
            DisplayWidth = 10
            Position = 4
            TableName = 'CHEQUE'
          end
          object ppField6: TppField
            FieldAlias = 'Payee'
            FieldName = 'PAYEE'
            FieldLength = 10
            DisplayWidth = 10
            Position = 5
            TableName = 'CHEQUE'
          end
          object ppField7: TppField
            FieldAlias = 'Chqno'
            FieldName = 'CHQNO'
            FieldLength = 10
            DisplayWidth = 10
            Position = 6
            TableName = 'CHEQUE'
          end
          object ppField8: TppField
            FieldAlias = 'Approval'
            FieldName = 'APPROVAL'
            FieldLength = 10
            DisplayWidth = 10
            Position = 7
            TableName = 'CHEQUE'
          end
          object ppField9: TppField
            FieldAlias = 'Reqby'
            FieldName = 'REQBY'
            FieldLength = 10
            DisplayWidth = 10
            Position = 8
            TableName = 'CHEQUE'
          end
          object ppField10: TppField
            FieldAlias = 'Rvby'
            FieldName = 'RVBY'
            FieldLength = 10
            DisplayWidth = 10
            Position = 9
            TableName = 'CHEQUE'
          end
          object ppField11: TppField
            FieldAlias = 'Reversed'
            FieldName = 'REVERSED'
            FieldLength = 10
            DisplayWidth = 10
            Position = 10
            TableName = 'CHEQUE'
          end
          object ppField12: TppField
            FieldAlias = 'Ntrans'
            FieldName = 'NTRANS'
            FieldLength = 10
            DataType = dtDouble
            DisplayWidth = 10
            Position = 11
            TableName = 'CHEQUE'
          end
          object ppField13: TppField
            FieldAlias = 'Banked'
            FieldName = 'BANKED'
            FieldLength = 10
            DisplayWidth = 10
            Position = 12
            TableName = 'CHEQUE'
          end
          object ppField14: TppField
            FieldAlias = 'Trust'
            FieldName = 'TRUST'
            FieldLength = 10
            DisplayWidth = 10
            Position = 13
            TableName = 'CHEQUE'
          end
          object ppField15: TppField
            FieldAlias = 'Sufchq'
            FieldName = 'SUFCHQ'
            FieldLength = 10
            DataType = dtInteger
            DisplayWidth = 10
            Position = 14
            TableName = 'CHEQUE'
          end
          object ppField16: TppField
            FieldAlias = 'Presented'
            FieldName = 'PRESENTED'
            FieldLength = 10
            DataType = dtDateTime
            DisplayWidth = 10
            Position = 15
            TableName = 'CHEQUE'
          end
          object ppField17: TppField
            FieldAlias = 'Descr'
            FieldName = 'DESCR'
            FieldLength = 10
            DisplayWidth = 10
            Position = 16
            TableName = 'CHEQUE'
          end
          object ppField18: TppField
            FieldAlias = 'System Date'
            FieldName = 'SYSTEM_DATE'
            FieldLength = 10
            DataType = dtDateTime
            DisplayWidth = 10
            Position = 17
            TableName = 'CHEQUE'
          end
          object ppField19: TppField
            FieldAlias = 'Printed'
            FieldName = 'PRINTED'
            FieldLength = 10
            DisplayWidth = 10
            Position = 18
            TableName = 'CHEQUE'
          end
          object ppField20: TppField
            FieldAlias = 'Recondate'
            FieldName = 'RECONDATE'
            FieldLength = 10
            DataType = dtDateTime
            DisplayWidth = 10
            Position = 19
            TableName = 'CHEQUE'
          end
          object ppField21: TppField
            FieldAlias = 'Nname'
            FieldName = 'NNAME'
            FieldLength = 10
            DataType = dtDouble
            DisplayWidth = 10
            Position = 20
            TableName = 'CHEQUE'
          end
          object ppField22: TppField
            FieldAlias = 'Amount'
            FieldName = 'AMOUNT'
            FieldLength = 10
            DataType = dtDouble
            DisplayWidth = 10
            Position = 21
            TableName = 'CHEQUE'
          end
        end
        object daSQL1: TdaSQL
          CollationType = ctASCII
          DatabaseName = 'seDatabase'
          DatabaseType = dtOracle
          DataPipelineName = 'Cheque'
          IsCaseSensitive = True
          LinkColor = clMaroon
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT CHEQUE.PRINTER, CHEQUE.NCHEQUE, '
            '       CHEQUE.CREATED, CHEQUE.ACCT, CHEQUE.TYPE, '
            '       CHEQUE.PAYEE, CHEQUE.CHQNO, '
            '       CHEQUE.APPROVAL, CHEQUE.REQBY, '
            '       CHEQUE.RVBY, CHEQUE.REVERSED, '
            '       CHEQUE.NTRANS, CHEQUE.BANKED, '
            '       CHEQUE.TRUST, CHEQUE.SUFCHQ, '
            '       CHEQUE.PRESENTED, CHEQUE.DESCR, '
            '       CHEQUE.SYSTEM_DATE, CHEQUE.PRINTED, '
            '       CHEQUE.RECONDATE, CHEQUE.NNAME, '
            '       CHEQUE.AMOUNT'
            'FROM AXIOM.CHEQUE CHEQUE')
          SQLType = sqSQL1
          object daField1: TdaField
            Alias = 'Printer'
            DisplayWidth = 10
            FieldAlias = 'Printer'
            FieldLength = 10
            FieldName = 'PRINTER'
            SQLFieldName = 'PRINTER'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField2: TdaField
            Alias = 'Ncheque'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'Ncheque'
            FieldLength = 10
            FieldName = 'NCHEQUE'
            SQLFieldName = 'NCHEQUE'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField3: TdaField
            Alias = 'Created'
            DataType = dtDateTime
            DisplayWidth = 10
            FieldAlias = 'Created'
            FieldLength = 10
            FieldName = 'CREATED'
            SQLFieldName = 'CREATED'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField4: TdaField
            Alias = 'Acct'
            DisplayWidth = 10
            FieldAlias = 'Acct'
            FieldLength = 10
            FieldName = 'ACCT'
            SQLFieldName = 'ACCT'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField5: TdaField
            Alias = 'Type'
            DisplayWidth = 10
            FieldAlias = 'Type'
            FieldLength = 10
            FieldName = 'TYPE'
            SQLFieldName = 'TYPE'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField6: TdaField
            Alias = 'Payee'
            DisplayWidth = 10
            FieldAlias = 'Payee'
            FieldLength = 10
            FieldName = 'PAYEE'
            SQLFieldName = 'PAYEE'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField7: TdaField
            Alias = 'Chqno'
            DisplayWidth = 10
            FieldAlias = 'Chqno'
            FieldLength = 10
            FieldName = 'CHQNO'
            SQLFieldName = 'CHQNO'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField8: TdaField
            Alias = 'Approval'
            DisplayWidth = 10
            FieldAlias = 'Approval'
            FieldLength = 10
            FieldName = 'APPROVAL'
            SQLFieldName = 'APPROVAL'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField9: TdaField
            Alias = 'Reqby'
            DisplayWidth = 10
            FieldAlias = 'Reqby'
            FieldLength = 10
            FieldName = 'REQBY'
            SQLFieldName = 'REQBY'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField10: TdaField
            Alias = 'Rvby'
            DisplayWidth = 10
            FieldAlias = 'Rvby'
            FieldLength = 10
            FieldName = 'RVBY'
            SQLFieldName = 'RVBY'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField11: TdaField
            Alias = 'Reversed'
            DisplayWidth = 10
            FieldAlias = 'Reversed'
            FieldLength = 10
            FieldName = 'REVERSED'
            SQLFieldName = 'REVERSED'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField12: TdaField
            Alias = 'Ntrans'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'Ntrans'
            FieldLength = 10
            FieldName = 'NTRANS'
            SQLFieldName = 'NTRANS'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField13: TdaField
            Alias = 'Banked'
            DisplayWidth = 10
            FieldAlias = 'Banked'
            FieldLength = 10
            FieldName = 'BANKED'
            SQLFieldName = 'BANKED'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField14: TdaField
            Alias = 'Trust'
            DisplayWidth = 10
            FieldAlias = 'Trust'
            FieldLength = 10
            FieldName = 'TRUST'
            SQLFieldName = 'TRUST'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField15: TdaField
            Alias = 'Sufchq'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'Sufchq'
            FieldLength = 10
            FieldName = 'SUFCHQ'
            SQLFieldName = 'SUFCHQ'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField16: TdaField
            Alias = 'Presented'
            DataType = dtDateTime
            DisplayWidth = 10
            FieldAlias = 'Presented'
            FieldLength = 10
            FieldName = 'PRESENTED'
            SQLFieldName = 'PRESENTED'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField17: TdaField
            Alias = 'Descr'
            DisplayWidth = 10
            FieldAlias = 'Descr'
            FieldLength = 10
            FieldName = 'DESCR'
            SQLFieldName = 'DESCR'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField18: TdaField
            Alias = 'System Date'
            DataType = dtDateTime
            DisplayWidth = 10
            FieldAlias = 'System Date'
            FieldLength = 10
            FieldName = 'SYSTEM_DATE'
            SQLFieldName = 'SYSTEM_DATE'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField19: TdaField
            Alias = 'Printed'
            DisplayWidth = 10
            FieldAlias = 'Printed'
            FieldLength = 10
            FieldName = 'PRINTED'
            SQLFieldName = 'PRINTED'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField20: TdaField
            Alias = 'Recondate'
            DataType = dtDateTime
            DisplayWidth = 10
            FieldAlias = 'Recondate'
            FieldLength = 10
            FieldName = 'RECONDATE'
            SQLFieldName = 'RECONDATE'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField21: TdaField
            Alias = 'Nname'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'Nname'
            FieldLength = 10
            FieldName = 'NNAME'
            SQLFieldName = 'NNAME'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daField22: TdaField
            Alias = 'Amount'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'Amount'
            FieldLength = 10
            FieldName = 'AMOUNT'
            SQLFieldName = 'AMOUNT'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
            TableSQLAlias = 'CHEQUE'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'Cheque'
            JoinType = dajtNone
            OwnerName = 'AXIOM'
            SQLAlias = 'CHEQUE'
            TableAlias = 'Cheque'
            TableName = 'CHEQUE'
          end
        end
      end
    end
  end
  object ppReportExplorer: TppReportExplorer
    Designer = ppDesigner
    FolderFieldNames.FolderId = 'FOLDER_ID'
    FolderFieldNames.Name = 'FOLDER_NAME'
    FolderFieldNames.ParentId = 'PARENT_ID'
    FolderPipeline = plFolder
    ItemFieldNames.Deleted = 'DELETED'
    ItemFieldNames.FolderId = 'FOLDER_ID'
    ItemFieldNames.ItemId = 'ITEM_ID'
    ItemFieldNames.Modified = 'MODIFIED'
    ItemFieldNames.Name = 'ITEM_NAME'
    ItemFieldNames.Size = 'ITEM_SIZE'
    ItemFieldNames.Template = 'TEMPLATE'
    ItemFieldNames.ItemType = 'ITEM_TYPE'
    ItemPipeline = plItem
    FormCaption = 'Axiom Report Explorer'
    FormIcon.Data = {
      0000010002002020100000000000E80200002600000010101000000000002801
      00000E0300002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000800000800000008080008000
      0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000888888880000000000
      088888888888888888888880000088888888888888888888887CC88000008888
      88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
      CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
      F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
      000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
      000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
      000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
      001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
      003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
      0000C00000000000000000000000000000000000000000000000000080000080
      00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
      888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
      8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
      7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
      CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
      0000000F00000007000000030000000100000000000000000000000000000003
      0000001F0000001F0000007F0000007F0000FFFF0000}
    FormPosition = poScreenCenter
    FormHeight = 400
    FormLeft = 100
    FormTop = 50
    FormWidth = 600
    Left = 265
    Top = 104
  end
  object plFolder: TppDBPipeline
    DataSource = dsFolder
    UserName = 'plFolder'
    Left = 288
    Top = 8
  end
  object plItem: TppDBPipeline
    DataSource = dsItem
    UserName = 'plItem'
    Left = 293
    Top = 40
  end
end
