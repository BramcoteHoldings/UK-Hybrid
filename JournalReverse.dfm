object frmJournalReverse: TfrmJournalReverse
  Left = 652
  Top = 126
  BorderStyle = bsDialog
  Caption = 'Journal Reversal'
  ClientHeight = 246
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label5: TLabel
    Left = 7
    Top = 146
    Width = 67
    Height = 15
    Caption = 'Reverse as at'
  end
  object Label6: TLabel
    Left = 35
    Top = 168
    Width = 38
    Height = 15
    Caption = 'Reason'
  end
  object btnOriginal: TcxButton
    Left = 184
    Top = 141
    Width = 101
    Height = 25
    Caption = 'Original &date'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360800000000000036000000280000002000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      80000080800000808000008080000080800000808000000000FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF00808000008080000080
      80000080800000808000008080000080800000808000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF00808000008080000080
      80000080800000808000008080000080800000808000000000FF00FFFFFFFFFF
      FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000000000FF00FFFFFFFFFFFFFF00FF
      FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FF00808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF00808000FFFF
      FFFF00808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000000000FFFFFFFFFF000000FFFFFF
      FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF00808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF808080FFFFFF
      FFFF00808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000000000FF00FFFFFF000000FF00FF
      FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF0000FFFF00808000008080000080
      800000808000008080000080800000808000808080FF00808000808080FFFFFF
      FFFF00808000FFFFFFFF00808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000000000FF000000FFFFFF
      FFFF000000FFFFFFFFFF000000FFFF0000FF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FFFFFF
      FFFF808080FFFFFFFFFF808080FFFFFFFFFF808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000000000FF00FF
      FFFF000000FF000000FFFF0000FF000000FF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      FFFF808080FF808080FFFFFFFFFF808080FF808080FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF
      FFFF000000FFFF0000FF000000FF000000FF000000FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FFFFFF
      FFFF808080FFFFFFFFFF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FF
      FFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF808080FF808080FF0080800000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      FFFF808080FFFFFFFFFFFFFFFFFF00808000808080FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF0000FF0000
      00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFF000000FF00808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF8080
      80FF00808000008080000080800000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000808080FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFF000000FF00808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF}
    OptionsImage.NumGlyphs = 2
    TabOrder = 1
    OnClick = btnOriginalClick
  end
  object dtpReverse: TEnforceCustomDateEdit
    Left = 82
    Top = 143
    EditValue = 43639.3894384954d
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 96
  end
  object btnOK: TcxButton
    Left = 134
    Top = 211
    Width = 73
    Height = 25
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000FFFFFFFF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000800000FF800000FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000800000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FF008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000800000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000800000FF0080
      00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
      00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
      FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000080800000FF00FF0080800000808000008080000080
      80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000FF00FF008000FF0080
      00FF008000FF800000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000080800000FF
      00FF008000FF008000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000FF00FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 212
    Top = 211
    Width = 74
    Height = 25
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000000FFFF808080FF008080000080800000808000008080000080
      8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000FFFFFFFF00808000008080000080
      8000008080000080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
      80FF008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
      80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
      FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000000
      FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
      8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
      800000808000008080000080800000808000000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
      80FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      800000808000008080000000FFFF000080FF0080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
      8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF0000FFFF0080800000808000008080000080800000808000008080000080
      8000808080FF808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object tbReason: TcxMemo
    Left = 82
    Top = 171
    ParentShowHint = False
    Properties.MaxLength = 120
    ShowHint = True
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 33
    Width = 203
  end
  object cxGroupBox1: TcxGroupBox
    Left = 7
    Top = 4
    Caption = 'Original Transaction'
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clBlack
    Style.TextStyle = []
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Height = 132
    Width = 278
    object Label7: TLabel
      Left = 37
      Top = 18
      Width = 30
      Height = 15
      Caption = 'Entity'
    end
    object Label1: TLabel
      Left = 28
      Top = 40
      Width = 38
      Height = 15
      Caption = 'Journal'
    end
    object Label2: TLabel
      Left = 42
      Top = 62
      Width = 24
      Height = 15
      Caption = 'Date'
    end
    object Label3: TLabel
      Left = 7
      Top = 85
      Width = 60
      Height = 15
      Caption = 'Description'
    end
    object Label4: TLabel
      Left = 25
      Top = 107
      Width = 44
      Height = 15
      Caption = 'Amount'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 75
      Top = 17
      DataBinding.DataField = 'ACCT'
      DataBinding.DataSource = dsJournal
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      Height = 21
      Width = 190
    end
    object cxDBLabel2: TcxDBLabel
      Left = 75
      Top = 39
      DataBinding.DataField = 'NJOURNAL'
      DataBinding.DataSource = dsJournal
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      Height = 21
      Width = 190
    end
    object cxDBLabel3: TcxDBLabel
      Left = 75
      Top = 61
      DataBinding.DataField = 'CREATED'
      DataBinding.DataSource = dsJournal
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      Height = 21
      Width = 190
    end
    object cxDBLabel4: TcxDBLabel
      Left = 75
      Top = 84
      DataBinding.DataField = 'REASON'
      DataBinding.DataSource = dsJournal
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      Height = 21
      Width = 190
    end
    object cxDBLabel5: TcxDBLabel
      Left = 75
      Top = 106
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsJournalTotal
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.StyleController = dmAxiom.LabelStyle
      Style.TextColor = clBlue
      Height = 21
      Width = 190
    end
  end
  object qryJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ACCT, NJOURNAL, CREATED, REASON, AMOUNT, TRUST, REFNO, NM' +
        'EMO, TYPE'
      'FROM JOURNAL'
      'WHERE'
      
        '  (ACCT = :ENTITY OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY' +
        ' = :ENTITY))'
      'AND NJOURNAL = :NJOURNAL'
      'UNION'
      
        'SELECT ACCT, NJOURNAL, CREATED, REASON, AMOUNT, TRUST, REFNO, NM' +
        'EMO, TYPE'
      'FROM JOURNAL'
      'WHERE'
      
        '  (ACCT = :ENTITY OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY' +
        ' = :ENTITY))'
      'AND NMEMO= :NMEMO')
    Left = 220
    Top = 65534
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object dsJournal: TUniDataSource
    DataSet = qryJournal
    Left = 249
    Top = 65534
  end
  object qryJournalInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO JOURNAL '
      
        '    (CREATED, ACCT, AMOUNT, NJOURNAL, REASON, TRUST, SYSTEM_DATE' +
        ', REV_NJOURNAL, NMEMO, REFNO, TYPE, ENTITY) '
      '  VALUES '
      
        '    (:CREATED, :ACCT, :AMOUNT, :NJOURNAL, :REASON, :TRUST, SysDa' +
        'te, :REV_NJOURNAL, :NMEMO, :REFNO, :TYPE, :ENTITY)')
    Left = 176
    Top = 65534
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REASON'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object qryTransItems: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * '
      'FROM '
      'TRANSITEM '
      'WHERE OWNER_CODE = :OWNER_CODE '
      'AND NOWNER = :NOWNER'
      'AND ACCT = :ACCT')
    Left = 76
    Top = 65517
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OWNER_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
  object qryTransItemInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO TRANSITEM'
      
        '  (ACCT, AMOUNT, CHART, CREATED, DESCR, NACCOUNT, NTRANS, NALLOC' +
        ','
      'NCHEQUE,'
      
        '   NRECEIPT, NJOURNAL, REFNO, NOWNER, OWNER_CODE, WHO, REV_NJOUR' +
        'NAL, TAXCODE,'
      '   PARENT_CHART, TAX, VERSION, NMATTER)'
      'VALUES'
      
        '  (:ACCT, :AMOUNT, :CHART, :CREATED, :DESCR, :NACCOUNT, :NTRANS,' +
        ' 0,'
      
        '   0, 0, :NJOURNAL, :REFNO, :NOWNER, '#39'JOURNAL'#39', :WHO, :REV_NJOUR' +
        'NAL, :TAXCODE,'
      '   :PARENT_CHART, :TAX, :VERSION, :NMATTER)')
    Left = 142
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NACCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NTRANS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'WHO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PARENT_CHART'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VERSION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end>
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM ALLOC A, JOURNAL J'
      'WHERE A.NJOURNAL = J.NJOURNAL'
      'AND J.NMEMO = :NMEMO'
      'AND J.ACCT = :ACCT'
      'AND a.trust = :trust')
    Left = 38
    Top = 65519
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRUST'
        Value = nil
      end>
  end
  object qryUpdateJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE JOURNAL '
      'SET REV_NJOURNAL = :REV_NJOURNAL'
      'WHERE nvl(NMEMO,1) = nvl(:NMEMO,1)'
      'AND NJOURNAL = :NJOURNAL'
      'AND ACCT = :ACCT'
      'AND REV_NJOURNAL IS NULL')
    Left = 223
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
  object qryUpdateTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE TRANSITEM '
      'SET REV_NJOURNAL = :REV_NJOURNAL'
      'WHERE NJOURNAL = :NJOURNAL'
      'AND ACCT = :ACCT')
    Left = 7
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REV_NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
  object qryNmemoUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE NMEMO'
      'SET'
      '   DISB_WOFF = 0,'
      '   ANTD_WOFF = 0,'
      '   FEES_WOFF = 0,'
      '   UPCRED_WOFF = 0,'
      '   SUND_WOFF = 0,'
      '   DISBTAX_WOFF = 0,'
      '   ANTDTAX_WOFF = 0,'
      '   FESSTAX_WOFF = 0,'
      '   UPCREDTAX_WOFF  = 0,'
      '   SUNDTAX_WOFF = 0,'
      '   TAX_WOFF = 0,'
      '   FEESTAX_WOFF = 0'
      'WHERE'
      '   NMEMO = :NMEMO')
    Left = 7
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryJournalTotal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT SUM(AMOUNT) "AMOUNT" FROM'
      '('
      'SELECT AMOUNT'
      'FROM JOURNAL'
      'WHERE'
      '  (ACCT = :ENTITY )'
      '--OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY = :ENTITY))'
      'AND NJOURNAL = :NJOURNAL'
      'AND NMEMO IS NULL'
      'AND REV_NJOURNAL IS NULL'
      'UNION ALL'
      'SELECT AMOUNT'
      'FROM JOURNAL'
      'WHERE'
      '  (ACCT = :ENTITY)'
      '-- OR ACCT IN (SELECT ACCT FROM BANK WHERE ENTITY = :ENTITY))'
      'AND NMEMO= :NMEMO'
      'AND REV_NJOURNAL IS NULL)')
    Left = 51
    Top = 225
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object dsJournalTotal: TUniDataSource
    DataSet = qryJournalTotal
    Left = 82
    Top = 226
  end
  object qryAllocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO ALLOC'
      '  (AMOUNT, DESCR, CREATED, ACCT, NMATTER, REFNO,'
      '   TYPE, NCLIENT, NJOURNAL, PAYER, TRUST, BILLED, FILEID,'
      '   NALLOC, NMEMO, CLIENT_NAME, SYSTEM_DATE, MATTER_DESC,'
      '   PRIVATE, TAXCODE, TAX, SUNDRYTYPE,CLEARED)'
      'VALUES'
      '  (:AMOUNT, :DESCR, :CREATED, :ACCT, :NMATTER, :REFNO,'
      '   :TYPE, :NCLIENT, :NJOURNAL, :PAYER, '#39'G'#39', '#39'Y'#39', :FILEID,'
      '   :NALLOC, null, :CLIENT_NAME, SysDate, :MATTER_DESC,'
      '   '#39'N'#39', :TAXCODE, :TAX, :SUNDRYTYPE,'#39'Y'#39')')
    Left = 57
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NALLOC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLIENT_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATTER_DESC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end>
  end
  object qryAllocJournal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      '  FROM alloc a, journal j'
      ' WHERE j.njournal = :njournal'
      '   AND a.njournal = j.njournal'
      '   AND CASE'
      '          WHEN j.trust = '#39'T'#39' AND a.acct = j.entity'
      '             THEN 1'
      '          WHEN j.trust = '#39'G'#39' AND a.acct = j.acct'
      '             THEN 1'
      '          ELSE 1'
      '       END = 1'
      '   AND j.acct = :acct')
    Left = 155
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NJOURNAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end>
  end
end
