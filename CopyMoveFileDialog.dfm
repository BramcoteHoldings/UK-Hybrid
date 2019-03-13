object fmCopyMoveFileDialog: TfmCopyMoveFileDialog
  Left = 607
  Top = 352
  BorderStyle = bsDialog
  Caption = 'Copy File'
  ClientHeight = 194
  ClientWidth = 312
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  DesignSize = (
    312
    194)
  PixelsPerInch = 96
  TextHeight = 13
  object lFrom: TLabel
    Left = 10
    Top = 6
    Width = 48
    Height = 13
    Caption = 'Copy File:'
  end
  object lTo: TLabel
    Left = 10
    Top = 52
    Width = 16
    Height = 13
    Caption = 'To:'
  end
  object bnOk: TButton
    Left = 79
    Top = 163
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 159
    Top = 163
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object eFileName: TEdit
    Left = 10
    Top = 22
    Width = 295
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 0
    Text = 'eFileName'
  end
  object rbUpdateThisTemplate: TRadioButton
    Left = 10
    Top = 104
    Width = 235
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Update only the selected template'
    TabOrder = 1
    OnClick = rbUpdateThisTemplateClick
  end
  object rbUpdateAllTemplates: TRadioButton
    Left = 10
    Top = 121
    Width = 291
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Update all templates that point to the source file'
    TabOrder = 2
    OnClick = rbUpdateThisTemplateClick
  end
  object rbDontUpdate: TRadioButton
    Left = 10
    Top = 138
    Width = 227
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Don'#39't update any templates'
    TabOrder = 3
    OnClick = rbUpdateThisTemplateClick
  end
  object eDestinationDirectory: TJvFilenameEdit
    Left = 10
    Top = 69
    Width = 295
    Height = 21
    DialogTitle = 'Select Destination'
    TabOrder = 6
    Text = 'eDestinationDirectory'
  end
  object eDestinationFileName: TJvFilenameEdit
    Left = 11
    Top = 69
    Width = 295
    Height = 21
    TabOrder = 7
    Text = 'eDestinationFileName'
  end
end
