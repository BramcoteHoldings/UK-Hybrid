object frmSafeCustodyNewPacket: TfrmSafeCustodyNewPacket
  Left = 532
  Top = 251
  ActiveControl = cxDBMemo1
  BorderStyle = bsDialog
  Caption = 'New Packet'
  ClientHeight = 233
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 167
    Width = 67
    Height = 15
    Caption = 'Destroy Date'
    Transparent = True
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 90
    Top = 134
    DataBinding.DataField = 'LOCATION'
    DataBinding.DataSource = dsNewPacket
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 324
  end
  object cxDBMemo1: TcxDBMemo
    Left = 90
    Top = 33
    DataBinding.DataField = 'DESCR'
    DataBinding.DataSource = dsNewPacket
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 96
    Width = 324
  end
  object cxLabel1: TcxLabel
    Left = 6
    Top = 31
    Caption = 'Description'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 6
    Top = 136
    Caption = 'Location'
    Transparent = True
  end
  object dfPacketID: TcxDBTextEdit
    Left = 90
    Top = 4
    DataBinding.DataField = 'PACKETID'
    DataBinding.DataSource = dsNewPacket
    Properties.HideSelection = False
    Properties.OnValidate = cxDBTextEdit2PropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnEnter = dfPacketIDEnter
    Width = 130
  end
  object cxLabel3: TcxLabel
    Left = 6
    Top = 8
    Caption = 'Packet ID'
    Transparent = True
  end
  object dtDestroyDate: TDBDateTimePicker
    Left = 92
    Top = 163
    Width = 165
    Height = 22
    Date = 42535.725648935190000000
    Time = 42535.725648935190000000
    ShowCheckbox = True
    Checked = False
    TabOrder = 6
    DataField = 'DESTROY_DATE'
    DataSource = dsNewPacket
  end
  object Button1: TButton
    Left = 246
    Top = 197
    Width = 81
    Height = 27
    Caption = 'Save'
    ModalResult = 1
    TabOrder = 7
    OnClick = cxButton1Click
  end
  object Button2: TButton
    Left = 333
    Top = 197
    Width = 81
    Height = 27
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 8
    OnClick = cxButton2Click
  end
  object qryNewPacket: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      '  docreg.NCLIENT,'
      '  docreg.PACKETID,'
      '  docreg.DESCR,'
      '  docreg.LOCATION, '
      '  docreg.NDOCREG,'
      '  docreg.DESTROY_DATE,   '
      '  docreg.rowid'
      'from'
      '  docreg'
      'where '
      '  ndocreg = :ndocreg'
      'and'
      '  nclient = :nclient')
    BeforePost = qryNewPacketBeforePost
    Left = 44
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ndocreg'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object dsNewPacket: TUniDataSource
    DataSet = qryNewPacket
    Left = 91
    Top = 184
  end
end
