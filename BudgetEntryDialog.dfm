object fmBudgetEntryDialog: TfmBudgetEntryDialog
  Left = 607
  Top = 429
  BorderStyle = bsDialog
  Caption = 'Budget Entry'
  ClientHeight = 219
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 46
    Top = 14
    Width = 53
    Height = 14
    Caption = 'Employee'
  end
  object Label3: TLabel
    Left = 188
    Top = 39
    Width = 23
    Height = 14
    Caption = 'Year'
  end
  object Label4: TLabel
    Left = 37
    Top = 64
    Width = 62
    Height = 14
    Caption = 'Billed Fees'
  end
  object Label5: TLabel
    Left = 78
    Top = 89
    Width = 21
    Height = 14
    Caption = 'WIP'
  end
  object Label6: TLabel
    Left = 29
    Top = 114
    Width = 70
    Height = 14
    Caption = 'Time (Hours)'
  end
  object Label7: TLabel
    Left = 23
    Top = 164
    Width = 76
    Height = 14
    Caption = 'Account Value'
  end
  object Label8: TLabel
    Left = 27
    Top = 139
    Width = 72
    Height = 14
    Caption = 'Account Code'
  end
  object Label2: TLabel
    Left = 64
    Top = 39
    Width = 35
    Height = 14
    Caption = 'Month'
  end
  object OKBtn: TcxButton
    Left = 107
    Top = 187
    Width = 75
    Height = 25
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333377F3333333333000033334224333333333333
      337337F3333333330000333422224333333333333733337F3333333300003342
      222224333333333373333337F3333333000034222A22224333333337F337F333
      7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
      33333337F73337F337F33333000033A33333A222433333337333337F337F3333
      0000333333333A222433333333333337F337F33300003333333333A222433333
      333333337F337F33000033333333333A222433333333333337F337F300003333
      33333333A222433333333333337F337F00003333333333333A22433333333333
      3337F37F000033333333333333A223333333333333337F730000333333333333
      333A333333333333333337330000333333333333333333333333333333333333
      0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 7
    OnClick = OKBtnClick
  end
  object CancelBtn: TcxButton
    Left = 192
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
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
    TabOrder = 8
    OnClick = CancelBtnClick
  end
  object cbYear: TcxDBComboBox
    Left = 216
    Top = 35
    DataBinding.DataField = 'CALENDAR_YEAR'
    DataBinding.DataSource = dsBudget
    Properties.Items.Strings = (
      '2002'
      '2003'
      '2004'
      '2005'
      '2006'
      '2007'
      '2008'
      '2009'
      '2010'
      '2011'
      '2012'
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020')
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 90
  end
  object cbMonth: TcxDBLookupComboBox
    Left = 107
    Top = 35
    DataBinding.DataField = 'PERIOD'
    DataBinding.DataSource = dsBudget
    Properties.DropDownRows = 12
    Properties.KeyFieldNames = 'KEY'
    Properties.ListColumns = <
      item
        FieldName = 'VALUE'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMonth
    Properties.OnChange = cbEmployeeChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 73
  end
  object eBilledFees: TcxDBCurrencyEdit
    Left = 107
    Top = 60
    DataBinding.DataField = 'BILLEDFEES'
    DataBinding.DataSource = dsBudget
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 135
  end
  object eWIP: TcxDBCurrencyEdit
    Left = 107
    Top = 85
    DataBinding.DataField = 'WIP'
    DataBinding.DataSource = dsBudget
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 135
  end
  object eTime: TcxDBTextEdit
    Left = 107
    Top = 110
    DataBinding.DataField = 'TIME'
    DataBinding.DataSource = dsBudget
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Width = 135
  end
  object eAccountValue: TcxDBTextEdit
    Left = 107
    Top = 160
    DataBinding.DataField = 'ACCOUNTVALUE'
    DataBinding.DataSource = dsBudget
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 135
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 107
    Top = 135
    DataBinding.DataField = 'ACCOUNTCODE'
    DataBinding.DataSource = dsBudget
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 15
    Properties.DropDownSizeable = True
    Properties.KeyFieldNames = 'KEY'
    Properties.ListColumns = <
      item
        FieldName = 'KEY'
      end
      item
        FieldName = 'DISPLAY'
      end>
    Properties.ListOptions.GridLines = glVertical
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsAccountCodes
    Properties.OnChange = cbEmployeeChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
    Width = 135
  end
  object cbEmployee: TcxDBLookupComboBox
    Left = 107
    Top = 9
    DataBinding.DataField = 'EMPLOYEE'
    DataBinding.DataSource = dsBudget
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 20
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsEmployee
    Properties.OnChange = cbEmployeeChange
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 200
  end
  object qBudget: TUniQuery
    KeyFields = 'NBUDGET'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT b.rowid, b.* FROM budget b WHERE b.nbudget = :nbudget')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=BUDGET_NBUDGET')
    BeforePost = qBudgetBeforePost
    Left = 7
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nbudget'
        Value = nil
      end>
    object qBudgetNBUDGET: TFloatField
      FieldName = 'NBUDGET'
    end
    object qBudgetENTITY: TStringField
      FieldName = 'ENTITY'
      Required = True
      Size = 2
    end
    object qBudgetCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qBudgetPERIOD: TFloatField
      FieldName = 'PERIOD'
      Required = True
    end
    object qBudgetCALENDAR_YEAR: TFloatField
      FieldName = 'CALENDAR_YEAR'
      Required = True
    end
    object qBudgetEMPLOYEE: TStringField
      FieldName = 'EMPLOYEE'
      Size = 3
    end
    object qBudgetDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 3
    end
    object qBudgetACCOUNTCODE: TStringField
      FieldName = 'ACCOUNTCODE'
      Size = 12
    end
    object qBudgetACCOUNTVALUE: TFloatField
      FieldName = 'ACCOUNTVALUE'
    end
    object qBudgetBILLEDFEES: TFloatField
      FieldName = 'BILLEDFEES'
    end
    object qBudgetWIP: TFloatField
      FieldName = 'WIP'
    end
    object qBudgetTIME: TFloatField
      FieldName = 'TIME'
    end
    object qBudgetFINANCIAL_YEAR: TFloatField
      FieldName = 'FINANCIAL_YEAR'
    end
    object qBudgetMONTH: TFloatField
      FieldName = 'MONTH'
    end
    object qBudgetROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
  end
  object dsBudget: TUniDataSource
    AutoEdit = False
    DataSet = qBudget
    Left = 6
    Top = 56
  end
  object qEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name, dept FROM employee WHERE entity = :entity'
      '-- REPLACE'
      'ORDER BY name')
    Left = 277
    Top = 82
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
    object qEmployeeCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object qEmployeeNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qEmployeeDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
  end
  object dsEmployee: TUniDataSource
    AutoEdit = False
    DataSet = qEmployee
    Left = 332
    Top = 86
  end
  object qAccountCodes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE AS KEY, DESCR AS DISPLAY FROM CHART WHERE BANK = :en' +
        'tity ORDER BY 1')
    Left = 318
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
    object qAccountCodesKEY: TStringField
      FieldName = 'KEY'
      Size = 12
    end
    object qAccountCodesDISPLAY: TStringField
      FieldName = 'DISPLAY'
      Size = 120
    end
  end
  object dsAccountCodes: TUniDataSource
    AutoEdit = False
    DataSet = qAccountCodes
    Left = 403
    Top = 172
  end
  object qMonth: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT  7 AS KEY,'#39'Jan'#39' AS VALUE, 1 AS ORD FROM DUAL'
      'UNION'
      'SELECT  8 AS KEY,'#39'Feb'#39' AS VALUE, 2 AS ORD FROM DUAL'
      'UNION'
      'SELECT  9 AS KEY,'#39'Mar'#39' AS VALUE, 3 AS ORD FROM DUAL'
      'UNION'
      'SELECT 10 AS KEY,'#39'Apr'#39' AS VALUE, 4 AS ORD FROM DUAL'
      'UNION'
      'SELECT 11 AS KEY,'#39'May'#39' AS VALUE, 5 AS ORD FROM DUAL'
      'UNION'
      'SELECT 12 AS KEY,'#39'Jun'#39' AS VALUE, 6 AS ORD FROM DUAL'
      'UNION'
      'SELECT  1 AS KEY,'#39'Jul'#39' AS VALUE, 7 AS ORD FROM DUAL'
      'UNION'
      'SELECT  2 AS KEY,'#39'Aug'#39' AS VALUE, 8 AS ORD FROM DUAL'
      'UNION'
      'SELECT  3 AS KEY,'#39'Sep'#39' AS VALUE, 9 AS ORD FROM DUAL'
      'UNION'
      'SELECT  4 AS KEY,'#39'Oct'#39' AS VALUE,10 AS ORD FROM DUAL'
      'UNION'
      'SELECT  5 AS KEY,'#39'Nov'#39' AS VALUE,11 AS ORD FROM DUAL'
      'UNION'
      'SELECT  6 AS KEY,'#39'Dec'#39' AS VALUE,12 AS ORD FROM DUAL'
      'ORDER BY ORD')
    Left = 353
    Top = 174
    object qMonthKEY: TFloatField
      FieldName = 'KEY'
    end
    object qMonthVALUE: TStringField
      FieldName = 'VALUE'
      FixedChar = True
      Size = 3
    end
  end
  object dsMonth: TUniDataSource
    AutoEdit = False
    DataSet = qMonth
    Left = 449
    Top = 174
  end
end
