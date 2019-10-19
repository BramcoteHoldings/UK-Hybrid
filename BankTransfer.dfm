object frmTransferMoney: TfrmTransferMoney
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Transfer Money'
  ClientHeight = 309
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 27
    Top = 18
    Width = 69
    Height = 15
    Caption = 'Transfer Date'
  end
  object Label4: TLabel
    Left = 27
    Top = 192
    Width = 44
    Height = 15
    Caption = 'Amount'
  end
  object Label5: TLabel
    Left = 29
    Top = 224
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object dtpDate: TDateTimePicker
    Left = 134
    Top = 15
    Width = 155
    Height = 22
    Date = 42064.579310601850000000
    Time = 42064.579310601850000000
    TabOrder = 0
  end
  object ceAmount: TcxCurrencyEdit
    Left = 99
    Top = 189
    TabOrder = 1
    Width = 155
  end
  object tbDesc: TcxTextEdit
    Left = 99
    Top = 221
    TabOrder = 2
    OnKeyPress = tbDescKeyPress
    Width = 326
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 50
    Width = 400
    Height = 63
    Caption = 'Transfer Money From'
    TabOrder = 3
    object Label1: TLabel
      Left = 17
      Top = 27
      Width = 26
      Height = 15
      Caption = 'Bank'
    end
    object lblGLFromDesc: TLabel
      Left = 227
      Top = 57
      Width = 3
      Height = 15
    end
    object cmbBankFrom: TcxLookupComboBox
      Left = 89
      Top = 24
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCT'
      Properties.ListColumns = <
        item
          FieldName = 'BANKNAME'
        end
        item
          FieldName = 'ACCT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsFromBank
      Properties.OnCloseUp = cmbBankFromPropertiesCloseUp
      TabOrder = 0
      Width = 300
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 119
    Width = 401
    Height = 61
    Caption = 'Transfer money To'
    TabOrder = 4
    object Label2: TLabel
      Left = 18
      Top = 26
      Width = 26
      Height = 15
      Caption = 'Bank'
    end
    object lblGLToDesc: TLabel
      Left = 227
      Top = 57
      Width = 3
      Height = 15
    end
    object cmbBankTo: TcxLookupComboBox
      Left = 90
      Top = 23
      Properties.KeyFieldNames = 'ACCT'
      Properties.ListColumns = <
        item
          FieldName = 'BANKNAME'
        end
        item
          FieldName = 'ACCT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dstoBank
      Properties.OnCloseUp = cmbBankToPropertiesCloseUp
      TabOrder = 0
      Width = 300
    end
  end
  object cxButton1: TcxButton
    Left = 323
    Top = 268
    Width = 80
    Height = 27
    Action = actTransfer
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000030049444154785E55526B489459187EBEDB54C3AE1516D365770D296A
      2A1A4346DBC96132DD3F6950B41B5A4D85B43F3656E9475112626AAB64FE8C22
      2828C8EDC2FE58A8B50BAC05D6D2F5D75A0B4594D364D7559B719C6FBEEF5C3A
      AF33823DF0F0C2FB3CE739EF793938FC47040A5AEBA548AFA2241EBA10E9A51E
      09AA87968B594F5377B861EFA9D23A40D776761561C7D195D005070152C8F2DD
      EBDA414CA4B5F289804F631A9AB7DCD6761F2B2B9BF1756197A9FB8EFF787069
      F1EF07FED55C4702CDE7D7904F6FEA8EC8E71FCEC87BCFF7C886931109C04016
      5AB42538B7F16CD59B67EFFE94FDB16E5977243450F9F3229FA1349DF1ACC955
      950B074C703057823063AA8592AA026B7ABEB77B7DE98639121F91E6FDD8B4B6
      E2BB3C9FF75C417096C7644C80209804131930C9C0583634E1703D50F96D6B38
      10299F3DD3C0C7D47F70581233F3BF4245B0B4D24EDD693627CC545D61C3E10E
      5C47009A062184168FA5F79F89FD856BF3BCD8BA7E3108A72FDDC5DBC1310053
      1A517F224C3DF3D76361F920D6267B1E4765B47DB504605130698AD3A21D65F2
      61ECB771BDA62544BA973C3A73733B6080CD537044068E23903B2C6BDB563300
      9CA672C418E97019E5836D3CB8CAD54F34F49994646704322C1BC018BD40B3A8
      7FBEE90E0581026C4601363893300C43A3659BD18E902B45CEC0D370145D57A0
      7A5FC928142E77DEF38076C4A5D2928A3668F19C734509FDE9934457E1373EEC
      DAFABD1247E10A073BA20BE05F381B2F9E8D74029086A183BB922E50CCD004A0
      50C104CCA7B762CDBAAE05CDBCE1886F3E8794C0A3C72F71FDC6A79B03FFC45B
      01BA4C982EA31D3870E99F6403C06882E15709FBFF5862FBDF5787DF8F260D0C
      0D09DCB8928C532FF92E95FEA1BE98DC342E6C4780095D313B01A30982DB968B
      07E7FA5F5B5E6B5BEF55B32795CA8891C1546DFCFEE01B00820E12C8EC72FAA5
      008D4E90548AB72C03A529582B362DD9B7A47AE12F93FE004275012A9EC04FFE
      BEA21ABF2CDAEC97CAD76719A627B0792926830E18396A980CD3D42944D19BA3
      07B45985CFB9FFA36D686F88080000000049454E44AE426082}
    TabOrder = 5
  end
  object cxButton2: TcxButton
    Left = 409
    Top = 268
    Width = 81
    Height = 27
    Caption = 'Cancel'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      6100000023744558745469746C650043616E63656C3B53746F703B457869743B
      426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
      18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
      3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
      8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
      E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
      A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
      673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
      5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
      D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
      3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
      D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
      2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
      CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
      CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
      2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
      2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
      B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
      82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
      17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
      F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
      33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
      097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
      646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
      266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
      2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
      72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
      2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
      CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
      1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
      01D589CC0000000049454E44AE426082}
    TabOrder = 6
    OnClick = cxButton2Click
  end
  object qryFromBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from '
      'bank '
      'where trust = '#39'G'#39
      'and entity = :entity')
    Left = 426
    Top = 71
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object qryToBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from '
      'bank '
      'where trust = '#39'G'#39
      'and entity = :entity')
    Left = 315
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsFromBank: TUniDataSource
    DataSet = qryFromBank
    Left = 367
    Top = 74
  end
  object dstoBank: TUniDataSource
    DataSet = qryToBank
    Left = 364
    Top = 175
  end
  object UniQuery3: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 37
    Top = 228
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID'
      'FROM '
      '  CHEQUE C'
      'WHERE '
      '  C.NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 296
    Top = 65535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' NAME, CASH_AT_BANK, LASTCHQ, CHEQUE, TRUST,'
      ' CL_BALANCE, BALANCE, ROWID'
      'FROM'
      ' BANK'
      'WHERE ACCT = :P_Code')
    Left = 379
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qryBankBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.*, B.ROWID FROM BANK B')
    Left = 406
    Top = 138
  end
  object qryReceipt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.*, R.ROWID '
      'FROM RECEIPT R '
      'WHERE R.NRECEIPT = :p_nreceipt')
    CachedUpdates = True
    Left = 112
    Top = 222
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nreceipt'
        Value = nil
      end>
  end
  object qryBankdepInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO BANKDEP'
      
        '  (ACCT, DEPOSIT_DATE, AMOUNT, LAST_NRECEIPT, NBANKDEP, RECONCIL' +
        'ED)'
      'VALUES'
      
        '  (:ACCT, :DEPOSIT_DATE, :AMOUNT, :LAST_NRECEIPT, :NBANKDEP, '#39'N'#39 +
        ')')
    Left = 170
    Top = 237
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DEPOSIT_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LAST_NRECEIPT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NBANKDEP'
        Value = nil
      end>
  end
  object qryBankClearance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select *'
      'from'
      'bank_clearance_days'
      'where code = :code')
    Left = 240
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM BANK')
    CachedUpdates = True
    Left = 404
    Top = 184
  end
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ACCT, "NAME", CASH_AT_BANK, RECEIPT, BALANCE, CL_BALANCE,' +
        ' TRUST, LASTRCP, CLEARANCE,BANK_CLEARANCE, ROWID'
      'FROM BANK '
      'WHERE ACCT = :P_Acct')
    Left = 255
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object ActionManager1: TActionManager
    Left = 464
    Top = 128
    StyleName = 'Platform Default'
    object actTransfer: TAction
      Caption = 'Transfer'
      OnExecute = actTransferExecute
      OnUpdate = actTransferUpdate
    end
  end
end
