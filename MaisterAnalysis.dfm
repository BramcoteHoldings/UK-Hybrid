object frmMaisterAnalysis: TfrmMaisterAnalysis
  Left = 339
  Top = 252
  Caption = 'Analysis/Comparison of fees'
  ClientHeight = 327
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object nlPercentVariance: TNumberLabel
    Left = 200
    Top = 248
    Width = 73
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0%'
    DecimalPlaces = 0
    DisplayFormat = dfPercent
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -16
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = [fsBold]
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clRed
    FontBelow.Height = -16
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = [fsBold]
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clGreen
    FontBetween.Height = -16
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = [fsBold]
    NoZero = False
  end
  object nlVariance: TNumberLabel
    Left = 96
    Top = 248
    Width = 97
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -16
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = [fsBold]
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clRed
    FontBelow.Height = -16
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = [fsBold]
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clGreen
    FontBetween.Height = -16
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = [fsBold]
    NoZero = False
  end
  object Label21: TLabel
    Left = 16
    Top = 248
    Width = 70
    Height = 21
    Caption = 'Variance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMatter: TLabel
    Left = 80
    Top = 8
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblClient: TLabel
    Left = 152
    Top = 8
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object lblMatterDesc: TLabel
    Left = 80
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object fraTheFirm: TGroupBox
    Left = 282
    Top = 64
    Width = 263
    Height = 225
    Caption = 'The Firm'
    TabOrder = 0
    object Label20: TLabel
      Left = 10
      Top = 32
      Width = 45
      Height = 15
      Caption = 'Revenue'
    end
    object Label23: TLabel
      Left = 10
      Top = 128
      Width = 138
      Height = 15
      Caption = 'Contribution/Partner Cost'
    end
    object Label24: TLabel
      Left = 10
      Top = 104
      Width = 65
      Height = 15
      Caption = 'Partner Cost'
    end
    object Label25: TLabel
      Left = 10
      Top = 80
      Width = 100
      Height = 15
      Caption = 'Gross Contribution'
    end
    object Label26: TLabel
      Left = 11
      Top = 56
      Width = 93
      Height = 15
      Caption = 'Non-Partner Cost'
    end
    object dblblFirmRecvdFees: TDBText
      Left = 160
      Top = 32
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'REVENUE'
      DataSource = dsFirmRevenue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dblblFirmJuniorCost: TDBText
      Left = 160
      Top = 56
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'COST'
      DataSource = dsFirmJuniorCost
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dblblFirmPartnerCost: TDBText
      Left = 160
      Top = 104
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'COST'
      DataSource = dsFirmPartnerCost
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object bvlLine: TBevel
      Left = 8
      Top = 144
      Width = 233
      Height = 2
    end
    object lblComparison: TLabel
      Left = 10
      Top = 152
      Width = 247
      Height = 15
      Caption = 'These figures include only Matters which have:'
    end
    object nlFirmGrossCont: TNumberLabel
      Left = 160
      Top = 80
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '$0.00'
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clBlue
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clBlue
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clBlue
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
    end
    object nlFirmDifference: TNumberLabel
      Left = 160
      Top = 128
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '$0.00'
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clBlue
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clBlue
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clBlue
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
    end
    object chkPartner: TCheckBox
      Left = 10
      Top = 168
      Width = 217
      Height = 17
      Caption = 'The same Partner as this Matter'
      TabOrder = 0
      OnClick = chkPartnerClick
    end
    object chkType: TCheckBox
      Left = 10
      Top = 200
      Width = 217
      Height = 17
      Caption = 'The same Type as this Matter'
      TabOrder = 1
      OnClick = chkTypeClick
    end
    object chkAuthor: TCheckBox
      Left = 10
      Top = 184
      Width = 217
      Height = 17
      Caption = 'The same Author as this Matter'
      TabOrder = 2
      OnClick = chkAuthorClick
    end
  end
  object fraThisMatter: TGroupBox
    Left = 8
    Top = 64
    Width = 249
    Height = 169
    Caption = 'This Matter'
    TabOrder = 1
    object Label15: TLabel
      Left = 16
      Top = 32
      Width = 45
      Height = 15
      Caption = 'Revenue'
    end
    object dblblJuniorCost: TDBText
      Left = 160
      Top = 56
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'COST'
      DataSource = dsJuniorCost
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dblblPartnerCost: TDBText
      Left = 160
      Top = 104
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'COST'
      DataSource = dsPartnerCost
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 16
      Top = 128
      Width = 138
      Height = 15
      Caption = 'Contribution/Partner Cost'
    end
    object Label18: TLabel
      Left = 16
      Top = 104
      Width = 65
      Height = 15
      Caption = 'Partner Cost'
    end
    object Label17: TLabel
      Left = 16
      Top = 80
      Width = 100
      Height = 15
      Caption = 'Gross Contribution'
    end
    object Label16: TLabel
      Left = 17
      Top = 56
      Width = 93
      Height = 15
      Caption = 'Non-Partner Cost'
    end
    object dblblRecvdFees: TDBText
      Left = 160
      Top = 32
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'FEES_PAID'
      DataSource = dsMatter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object nlGrossCont: TNumberLabel
      Left = 160
      Top = 80
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '$0.00'
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clBlue
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clBlue
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clBlue
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
    end
    object nlDifference: TNumberLabel
      Left = 160
      Top = 128
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '$0.00'
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clBlue
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clBlue
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clBlue
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
    end
  end
  object btnAnalyse: TBitBtn
    Left = 470
    Top = 296
    Width = 75
    Height = 25
    Caption = '&Analyse'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnAnalyseClick
  end
  object btnMatter: TBitBtn
    Left = 48
    Top = 8
    Width = 21
    Height = 21
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    TabOrder = 3
    OnClick = btnMatterClick
  end
  object qryPartnerCost: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(FEE.MINS * EMPLOYEE.COST_PER_HOUR / 60) AS COST FROM ' +
        'FEE, EMPLOYEE WHERE FEE.NMATTER = :P_Matter AND FEE.AUTHOR = EMP' +
        'LOYEE.CODE AND FEE.EMP_TYPE = '#39'PAR'#39)
    Left = 256
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
    object qryPartnerCostCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object dsPartnerCost: TUniDataSource
    DataSet = qryPartnerCost
    Left = 224
    Top = 8
  end
  object qryJuniorCost: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(FEE.MINS * EMPLOYEE.COST_PER_HOUR / 60) AS COST FROM ' +
        'FEE, '
      
        'EMPLOYEE WHERE FEE.NMATTER = :P_Matter AND FEE.AUTHOR = EMPLOYEE' +
        '.CODE AND FEE.EMP_TYPE <> '#39'PAR'#39)
    Left = 256
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
    object qryJuniorCostCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object dsJuniorCost: TUniDataSource
    DataSet = qryJuniorCost
    Left = 224
    Top = 40
  end
  object qryFirmRevenue: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(FEES_PAID) AS REVENUE FROM MATTER M, NMEMO N WHERE M.' +
        'OPENED >= :P_Opened'
      'AND M.NMATTER = N.NMATTER')
    Left = 320
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Opened'
        Value = nil
      end>
    object qryFirmRevenueREVENUE: TFloatField
      FieldName = 'REVENUE'
    end
  end
  object dsFirmRevenue: TUniDataSource
    DataSet = qryFirmRevenue
    Left = 288
    Top = 8
  end
  object qryFirmJuniorCost: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(FEE.MINS * EMPLOYEE.COST_PER_HOUR / 60) AS COST FROM ' +
        'FEE, EMPLOYEE '
      
        'WHERE FEE.CREATED >= :P_Opened AND FEE.AUTHOR = EMPLOYEE.CODE AN' +
        'D FEE.EMP_TYPE <> '#39'PAR'#39)
    Left = 332
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Opened'
        Value = nil
      end>
    object qryFirmJuniorCostCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object dsFirmJuniorCost: TUniDataSource
    DataSet = qryFirmJuniorCost
    Left = 288
    Top = 40
  end
  object qryFirmPartnerCost: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(FEE.MINS * EMPLOYEE.COST_PER_HOUR / 60) AS COST FROM ' +
        'FEE, EMPLOYEE WHERE FEE.CREATED >= :P_Opened AND FEE.AUTHOR = EM' +
        'PLOYEE.CODE AND FEE.EMP_TYPE = '#39'PAR'#39)
    Left = 192
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Opened'
        Value = nil
      end>
    object qryFirmPartnerCostCOST: TFloatField
      FieldName = 'COST'
    end
  end
  object dsFirmPartnerCost: TUniDataSource
    DataSet = qryFirmPartnerCost
    Left = 160
    Top = 8
  end
  object qryMatter: TUniQuery
    SQL.Strings = (
      
        'SELECT M.FILEID, M.TITLE, M.SHORTDESCR, M.PARTNER, M.AUTHOR, M.T' +
        'YPE, M.OPENED, FEES_PAID '
      'FROM MATTER M, NMEMO N WHERE M.FILEID = :FILEID'
      'AND M.NMATTER = N.NMATTER')
    Left = 192
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
    object qryMatterFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryMatterTITLE: TStringField
      FieldName = 'TITLE'
      Required = True
      Size = 85
    end
    object qryMatterSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 60
    end
    object qryMatterPARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 3
    end
    object qryMatterAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Required = True
      Size = 3
    end
    object qryMatterTYPE: TStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object qryMatterOPENED: TDateTimeField
      FieldName = 'OPENED'
    end
    object qryMatterFEES_PAID: TFloatField
      FieldName = 'FEES_PAID'
    end
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 160
    Top = 40
  end
end
