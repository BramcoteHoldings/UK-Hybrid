object frmCodeRules: TfrmCodeRules
  Left = 438
  Top = 231
  Caption = 'Automatic Coding Rules'
  ClientHeight = 524
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 15
  object pagTypes: TcxPageControl
    Left = 12
    Top = 53
    Width = 643
    Height = 388
    TabOrder = 0
    Properties.ActivePage = tabClient
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    ClientRectBottom = 384
    ClientRectLeft = 4
    ClientRectRight = 639
    ClientRectTop = 26
    object tabClient: TcxTabSheet
      Caption = 'Client'
      ImageIndex = 0
      object Label2: TLabel
        Left = 11
        Top = 132
        Width = 91
        Height = 15
        Caption = 'Number Padding'
      end
      object Label8: TLabel
        Left = 11
        Top = 171
        Width = 97
        Height = 15
        Caption = 'Number Separator'
      end
      object dbrgClientCode: TDBRadioGroup
        Left = 11
        Top = 8
        Width = 172
        Height = 109
        Caption = 'Code'
        DataField = 'CLIENTCODE'
        DataSource = dsCodeRules
        Items.Strings = (
          'Client Number'
          'Partial Name')
        TabOrder = 0
        Values.Strings = (
          'N'
          'A')
        OnChange = dbrgClientCodeChange
      end
      object gbClientName: TGroupBox
        Left = 199
        Top = 8
        Width = 245
        Height = 109
        Caption = 'Name'
        TabOrder = 1
        object Label1: TLabel
          Left = 11
          Top = 21
          Width = 89
          Height = 15
          Caption = 'Number of chars'
        end
        object dbtbClientLength: TDBEdit
          Left = 151
          Top = 17
          Width = 42
          Height = 23
          DataField = 'CLIENTLENGTH'
          DataSource = dsCodeRules
          TabOrder = 0
        end
        object dbchkClientAcronym: TDBCheckBox
          Left = 11
          Top = 53
          Width = 149
          Height = 22
          Caption = 'Create Acronym?'
          DataField = 'CLIENTACRONYM'
          DataSource = dsCodeRules
          TabOrder = 1
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 11
          Top = 79
          Width = 149
          Height = 21
          Caption = 'Use Name value?'
          DataField = 'USE_PHONEBOOK_NAME'
          DataSource = dsCodeRules
          TabOrder = 2
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
      end
      object dbtbClientPad: TDBEdit
        Left = 149
        Top = 132
        Width = 44
        Height = 23
        DataField = 'CLIENTPAD'
        DataSource = dsCodeRules
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 149
        Top = 165
        Width = 44
        Height = 23
        DataField = 'CLIENTSEPARATOR'
        DataSource = dsCodeRules
        TabOrder = 3
      end
      object grpbxEntityPrefix: TGroupBox
        Left = 297
        Top = 203
        Width = 247
        Height = 129
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Entity Prefix'
        TabOrder = 4
        object lblUseEntityLength: TLabel
          Left = 11
          Top = 52
          Width = 89
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Number of chars'
        end
        object lblEntitySeparator: TLabel
          Left = 12
          Top = 96
          Width = 82
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Entity separator'
        end
        object tdbchkUseEntityCode: TDBCheckBox
          Left = 12
          Top = 21
          Width = 204
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Use Entity code as prefix'
          DataField = 'USE_ENTITY_CODE'
          DataSource = dsCodeRules
          TabOrder = 0
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object tdbUseEntityLength: TDBEdit
          Left = 151
          Top = 52
          Width = 42
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'USE_ENTITY_LENGTH'
          DataSource = dsCodeRules
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 151
          Top = 91
          Width = 42
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'USE_ENTITY_SEPARATOR'
          DataSource = dsCodeRules
          TabOrder = 2
        end
      end
      object grpbxEntityGroupPrefix: TGroupBox
        Left = 11
        Top = 203
        Width = 278
        Height = 129
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Company Prefix'
        TabOrder = 5
        object Label9: TLabel
          Left = 11
          Top = 56
          Width = 89
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Number of chars'
        end
        object Label10: TLabel
          Left = 11
          Top = 96
          Width = 104
          Height = 15
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Company separator'
        end
        object tdchkUseEntityGroupPrefix: TDBCheckBox
          Left = 11
          Top = 21
          Width = 246
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Use Company code as prefix'
          DataField = 'USE_ENTGRP_CODE'
          DataSource = dsCodeRules
          TabOrder = 0
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object tdbUseEntityGroupLength: TDBEdit
          Left = 179
          Top = 52
          Width = 40
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'USE_ENTGRP_LENGTH'
          DataSource = dsCodeRules
          TabOrder = 1
        end
        object tdbEGSeparator: TDBEdit
          Left = 179
          Top = 91
          Width = 40
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'USE_ENTGRP_SEPARATOR'
          DataSource = dsCodeRules
          TabOrder = 2
        end
      end
    end
    object tabCreditor: TcxTabSheet
      Caption = 'Creditor'
      ImageIndex = 1
      object Label6: TLabel
        Left = 11
        Top = 133
        Width = 91
        Height = 15
        Caption = 'Number Padding'
      end
      object dbrgCreditorCode: TDBRadioGroup
        Left = 11
        Top = 7
        Width = 172
        Height = 109
        Caption = 'Code'
        DataField = 'CREDITORCODE'
        DataSource = dsCodeRules
        Items.Strings = (
          'Creditor Number'
          'Partial Name')
        TabOrder = 0
        Values.Strings = (
          'N'
          'A')
        OnChange = dbrgCreditorCodeChange
      end
      object gbCreditorName: TGroupBox
        Left = 201
        Top = 7
        Width = 246
        Height = 109
        Caption = 'Name'
        TabOrder = 1
        object Label5: TLabel
          Left = 11
          Top = 21
          Width = 89
          Height = 15
          Caption = 'Number of chars'
        end
        object dbtbCreditorLength: TDBEdit
          Left = 144
          Top = 17
          Width = 43
          Height = 23
          DataField = 'CREDITORLENGTH'
          DataSource = dsCodeRules
          TabOrder = 0
        end
        object dbchkCreditorAcronym: TcxDBCheckBox
          Left = 11
          Top = 61
          Caption = 'Create Acronym?'
          DataBinding.DataField = 'CREDITORACRONYM'
          DataBinding.DataSource = dsCodeRules
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          TabOrder = 1
        end
      end
      object dbtbCreditorPad: TDBEdit
        Left = 153
        Top = 128
        Width = 44
        Height = 23
        DataField = 'CREDITORPAD'
        DataSource = dsCodeRules
        TabOrder = 2
      end
    end
    object tabMatter: TcxTabSheet
      Caption = 'Matter'
      ImageIndex = 2
      object Label3: TLabel
        Left = 396
        Top = 20
        Width = 91
        Height = 15
        Caption = 'Number Padding'
      end
      object Label4: TLabel
        Left = 396
        Top = 53
        Width = 97
        Height = 15
        Caption = 'Number Separator'
      end
      object Label7: TLabel
        Left = 396
        Top = 85
        Width = 67
        Height = 15
        Caption = 'Matter Prefix'
      end
      object dbtbMatterPad: TDBEdit
        Left = 567
        Top = 16
        Width = 44
        Height = 23
        DataField = 'MATTERPAD'
        DataSource = dsCodeRules
        TabOrder = 0
      end
      object dbtbMatterSeperator: TDBEdit
        Left = 567
        Top = 48
        Width = 44
        Height = 23
        DataField = 'MATTERSEPERATOR'
        DataSource = dsCodeRules
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 567
        Top = 81
        Width = 44
        Height = 23
        DataField = 'MATTERPREFIX'
        DataSource = dsCodeRules
        TabOrder = 2
      end
      object dbrgMatterCode: TcxDBRadioGroup
        Left = 9
        Top = 8
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'File ID Code (Matter Number)'
        DataBinding.DataField = 'MATTERCODE'
        DataBinding.DataSource = dsCodeRules
        Properties.Items = <
          item
            Caption = 'Matter Number'
            Value = 'N'
          end
          item
            Caption = 'Client Code + Seq#'
            Value = 'C'
          end
          item
            Caption = 'Author + Matter Number'
            Value = 'A'
          end
          item
            Caption = 'Partner + Matter Number'
            Value = 'P'
          end
          item
            Caption = 'Type + Matter Number'
            Value = 'T'
          end
          item
            Caption = 'Client Code + Entity + Type + Matter Number'
            Value = 'E'
          end
          item
            Caption = 'Matter Number + Type'
            Value = 'M'
          end>
        TabOrder = 3
        Transparent = True
        Height = 284
        Width = 370
      end
    end
  end
  object qryCodeRules: TUniQuery
    UpdatingTable = 'entity'
    KeyFields = 'code'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT E.*, E.ROWID '
      'FROM ENTITY E'
      'WHERE E.CODE = :Entity')
    CachedUpdates = True
    Left = 363
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Entity'
        Value = nil
      end>
  end
  object dsCodeRules: TUniDataSource
    DataSet = qryCodeRules
    Left = 299
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 459
    Top = 62
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 705
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOk'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCancel'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnOk: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object btnCancel: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      OnClick = btnCancelClick
    end
  end
end
