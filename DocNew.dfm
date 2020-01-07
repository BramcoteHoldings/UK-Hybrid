object frmDocNew: TfrmDocNew
  Left = 396
  Top = 136
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Add Document'
  ClientHeight = 579
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 537
    Height = 579
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    AutoSize = True
    DesignSize = (
      537
      579)
    object lblMatter: TLabel
      Left = 83
      Top = 12
      Width = 3
      Height = 13
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
    end
    object lblClient: TLabel
      Left = 93
      Top = 12
      Width = 296
      Height = 14
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lblMatterDesc: TLabel
      Left = 12
      Top = 42
      Width = 504
      Height = 14
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object btnMatterFind: TSpeedButton
      Left = 54
      Top = 12
      Width = 22
      Height = 23
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = btnMatterFindClick
    end
    object rgStorage: TcxRadioGroup
      Left = 12
      Top = 469
      Anchors = [akLeft, akBottom]
      Caption = 'Storage Type'
      Properties.Items = <
        item
          Caption = 'Store File in Database'
        end
        item
          Caption = 'Store Only the Path'
          Tag = 1
        end>
      ItemIndex = 1
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Transparent = True
      Height = 59
      Width = 504
    end
    object edtPath: TcxButtonEdit
      Left = 109
      Top = 63
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00777777FF777777FFFFFFFF00FFFFFF00FFFFFF005F5F5FFF6666
            66FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6666
            66FF969696FF669999FF5F5F5FFFFFFFFF00FFFFFF003399CCFF3399CCFF3399
            CCFF0066CCFF006699FF006699FF006699FF006699FF006699FF336699FF9696
            96FF3399CCFF3399CCFF4D4D4DFFFFFFFF00FFFFFF003399CCFF3399CCFFCCFF
            FFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF999999FF3399
            CCFF66CCFFFF006699FF336666FF777777FFFFFFFF003399CCFF3399CCFFCCFF
            FFFF99FFFFFF99CCCCFFCBCBCBFFC0C0C0FFB2B2B2FF90A9ADFF6699CCFF66CC
            FFFF66CCFFFF006699FF006699FF5F5F5FFFFFFFFF003399CCFF3399CCFF99CC
            FFFFCBCBCBFFEAEAEAFFF8F8F8FFFFFFCCFFFFECCCFFCCCC99FF99CCCCFF66CC
            FFFF99FFFFFF3399CCFF339999FF555555FFFFFFFF003399CCFF33CCCCFF3399
            CCFFF0CAA6FFFFFFFF00FFFFFF00F1F1F1FFFFECCCFFFFECCCFFC0C0C0FF99FF
            FFFF99FFFFFF66CCFFFF006699FF336666FF777777FF3399CCFF66CCFFFF3399
            CCFFF0CAA6FFF1F1F1FFF8F8F8FFFFFFCCFFFFECCCFFFFECCCFFCCCCCCFF99FF
            FFFF99FFFFFF66CCFFFF3399CCFF006699FF4D4D4DFF3399CCFF66CCFFFF3399
            CCFFF0CAA6FFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFECCCFFFFCCCCFFFFFF
            FF00FFFFFF0099CCFFFF66CCFFFF006699FF5F5F5FFF3399CCFF99FFFFFF66CC
            FFFF868686FFFFECCCFFFFECCCFFFFECCCFFF8F8F8FFDDDDDDFF6699CCFF3399
            CCFF3399CCFF3399CCFF3399CCFF006699FFFFFFFF003399CCFF99FFFFFF99FF
            FFFF99FFFFFFC0C0C0FFF0CAA6FFF0CAA6FFCBCBCBFFE3E3E3FFFFFFFF00FFFF
            FF00FFFFFF00006699FF777777FFFFFFFF00FFFFFF003399CCFFFFFFFF0099FF
            FFFF99FFFFFF99FFFFFF99FFFFFFFFFFFF003399CCFF3399CCFF3399CCFF3399
            CCFF3399CCFF0066CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003399CCFFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF003399CCFFFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003399
            CCFF3399CCFF3399CCFF3399CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Kind = bkGlyph
        end
        item
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 407
    end
    object tbName: TcxTextEdit
      Left = 109
      Top = 94
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnEnter = tbNameEnter
      Width = 407
    end
    object tbDescr: TcxTextEdit
      Left = 109
      Top = 124
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 407
    end
    object btnOk: TcxButton
      Left = 349
      Top = 535
      Width = 80
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000FFFFFFFF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000800000FF800000FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000800000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FF008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000800000FF008000FF008000FF008000FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000800000FF0080
        00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
        00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
        FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000080800000FF00FF0080800000808000008080000080
        80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000FF00FF008000FF0080
        00FF008000FF800000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000080800000FF
        00FF008000FF008000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000FF00FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      OptionsImage.Spacing = 5
      TabOrder = 12
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 436
      Top = 535
      Width = 80
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = '&Cancel'
      LookAndFeel.NativeStyle = True
      ModalResult = 2
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000FFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000000FFFF808080FF008080000080800000808000008080000080
        8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000FFFFFFFF00808000008080000080
        8000008080000080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
        80FF008080000080800000808000008080000080800000808000808080FFFFFF
        FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
        80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
        FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
        80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000000
        FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
        8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
        800000808000008080000080800000808000000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
        80FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        800000808000008080000000FFFF000080FF0080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
        8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF0000FFFF0080800000808000008080000080800000808000008080000080
        8000808080FF808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      OptionsImage.Spacing = 5
      TabOrder = 13
      OnClick = btnCancelClick
    end
    object edKeywords: TcxTextEdit
      Left = 109
      Top = 244
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 407
    end
    object cmbMatterAuthor: TcxLookupComboBox
      Left = 109
      Top = 346
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CODE'
        end
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dmAxiom.dsEmpAuthor
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Width = 96
    end
    object cmbClassification: TcxLookupComboBox
      Left = 109
      Top = 184
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end
        item
          FieldName = 'NPRECCLASSIFICATION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPRECCLASSIFICATION
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 407
    end
    object memoPrecedentDtls: TcxMemo
      Left = 109
      Top = 274
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      OnKeyPress = memoPrecedentDtlsKeyPress
      Height = 65
      Width = 407
    end
    object cmbCategory: TcxLookupComboBox
      Left = 109
      Top = 154
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'NPRECCATEGORY'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPRECCATEGORY
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 407
    end
    object memoDocNotes: TcxMemo
      Left = 109
      Top = 376
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      OnKeyPress = memoPrecedentDtlsKeyPress
      Height = 86
      Width = 407
    end
    object cbPortalAccess: TcxCheckBox
      Left = 212
      Top = 346
      Caption = 'Client Portal Access'
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssInactive
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 9
    end
    object cmbFolder: TcxLookupComboBox
      Left = 109
      Top = 214
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'FOLDER_ID'
      Properties.ListColumns = <
        item
          FieldName = 'LPAD('#39'*'#39',2*(LEVEL-1),'#39'*'#39')||DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsFolders
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 407
    end
    object lblMatterContact: TLabel
      Left = 12
      Top = 16
      Width = 35
      Height = 15
      Caption = 'Matter'
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblClient
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 14
      ControlOptions.OriginalWidth = 296
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Matter'
      CaptionOptions.Visible = False
      Control = btnMatterFind
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatterDesc
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 14
      ControlOptions.OriginalWidth = 504
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatter
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Path'
      Control = edtPath
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Name'
      Control = tbName
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Description'
      Control = tbDescr
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Category'
      Control = cmbCategory
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Classification'
      Control = cmbClassification
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Folder'
      Control = cmbFolder
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Keywords'
      Control = edKeywords
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Precedent Details'
      Control = memoPrecedentDtls
      ControlOptions.OriginalHeight = 65
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Author'
      Control = cmbMatterAuthor
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbPortalAccess
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Notes'
      Control = memoDocNotes
      ControlOptions.OriginalHeight = 86
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.ShowAccelChar = False
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rgStorage
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 59
      ControlOptions.OriginalWidth = 477
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 13
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatterContact
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT TITLE, SHORTDESCR, nmatter'
      'FROM MATTER'
      'WHERE FILEID = :FileID')
    Left = 750
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FileID'
        Value = nil
      end>
  end
  object qryDocInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO DOC'
      '  (DOC_NAME, SEARCH, DOC_CODE, D_CREATE, AUTH1, '
      
        '   PATH, DESCR, FILEID, DOCID, NPRECCATEGORY, DOCUMENT, IMAGEIND' +
        'EX, KEYWORDS, NPRECCLASSIFICATION, EXTERNAL_ACCESS, FOLDER_ID)'
      'VALUES'
      '  (:DOC_NAME, :SEARCH, :DOC_CODE, SysDate, :AUTH1, '
      
        '   :PATH, :DESCR, :FILEID, DOC_DOCID.NextVal, :NPRECCATEGORY, :D' +
        'OCUMENT, :IMAGEINDEX, :KEYWORDS, :NPRECCLASSIFICATION, :EXTERNAL' +
        '_ACCESS, :FOLDER_ID)')
    Left = 584
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOC_NAME'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SEARCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOC_CODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AUTH1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PATH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NPRECCATEGORY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DOCUMENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEINDEX'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'KEYWORDS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NPRECCLASSIFICATION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EXTERNAL_ACCESS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FOLDER_ID'
        Value = nil
      end>
  end
  object odFile: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofFileMustExist, ofEnableSizing]
    Left = 322
    Top = 83
  end
  object qryDoc1: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select DOC_NAME, SEARCH, DOC_CODE, D_CREATE, AUTH1,PATH, DESCR, ' +
        'FILEID, NPRECCLASSIFICATION,'
      
        '   DOCID, NPRECCATEGORY, DOCUMENT, IMAGEINDEX, NMATTER, FILE_EXT' +
        'ENSION,KEYWORDS,PRECEDENT_DETAILS, EXTERNAL_ACCESS, FOLDER_ID, R' +
        'OWID'
      'from'
      'doc'
      'where docid = :docid')
    ObjectView = True
    AfterInsert = qryDoc1AfterInsert
    Left = 9
    Top = 423
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
    object qryDoc1DOC_NAME: TStringField
      FieldName = 'DOC_NAME'
      Size = 200
    end
    object qryDoc1SEARCH: TStringField
      FieldName = 'SEARCH'
      Size = 85
    end
    object qryDoc1DOC_CODE: TStringField
      FieldName = 'DOC_CODE'
      Size = 50
    end
    object qryDoc1D_CREATE: TDateTimeField
      FieldName = 'D_CREATE'
    end
    object qryDoc1AUTH1: TStringField
      FieldName = 'AUTH1'
      Size = 3
    end
    object qryDoc1PATH: TStringField
      FieldName = 'PATH'
      Size = 255
    end
    object qryDoc1DESCR: TStringField
      FieldName = 'DESCR'
      Size = 400
    end
    object qryDoc1FILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryDoc1DOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object qryDoc1NPRECCATEGORY: TFloatField
      FieldName = 'NPRECCATEGORY'
    end
    object qryDoc1DOCUMENT: TBlobField
      FieldName = 'DOCUMENT'
      BlobType = ftOraBlob
    end
    object qryDoc1IMAGEINDEX: TFloatField
      FieldName = 'IMAGEINDEX'
    end
    object qryDoc1NMATTER: TFloatField
      FieldName = 'NMATTER'
    end
    object qryDoc1FILE_EXTENSION: TStringField
      FieldName = 'FILE_EXTENSION'
      Size = 5
    end
    object qryDoc1KEYWORDS: TStringField
      FieldName = 'KEYWORDS'
      Size = 2048
    end
    object qryDoc1PRECEDENT_DETAILS: TStringField
      FieldName = 'PRECEDENT_DETAILS'
      Size = 2048
    end
    object qryDoc1NPRECCLASSIFICATION: TFloatField
      FieldName = 'NPRECCLASSIFICATION'
    end
    object qryDoc1EXTERNAL_ACCESS: TStringField
      FieldName = 'EXTERNAL_ACCESS'
      Size = 1
    end
  end
  object qryPopDetails: TUniQuery
    UpdatingTable = 'DOC'
    KeyFields = 'docid'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT D.DOC_NAME, D.SEARCH, D.DOC_CODE, D.JURIS, D.D_CREATE, D.' +
        'AUTH1,'
      '       D.D_MODIF, D.AUTH2, D.PATH, D.DESCR, D.FILEID, D.DOCID,'
      
        '       D.NPRECCATEGORY, D.NMATTER, D.IMAGEINDEX, D.FILE_EXTENSIO' +
        'N, D.EMAIL_SENT_TO,'
      
        '       D.TEMPLATEPATH, D.DATAFILEPATH, D.DATAFORM, D.WORKFLOWDOC' +
        'ID, D.KEYWORDS,'
      
        '       D.PRECEDENT_DETAILS, D.NPRECCLASSIFICATION, D.OT_VERSION,' +
        ' D.OT_FORMAT,'
      
        '       D.DISPLAY_PATH, D.URL, D.EXTERNAL_ACCESS, D.WORKFLOWGENDO' +
        'CUMENT, D.DOC_NOTES,'
      
        '       D.DUMMY, D.EMAIL_FROM, D.FOLDER_ID, D.PARENTDOCID, D.ROWI' +
        'D'
      'FROM  doc d '
      'WHERE D.DOCID = :DOCID')
    BeforeUpdateExecute = qryPopDetailsBeforeUpdateExecute
    IndexFieldNames = 'DOCID'
    OnNewRecord = qryPopDetailsNewRecord
    Left = 220
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
  end
  object dsEmployee: TUniDataSource
    DataSet = dmAxiom.qryEmplyeeList
    Left = 496
    Top = 126
  end
  object qryPRECCLASSIFICATION: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCLASSIFICATION order by descr')
    Left = 106
    Top = 203
  end
  object dsPRECCLASSIFICATION: TUniDataSource
    DataSet = qryPRECCLASSIFICATION
    Left = 306
    Top = 228
  end
  object qryPRECCATEGORY: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCATEGORY order by descr'
      ''
      '')
    Left = 488
    Top = 11
  end
  object dsPRECCATEGORY: TUniDataSource
    DataSet = qryPRECCATEGORY
    Left = 572
    Top = 79
  end
  object qryGetSeq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select DOC_DOCID.nextval as nextdoc from dual')
    Left = 388
    Top = 24
  end
  object qryPhonebook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select search'
      'from phonebook'
      'where nname = :nname')
    Left = 674
    Top = 69
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nname'
        Value = nil
      end>
  end
  object qryFolders: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT LPAD('#39'*'#39', 2*(level-1),'#39'*'#39' )||descr, folder_id, parent_id,' +
        ' folder_level, level'
      'FROM  document_folders'
      'where nmatter = :nmatter'
      'start with parent_id = 0'
      'connect by prior folder_id = parent_id'
      'ORDER siblings BY 2, 3'
      ''
      '/*'
      'select * from document_folders '
      'where nmatter = :nmatter'
      'order by descr'
      '*/')
    Left = 104
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = Null
      end>
  end
  object dsFolders: TUniDataSource
    DataSet = qryFolders
    Left = 65
    Top = 335
  end
end
