object frmBrowserProps: TfrmBrowserProps
  Left = 426
  Top = 262
  Caption = 'Properties'
  ClientHeight = 210
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    385
    210)
  PixelsPerInch = 96
  TextHeight = 14
  object cxPageControl1: TcxPageControl
    Left = 7
    Top = 13
    Width = 372
    Height = 166
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 165
    ClientRectLeft = 1
    ClientRectRight = 371
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitTop = 20
      ExplicitHeight = 145
      object cxGroupBox1: TcxGroupBox
        Left = 7
        Top = 19
        Caption = 'Home Page'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 105
        Width = 342
        object Image1: TImage
          Left = 10
          Top = 24
          Width = 32
          Height = 32
          AutoSize = True
          Picture.Data = {
            07544269746D617076020000424D760200000000000076000000280000002000
            0000200000000100040000000000000200000000000000000000100000000000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00FFFFFFFFFFFFFFFF000000000000000FFFFFFFFFFFFFFFFF788888838808
            870F00000000000000007FFFFFF3BB0FF70F78888888888888887FFFFFF3BB0F
            F70F7FFFFFFFFFFFFFFF7FFFFFF3BB0FF70F7FFFFFFFFFFFFFFF7F0000F3333F
            F70F7FFFFFFFFFFFFFFF7F7FF0FFFFFFF70F7FFF8888888888887F7FF0FFFFFF
            F70F7FFFFFFFFFFFFFFF7F7777FFFFFFF70F7FFF888888888888788888888888
            870F7FFFFFFFFFFFFFF000000000000000007FFF88888888888838B3B3B3B3B3
            B30F7FFFFFFFFFFFFFFFF38B3B3B3B3B30FF7FFF8888888888888838B3B3B3B3
            00FF7FFFFFFFFFFFFFFFFFF38B3B3B3090FF7FFF888888888888888838B3B301
            90FF7FFFFFFFFFFFFFFFFFFFF38B30F190FF7FFF8888888888888888FF380FF1
            90FF7FFFFFFFFFFFFFFFFFFFFF80FFF110FF7FFF8888888888888888FF80FFFF
            FFFF7FFFFFFFFFFFFFFFFFFFFF80FFFFFFFF7FFF8888888888888888FF80FFFF
            FFFF7FFFFFFFFFFFFFFFFFFFFF80FFFFFFFF7FFFFFFFFFFFFFFFFFFFFF80FFFF
            FFFF7FFFFFFFFFFFFFFFFFFFFF80FFFFFFFF7FFF888888888FFFF7000000FFFF
            FFFF7FFFFFFFFFFFFFFFF7FF870FFFFFFFFF7FFFFFFFFFFFFFFFF7F870FFFFFF
            FFFF7FFFFFFFFFFFFFFFF7870FFFFFFFFFFF7FFFFFFFFFFFFFFFF770FFFFFFFF
            FFFF7FFFFFFFFFFFFFFFF70FFFFFFFFFFFFF777777777777777777FFFFFFFFFF
            FFFF}
        end
        object pbUseCurrent: TcxButton
          Left = 86
          Top = 73
          Width = 75
          Height = 25
          Caption = 'Use Current'
          LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnClick = pbUseCurrentClick
        end
        object pbUseDefault: TcxButton
          Left = 170
          Top = 73
          Width = 75
          Height = 25
          Caption = 'Use Default'
          LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = pbUseDefaultClick
        end
        object pbUseBlank: TcxButton
          Left = 255
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Use Blank'
          LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnClick = pbUseBlankClick
        end
        object dfAddress: TcxTextEdit
          Left = 109
          Top = 48
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnKeyPress = dfAddressKeyPress
          Width = 221
        end
        object cxLabel1: TcxLabel
          Left = 55
          Top = 50
          Caption = 'Address:'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 60
          Top = 27
          Caption = 'You can change which page to use for your home page.'
          Transparent = True
        end
      end
    end
  end
  object cxButton4: TcxButton
    Left = 124
    Top = 183
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    TabOrder = 1
    OnClick = cxButton4Click
  end
  object cxButton5: TcxButton
    Left = 217
    Top = 183
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    TabOrder = 2
  end
  object pbApply: TcxButton
    Left = 305
    Top = 183
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Apply'
    Enabled = False
    LookAndFeel.NativeStyle = True
    TabOrder = 3
    OnClick = pbApplyClick
  end
  object qryProperties: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update employee set EMP_DEFAULT_URL = :EMP_DEFAULT_URL'
      'where code = :code')
    Left = 29
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP_DEFAULT_URL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
end
