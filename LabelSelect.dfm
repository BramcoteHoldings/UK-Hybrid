object frmLabelSelect: TfrmLabelSelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Label Selection'
  ClientHeight = 242
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 28
    Top = 203
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 122
    Top = 203
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 8
    Width = 226
    Height = 179
    TabOrder = 2
    Properties.ActivePage = tab7171
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 175
    ClientRectLeft = 4
    ClientRectRight = 222
    ClientRectTop = 4
    object tab7171: TcxTabSheet
      Caption = 'tab7171'
      ImageIndex = 0
      object rg7171: TcxRadioGroup
        Left = 13
        Top = 3
        Caption = 'Avery 7171 Label'
        Properties.Items = <
          item
            Caption = 'Label 1'
            Value = 1
          end
          item
            Caption = 'Label 2'
            Value = 2
          end
          item
            Caption = 'Label 3'
            Value = 3
          end
          item
            Caption = 'Label 4'
            Value = 4
          end>
        ItemIndex = 0
        TabOrder = 0
        Height = 138
        Width = 185
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'tab 7165'
      ImageIndex = 1
      object rg7165: TcxRadioGroup
        Left = 11
        Top = 2
        Caption = 'Avery 7165 Label'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Label 1'
            Value = 1
          end
          item
            Caption = 'Label 2'
            Value = 2
          end
          item
            Caption = 'Label 3'
            Value = 3
          end
          item
            Caption = 'Label 4'
            Value = 4
          end
          item
            Caption = 'Label 5'
            Value = 5
          end
          item
            Caption = 'Label 6'
            Value = 6
          end
          item
            Caption = 'Label 7'
            Value = 7
          end
          item
            Caption = 'Label 8'
            Value = 8
          end>
        ItemIndex = 0
        TabOrder = 0
        Height = 138
        Width = 189
      end
    end
  end
end
