object frmAttachEmailToMatter: TfrmAttachEmailToMatter
  Left = 646
  Top = 232
  Caption = 'Attach Email to Matter'
  ClientHeight = 125
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 30
    Caption = 'Matter'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 85
    Width = 234
    object btnMatterSearch: TcxButtonEdit
      Left = 12
      Top = 19
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnMatterSearchPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 203
    end
    object lblOne: TcxLabel
      Left = 12
      Top = 43
      AutoSize = False
      ParentFont = False
      Style.StyleController = dmAxiom.LabelStyle
      Properties.ShowAccelChar = False
      Properties.WordWrap = True
      Height = 38
      Width = 203
    end
  end
  object btnAttach: TcxButton
    Left = 261
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Attach'
    Enabled = False
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    TabOrder = 1
    OnClick = btnAttachClick
  end
  object btnClose: TcxButton
    Left = 261
    Top = 89
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
  end
  object lblSubjectValue: TcxLabel
    Left = 8
    Top = 5
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 17
    Width = 329
  end
  object SmartQuery1: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 302
    Top = 12
  end
end
