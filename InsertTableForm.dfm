object frmInsertTable: TfrmInsertTable
  Left = 683
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Insert Table'
  ClientHeight = 342
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 106
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 14
    Top = 14
    Width = 213
    Height = 278
    Caption = 'Table'
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 21
      Width = 109
      Height = 15
      Caption = 'Number of Columns'
    end
    object Label2: TLabel
      Left = 7
      Top = 69
      Width = 89
      Height = 15
      Caption = 'Number of Rows'
    end
    object Label3: TLabel
      Left = 7
      Top = 121
      Width = 32
      Height = 15
      Caption = 'Width'
    end
    object Label6: TLabel
      Left = 7
      Top = 172
      Width = 58
      Height = 15
      Caption = 'Table Class'
    end
    object Label7: TLabel
      Left = 7
      Top = 222
      Width = 56
      Height = 15
      Caption = 'Table Style'
    end
    object edtTableWidth: TEdit
      Left = 7
      Top = 136
      Width = 58
      Height = 23
      TabOrder = 0
      Text = '300'
    end
    object edtNumberofRows: TEdit
      Left = 7
      Top = 83
      Width = 58
      Height = 23
      TabOrder = 1
      Text = '2'
    end
    object udNumberofRows: TUpDown
      Left = 65
      Top = 83
      Width = 18
      Height = 23
      Associate = edtNumberofRows
      Position = 2
      TabOrder = 2
    end
    object udTableWidth: TUpDown
      Left = 65
      Top = 136
      Width = 18
      Height = 23
      Associate = edtTableWidth
      Max = 1000
      Increment = 100
      Position = 300
      TabOrder = 3
    end
    object cbxTableStyle: TComboBox
      Left = 7
      Top = 238
      Width = 202
      Height = 23
      TabOrder = 4
      Text = 'None'
      Items.Strings = (
        'None'
        'border-collapse:collapse;border-width:1px')
    end
    object cbxTableClass: TComboBox
      Left = 7
      Top = 187
      Width = 202
      Height = 23
      TabOrder = 5
      Text = 'None'
      Items.Strings = (
        'None')
    end
    object udNumberofColumns: TSpinEdit
      Left = 7
      Top = 39
      Width = 76
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 249
    Top = 14
    Width = 214
    Height = 229
    Caption = 'Cells'
    TabOrder = 1
    object Label4: TLabel
      Left = 7
      Top = 21
      Width = 65
      Height = 15
      Caption = 'Cell Spacing'
    end
    object Label5: TLabel
      Left = 7
      Top = 69
      Width = 67
      Height = 15
      Caption = 'Cell Padding'
    end
    object Label8: TLabel
      Left = 7
      Top = 121
      Width = 50
      Height = 15
      Caption = 'Cell Class'
    end
    object Label9: TLabel
      Left = 7
      Top = 171
      Width = 48
      Height = 15
      Caption = 'Cell Style'
    end
    object edtCellSpacing: TEdit
      Left = 7
      Top = 36
      Width = 58
      Height = 23
      TabOrder = 0
      Text = '1'
    end
    object edtCellPadding: TEdit
      Left = 7
      Top = 83
      Width = 58
      Height = 23
      TabOrder = 1
      Text = '5'
    end
    object udCellPadding: TUpDown
      Left = 65
      Top = 83
      Width = 18
      Height = 23
      Associate = edtCellPadding
      Position = 5
      TabOrder = 2
    end
    object udCellSpacing: TUpDown
      Left = 65
      Top = 36
      Width = 18
      Height = 23
      Associate = edtCellSpacing
      Position = 1
      TabOrder = 3
    end
    object cbxCellClass: TComboBox
      Left = 7
      Top = 136
      Width = 202
      Height = 23
      TabOrder = 4
      Text = 'None'
      Items.Strings = (
        'None')
    end
    object cbxCellStyle: TComboBox
      Left = 7
      Top = 187
      Width = 202
      Height = 23
      TabOrder = 5
      Text = 'None'
      Items.Strings = (
        'None'
        'background-color:#81cefc'
        'background-color:#81fcce')
    end
  end
  object Button1: TButton
    Left = 14
    Top = 305
    Width = 86
    Height = 28
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 111
    Top = 305
    Width = 86
    Height = 28
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
