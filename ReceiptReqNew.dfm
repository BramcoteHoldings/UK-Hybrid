object frmReceiptReqNew: TfrmReceiptReqNew
  Left = 504
  Top = 296
  BorderStyle = bsDialog
  Caption = 'Receipt Request Entry'
  ClientHeight = 570
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    475
    570)
  PixelsPerInch = 96
  TextHeight = 15
  object lblTotal: TLabel
    Left = 446
    Top = 450
    Width = 4
    Height = 17
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = 436
    ExplicitTop = 443
  end
  object sbarBalances: TdxStatusBar
    Left = 0
    Top = 550
    Width = 475
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 97
        Width = 97
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 97
      end>
    PaintStyle = stpsFlat
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ExplicitTop = 510
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 475
    Height = 550
    Align = alClient
    TabOrder = 1
    AutoSize = True
    ExplicitHeight = 510
    DesignSize = (
      475
      550)
    object lblBankName: TLabel
      Left = 138
      Top = 46
      Width = 3
      Height = 15
      ShowAccelChar = False
    end
    object lblClient: TLabel
      Left = 197
      Top = -37
      Width = 170
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object lblMatterDescr: TLabel
      Left = 12
      Top = -6
      Width = 433
      Height = 14
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object chkPrint: TcxCheckBox
      Left = 12
      Top = 457
      Anchors = [akLeft, akBottom]
      Caption = 'Print?'
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 13
      Transparent = True
    end
    object chkNoExit: TcxCheckBox
      Left = 73
      Top = 457
      Anchors = [akLeft, akBottom]
      Caption = '&Keep form open after posting?'
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 14
      Transparent = True
    end
    object neAmount: TcxCurrencyEdit
      Left = 81
      Top = 138
      AutoSize = False
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      OnExit = neAmountExit
      Height = 21
      Width = 364
    end
    object tbPayee: TcxButtonEdit
      Left = 81
      Top = 76
      Hint = 'Look up Phonebook for Payor'
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
            00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
            00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000000000FFFFFF
            FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
            00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
          Kind = bkGlyph
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
      TabOrder = 4
      OnExit = tbPayeeExit
      OnKeyPress = tbPayeeKeyPress
      Width = 364
    end
    object cbBank: TcxComboBox
      Left = 81
      Top = 46
      Properties.OnChange = cbBankChange
      Properties.OnCloseUp = cbBankPropertiesCloseUp
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
      OnClick = cbBankClick
      OnExit = tbRcptnoExit
      Width = 50
    end
    object dtpDate: TEnforceCustomDateEdit
      Left = 81
      Top = 15
      AutoSize = False
      EditValue = 43293.6757784259d
      Properties.AutoSelect = False
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Properties.WeekNumbers = True
      Properties.OnValidate = dtpDatePropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      DataSet = dmAxiom.qryEntity
      Field = 'LOCKDATE'
      Height = 24
      Width = 101
    end
    object btnOk: TBitBtn
      Left = 12
      Top = 513
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 16
      OnClick = BitBtn1Click
    end
    object btnCancel: TBitBtn
      Left = 94
      Top = 513
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 17
      OnClick = btnCancelClick
    end
    object cmbReqBy: TcxLookupComboBox
      Left = 269
      Top = 15
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsReqEmployee
      Properties.OnChange = cmbReqByPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 176
    end
    object chkSourceOk: TcxCheckBox
      Left = 12
      Top = 323
      Anchors = [akLeft, akBottom]
      Caption = 'Source of funds OK'
      Properties.Alignment = taLeftJustify
      Properties.OnChange = chkSourceOkPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Transparent = True
    end
    object teReference: TcxTextEdit
      Left = 81
      Top = 166
      Properties.OnChange = teReferencePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 364
    end
    object beDocument: TcxButtonEdit
      Left = 81
      Top = 196
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
        end>
      Properties.OnChange = beDocumentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Width = 364
    end
    object tbFile: TcxButtonEdit
      Left = 81
      Top = -37
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFF
            FFFF000000FF000000FF000000FFFF00FF00000000FF000000FFFFFFFFFF0000
            00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF000000
            00FFFFFFFFFF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00FF000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
            00FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FFFFFFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FFFFFF
            FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.OnButtonClick = tbFilePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Height = 24
      Width = 109
    end
    object memoNotes: TcxMemo
      Left = 81
      Top = 227
      Properties.OnChange = memoNotesPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 89
      Width = 364
    end
    object beSourceofFunds: TcxButtonEdit
      Left = 145
      Top = 323
      AutoSize = False
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
        end>
      Properties.OnButtonClick = beSourceofFundsPropertiesButtonClick
      Properties.OnChange = beSourceofFundsPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Height = 23
      Width = 289
    end
    object lblAuthorisedBy: TcxLabel
      Left = 12
      Top = 487
      Caption = 'This requisition has been authorised by:'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 12
      Top = 353
      AutoSize = False
      Caption = 
        'WARNING: By clicking '#8216'Update'#8217' below, you are confirming that you' +
        ' have verified the Source of Funds for this receipt. If you are ' +
        'NOT the Matter executive, you are also confirming that you have ' +
        'advised the Matter executive that these funds have been received' +
        ' and have authority from them to complete this form on their beh' +
        'alf. If you are in any doubt of the above, abandon this form and' +
        ' refer the matter to the Matter Executive or the Risk Management' +
        ' and Ethics Team.'
      Style.HotTrack = False
      Properties.WordWrap = True
      Transparent = True
      Height = 97
      Width = 433
    end
    object tbDesc: TcxButtonEdit
      Left = 81
      Top = 107
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
        end>
      Properties.OnButtonClick = tbDescPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 364
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 12
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      AllowRemove = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Matter:'
      Control = tbFile
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblClient
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatterDescr
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 14
      ControlOptions.OriginalWidth = 309
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Date:'
      Control = dtpDate
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Submitted By:'
      Control = cmbReqBy
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Bank:'
      Control = cbBank
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblBankName
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Payer:'
      Control = tbPayee
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 326
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Description:'
      Control = tbDesc
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Amount:'
      Control = neAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Reference:'
      Control = teReference
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Document:'
      Control = beDocument
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 204
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Notes:'
      Control = memoNotes
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 338
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkSourceOk
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = beSourceofFunds
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkPrint
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkNoExit
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 223
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 14
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Visible = False
      Control = lblAuthorisedBy
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 221
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 13
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      Enabled = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 12
    end
  end
  object qryReceiptReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT R.exp_date, r.descr, r.amount, r.fileid, r.nname,'
      
        'r.bank, r.payor, r.nmatter, r.who, r.SOURCE_OF_FUNDS_OK, r.NRECE' +
        'IPTREQ, R.REFERENCE,'
      
        'R.NOTES, R.DOCUMENT, R.SOURCE_OF_FUNDS_DTLS, R.AUTHORISED_BY, r.' +
        'trust, R.REQBY'
      'FROM '
      'RECEIPT_REQ R '
      'WHERE NRECEIPTREQ = :NRECEIPTREQ')
    OnNewRecord = qryReceiptReqNewRecord
    Left = 288
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRECEIPTREQ'
        Value = nil
      end>
  end
  object qryBanks: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ACCT, "NAME", CASH_AT_BANK, RECEIPT, BALANCE, CL_BALANCE,' +
        ' TRUST, LASTRCP, CLEARANCE,BANK_CLEARANCE, ROWID'
      'FROM BANK '
      'WHERE ACCT = :P_Acct')
    Left = 223
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Acct'
        Value = nil
      end>
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT M.NCLIENT, FILEID, NMATTER, TITLE, SHORTDESCR, AUTHOR, CL' +
        'IENT_NAME'
      'FROM MATTER M'
      'WHERE FILEID = :P_File')
    Left = 278
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE FROM BANK')
    CachedUpdates = True
    Left = 317
    Top = 215
  end
  object qryCheqNCheqReq: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT NMEMO, BILLNO, DESCR, AMOUNT, ROWID'
      'FROM CHEQREQ WHERE NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 388
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 334
    Top = 60
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object styTrustOD: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object styFooter: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
      end>
    UseBuiltInPopupMenus = False
    Left = 290
    Top = 303
  end
  object qryReqEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND author = code'
      '   AND CASE'
      '          WHEN (   matter.entity ='
      
        '                                    NVL (:defaultentity, matter.' +
        'entity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND partner = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND controller = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND paralegal = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_1 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_2 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_3 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_4 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_5 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_6 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_7 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_8 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_9 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1'
      'UNION'
      'SELECT code, NAME'
      '  FROM matter, employee'
      ' WHERE nmatter = :nmatter'
      '   AND wkflow_per_level_10 = code'
      '   AND CASE'
      
        '          WHEN (   matter.entity = NVL (:defaultentity, matter.e' +
        'ntity)'
      '                OR (   author = :author'
      '                    OR partner = :author'
      '                    OR controller = :author'
      '                    OR OPERATOR = :author'
      '                    OR paralegal = :author'
      '                    OR wkflow_per_level_1 = :author'
      '                    OR wkflow_per_level_2 = :author'
      '                    OR wkflow_per_level_3 = :author'
      '                    OR wkflow_per_level_4 = :author'
      '                    OR wkflow_per_level_5 = :author'
      '                    OR wkflow_per_level_6 = :author'
      '                    OR wkflow_per_level_7 = :author'
      '                    OR wkflow_per_level_8 = :author'
      '                    OR wkflow_per_level_9 = :author'
      '                    OR wkflow_per_level_10 = :author'
      '                   )'
      '               )'
      '             THEN 1'
      '          ELSE 0'
      '       END = 1')
    Left = 220
    Top = 166
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'defaultentity'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
  end
  object dsReqEmployee: TUniDataSource
    DataSet = qryReqEmployee
    Left = 393
    Top = 175
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 358
    Top = 451
  end
end
