object frmRptLedgerCombo: TfrmRptLedgerCombo
  Left = 760
  Top = 314
  Caption = 'Matter Combination Ledger'
  ClientHeight = 255
  ClientWidth = 593
  Color = clBtnFace
  Constraints.MinHeight = 281
  Constraints.MinWidth = 594
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    593
    255)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 56
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 9
    Top = 81
    Width = 13
    Height = 15
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 9
    Top = 9
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object lblFile: TLabel
    Left = 86
    Top = 9
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblClient: TLabel
    Left = 171
    Top = 9
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblDesc: TLabel
    Left = 86
    Top = 26
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object dtpFrom: TDateTimePicker
    Left = 104
    Top = 51
    Width = 94
    Height = 22
    Date = 35612.524133958300000000
    Time = 35612.524133958300000000
    TabOrder = 1
  end
  object dtpTo: TDateTimePicker
    Left = 104
    Top = 77
    Width = 95
    Height = 22
    Date = 35976.524408888900000000
    Time = 35976.524408888900000000
    TabOrder = 2
  end
  object DateChangeButton1: TDateChangeButton
    Left = 206
    Top = 51
    Width = 85
    Height = 22
    Caption = 'Today'
    TabOrder = 3
    TabStop = False
    ChangeType = ctToday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton2: TDateChangeButton
    Left = 206
    Top = 77
    Width = 85
    Height = 23
    Caption = 'Yesterday'
    TabOrder = 4
    TabStop = False
    ChangeType = ctYesterday
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton3: TDateChangeButton
    Left = 300
    Top = 51
    Width = 86
    Height = 22
    Caption = 'This Week'
    TabOrder = 5
    TabStop = False
    ChangeType = ctThisWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton4: TDateChangeButton
    Left = 300
    Top = 77
    Width = 86
    Height = 23
    Caption = 'Last Week'
    TabOrder = 6
    TabStop = False
    ChangeType = ctLastWeek
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object dcThisMonth: TDateChangeButton
    Left = 394
    Top = 51
    Width = 86
    Height = 22
    Caption = 'This Month'
    TabOrder = 7
    TabStop = False
    ChangeType = ctThisMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton6: TDateChangeButton
    Left = 394
    Top = 77
    Width = 86
    Height = 23
    Caption = 'Last Month'
    TabOrder = 8
    TabStop = False
    ChangeType = ctLastMonth
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton7: TDateChangeButton
    Left = 489
    Top = 51
    Width = 85
    Height = 22
    Caption = 'Year To Date'
    TabOrder = 9
    TabStop = False
    ChangeType = ctYearToDate
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object DateChangeButton8: TDateChangeButton
    Left = 489
    Top = 77
    Width = 85
    Height = 23
    Caption = 'Last Year'
    TabOrder = 10
    TabStop = False
    ChangeType = ctLastYear
    DateFrom = dtpFrom
    DateTo = dtpTo
    CheckBoxFrom = chkFrom
    CheckBoxTo = chkTo
  end
  object btnPrint: TBitBtn
    Left = 494
    Top = 223
    Width = 80
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Preview'
    Default = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888800000000000088000FFFFFFFFFF080000FFFFFFF000000080FFFFFF07887
      0F880FFFFF0788E7F0080FFFFF08888780880FFFFF08E88780880FFFFF07EE87
      F0880FFFFFF0788708880FFFFFFF000088880FFFFFFFFFF088880FFFFFFF0000
      88880FFFFFFF080888880FFFFFFF008888880000000008888888}
    TabOrder = 22
    OnClick = btnPrintClick
  end
  object btnMatter: TBitBtn
    Left = 51
    Top = 9
    Width = 23
    Height = 22
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 0
    OnClick = btnMatterClick
  end
  object chkFees: TCheckBox
    Left = 86
    Top = 115
    Width = 104
    Height = 18
    Caption = 'Print Fees?'
    Checked = True
    State = cbChecked
    TabOrder = 11
  end
  object chkUnbilled: TCheckBox
    Left = 86
    Top = 137
    Width = 171
    Height = 18
    Caption = 'Print only &unbilled items'
    TabOrder = 12
  end
  object chkWrap: TCheckBox
    Left = 86
    Top = 159
    Width = 128
    Height = 18
    Caption = '&Wrap description?'
    TabOrder = 13
  end
  object cbHideStripe: TCheckBox
    Left = 86
    Top = 181
    Width = 147
    Height = 18
    Caption = '&Hide stripe printing'
    TabOrder = 14
  end
  object chkGst: TCheckBox
    Left = 86
    Top = 203
    Width = 205
    Height = 18
    Caption = 'Include Tax on Disbursements'
    Checked = True
    State = cbChecked
    TabOrder = 15
  end
  object chkShowSundry: TCheckBox
    Left = 86
    Top = 225
    Width = 155
    Height = 18
    Caption = 'Show Tax Component'
    TabOrder = 16
    OnClick = chkShowSundryClick
  end
  object chkRev: TCheckBox
    Left = 265
    Top = 137
    Width = 230
    Height = 18
    Caption = 'Show Reversed Antd'
    Checked = True
    State = cbChecked
    TabOrder = 17
    Visible = False
  end
  object chkOwing: TCheckBox
    Left = 265
    Top = 159
    Width = 194
    Height = 18
    Caption = 'Show Payable Antd'
    Checked = True
    State = cbChecked
    TabOrder = 18
    Visible = False
  end
  object cbExcludeNonBillableWIP: TCheckBox
    Left = 264
    Top = 113
    Width = 235
    Height = 18
    Caption = 'Exclude Non Billable WIP'
    TabOrder = 19
  end
  object chkFrom: TCheckBox
    Left = 86
    Top = 51
    Width = 18
    Height = 19
    Checked = True
    State = cbChecked
    TabOrder = 20
  end
  object chkTo: TCheckBox
    Left = 86
    Top = 77
    Width = 18
    Height = 18
    Checked = True
    State = cbChecked
    TabOrder = 21
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, NMATTER, P.SEARCH, SHORTDESCR, OPENED, LONGDESCR,' +
        ' PARTNER, AUTHOR, MT.DESCR, NARCHIVE, M.ARCHIVED '
      'FROM MATTERTYPE MT, MATTER M, PHONEBOOK P  '
      'WHERE FILEID = :P_File'
      'AND M.NCLIENT = P.NCLIENT'
      'AND M.TYPE(+) = MT.CODE')
    AfterOpen = qryMatterAfterOpen
    BeforeClose = qryMatterBeforeClose
    Left = 311
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qryTmpLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT L.*, L.ROWID FROM ledger L  order by l.created')
    Active = True
    Left = 178
    Top = 2
  end
  object qryTmpSQL: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CREATED, AMOUNT, DESCR, BILLED, NMEMO, REFNO, ROWID'
      'FROM ALLOC'
      'WHERE NMATTER = :P_Matter'
      '  AND TRUST <> '#39'T'#39
      '  AND (NRECEIPT <> 0 OR TYPE = '#39'J2'#39')')
    Left = 460
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryAntdLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT REQDATE, PAYEE, BANK, AMOUNT, DESCR, BILLED, AUTHOR, NMEM' +
        'O, ROWID'
      'FROM CHEQREQ'
      'WHERE FILEID = :FILEID'
      '      AND TRUST <> '#39'T'#39)
    Left = 437
    Top = 118
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
  end
  object qrySundLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT SUNDRY. ACCT, SUNDRY. CREATED, SUNDRY.AMOUNT, TAX, SUNDRY' +
        '.DESCR, SUNDRY.UNITS, SUNDRY.BILLED, SUNDRY.NMEMO,'
      '  SUNDRYTYPE.DESCR AS TYPEDESC'
      'FROM SUNDRY, SUNDRYTYPE'
      'WHERE SUNDRY.NMATTER = :P_Matter'
      '  AND SUNDRY.TYPE = SUNDRYTYPE.CODE(+)')
    Left = 455
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryFeesLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, BANK_ACCT, AMOUNT, DESCR, UNITS, MINS, BILLED, A' +
        'UTHOR, PARTNER, NMEMO, ROWID  '
      'FROM FEE '
      'WHERE NMATTER = :P_Matter')
    Left = 358
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object qryPhoneBook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM VW_CLIENT_ADDRESS WHERE NCLIENT=:NCLIENT')
    MasterSource = dsMatter
    Left = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = Null
      end>
    object qryPhoneBookNCLIENT: TLargeintField
      FieldName = 'NCLIENT'
    end
    object qryPhoneBookCODE: TStringField
      FieldName = 'CODE'
      Size = 30
    end
    object qryPhoneBookNAME: TStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryPhoneBookADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryPhoneBookSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 50
    end
    object qryPhoneBookSTATE: TStringField
      FieldName = 'STATE'
      Size = 50
    end
    object qryPhoneBookPOSTCODE: TStringField
      FieldName = 'POSTCODE'
    end
    object qryPhoneBookCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 30
    end
    object qryPhoneBookWHICHADDRESS: TStringField
      FieldName = 'WHICHADDRESS'
      Size = 1
    end
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 278
    Top = 190
  end
  object qryRptLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  CASE'
      '    WHEN type = '#39'Receipt'#39' AND trustcr > 0'
      '      THEN 1 -- money into trust'
      '    WHEN type = '#39'Payment'#39' AND sunddr > 0'
      '      THEN 2 -- sundry incurred'
      '    WHEN type = '#39'Payment'#39' AND antddr > 0'
      '      THEN 3 -- ant. disp. raised'
      '    WHEN type = '#39'CheqReq'#39' AND debit <> 0'
      '      THEN 3 -- ant. disp. raised'
      '    WHEN type = '#39'Payment'#39' AND disbdr > 0'
      '      THEN 4 -- disp cheq drawn'
      '    WHEN type = '#39'Payable'#39' AND disbdr <> 0'
      '      THEN 4 -- disp cheq drawn'
      '    WHEN type = '#39'Bill'#39' AND debtdr > 0'
      '      THEN 5 -- bill raised'
      '    WHEN type = '#39'Journal'#39' AND (trustdr > 0 OR trustcr > 0)'
      '      THEN 6 -- trust transfer'
      '    WHEN type = '#39'Payment'#39' AND (debit <> 0 OR disbdr <> 0)'
      '      THEN 7 -- part payment of ant. disp.'
      '    WHEN type = '#39'Receipt'#39' AND debtcr > 0'
      '      THEN 8 -- payment not through trust'
      
        '    WHEN type IN ('#39'Reversal'#39', '#39'Journal'#39') AND (disbcr <> 0 OR dis' +
        'bdr <> 0)'
      '      THEN 9 -- cancel unbilled disp'
      '    WHEN type = '#39'Bill'#39' AND debtcr > 0'
      '      THEN 10 -- cancel billed disp'
      '    WHEN type = '#39'Fee'#39
      '      THEN 0 -- fees???'
      '  ELSE 12     -- anything that doesnt match above..'
      '  END AS toorder,'
      '  reporter,'
      '  created,'
      '  bank,'
      '  refno,'
      '  descr,'
      '  author,'
      '  partner,'
      '  billed,'
      '  invoice,'
      '  fileid,'
      '  type,'
      '  reason,'
      '  upcredcr,'
      '  upcreddr,'
      '  debit,'
      '  credit,'
      '  trustdr,'
      '  trustcr,'
      '  debtdr,'
      '  debtcr,'
      '  disbdr,'
      '  /*decode(trim(code),'#39'R'#39',0,'
      '                    disbdr) AS disbdr,*/'
      '  disbcr,'
      '  decode(trim(code),'#39'wo'#39',0,                           '
      '                    sunddr) AS sunddr,'
      '  sundcr,'
      '  decode(trim(code),'#39'wo'#39',0,'
      '                    feesdr) AS feesdr,'
      '  feescr,'
      '  antddr,'
      '  antdcr,'
      '  DECODE(type,'#39'Receipt'#39',trustcr,0) AS tr,'
      '  l.ROWID,'
      '  NULL AS transit_direction,'
      '  NULL AS transit_fromto,'
      '  NULL AS transit_payment_type,'
      '  NULL AS transit_chqno,'
      '  NULL AS transit_branch,'
      '  CAST(NULL AS NUMBER(17,2))  AS transit_amount'
      'FROM ledger l'
      'WHERE l.reporter = :reporter'
      'UNION'
      'SELECT'
      '  0 AS toorder,'
      '  :reporter AS reporter,'
      '  t.rcvd_date AS created,'
      '  NULL AS bank,'
      '  t.refno,'
      '  t.descr,'
      '  NULL AS author,'
      '  NULL AS partner,'
      '  NULL AS billed,'
      '  CAST(NULL AS NUMBER(17,2)) AS invoice,'
      '  t.fileid, '#39'Transit'#39' AS type,'
      '  NULL AS reason,'
      '  CAST(NULL AS NUMBER(17,2)) AS upcredcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS upcreddr,'
      '  CAST(NULL AS NUMBER(17,2)) AS debit,'
      '  CAST(NULL AS NUMBER(17,2)) AS credit,'
      '  CAST(NULL AS NUMBER(17,2)) AS trustdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS trustcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS debtdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS debtcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS disbdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS disbcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS sunddr,'
      '  CAST(NULL AS NUMBER(17,2)) AS sundcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS feesdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS feescr,'
      '  CAST(NULL AS NUMBER(17,2)) AS antddr,'
      '  CAST(NULL AS NUMBER(17,2)) AS antdcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS tr,'
      '  t.rowid,'
      '  '#39'Rcvd From'#39'     AS transit_direction,'
      
        '  DECODE(t.rcvd_from ,NULL,t.paid_to,rcvd_from) AS transit_fromt' +
        'o,'
      '  t.payment_type  AS transit_payment_type,'
      '  t.chqno         AS transit_chqno,'
      '  t.branch        AS transit_branch,'
      '  t.amount        AS transit_amount'
      'FROM'
      '  transit t'
      'WHERE'
      '  t.nmatter = :nmatter'
      'AND t.rcvd_date IS NOT NULL'
      'UNION'
      'SELECT'
      '  0 AS toorder,'
      '  :reporter AS reporter,'
      '  t.paid_date AS created,'
      '  NULL AS bank,'
      '  t.refno,        t.descr,'
      '  NULL AS author,'
      '  NULL AS partner,'
      '  NULL AS billed,'
      '  CAST(NULL AS NUMBER(17,2)) AS invoice,'
      '  t.fileid, '#39'Transit'#39' AS type,'
      '  NULL AS reason,'
      '  CAST(NULL AS NUMBER(17,2)) AS upcredcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS upcreddr,'
      '  CAST(NULL AS NUMBER(17,2)) AS debit,'
      '  CAST(NULL AS NUMBER(17,2)) AS credit,'
      '  CAST(NULL AS NUMBER(17,2)) AS trustdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS trustcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS debtdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS debtcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS disbdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS disbcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS sunddr,'
      '  CAST(NULL AS NUMBER(17,2)) AS sundcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS feesdr,'
      '  CAST(NULL AS NUMBER(17,2)) AS feescr,'
      '  CAST(NULL AS NUMBER(17,2)) AS antddr,'
      '  CAST(NULL AS NUMBER(17,2)) AS antdcr,'
      '  CAST(NULL AS NUMBER(17,2)) AS tr,'
      '  t.rowid,'
      '  '#39'Paid To'#39'       AS transit_direction,'
      
        '  DECODE(t.paid_to,NULL,t.rcvd_from,t.paid_to) AS transit_fromto' +
        ','
      '  t.payment_type  AS transit_payment_type,'
      '  t.chqno         AS transit_chqno,'
      '  t.branch        AS transit_branch,'
      '  t.amount        AS transit_amount'
      'FROM'
      '  transit t'
      'WHERE'
      '  t.nmatter = :nmatter'
      'AND t.paid_date IS NOT NULL'
      'ORDER BY 3,1'
      '')
    Left = 398
    Top = 65534
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'reporter'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = Null
      end>
  end
  object dsTmpLedger: TUniDataSource
    DataSet = qryTmpLedger
    Left = 141
    Top = 5
  end
  object dsPhoneBook: TUniDataSource
    DataSet = qryPhoneBook
    Left = 308
    Top = 3
  end
  object dsRptLedger: TUniDataSource
    DataSet = qryRptLedger
    Left = 435
    Top = 7
  end
  object dsFeesLedger: TUniDataSource
    DataSet = qryFeesLedger
    Left = 395
    Top = 154
  end
  object dsSundLedger: TUniDataSource
    DataSet = qrySundLedger
    Left = 506
    Top = 144
  end
  object dsAntdLedger: TUniDataSource
    DataSet = qryAntdLedger
    Left = 391
    Top = 97
  end
  object dsTmpSQL: TUniDataSource
    DataSet = qryTmpSQL
    Left = 495
    Top = 98
  end
  object plTmpLedger: TppDBPipeline
    DataSource = dsTmpLedger
    UserName = 'plTmpLedger'
    Left = 103
    Top = 4
    object plTmpLedgerppField1: TppField
      FieldAlias = 'REPORTER'
      FieldName = 'REPORTER'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plTmpLedgerppField2: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plTmpLedgerppField3: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object plTmpLedgerppField4: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object plTmpLedgerppField5: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object plTmpLedgerppField6: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object plTmpLedgerppField7: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object plTmpLedgerppField8: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object plTmpLedgerppField9: TppField
      FieldAlias = 'INVOICE'
      FieldName = 'INVOICE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object plTmpLedgerppField10: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plTmpLedgerppField11: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plTmpLedgerppField12: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 120
      DisplayWidth = 120
      Position = 11
    end
    object plTmpLedgerppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDCR'
      FieldName = 'UPCREDCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object plTmpLedgerppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDDR'
      FieldName = 'UPCREDDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object plTmpLedgerppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT'
      FieldName = 'DEBIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plTmpLedgerppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT'
      FieldName = 'CREDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object plTmpLedgerppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUSTDR'
      FieldName = 'TRUSTDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plTmpLedgerppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUSTCR'
      FieldName = 'TRUSTCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object plTmpLedgerppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTDR'
      FieldName = 'DEBTDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object plTmpLedgerppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTCR'
      FieldName = 'DEBTCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object plTmpLedgerppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBDR'
      FieldName = 'DISBDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object plTmpLedgerppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBCR'
      FieldName = 'DISBCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object plTmpLedgerppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDDR'
      FieldName = 'SUNDDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object plTmpLedgerppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDCR'
      FieldName = 'SUNDCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object plTmpLedgerppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESDR'
      FieldName = 'FEESDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object plTmpLedgerppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESCR'
      FieldName = 'FEESCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object plTmpLedgerppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDDR'
      FieldName = 'ANTDDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object plTmpLedgerppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDCR'
      FieldName = 'ANTDCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object plTmpLedgerppField29: TppField
      FieldAlias = 'ALLOW_DIRECT_POSTING'
      FieldName = 'ALLOW_DIRECT_POSTING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object plTmpLedgerppField30: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 29
    end
    object plTmpLedgerppField31: TppField
      FieldAlias = 'NSUBBILL'
      FieldName = 'NSUBBILL'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 30
    end
    object plTmpLedgerppField32: TppField
      FieldAlias = 'NSUBBILL_ID'
      FieldName = 'NSUBBILL_ID'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 31
    end
    object plTmpLedgerppField33: TppField
      FieldAlias = 'DEBTOR'
      FieldName = 'DEBTOR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 32
    end
    object plTmpLedgerppField34: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 33
    end
    object plTmpLedgerppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object plTmpLedgerppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'BAS_TAX'
      FieldName = 'BAS_TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object plTmpLedgerppField37: TppField
      FieldAlias = 'NALLOC'
      FieldName = 'NALLOC'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 36
    end
    object plTmpLedgerppField38: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 37
    end
  end
  object plPhoneBook: TppDBPipeline
    DataSource = dsPhoneBook
    UserName = 'plPhoneBook'
    Left = 344
    Top = 5
    MasterDataPipelineName = 'plMatter'
    object plPhoneBookppField1: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plPhoneBookppField2: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object plPhoneBookppField3: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object plPhoneBookppField4: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 3
    end
    object plPhoneBookppField5: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object plPhoneBookppField6: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object plPhoneBookppField7: TppField
      FieldAlias = 'POSTCODE'
      FieldName = 'POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plPhoneBookppField8: TppField
      FieldAlias = 'COUNTRY'
      FieldName = 'COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object plPhoneBookppField9: TppField
      FieldAlias = 'WHICHADDRESS'
      FieldName = 'WHICHADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
  end
  object plRptLedger: TppDBPipeline
    DataSource = dsRptLedger
    UserName = 'plRptLedger'
    Left = 471
    Top = 11
    object plRptLedgerppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOORDER'
      FieldName = 'TOORDER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plRptLedgerppField2: TppField
      FieldAlias = 'REPORTER'
      FieldName = 'REPORTER'
      FieldLength = 32
      DisplayWidth = 32
      Position = 1
    end
    object plRptLedgerppField3: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plRptLedgerppField4: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object plRptLedgerppField5: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object plRptLedgerppField6: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 5
    end
    object plRptLedgerppField7: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object plRptLedgerppField8: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object plRptLedgerppField9: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object plRptLedgerppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE'
      FieldName = 'INVOICE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plRptLedgerppField11: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plRptLedgerppField12: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plRptLedgerppField13: TppField
      FieldAlias = 'REASON'
      FieldName = 'REASON'
      FieldLength = 120
      DisplayWidth = 120
      Position = 12
    end
    object plRptLedgerppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDCR'
      FieldName = 'UPCREDCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object plRptLedgerppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPCREDDR'
      FieldName = 'UPCREDDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plRptLedgerppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBIT'
      FieldName = 'DEBIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object plRptLedgerppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDIT'
      FieldName = 'CREDIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plRptLedgerppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUSTDR'
      FieldName = 'TRUSTDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object plRptLedgerppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRUSTCR'
      FieldName = 'TRUSTCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object plRptLedgerppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTDR'
      FieldName = 'DEBTDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object plRptLedgerppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTCR'
      FieldName = 'DEBTCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object plRptLedgerppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBDR'
      FieldName = 'DISBDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object plRptLedgerppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISBCR'
      FieldName = 'DISBCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object plRptLedgerppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDDR'
      FieldName = 'SUNDDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object plRptLedgerppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUNDCR'
      FieldName = 'SUNDCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object plRptLedgerppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESDR'
      FieldName = 'FEESDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object plRptLedgerppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEESCR'
      FieldName = 'FEESCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object plRptLedgerppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDDR'
      FieldName = 'ANTDDR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object plRptLedgerppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDCR'
      FieldName = 'ANTDCR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object plRptLedgerppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TR'
      FieldName = 'TR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object plRptLedgerppField31: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 30
    end
    object plRptLedgerppField32: TppField
      FieldAlias = 'TRANSIT_DIRECTION'
      FieldName = 'TRANSIT_DIRECTION'
      FieldLength = 9
      DisplayWidth = 9
      Position = 31
    end
    object plRptLedgerppField33: TppField
      FieldAlias = 'TRANSIT_FROMTO'
      FieldName = 'TRANSIT_FROMTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 32
    end
    object plRptLedgerppField34: TppField
      FieldAlias = 'TRANSIT_PAYMENT_TYPE'
      FieldName = 'TRANSIT_PAYMENT_TYPE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 33
    end
    object plRptLedgerppField35: TppField
      FieldAlias = 'TRANSIT_CHQNO'
      FieldName = 'TRANSIT_CHQNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 34
    end
    object plRptLedgerppField36: TppField
      FieldAlias = 'TRANSIT_BRANCH'
      FieldName = 'TRANSIT_BRANCH'
      FieldLength = 60
      DisplayWidth = 60
      Position = 35
    end
    object plRptLedgerppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSIT_AMOUNT'
      FieldName = 'TRANSIT_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
  end
  object plAntdLedger: TppDBPipeline
    DataSource = dsAntdLedger
    UserName = 'plAntdLedger'
    Left = 427
    Top = 99
  end
  object pltmpSQL: TppDBPipeline
    DataSource = dsTmpSQL
    UserName = 'pltmpSQL'
    Left = 529
    Top = 101
  end
  object plSundLedger: TppDBPipeline
    DataSource = dsSundLedger
    UserName = 'plSundLedger'
    Left = 543
    Top = 146
  end
  object plFeesLedger: TppDBPipeline
    DataSource = dsFeesLedger
    UserName = 'plFeesLedger'
    Left = 436
    Top = 202
  end
  object plMatter: TppDBPipeline
    DataSource = dsMatter
    UserName = 'plMatter'
    Left = 355
    Top = 205
  end
  object rptCombo: TppReport
    AutoStop = False
    DataPipeline = plRptLedger
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 3350
    PrinterSetup.mmMarginRight = 3350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209900
    PrinterSetup.mmPaperWidth = 296900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptComboBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 29
    Top = 67
    Version = '20.0'
    mmColumnWidth = 288200
    DataPipelineName = 'plRptLedger'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 54769
      mmPrintPosition = 0
      object lblTitle: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTitle'
        Border.mmPadding = 0
        Caption = 'Combined Ledger Card'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6616
        mmLeft = 117740
        mmTop = 5821
        mmWidth = 57150
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 17463
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3852
        mmLeft = 20648
        mmTop = 17463
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plPhoneBook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhoneBook'
        mmHeight = 3852
        mmLeft = 194205
        mmTop = 17463
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Client:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 182827
        mmTop = 17727
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 22754
        mmWidth = 14287
        BandType = 0
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'LONGDESCR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 13229
        mmLeft = 20638
        mmTop = 22754
        mmWidth = 62442
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 49477
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 17463
        mmTop = 49477
        mmWidth = 7143
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 49477
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Fees'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 108215
        mmTop = 49477
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Sundries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 122767
        mmTop = 49477
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Anticip'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 138377
        mmTop = 49477
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 54240
        mmWidth = 290200
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3852
        mmLeft = 113506
        mmTop = 22754
        mmWidth = 59267
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'OPENED'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3852
        mmLeft = 113506
        mmTop = 27517
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'PARTNER'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3852
        mmLeft = 113506
        mmTop = 32279
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'AUTHOR'
        DataPipeline = plMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMatter'
        mmHeight = 3852
        mmLeft = 113506
        mmTop = 36777
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 22754
        mmWidth = 8205
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Instructed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 27517
        mmWidth = 14555
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Partner'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 32279
        mmWidth = 11115
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Author'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 36777
        mmWidth = 10586
        BandType = 0
        LayerName = Foreground
      end
      object ppMemo1: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo1'
        Border.mmPadding = 0
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 19315
        mmLeft = 194205
        mmTop = 21167
        mmWidth = 66675
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Refno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 32015
        mmTop = 49477
        mmWidth = 8466
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'Bill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 88900
        mmTop = 49477
        mmWidth = 4234
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plPhoneBook
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plPhoneBook'
        mmHeight = 3852
        mmLeft = 213255
        mmTop = 17463
        mmWidth = 66940
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 108215
        mmTop = 48683
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Disb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 158486
        mmTop = 49477
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Disbursements (inc Tax)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3471
        mmLeft = 108479
        mmTop = 44715
        mmWidth = 59002
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 171186
        mmTop = 49477
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 184150
        mmTop = 49477
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 168011
        mmTop = 48683
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Debtors (inc Tax)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3471
        mmLeft = 168275
        mmTop = 44715
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Debit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 204788
        mmTop = 49477
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Credit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 218548
        mmTop = 49477
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 198967
        mmTop = 48683
        mmWidth = 43656
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Trust'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3471
        mmLeft = 199232
        mmTop = 44715
        mmWidth = 43392
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 231511
        mmTop = 49477
        mmWidth = 11112
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        OnPrint = ppLabel27Print
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'Label27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 139171
        mmTop = 794
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Direction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 244211
        mmTop = 49213
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'From/To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 259028
        mmTop = 49213
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 242888
        mmTop = 48683
        mmWidth = 47361
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Transit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3471
        mmLeft = 243153
        mmTop = 44715
        mmWidth = 47096
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 275961
        mmTop = 49477
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'TRUSTCR'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptLedger'
        mmHeight = 3768
        mmLeft = 268553
        mmTop = 25929
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'TRUSTDR'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptLedger'
        mmHeight = 3768
        mmLeft = 270405
        mmTop = 31221
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Color = clBtnFace
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plRptLedger
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 529
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'FEESDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 108215
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'SUNDDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 123031
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'REASON'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 529
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 529
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'DEBIT'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 137848
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'DISBDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 152665
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'DEBTCR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 529
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'DEBTDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 230453
        mmTop = 529
        mmWidth = 12170
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo3: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo3'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'REFNO'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 529
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'TRANSIT_DIRECTION'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 244211
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'TRANSIT_FROMTO'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 259028
        mmTop = 529
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'TRANSIT_AMOUNT'
        DataPipeline = plRptLedger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 273315
        mmTop = 529
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'TRUSTCR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 214315
        mmTop = 529
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        HyperlinkEnabled = False
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'TRUSTDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 4233
        mmLeft = 199232
        mmTop = 529
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Color = clMedGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 290200
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 27517
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 277284
        mmTop = 1852
        mmWidth = 10319
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'DEBTDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 163777
        mmTop = 6085
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'DISBDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 148696
        mmTop = 1058
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 290200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Totals'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3705
        mmLeft = 106627
        mmTop = 1058
        mmWidth = 8996
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'DEBTCR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 181240
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'TRUSTDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 196586
        mmTop = 6085
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'TRUSTCR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 212463
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'Total Trust Receipts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 195263
        mmTop = 11377
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 20888
        mmWidth = 290200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'Balances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 82815
        mmTop = 16404
        mmWidth = 12964
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'FEESDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 105040
        mmTop = 16404
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'SUNDDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 123296
        mmTop = 16404
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'DEBIT'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3440
        mmLeft = 138377
        mmTop = 16404
        mmWidth = 13494
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'DISBDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 153459
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DEBTDR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptLedger'
        mmHeight = 3704
        mmLeft = 5821
        mmTop = 12435
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DEBTCR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plRptLedger'
        mmHeight = 3704
        mmLeft = 32015
        mmTop = 12435
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 167482
        mmTop = 16404
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 182034
        mmTop = 16404
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'TR'
        DataPipeline = plRptLedger
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptLedger'
        mmHeight = 3471
        mmLeft = 224367
        mmTop = 11377
        mmWidth = 18258
        BandType = 7
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plTrustCheqreqs'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 22754
        mmWidth = 290200
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plTrustCheqreqs
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 3350
          PrinterSetup.mmMarginRight = 3350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 209900
          PrinterSetup.mmPaperWidth = 296900
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '20.0'
          mmColumnWidth = 0
          DataPipelineName = 'plTrustCheqreqs'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label1'
              Border.mmPadding = 0
              Caption = 'Client Cheque requisitions'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 7940
              mmWidth = 44186
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line10'
              Border.mmPadding = 0
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 12181
              mmWidth = 290200
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText22'
              Border.mmPadding = 0
              DataField = 'DESCR'
              DataPipeline = plTrustCheqreqs
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plTrustCheqreqs'
              mmHeight = 4233
              mmLeft = 65881
              mmTop = 529
              mmWidth = 123825
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'AMOUNT'
              DataPipeline = plTrustCheqreqs
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plTrustCheqreqs'
              mmHeight = 4233
              mmLeft = 197115
              mmTop = 529
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'SYSDATE'
              DataPipeline = plTrustCheqreqs
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plTrustCheqreqs'
              mmHeight = 4233
              mmLeft = 14817
              mmTop = 529
              mmWidth = 29369
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText25'
              Border.mmPadding = 0
              DataField = 'CHEQREQNO'
              DataPipeline = plTrustCheqreqs
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plTrustCheqreqs'
              mmHeight = 4233
              mmLeft = 46028
              mmTop = 528
              mmWidth = 16652
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppDBCalc15: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc15'
              Border.mmPadding = 0
              DataField = 'BAL'
              DataPipeline = plTrustCheqreqs
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plTrustCheqreqs'
              mmHeight = 4498
              mmLeft = 197115
              mmTop = 529
              mmWidth = 27517
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line9'
              Border.mmPadding = 0
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = -4
              mmWidth = 290200
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label34'
              Border.mmPadding = 0
              Caption = 'Available Client Balance'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 65881
              mmTop = 794
              mmWidth = 41540
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Memo1OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Memo1OnPrint;'#13#10'begin'#13#10'    Memo1.Text :=  plPhoneBook['#39 +
          'ADDRESS'#39']+'#39' '#39'+'#13#10'                   plPhoneBook['#39'SUBURB'#39']+'#39' '#39'+'#13#10' ' +
          '                  plPhoneBook['#39'STATE'#39']+'#39' '#39'+'#13#10'                   ' +
          'plPhoneBook['#39'POSTCODE'#39'];'#13#10'end;'#13#10
        raProgram.ComponentName = 'Memo1'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' := DBCalc1.Value - DBCalc2.Value;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10'  if (DBC' +
          'alc12.Value - DBCalc13.Value) > 0 then'#13#10'    Value := (DBCalc12.V' +
          'alue - DBCalc13.Value)'#13#10'  else'#13#10'    Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable3OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable3OnCalc(var Value: Variant);'#13#10'begin'#13#10'  if (DBC' +
          'alc13.Value - DBCalc12.Value) > 0 then'#13#10'    Value := (DBCalc13.V' +
          'alue - DBCalc12.Value)'#13#10'  else'#13#10'    Value := 0;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable3'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryTrustCheqreqs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT   1, '#39'Cleared Client Balance'#39' as descr, getclearedtrustam' +
        'ount (:nmatter) amount,'
      
        '         getclearedtrustamount (:nmatter) AS bal, sysdate, NULL ' +
        'as cheqreqno'
      '    FROM DUAL'
      'UNION'
      
        'SELECT   2, descr, amount, amount * -1 AS bal, reqdate, ncheqreq' +
        ' as cheqreqno'
      '    FROM cheqreq'
      '   WHERE converted = '#39'N'#39
      '     AND trust = '#39'T'#39
      '     AND nmatter = :nmatter'
      '     AND rev_ncheqreq IS NULL'
      'ORDER BY 1')
    Active = True
    Left = 24
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = Null
      end>
  end
  object dsTrustCheqreqs: TUniDataSource
    DataSet = qryTrustCheqreqs
    Left = 32
    Top = 160
  end
  object plTrustCheqreqs: TppDBPipeline
    DataSource = dsTrustCheqreqs
    UserName = 'plTrustCheqreqs'
    Left = 24
    Top = 200
    object plTrustCheqreqsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = '1'
      FieldName = '1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object plTrustCheqreqsppField2: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 1
    end
    object plTrustCheqreqsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plTrustCheqreqsppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'BAL'
      FieldName = 'BAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plTrustCheqreqsppField5: TppField
      FieldAlias = 'SYSDATE'
      FieldName = 'SYSDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plTrustCheqreqsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQREQNO'
      FieldName = 'CHEQREQNO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
  end
end
