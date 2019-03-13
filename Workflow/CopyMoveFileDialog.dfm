object fmCopyMoveFileDialog: TfmCopyMoveFileDialog
  Left = 607
  Top = 352
  BorderStyle = bsDialog
  Caption = 'Copy File'
  ClientHeight = 233
  ClientWidth = 321
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    321
    233)
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
    Top = 201
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 159
    Top = 201
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object eFileName: TEdit
    Left = 10
    Top = 22
    Width = 299
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 0
    Text = 'eFileName'
  end
  object eDestinationDirectory: TJvFilenameEdit
    Left = 10
    Top = 69
    Width = 295
    Height = 21
    DialogTitle = 'Select Destination'
    TabOrder = 3
    Text = 'eDestinationDirectory'
  end
  object eDestinationFileName: TJvFilenameEdit
    Left = 10
    Top = 69
    Width = 299
    Height = 21
    TabOrder = 4
    Text = 'eDestinationFileName'
  end
  object pcDocOptions: TcxPageControl
    Left = 4
    Top = 98
    Width = 313
    Height = 92
    TabOrder = 5
    Properties.ActivePage = tabOptions
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 92
    ClientRectRight = 313
    ClientRectTop = 24
    object tabOptions: TcxTabSheet
      AllowCloseButton = False
      Caption = 'tabOptions'
      ImageIndex = 0
      object rbUpdateThisTemplate: TRadioButton
        Left = 6
        Top = 4
        Width = 235
        Height = 17
        Caption = 'Update only the selected template'
        TabOrder = 0
        OnClick = rbUpdateThisTemplateClick
      end
      object rbUpdateAllTemplates: TRadioButton
        Left = 6
        Top = 23
        Width = 277
        Height = 17
        Caption = 'Update all templates that point to the source file'
        TabOrder = 1
        OnClick = rbUpdateThisTemplateClick
      end
      object rbDontUpdate: TRadioButton
        Left = 6
        Top = 42
        Width = 227
        Height = 17
        Caption = 'Don'#39't update any templates'
        TabOrder = 2
        OnClick = rbUpdateThisTemplateClick
      end
    end
    object tabFileName: TcxTabSheet
      Caption = 'tabFileName'
      ImageIndex = 1
      DesignSize = (
        313
        68)
      object Label1: TLabel
        Left = 6
        Top = 13
        Width = 50
        Height = 13
        Caption = 'File Name:'
      end
      object eNewFileName: TEdit
        Left = 6
        Top = 29
        Width = 299
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        TabOrder = 0
        Text = 'eFileName'
      end
    end
  end
end
