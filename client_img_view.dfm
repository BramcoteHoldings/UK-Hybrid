object frmClient_img_view: TfrmClient_img_view
  Left = 0
  Top = 0
  Caption = 'Image'
  ClientHeight = 335
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object imgClientID: TcxDBImage
    Left = 0
    Top = 0
    Hint = 'Client Image ID'
    Align = alClient
    AutoSize = True
    DataBinding.DataField = 'CLIENT_IMAGE'
    DataBinding.DataSource = dsPhonebook
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.ReadOnly = True
    Properties.Stretch = True
    Style.HotTrack = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 300
    Width = 463
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 463
    Height = 35
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      463
      35)
    object Button1: TButton
      Left = 379
      Top = 6
      Width = 77
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      Default = True
      ImageIndex = 11
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object qryPhonebook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select client_image'
      'from phonebook'
      'where nclient = :nclient')
    Left = 149
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nclient'
        Value = nil
      end>
  end
  object dsPhonebook: TUniDataSource
    DataSet = qryPhonebook
    Left = 223
    Top = 239
  end
end
