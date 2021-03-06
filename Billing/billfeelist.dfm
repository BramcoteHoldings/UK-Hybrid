object frmBillFeeList: TfrmBillFeeList
  Left = 0
  Top = 0
  Caption = 'Bill Fee List'
  ClientHeight = 567
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    816
    567)
  PixelsPerInch = 96
  TextHeight = 15
  object gridFeeList: TcxGrid
    Left = 9
    Top = 9
    Width = 799
    Height = 507
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tvFeeList: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnInitEdit = tvFeeListInitEdit
      DataController.DataSource = dsFees
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tvFeeListCREATED: TcxGridDBColumn
        Caption = 'Created'
        DataBinding.FieldName = 'CREATED'
        Options.Editing = False
        Width = 52
      end
      object tvFeeListAUTHOR: TcxGridDBColumn
        Caption = 'Author'
        DataBinding.FieldName = 'AUTHOR'
        Options.Editing = False
        Width = 56
      end
      object tvFeeListPAYEE: TcxGridDBColumn
        DataBinding.FieldName = 'PAYEE'
        Options.Editing = False
        Width = 48
      end
      object tvFeeListDESCR: TcxGridDBColumn
        Caption = 'Narration'
        DataBinding.FieldName = 'DESCR'
        PropertiesClassName = 'TcxRichEditProperties'
        Properties.HideSelection = False
        Properties.PlainText = True
        Width = 361
      end
      object tvFeeListUNITS: TcxGridDBColumn
        Caption = 'Units'
        DataBinding.FieldName = 'UNITS'
        Options.Editing = False
        Width = 47
      end
      object tvFeeListAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 45
      end
      object tvFeeListTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
        Width = 45
      end
      object tvFeeListTASK: TcxGridDBColumn
        DataBinding.FieldName = 'TASK'
        Visible = False
        VisibleForCustomization = False
        Width = 45
      end
      object tvFeeListUNIQUEID: TcxGridDBColumn
        DataBinding.FieldName = 'NFEE'
        Visible = False
        VisibleForCustomization = False
        Width = 45
      end
    end
    object gridFeeListLevel1: TcxGridLevel
      GridView = tvFeeList
    end
  end
  object pbCheckSpelling: TBitBtn
    Left = 9
    Top = 531
    Width = 128
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = 'Spell Check'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000030000000E000000150000
      000C000000020000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000200000012502B189CAC673CFF3217
      0C7A0000000C0000000100000000000000000000000000000000000000000000
      000000000000000000000000000200000010502B199ABE8356FFD8AB76FF904E
      2EF41108043D0000000600000000000000000000000000000000000000000000
      000000000000000000020000000E522D1A97C0875AFFDEB480FFDEB37FFFC997
      67FF6B351CCE0000001500000002000000000000000000000000000000000000
      0000000000010000000C54301C94C38C5FFFE3BD8BFFF0DBB1FFEACFA1FFDFB7
      83FFB57A50FF4020118A0000000C000000010000000000000000000000000000
      00000000000655321E90C69164FFEBD0A2FFF3E3BDFFCC9C72FFD9B48BFFECD1
      A4FFDFB886FFA1603CFC1A0D0748000000070000000100000000000000000000
      000000000008C68B5AFFF2DEB5FFE6CCA5FFB27B52EF3B261868623F289ADAB5
      8DFFEBCEA1FFDAB080FF8C5031E70D07042B0000000400000000000000000000
      0000000000032E1F1449C78D5CFF7E5436B2100A0723000000070000000C7950
      32B2E2C49BFFEBCDA0FFD2A678FF743F25CA0201011400000002000000000000
      0000000000000000000300000006000000050000000200000000000000020503
      02128A5E3EC2E8CDA5FFEDD3A7FFC8966BFF5A321DA10000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002070503158D6240C4E5C89FFFF0D7ACFFC08A61FF4527177D000000050000
      0004000000050000000400000007000000070000000400000001000000030000
      0008000000090503021281593AB2E4C49CFFF4E1B8FFC78C5BFF6C3F2DFF0A06
      04266B3E2CFF0804031D6A3D2BFF693D2BFF1F120D540201010B190E0A46673B
      29FF673B29FF000000060202010B775236A5CA905FFF2F20144A704130FF6F40
      30FF6F402FFF090504206D402EFF0D0806306C3F2DFF030201136B3E2CFF0000
      000C000000060000000200000001000000040000000600000003744533FF0906
      0421724332FF0804031A714231FF704131FF351E167F030201116F402FFF0000
      0006000000000000000000000000000000000000000000000000774736FF2214
      1050764635FF06040315754634FF0A060521744533FF0302010D724332FF0000
      00080000000400000001000000000000000000000000000000001F130F457949
      38FF20130F460302010A784837FF774737FF20130F49010100051C110D427545
      35FF754634FF0000000200000000000000000000000000000000}
    TabOrder = 1
    OnClick = pbCheckSpellingClick
  end
  object btnSave: TBitBtn
    Left = 632
    Top = 531
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object BitBtn2: TBitBtn
    Left = 729
    Top = 531
    Width = 80
    Height = 27
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object btnSkip: TBitBtn
    Left = 519
    Top = 531
    Width = 81
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Skip'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888A888888A88888888AA88888AA8888888AAA8888AAA888888AAAA888AAAA
      88888AAAAA88AAAAA8888AAAAAA8AAAAAA888AAAAAAAAAAAAAA88AAAAAA8AAAA
      AA888AAAAA88AAAAA8888AAAA888AAAA88888AAA8888AAA888888AA88888AA88
      88888A888888A888888888888888888888888888888888888888}
    ModalResult = 5
    TabOrder = 4
  end
  object qryFees: TUniQuery
    UpdatingTable = 'FEE'
    KeyFields = 'nfee'
    SQLInsert.Strings = (
      'INSERT INTO FEE'
      
        '  (NFEE, CREATED, DESCR, AUTHOR, TASK, UNITS, FILEID, PRIVATE, T' +
        'AXCODE, AMOUNT, TAX)'
      'VALUES'
      
        '  (:NFEE, :CREATED, :DESCR, :AUTHOR, :TASK, :UNITS, :FILEID, :PR' +
        'IVATE, :TAXCODE, :AMOUNT, :TAX)')
    SQLDelete.Strings = (
      'DELETE FROM FEE'
      'WHERE'
      '  NFEE = :Old_NFEE')
    SQLUpdate.Strings = (
      'UPDATE FEE'
      'SET'
      
        '  NFEE = :NFEE, CREATED = :CREATED, DESCR = :DESCR, AUTHOR = :AU' +
        'THOR, TASK = :TASK, UNITS = :UNITS, FILEID = :FILEID, PRIVATE = ' +
        ':PRIVATE, TAXCODE = :TAXCODE, AMOUNT = :AMOUNT, TAX = :TAX'
      'WHERE'
      '  NFEE = :Old_NFEE')
    SQLLock.Strings = (
      
        'SELECT NFEE, CREATED, DESCR, AUTHOR, TASK, UNITS, FILEID, PRIVAT' +
        'E, TAXCODE, AMOUNT, TAX FROM FEE'
      'WHERE'
      '  NFEE = :Old_NFEE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT NFEE, CREATED, DESCR, AUTHOR, TASK, UNITS, FILEID, PRIVAT' +
        'E, TAXCODE, AMOUNT, TAX FROM FEE'
      'WHERE'
      '  NFEE = :Old_NFEE')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM FEE'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT fee.created, fee.descr, fee.amount, fee.author, fee.nfee,' +
        ' fee.taxcode,'
      
        '       tax, fee.PRIVATE, fee.fileid AS payee, NULL AS approval, ' +
        'units, task,'
      '       fee.nmemo, fee.ROWID'
      '  FROM fee'
      ' WHERE nmemo = :nmemo AND billtype = '#39'Billable'#39)
    CachedUpdates = True
    Options.StrictUpdate = False
    Left = 98
    Top = 81
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nmemo'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsFees: TUniDataSource
    DataSet = qryFees
    Left = 166
    Top = 93
  end
end
