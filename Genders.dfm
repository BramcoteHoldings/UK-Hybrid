inherited frmGenders: TfrmGenders
  Left = 531
  Top = 319
  Caption = 'Name Label Maintenance'
  ClientHeight = 488
  ClientWidth = 921
  OldCreateOrder = True
  ExplicitWidth = 927
  ExplicitHeight = 519
  PixelsPerInch = 106
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 30
    Width = 921
    Height = 458
    Align = alClient
    TabOrder = 4
    AutoSize = True
    ExplicitWidth = 1210
    ExplicitHeight = 495
    object DBEdit1: TDBEdit
      Left = 96
      Top = 14
      Width = 75
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CODE'
      DataSource = dsSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 248
      Top = 14
      Width = 209
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DESCR'
      DataSource = dsSource
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 104
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NAMECAPTION'
      DataSource = dsSource
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 44
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SEARCHCAPTION'
      DataSource = dsSource
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 134
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'TITLECAPTION'
      DataSource = dsSource
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 96
      Top = 164
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'OCCUPATIONCAPTION'
      DataSource = dsSource
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 96
      Top = 194
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'LONGNAMECAPTION'
      DataSource = dsSource
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 96
      Top = 224
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SHORTNAMECAPTION'
      DataSource = dsSource
      TabOrder = 9
    end
    object DBEdit9: TDBEdit
      Left = 96
      Top = 254
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ACNCAPTION'
      DataSource = dsSource
      TabOrder = 10
    end
    object DBEdit11: TDBEdit
      Left = 96
      Top = 284
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CLIENTNAMECAPTION'
      DataSource = dsSource
      TabOrder = 11
    end
    object DBEdit12: TDBEdit
      Left = 96
      Top = 314
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CLIENTCONTACTCAPTION'
      DataSource = dsSource
      TabOrder = 12
    end
    object DBEdit10: TDBEdit
      Left = 96
      Top = 74
      Width = 137
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SALUTATIONCAPTION'
      DataSource = dsSource
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 242
      Top = 105
      Width = 87
      Height = 17
      Caption = 'Mandatory'
      DataField = 'IS_NAME_MANDATORY'
      DataSource = dsSource
      TabOrder = 5
      ValueChecked = 'Y'
      ValueUnchecked = 'N'
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Code'
      Control = DBEdit1
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 75
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Description'
      Control = DBEdit2
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 209
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Search'
      Control = DBEdit4
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Salutation'
      Control = DBEdit10
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Name'
      Control = DBEdit3
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Title'
      Control = DBEdit5
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Occupation'
      Control = DBEdit6
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Long Name'
      Control = DBEdit7
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 5
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Short Name'
      Control = DBEdit8
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 6
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'A.C.N.'
      Control = DBEdit9
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Client Name'
      Control = DBEdit11
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 8
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Client Contact'
      Control = DBEdit12
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      Index = 9
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avCenter
      CaptionOptions.Text = 'DBCheckBox1'
      CaptionOptions.Visible = False
      Control = DBCheckBox1
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  inherited dsSource: TUniDataSource
    Left = 378
    Top = 261
  end
  inherited ilstToolbar: TImageList
    Left = 360
    Top = 106
  end
  inherited qrySource: TUniQuery
    SQL.Strings = (
      'SELECT G.*, G.ROWID'
      'FROM GENDER g'
      'ORDER BY G.CODE')
    Left = 366
    Top = 196
  end
  inherited bmMain: TdxBarManager
    PixelsPerInch = 106
    inherited bmMainBar1: TdxBar
      NotDocking = []
      OldName = 'Main Menu1'
    end
    inherited bmMainBar2: TdxBar
      AllowClose = False
      AllowReset = False
      OldName = 'Toolbar1'
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 391
    Top = 119
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
      mmHeight = 44186
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Caption = 'CODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CODE'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 2646
        mmWidth = 3175
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Caption = 'DESCR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 2646
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'DESCR'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 42598
        mmTop = 2646
        mmWidth = 128059
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Caption = 'SEARCHCAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 9260
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'SEARCHCAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 9260
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Caption = 'NAMECAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 9260
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'NAMECAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 9260
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Caption = 'LONGNAMECAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 15610
        mmWidth = 35983
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'LONGNAMECAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 15610
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Caption = 'SHORTNAMECAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 15610
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'SHORTNAMECAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 15610
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Caption = 'TITLECAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 22225
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'TITLECAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 22225
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Caption = 'ACNCAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 22225
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'ACNCAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 22225
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Caption = 'OCCUPATIONCAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 28575
        mmWidth = 39158
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'OCCUPATIONCAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 28575
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Caption = 'CLIENTNAMECAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 28575
        mmWidth = 38365
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'CLIENTNAMECAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 28575
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Caption = 'CLIENTCONTACTCAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 34131
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'CLIENTCONTACTCAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 34131
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Caption = 'SALUTATIONCAPTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 34131
        mmWidth = 38365
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        DataField = 'SALUTATIONCAPTION'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 34131
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Caption = 'IS_COMPANY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 39688
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        DataField = 'IS_COMPANY'
        DataPipeline = plSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSource'
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 39688
        mmWidth = 3175
        BandType = 4
        LayerName = Foreground
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
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSourceppField2: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object plSourceppField3: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plSourceppField4: TppField
      FieldAlias = 'SEARCHCAPTION'
      FieldName = 'SEARCHCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plSourceppField5: TppField
      FieldAlias = 'NAMECAPTION'
      FieldName = 'NAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plSourceppField6: TppField
      FieldAlias = 'LONGNAMECAPTION'
      FieldName = 'LONGNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plSourceppField7: TppField
      FieldAlias = 'SHORTNAMECAPTION'
      FieldName = 'SHORTNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plSourceppField8: TppField
      FieldAlias = 'TITLECAPTION'
      FieldName = 'TITLECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plSourceppField9: TppField
      FieldAlias = 'ACNCAPTION'
      FieldName = 'ACNCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plSourceppField10: TppField
      FieldAlias = 'OCCUPATIONCAPTION'
      FieldName = 'OCCUPATIONCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plSourceppField11: TppField
      FieldAlias = 'CLIENTNAMECAPTION'
      FieldName = 'CLIENTNAMECAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plSourceppField12: TppField
      FieldAlias = 'CLIENTCONTACTCAPTION'
      FieldName = 'CLIENTCONTACTCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plSourceppField13: TppField
      FieldAlias = 'SALUTATIONCAPTION'
      FieldName = 'SALUTATIONCAPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plSourceppField14: TppField
      FieldAlias = 'IS_COMPANY'
      FieldName = 'IS_COMPANY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
  end
end
