object frmBrowserOrgFavourites: TfrmBrowserOrgFavourites
  Left = 367
  Top = 271
  ActiveControl = pbClose
  BorderStyle = bsDialog
  Caption = 'Organize Favourites'
  ClientHeight = 312
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object cxGroupBox1: TcxGroupBox
    Left = 7
    Top = 114
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 170
    Width = 225
    object cxLabel2: TcxLabel
      Left = 6
      Top = 13
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 214
    end
    object cxLabel3: TcxLabel
      Left = 6
      Top = 30
      AutoSize = False
      Properties.ShowAccelChar = False
      Height = 17
      Width = 214
    end
  end
  object cxButton1: TcxButton
    Left = 153
    Top = 54
    Width = 80
    Height = 22
    Caption = 'Rename'
    LookAndFeel.NativeStyle = True
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 153
    Top = 83
    Width = 80
    Height = 22
    Caption = 'Delete'
    LookAndFeel.NativeStyle = True
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    AutoSize = False
    Caption = 
      'To rename or delete an item, select the item'#13#10'and click Rename o' +
      'r Delete.'
    Transparent = True
    Height = 32
    Width = 229
  end
  object pbClose: TcxButton
    Left = 370
    Top = 287
    Width = 93
    Height = 22
    Caption = 'Close'
    Default = True
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    TabOrder = 4
  end
  object lvFavourites: TcxListView
    Left = 246
    Top = 7
    Width = 217
    Height = 275
    ColumnClick = False
    Columns = <>
    HideSelection = False
    LargeImages = dmAxiom.ilstToolbar
    ParentShowHint = False
    ShowHint = True
    SmallImages = dmAxiom.ilstToolbar
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    ViewStyle = vsList
    OnClick = lvFavouritesClick
  end
  object qryFavourites: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 28
    Top = 56
  end
end
