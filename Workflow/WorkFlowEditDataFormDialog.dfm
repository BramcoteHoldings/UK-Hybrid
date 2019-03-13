object fmWorkFlowEditDataFormDialog: TfmWorkFlowEditDataFormDialog
  Left = 555
  Top = 271
  BorderStyle = bsDialog
  Caption = 'Edit Data Form'
  ClientHeight = 231
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 374
    Height = 231
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitWidth = 773
    DesignSize = (
      374
      231)
    object bnOk: TButton
      Left = 101
      Top = 192
      Width = 81
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 6
      OnClick = bnOkClick
    end
    object bnCancel: TButton
      Left = 189
      Top = 192
      Width = 81
      Height = 27
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 7
    end
    object eName: TEdit
      Left = 108
      Top = 14
      Width = 246
      Height = 19
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 0
      Text = 'eName'
      OnKeyPress = eNameKeyPress
    end
    object eCaption: TEdit
      Left = 108
      Top = 44
      Width = 246
      Height = 19
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 1
      Text = 'Caption'
    end
    object eDescription: TEdit
      Left = 108
      Top = 74
      Width = 246
      Height = 19
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 2
      Text = 'Descr'
    end
    object ckMatterSpecific: TCheckBox
      Left = 95
      Top = 162
      Width = 182
      Height = 18
      Caption = 'Party is Matter Specific'
      TabOrder = 5
    end
    object dblWorkflowType: TcxLookupComboBox
      Left = 106
      Top = 102
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListSource = dsWorkflowTypes
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 3
      Width = 254
    end
    object dblPartyType: TcxLookupComboBox
      Left = 106
      Top = 132
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'CATEGORY'
      Properties.ListColumns = <
        item
          FieldName = 'CATEGORY'
        end>
      Properties.ListSource = dsParties
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 4
      Width = 254
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
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name:'
      Control = eName
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 246
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Caption:'
      Control = eCaption
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 246
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description:'
      Control = eDescription
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 246
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Work Flow Type:'
      Control = dblWorkflowType
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 254
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Party Type:'
      Control = dblPartyType
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 254
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahCenter
      CaptionOptions.Text = 'ckMatterSpecific'
      CaptionOptions.Visible = False
      Control = ckMatterSpecific
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 22
      ControlOptions.MinWidth = 22
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 182
      ControlOptions.ShowBorder = False
      Index = 5
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
      ControlOptions.OriginalWidth = 81
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
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object qParties: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM pbgroup where otherparty = '#39'Y'#39)
    ReadOnly = True
    Left = 195
    Top = 8
  end
  object qWorkflowTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM workflowtype')
    ReadOnly = True
    Left = 31
    Top = 196
  end
  object dsWorkflowTypes: TDataSource
    AutoEdit = False
    DataSet = qWorkflowTypes
    Left = 304
    Top = 23
  end
  object dsParties: TDataSource
    AutoEdit = False
    DataSet = qParties
    Left = 255
    Top = 8
  end
end
