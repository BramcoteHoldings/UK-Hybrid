inherited frmFieldTypes: TfrmFieldTypes
  Left = 908
  Top = 232
  Caption = 'DataForm Fields'
  ClientHeight = 298
  ClientWidth = 490
  OldCreateOrder = True
  ExplicitWidth = 496
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 44
    Width = 53
    Height = 13
    Caption = 'Field Name'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 68
    Width = 36
    Height = 13
    Caption = 'Caption'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 117
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 93
    Width = 63
    Height = 13
    Caption = 'Foreign Code'
  end
  object pcOptions: TPageControl [4]
    Left = 279
    Top = 33
    Width = 196
    Height = 74
    ActivePage = tsRules
    Style = tsFlatButtons
    TabOrder = 8
    object tsRules: TTabSheet
      Caption = 'tsRules'
      TabVisible = False
      object btnRules: TButton
        Left = 111
        Top = 1
        Width = 75
        Height = 25
        Caption = '&Rules'
        TabOrder = 0
        OnClick = btnRulesClick
      end
    end
    object tsGroups: TTabSheet
      Caption = 'tsGroups'
      ImageIndex = 1
      TabVisible = False
      object lblPhonebookGroup: TLabel
        Left = 7
        Top = 2
        Width = 29
        Height = 13
        Caption = 'Group'
      end
      object dbcbPhonebookGroup: TDBComboBox
        Left = 43
        Top = 1
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'PHONEBOOKGROUP'
        DataSource = dsSource
        TabOrder = 0
      end
    end
    object tsMultiSelect: TTabSheet
      Caption = 'tsMultiSelect'
      ImageIndex = 2
      TabVisible = False
      object dbtMultiSelectCode: TDBText
        Left = 7
        Top = 6
        Width = 100
        Height = 13
        DataSource = dsSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dbcbAllowMultiple: TDBCheckBox
        Left = 5
        Top = 25
        Width = 95
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Allow Multiple?'
        DataSource = dsSource
        TabOrder = 0
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object btnMultiSelectCode: TButton
        Left = 111
        Top = 1
        Width = 75
        Height = 25
        Caption = '&Code'
        TabOrder = 1
        OnClick = btnMultiSelectCodeClick
      end
    end
    object tabFormat: TTabSheet
      Caption = 'tabFormat'
      ImageIndex = 3
      TabVisible = False
      object Label5: TLabel
        Left = 8
        Top = 0
        Width = 32
        Height = 13
        Caption = 'Format'
      end
      object dbedFormat: TDBEdit
        Left = 48
        Top = 0
        Width = 134
        Height = 21
        DataField = 'FORMAT'
        DataSource = dsSource
        TabOrder = 0
      end
    end
    object tabTaskSelect: TTabSheet
      Caption = 'tabTaskSelect'
      ImageIndex = 4
      TabVisible = False
      object lblTaskSelect: TLabel
        Left = 56
        Top = 0
        Width = 87
        Height = 13
        Caption = 'Select Task to run'
      end
      object BitBtn1: TBitBtn
        Left = 156
        Top = 0
        Width = 24
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
        TabOrder = 0
        OnClick = btnFieldNamesClick
      end
    end
  end
  object dbtbName: TDBEdit [5]
    Left = 80
    Top = 40
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NAME'
    DataSource = dsSource
    TabOrder = 0
  end
  object dbtbCaption: TDBEdit [6]
    Left = 80
    Top = 64
    Width = 193
    Height = 21
    AutoSize = False
    DataField = 'CAPTION'
    DataSource = dsSource
    TabOrder = 2
  end
  object dbrgType: TDBRadioGroup [7]
    Left = 8
    Top = 160
    Width = 466
    Height = 122
    Caption = 'Field Type'
    Columns = 3
    DataField = 'TYPE'
    DataSource = dsSource
    Items.Strings = (
      'Currency'
      'Date'
      'Integer'
      'Text'
      'Boolean'
      'Matter Contacts'
      'Key Diary - Service Partner'
      'Key Diary - Partner'
      'Key Diary - Controller'
      'Key Diary - Author'
      'Key Diary - User')
    ParentBackground = True
    TabOrder = 5
    Values.Strings = (
      'C'
      'D'
      'I'
      'T'
      'B'
      'OP'
      'DS'
      'DP'
      'DC'
      'DA'
      'DU')
    OnChange = dbrgTypeChange
  end
  object dbtbDescr: TDBEdit [8]
    Left = 80
    Top = 113
    Width = 393
    Height = 21
    DataField = 'DESCR'
    DataSource = dsSource
    TabOrder = 4
    OnEnter = dbtbDescrEnter
  end
  object btnFieldNames: TBitBtn [9]
    Left = 249
    Top = 40
    Width = 24
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
    TabOrder = 1
    OnClick = btnFieldNamesClick
  end
  object edForeignCode: TEdit [10]
    Left = 80
    Top = 89
    Width = 193
    Height = 21
    TabOrder = 3
    OnChange = edForeignCodeChange
  end
  object DBCheckBox1: TDBCheckBox [11]
    Left = 80
    Top = 140
    Width = 97
    Height = 17
    Caption = 'Mandatory'
    DataField = 'MANDATORY'
    DataSource = dsSource
    TabOrder = 11
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  inherited ilstToolbar: TImageList
    Left = 362
    Top = 304
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT F.*, F.ROWID'
      'FROM FIELDTYPE F'
      'ORDER BY F.NAME')
  end
  inherited bmMain: TdxBarManager
    Left = 258
    Top = 300
    DockControlHeights = (
      0
      0
      28
      0)
    inherited bmMainBar1: TdxBar
      OldName = 'Main Menu1'
    end
    inherited bmMainBar2: TdxBar
      AllowClose = False
      OldName = 'Toolbar1'
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 137
    Top = 306
  end
  inherited rpMaintReport: TppReport
    DataPipelineName = 'plSource'
    inherited ppMaintHeaderBand: TppHeaderBand
      inherited ppLine1: TppLine [0]
        LayerName = Foreground
      end
      inherited ppSystemVariable1: TppSystemVariable [1]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblEntity: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblTitle: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppMaintDetailBand: TppDetailBand
      mmHeight = 9525
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NAME'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DESCR'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 265
        mmWidth = 107950
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 25135
        mmTop = 0
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DESCR'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 4763
        mmWidth = 192617
        BandType = 4
      end
    end
    inherited ppMaintSummaryBand: TppSummaryBand
      inherited ppLine2: TppLine
        LayerName = Foreground
      end
    end
  end
  inherited plSource: TppDBPipeline
    object plSourceppField1: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'CAPTION'
      FieldName = 'CAPTION'
      FieldLength = 120
      DisplayWidth = 120
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 400
      DisplayWidth = 400
      Position = 2
    end
    object plSourceppField4: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object plSourceppField5: TppField
      FieldAlias = 'PHONEBOOKGROUP'
      FieldName = 'PHONEBOOKGROUP'
      FieldLength = 25
      DisplayWidth = 25
      Position = 4
    end
    object plSourceppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONSTRAINT_WIDTH'
      FieldName = 'CONSTRAINT_WIDTH'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plSourceppField7: TppField
      FieldAlias = 'CONSTRAINT_UPPERCASE'
      FieldName = 'CONSTRAINT_UPPERCASE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plSourceppField8: TppField
      FieldAlias = 'MULTISELECTCODE'
      FieldName = 'MULTISELECTCODE'
      FieldLength = 25
      DisplayWidth = 25
      Position = 7
    end
    object plSourceppField9: TppField
      FieldAlias = 'CONSTRAINT_MULTIPLE'
      FieldName = 'CONSTRAINT_MULTIPLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object plSourceppField10: TppField
      FieldAlias = 'FORMAT'
      FieldName = 'FORMAT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plSourceppField11: TppField
      FieldAlias = 'LOOKUPFIELD'
      FieldName = 'LOOKUPFIELD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object plSourceppField12: TppField
      FieldAlias = 'DEFAULTTEXT'
      FieldName = 'DEFAULTTEXT'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 11
    end
    object plSourceppField13: TppField
      FieldAlias = 'LOOKUPENFORCED'
      FieldName = 'LOOKUPENFORCED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object plSourceppField14: TppField
      FieldAlias = 'LOOKUPAUTOADD'
      FieldName = 'LOOKUPAUTOADD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object plSourceppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISPLAYLINECOUNT'
      FieldName = 'DISPLAYLINECOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plSourceppField16: TppField
      FieldAlias = 'MANDATORY'
      FieldName = 'MANDATORY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plSourceppField17: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 16
    end
  end
  object qryPhonebookGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PBGROUP WHERE OTHERPARTY = '#39'Y'#39)
    Left = 682
    Top = 62
  end
  object qryMultiSelection: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM MULTISELECTION')
    Left = 588
    Top = 134
  end
  object qryLookups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT LOOKUPVALUE '
      'FROM FIELDTYPELOOKUP '
      'WHERE FIELDNAME = :NAME')
    MasterSource = dsSource
    ReadOnly = True
    Left = 588
    Top = 274
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
      end>
  end
  object qryDataFieldMapping: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*, D.ROWID'
      'FROM DATAFIELDMAPPING D'
      'WHERE D.AXIOMCODE = :NAME')
    Left = 601
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
      end>
  end
end
