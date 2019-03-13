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
    Width = 121
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = 'Spell Check'
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
