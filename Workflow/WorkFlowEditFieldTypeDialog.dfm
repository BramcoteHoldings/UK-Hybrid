object fmWorkFlowEditFieldType: TfmWorkFlowEditFieldType
  Left = 395
  Top = 188
  BorderStyle = bsDialog
  Caption = 'Edit Field Type'
  ClientHeight = 173
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  DesignSize = (
    313
    173)
  PixelsPerInch = 96
  TextHeight = 13
  object lName: TLabel
    Left = 30
    Top = 14
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Name:'
    FocusControl = eName
  end
  object lCaption: TLabel
    Left = 22
    Top = 40
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Caption:'
    FocusControl = eCaption
  end
  object lDesc: TLabel
    Left = 5
    Top = 66
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Description:'
    FocusControl = eDescription
  end
  object lFormat: TLabel
    Left = 26
    Top = 114
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Format:'
    FocusControl = eFormat
  end
  object lType: TLabel
    Left = 34
    Top = 89
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Type:'
    FocusControl = eDescription
  end
  object bnOk: TButton
    Left = 79
    Top = 141
    Width = 75
    Height = 25
    Anchors = [akLeft, akRight]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 8
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 159
    Top = 140
    Width = 75
    Height = 25
    Anchors = [akLeft, akRight]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 9
  end
  object eName: TEdit
    Left = 67
    Top = 10
    Width = 230
    Height = 21
    TabOrder = 0
    Text = 'eName'
    OnKeyPress = eNameKeyPress
  end
  object eCaption: TEdit
    Left = 67
    Top = 36
    Width = 230
    Height = 21
    TabOrder = 1
    Text = 'Caption'
    OnExit = eCaptionExit
  end
  object eDescription: TEdit
    Left = 67
    Top = 62
    Width = 230
    Height = 21
    TabOrder = 2
    Text = 'Descr'
  end
  object eFormat: TEdit
    Left = 67
    Top = 110
    Width = 230
    Height = 21
    TabOrder = 7
    Text = 'Format'
  end
  object rbText: TRadioButton
    Left = 67
    Top = 88
    Width = 46
    Height = 17
    Caption = 'Text'
    TabOrder = 3
  end
  object rbInteger: TRadioButton
    Left = 114
    Top = 88
    Width = 56
    Height = 17
    Caption = 'Integer'
    TabOrder = 4
  end
  object rbCurrency: TRadioButton
    Left = 171
    Top = 88
    Width = 63
    Height = 17
    Caption = 'Currency'
    TabOrder = 5
  end
  object rbDate: TRadioButton
    Left = 238
    Top = 88
    Width = 46
    Height = 17
    Caption = 'Date'
    TabOrder = 6
  end
end
