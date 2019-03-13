object frmCrystalReportDef: TfrmCrystalReportDef
  Left = 506
  Top = 329
  Caption = 'Custom Report Period Definitions'
  ClientHeight = 251
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object btnTemplateItemOk: TcxButton
    Left = 387
    Top = 214
    Width = 75
    Height = 25
    Caption = 'OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000FF000000FF000000FF000000FF000000FF000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000FF000000FF000000FF000000FF000000FF000000FF000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
      000000FF000000FF000000000000FF00FF0000FF000000FF000000FF00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF00000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
      000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000080000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000080000000FF000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 1
    OnClick = btnTemplateItemOkClick
  end
  object btnTemplateItemCancel: TcxButton
    Left = 468
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.Data = {
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
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
    OnClick = btnTemplateItemCancelClick
  end
  object btnTemplateRefresh: TcxButton
    Left = 279
    Top = 214
    Width = 100
    Height = 25
    Caption = 'Refresh Data'
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF007070708FB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009900FF333B33CCA5A5A55A7373738C66666699666666997373
      738CCCCCCC33FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009900FF006000FF337733CC007300FF009900FF007C00FF004D
      00FF333B33CC8080807FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009900FF009900FF009900FF009900FF009900FF009900FF0099
      00FF007C00FF333B33CCA5A5A55AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009900FF009900FF009900FF009900FF109F10EF40B240BF20A5
      20DF009900FF007300FF404040BFF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009900FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20FFFF
      FF009FD89F60109F10EF335933CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009900FF009900FF009900FF009900FF005600FF454545BAFFFF
      FF00FFFFFF00BFE5BF40006900FF7373738CFFFFFF00FFFFFF00FFFFFF00B2B2
      B24DFFFFFF00009900FF009900FF009900FF009900FF009900FF009900FF3030
      30CFFFFFFF00FFFFFF0060BF609F666D6699FFFFFF00FFFFFF00FFFFFF00334A
      33CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DFF2DF20A5C3A55AFFFFFF00FFFFFF00FFFFFF001078
      10EF404040BFF2F2F20DFFFFFF00FFFFFF00378937C8136313EC114B11EE1143
      11EE113411EE243524DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BF
      609F004300FF595959A6E5E5E51AFFFFFF00E5F4E51A109F10EF009900FF0099
      00FF009900FF184718E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFE5
      BF40009900FF004D00FF404040BF8080807F99999966105210EF009900FF0099
      00FF009900FF154515EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0050B950AF009900FF008600FF004D00FF005600FF008F00FF009900FF0099
      00FF009900FF144414EBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF8EF1030AC30CF009900FF009900FF009900FF009900FF009900FF0099
      00FF009900FF164516E9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF8EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB
      7F80009900FF194719E6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008FD28F703D743DC2FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 0
    OnClick = btnTemplateRefreshClick
  end
  object cxGroupBox1: TcxGroupBox
    Left = 281
    Top = 10
    Caption = 'Comparative Reporting Period'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Height = 192
    Width = 264
    object Label8: TLabel
      Left = 80
      Top = 20
      Width = 35
      Height = 14
      Caption = 'Period'
    end
    object Label9: TLabel
      Left = 80
      Top = 68
      Width = 35
      Height = 14
      Caption = 'Month'
    end
    object Label10: TLabel
      Left = 10
      Top = 92
      Width = 105
      Height = 14
      Caption = 'Financial Year Start'
    end
    object Label11: TLabel
      Left = 15
      Top = 116
      Width = 100
      Height = 14
      Caption = 'Financial Year End'
    end
    object Label12: TLabel
      Left = 52
      Top = 141
      Width = 63
      Height = 14
      Caption = 'Period Start'
    end
    object Label13: TLabel
      Left = 38
      Top = 44
      Width = 77
      Height = 14
      Caption = 'Financial Year'
    end
    object Label14: TLabel
      Left = 57
      Top = 164
      Width = 58
      Height = 14
      Caption = 'Period End'
    end
    object cxCompPeriod: TcxDBTextEdit
      Left = 126
      Top = 16
      DataBinding.DataField = 'COMP_PERIOD'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnExit = cxCompPeriodExit
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 126
      Top = 64
      DataBinding.DataField = 'COMP_MONTH'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit5: TcxDBDateEdit
      Left = 126
      Top = 88
      DataBinding.DataField = 'COMP_FINYEARSTART'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 121
    end
    object cxDBDateEdit6: TcxDBDateEdit
      Left = 126
      Top = 112
      DataBinding.DataField = 'COMP_FINYEAREND'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 121
    end
    object cxDBDateEdit7: TcxDBDateEdit
      Left = 126
      Top = 136
      DataBinding.DataField = 'COMP_CURRPERIODSTART'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 121
    end
    object cxDBDateEdit8: TcxDBDateEdit
      Left = 126
      Top = 160
      DataBinding.DataField = 'COMP_CURRPERIODEND'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 121
    end
    object cxCompYear: TcxDBTextEdit
      Left = 126
      Top = 40
      DataBinding.DataField = 'COMP_FINYEAR'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = cxCompPeriodExit
      Width = 121
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 7
    Top = 10
    Caption = 'Current Reporting Period'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Height = 192
    Width = 264
    object Label7: TLabel
      Left = 15
      Top = 168
      Width = 100
      Height = 14
      Caption = 'Current Period End'
    end
    object Label5: TLabel
      Left = 10
      Top = 144
      Width = 105
      Height = 14
      Caption = 'Current Period Start'
    end
    object Label4: TLabel
      Left = 15
      Top = 120
      Width = 100
      Height = 14
      Caption = 'Financial Year End'
    end
    object Label3: TLabel
      Left = 10
      Top = 96
      Width = 105
      Height = 14
      Caption = 'Financial Year Start'
    end
    object Label2: TLabel
      Left = 80
      Top = 72
      Width = 35
      Height = 14
      Caption = 'Month'
    end
    object Label6: TLabel
      Left = 38
      Top = 48
      Width = 77
      Height = 14
      Caption = 'Financial Year'
    end
    object Label1: TLabel
      Left = 80
      Top = 24
      Width = 35
      Height = 14
      Caption = 'Period'
    end
    object cxPeriod: TcxDBTextEdit
      Left = 128
      Top = 16
      DataBinding.DataField = 'PERIOD'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnExit = cxYearExit
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 128
      Top = 64
      DataBinding.DataField = 'MONTH'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 128
      Top = 88
      DataBinding.DataField = 'FINYEARSTART'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 128
      Top = 112
      DataBinding.DataField = 'FINYEAREND'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 128
      Top = 136
      DataBinding.DataField = 'CURRPERIODSTART'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 128
      Top = 160
      DataBinding.DataField = 'CURRPERIODEND'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 121
    end
    object cxYear: TcxDBTextEdit
      Left = 128
      Top = 40
      DataBinding.DataField = 'FINYEAR'
      DataBinding.DataSource = dsCrReportRange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnExit = cxYearExit
      Width = 121
    end
  end
  object qryCrReportRange: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      '    cr_reportrange.*,'
      '    cr_reportrange.rowid'
      'from cr_reportrange')
    CachedUpdates = True
    Left = 738
    Top = 23
  end
  object dsCrReportRange: TUniDataSource
    DataSet = qryCrReportRange
    Left = 679
    Top = 76
  end
  object qryLast: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cr_reportrange'
      
        '  (PERIOD, MONTH, FINYEARSTART, FINYEAREND, CURRENTPERIODSTART, ' +
        'CURRENTPERIODEND, FINYEAR)'
      'VALUES'
      
        '  (:PERIOD, :MONTH, :FINYEARSTART, :FINYEAREND, :CURRENTPERIODST' +
        'ART, :CURRENTPERIODEND, :FINYEAR)')
    SQLDelete.Strings = (
      'DELETE FROM cr_reportrange'
      'WHERE'
      '  ROWID = :OLD_ROWID')
    SQLUpdate.Strings = (
      'UPDATE cr_reportrange'
      'SET'
      '  PERIOD = :PERIOD,'
      '  MONTH = :MONTH,'
      '  FINYEARSTART = :FINYEARSTART,'
      '  FINYEAREND = :FINYEAREND,'
      '  CURRENTPERIODSTART = :CURRENTPERIODSTART,'
      '  CURRENTPERIODEND = :CURRENTPERIODEND,'
      '  FINYEAR = :FINYEAR')
    SQLLock.Strings = (
      'SELECT * FROM cr_reportrange'
      'WHERE'
      '  ROWID = :OLD_ROWID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ROWID = :OLD_ROWID')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select last_Day(:ddate) dout from dual')
    CachedUpdates = True
    Left = 676
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ddate'
        Value = nil
      end>
  end
end
