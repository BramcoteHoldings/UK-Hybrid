object fmWorkFlowAddAdminDocTemplateDialog: TfmWorkFlowAddAdminDocTemplateDialog
  Left = 701
  Top = 404
  BorderStyle = bsDialog
  Caption = 'Add Admin Document Template'
  ClientHeight = 301
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 474
    Height = 301
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitHeight = 266
    DesignSize = (
      474
      301)
    object bnOk: TButton
      Left = 147
      Top = 261
      Width = 80
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 7
      OnClick = bnOkClick
    end
    object bnCancel: TButton
      Left = 235
      Top = 261
      Width = 80
      Height = 27
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 8
    end
    object dbeDocName: TDBEdit
      Left = 132
      Top = 81
      Width = 315
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DOCUMENTNAME'
      DataSource = dmWorkFlowDataModuleDocs.dsDocTemplatesEdit
      TabOrder = 2
    end
    object beDataForm: TcxButtonEdit
      Left = 130
      Top = 217
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            0000000000004D1000004D1000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
            77FF777777FF777777FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
            66FFCC9966FFCC9966FFCC9966FFCC9966FFCC6666FF996666FF996666FF9966
            66FF996666FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00868686FFCC99
            66FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
            A6FFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF006699CCFF8686
            86FFCC9999FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF0CAA6FFF0CA
            A6FFFFCC99FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF003399CCFF6699
            CCFF868686FFF0CAA6FFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFF0CA
            A6FFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FF3399CCFF868686FFF0CAA6FFCCCC99FFCC9999FFF0CAA6FFF0CAA6FFFFCC
            CCFFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFC0C0C0FFC0C0C0FFCC9999FFFFECCCFFFFFFCCFFFFECCCFFF0CAA6FFF0CA
            A6FFF0CAA6FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFDDDDDDFFF0CAA6FFFFECCCFFFFFFCCFFF8F8F8FFFFFFFF00DDDDDDFFF0CA
            A6FFFFECCCFFCC6666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFFFECCCFFF0CAA6FFFFECCCFFFFECCCFFF1F1F1FFF8F8F8FFFFFFCCFFCC99
            99FFFFECCCFFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFFFECCCFFF0CAA6FFFFECCCFFFFECCCFFFFFFCCFFFFFFCCFFFFECCCFFCCCC
            99FFFFECCCFFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFEAEAEAFFCCCCCCFFDDDDDDFFFFECCCFFFFECCCFFFFECCCFFCC9999FFFFEC
            CCFFFFECCCFFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFFFECCCFFFFFFFF00CCCCCCFFF0CAA6FFCCCC99FFCCCC99FFCCCCCCFFFFEC
            CCFFFF9999FFCC9966FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFF1F1F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FFF1F1F1FF9966
            66FF996666FF996666FF777777FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFF1F1F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FF9966
            66FFCC9999FFCC9999FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
            A6FFFFCC99FFF0CAA6FFCCCC99FFCCCC99FFCC9999FFCC9999FFCC9999FF9966
            66FFCC9999FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 6
      Width = 317
    end
    object dbcGrouping: TcxDBLookupComboBox
      Left = 130
      Top = 46
      DataBinding.DataField = 'GROUPID'
      DataBinding.DataSource = dmWorkFlowDataModuleDocs.dsDocTemplatesEdit
      Properties.KeyFieldNames = 'GROUPID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmWorkFlowDataModuleDocs.dsDocGroups
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      Width = 317
    end
    object feTemplatePath: TJvFilenameEdit
      Left = 132
      Top = 114
      Width = 315
      Height = 23
      Hint = 
        'Macros Available'#13#10'[USERHOME] = User Home Directory'#13#10'[NMATTER] = ' +
        'Matter Number'#13#10'[TEMPDIR] = User'#39's Temp Directory'#13#10'[TEMPFILE] = M' +
        'ake a Temporary File'#13#10'[DATE] = System Date'#13#10'[TIME] = System Time' +
        #13#10'[DATETIME] = System Date and Time'#13#10'[CLIENTID] = Client Code'#13#10'[' +
        'FILEID]=File Number'#13#10'[AUTHOR]=Matter Author'#13#10'[USERINITIALS]=ePMS' +
        ' User Code '#13#10'[DOCSEQUENCE]=Document Number'#13#10'[DOCDESCR]=Document' +
        ' Description'#13#10'[USERPROFILE]=Users Profile'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Filter = 'Word Documents (*.doc; *.dot)|*.doc;*.dot|All Files (*.*)|*.*'
      DialogTitle = 'Select Document Template'
      BorderStyle = bsNone
      ButtonWidth = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'feTemplatePath'
    end
    object feDataFilePath: TJvFilenameEdit
      Left = 132
      Top = 149
      Width = 315
      Height = 23
      Hint = 
        'Macros Available'#13#10'[USERHOME] = User Home Directory'#13#10'[NMATTER] = ' +
        'Matter Number'#13#10'[TEMPDIR] = User'#39's Temp Directory'#13#10'[TEMPFILE] = M' +
        'ake a Temporary File'#13#10'[DATE] = System Date'#13#10'[TIME] = System Time' +
        #13#10'[DATETIME] = System Date and Time'#13#10'[CLIENTID] = Client Code'#13#10'[' +
        'FILEID]=File Number'#13#10'[AUTHOR]=Matter Author'#13#10'[USERINITIALS]=ePMS' +
        ' User Code '#13#10'[DOCSEQUENCE]=Document Number'#13#10'[DOCDESCR]=Document' +
        ' Description'#13#10'[USERPROFILE]=Users Profile'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Filter = 'CSV Files (*.csv)|*.csv|All Files (*.*)|*.*'
      DialogTitle = 'Select Data File'
      BorderStyle = bsNone
      ButtonWidth = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'feDataFilePath'
    end
    object feDocumentName: TJvFilenameEdit
      Left = 132
      Top = 184
      Width = 315
      Height = 23
      Hint = 
        'Macros Available'#13#10'[USERHOME] = User Home Directory'#13#10'[NMATTER] = ' +
        'Matter Number'#13#10'[TEMPDIR] = User'#39's Temp Directory'#13#10'[TEMPFILE] = M' +
        'ake a Temporary File'#13#10'[DATE] = System Date'#13#10'[TIME] = System Time' +
        #13#10'[DATETIME] = System Date and Time'#13#10'[CLIENTID] = Client Code'#13#10'[' +
        'FILEID]=File Number'#13#10'[AUTHOR]=Matter Author'#13#10'[USERINITIALS]=ePMS' +
        ' User Code '#13#10'[DOCSEQUENCE]=Document Number'#13#10'[DOCDESCR]=Document' +
        ' Description'#13#10'[USERPROFILE]=Users Profile'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Filter = 'Word Documents (*.doc; *.dot)|*.doc;*.dot|All Files (*.*)|*.*'
      DialogTitle = 'Select Document Template'
      BorderStyle = bsNone
      ButtonWidth = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = 'feDocumentName'
    end
    object cmbTemplateType: TDBComboBox
      Left = 130
      Top = 13
      Width = 319
      Height = 25
      DataField = 'TEMPLATETYPE'
      Items.Strings = (
        'Generic MS-Word Mail-Merge'
        'HotDocs Precedents'
        'Informs Precedents'
        'Worldox Precedents'
        'IManage/Filesite Mail-Merge')
      TabOrder = 0
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
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
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Grouping'
      Control = dbcGrouping
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 317
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Template Name'
      Control = dbeDocName
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 315
      Index = 2
    end
    object liTemplatePath: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Template File Path'
      Control = feTemplatePath
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 315
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Data File Path'
      Control = feDataFilePath
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 315
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Document File Path'
      Control = feDocumentName
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 315
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'DataForm'
      Control = beDataForm
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 317
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'bnOk'
      CaptionOptions.Visible = False
      Control = bnOk
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'bnCancel'
      CaptionOptions.Visible = False
      Control = bnCancel
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Template Type'
      Control = cmbTemplateType
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 316
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
