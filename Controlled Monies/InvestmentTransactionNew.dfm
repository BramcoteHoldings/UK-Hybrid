object frmInvestmentTransactionNew: TfrmInvestmentTransactionNew
  Left = 595
  Top = 204
  BorderStyle = bsDialog
  Caption = 'frmInvestmentTransactionNew'
  ClientHeight = 475
  ClientWidth = 362
  Color = clBtnFace
  Constraints.MinHeight = 414
  Constraints.MinWidth = 324
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 362
    Height = 455
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    AutoSize = True
    DesignSize = (
      362
      455)
    object cxCeAmount: TcxCurrencyEdit
      Left = 115
      Top = 137
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DecimalPlaces = 2
      Properties.Nullable = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 220
    end
    object cxDeCreated: TcxDateEdit
      Left = 115
      Top = 104
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
      Width = 220
    end
    object cxBtnSave: TcxButton
      Left = 168
      Top = 404
      Width = 80
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = 'Save'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
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
      TabOrder = 13
      OnClick = cxBtnSaveClick
    end
    object cxBtnCancel: TcxButton
      Left = 256
      Top = 404
      Width = 79
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      LookAndFeel.Kind = lfStandard
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
      TabOrder = 14
    end
    object cxEdReference: TcxCurrencyEdit
      Left = 115
      Top = 170
      Properties.AssignedValues.DisplayFormat = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 220
    end
    object cxEdPayee: TcxButtonEdit
      Left = 115
      Top = 203
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
      Properties.OnButtonClick = cxEdPayeePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Width = 220
    end
    object cxLcMatter: TcxLookupComboBox
      Left = 115
      Top = 13
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'FILEID'
      Properties.ListColumns = <
        item
          Caption = 'FileId'
          Fixed = True
          FieldName = 'FILEID'
        end
        item
          Caption = 'Search'
          Fixed = True
          Width = 350
          FieldName = 'SEARCH'
        end>
      Properties.ListSource = dsMRUList
      Properties.OnCloseUp = cxLcMatterPropertiesCloseUp
      Properties.OnValidate = cxLcMatterPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 220
    end
    object clLcDepositAccount: TcxLookupComboBox
      Left = 115
      Top = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'NDEPOSITACCOUNT'
      Properties.ListColumns = <
        item
          Caption = 'Account Name'
          MinWidth = 60
          Width = 60
          FieldName = 'ACCOUNT_NAME'
        end
        item
          Caption = 'Account Number'
          FieldName = 'ACCOUNT_NUMBER'
        end
        item
          Caption = 'Deposit Number'
          FieldName = 'NDEPOSITACCOUNT'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsDepositAccount
      Properties.OnChange = clLcDepositAccountPropertiesChange
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
      Width = 220
    end
    object cmbPaymentMethod: TcxComboBox
      Left = 115
      Top = 287
      Properties.HideSelection = False
      Properties.OnInitPopup = cmbPaymentTypePropertiesInitPopup
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 9
      Width = 220
    end
    object memoBankDetails: TcxMemo
      Left = 115
      Top = 320
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Height = 43
      Width = 220
    end
    object cbKeepOpen: TcxCheckBox
      Left = 13
      Top = 371
      Anchors = [akLeft, akBottom]
      Caption = 'Keep form open after posting?'
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Transparent = True
    end
    object cbPrint: TcxCheckBox
      Left = 13
      Top = 409
      Anchors = [akLeft, akBottom]
      Caption = 'Print?'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 12
      Transparent = True
    end
    object cxEdDescr: TcxMemo
      Left = 115
      Top = 236
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Height = 43
      Width = 220
    end
    object rbCapital: TcxRadioButton
      Left = 108
      Top = 79
      Width = 59
      Height = 17
      Caption = 'Capital'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbCapitalClick
      LookAndFeel.NativeStyle = True
    end
    object rbInterest: TcxRadioButton
      Left = 175
      Top = 79
      Width = 65
      Height = 17
      Caption = 'Interest'
      TabOrder = 3
      OnClick = rbInterestClick
      LookAndFeel.NativeStyle = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Matter'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 313
      Control = cxLcMatter
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account'
      Control = clLcDepositAccount
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahCenter
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'rbCapital'
      CaptionOptions.Visible = False
      Control = rbCapital
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'rbInterest'
      CaptionOptions.Visible = False
      Control = rbInterest
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Created'
      Control = cxDeCreated
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Amount'
      Control = cxCeAmount
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Reference'
      Control = cxEdReference
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Payee/Payor'
      Control = cxEdPayee
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxEdDescr
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Payment Type'
      Control = cmbPaymentMethod
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Payment  Details'
      Control = memoBankDetails
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cbKeepOpen'
      CaptionOptions.Visible = False
      Control = cbKeepOpen
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignVert = avBottom
      CaptionOptions.Text = 'cbPrint'
      CaptionOptions.Visible = False
      Control = cbPrint
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxBtnSave'
      CaptionOptions.Visible = False
      Control = cxBtnSave
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxBtnCancel'
      CaptionOptions.Visible = False
      Control = cxBtnCancel
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'StatusBar'
      CaptionOptions.Visible = False
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 363
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 455
    Width = 362
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 113
        Width = 113
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 113
        Width = 113
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object qryInvestmentTrans: TUniQuery
    KeyFields = 'NINVTRAN'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'NINVTRAN, NMATTER, NDEPOSITACCOUNT, '
      '   TYPE, CREATED,'
      
        '   DESCR, AMOUNT,Reference,PayeePayor,REV_NINVTRAN,tran_type, ba' +
        'nk,PAYMENT_METHOD,PAYMENT_DETAILS'
      'FROM INVESTMENT_TRANS')
    Left = 423
    Top = 104
  end
  object qryCheckBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select (nvl(sum(amount),0) + :newAmount) as balance'
      'from investment_trans'
      'where ndepositAccount = :ndepositAccount')
    Left = 423
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'newAmount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ndepositAccount'
        Value = nil
      end>
  end
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 426
    Top = 7
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT trim(M.FILEID) AS FILEID,trim(P.SEARCH) AS SEARCH, trim(M' +
        '.SHORTDESCR) AS SHORTDESCR, idx'
      'FROM MATTER M, PHONEBOOK P,OPENLIST O'
      'WHERE O.AUTHOR = :P_Author'
      'AND O.TYPE = :P_Type'
      'AND O.CODE = M.FILEID'
      'AND M.NCLIENT = P.NCLIENT'
      
        '--AND EXISTS (SELECT * FROM DEPOSIT_ACCOUNT WHERE nmatter = m.nm' +
        'atter)'
      'UNION'
      'SELECT '#39'Search...'#39','#39#39','#39#39',999'
      'FROM dual'
      'ORDER BY 3')
    Left = 393
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Author'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Type'
        Value = nil
      end>
  end
  object qryDepositAccount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from deposit_account'
      'where nmatter = :nmatter')
    Left = 393
    Top = 37
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsDepositAccount: TUniDataSource
    DataSet = qryDepositAccount
    Left = 426
    Top = 39
  end
  object qryInvestmentTransDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'NINVTRAN, NMATTER, NDEPOSITACCOUNT, '
      '   TYPE, CREATED,'
      
        '   DESCR, AMOUNT,Reference,PayeePayor, REV_NINVTRAN,tran_type, b' +
        'ank,PAYMENT_METHOD, PAYMENT_DETAILS, rowid'
      'FROM INVESTMENT_TRANS'
      'where NINVTRAN = :NINVTRAN')
    Left = 432
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NINVTRAN'
        Value = nil
      end>
  end
  object qryBalances: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select (a.balance+b.IntBalance ) as total,balance, intbalance'
      'from'
      '('
      'select'
      'nvl(sum(ti.AMOUNT),0) as balance'
      'from investment_trans ti'
      'where'
      'ti.ndepositaccount = :ndepositaccount'
      'and tran_type = '#39'C'#39') a,'
      '('
      'select'
      'nvl(sum(ti.AMOUNT),0) as IntBalance'
      'from investment_trans ti'
      'where'
      'ti.ndepositaccount = :ndepositaccount'
      'and tran_type = '#39'I'#39') b')
    Left = 404
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ndepositaccount'
        Value = nil
      end>
  end
  object qryPaymentMethod: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT DISTINCT UPPER(PAYMENT_METHOD) as PAYMENT_METHOD FROM INV' +
        'ESTMENT_TRANS')
    Left = 309
    Top = 32
  end
  object plDep: TppDBPipeline
    DataSource = dsDep
    OpenDataSource = False
    UserName = 'plDep'
    Left = 339
    Top = 319
    object plDepppField1: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plDepppField2: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plDepppField3: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plDepppField4: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plDepppField5: TppField
      FieldAlias = 'SHORTDESCR'
      FieldName = 'SHORTDESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plDepppField6: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plDepppField7: TppField
      FieldAlias = 'REFERENCE'
      FieldName = 'REFERENCE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plDepppField8: TppField
      FieldAlias = 'INSTITUTE'
      FieldName = 'INSTITUTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plDepppField9: TppField
      FieldAlias = 'ACCOUNT_NUMBER'
      FieldName = 'ACCOUNT_NUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plDepppField10: TppField
      FieldAlias = 'ACCOUNT_TYPE'
      FieldName = 'ACCOUNT_TYPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plDepppField11: TppField
      FieldAlias = 'ACCOUNT_NAME'
      FieldName = 'ACCOUNT_NAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plDepppField12: TppField
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plDepppField13: TppField
      FieldAlias = 'PAYEEPAYOR'
      FieldName = 'PAYEEPAYOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plDepppField14: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plDepppField15: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plDepppField16: TppField
      FieldAlias = 'PAYMENT_METHOD'
      FieldName = 'PAYMENT_METHOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plDepppField17: TppField
      FieldAlias = 'PAYMENT_DETAILS'
      FieldName = 'PAYMENT_DETAILS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object qryDep: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT p.name,p.ADDRESS,p.SUBURB,p.STATE,m.SHORTDESCR,it.CREATED' +
        ',it.REFERENCE,'
      
        'da.INSTITUTE,da.ACCOUNT_NUMBER,da.ACCOUNT_TYPE,da.ACCOUNT_NAME,i' +
        't.AMOUNT,it.PAYEEPAYOR, m.fileid, it.descr,'
      'it.payment_method, it.payment_details'
      
        ' FROM INVESTMENT_TRANS it, DEPOSIT_ACCOUNT da,MATTER m,PHONEBOOK' +
        ' p'
      'WHERE it.NDEPOSITACCOUNT = da.NDEPOSITACCOUNT'
      'AND da.nmatter = m.nmatter'
      'AND m.nclient =p.nclient'
      'AND ninvtran = :ninvtran')
    Left = 312
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ninvtran'
        Value = nil
      end>
  end
  object dsDep: TUniDataSource
    DataSet = qryDep
    Left = 372
    Top = 390
  end
  object qrySystem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from'
      '('
      'SELECT'
      '  '#39'ABN: '#39'||ENTITY.ABN,'
      '  ENTITY.NAME'
      'FROM'
      '  ENTITY '
      'WHERE '
      '  CODE = :entity),'
      '('
      'SELECT  '
      '  SYSTEMFILE.COMPANY,'
      '  SYSTEMFILE.ADD1,'
      '  SYSTEMFILE.ADD2,'
      
        '  SYSTEMFILE.SUBURB || '#39'  '#39'|| SYSTEMFILE.STATE ||'#39'  '#39'|| SYSTEMFI' +
        'LE.POSTCODE as suburb,'
      '  SYSTEMFILE.LOGO_IMAGE'
      'from '
      '  SYSTEMFILE )')
    Left = 419
    Top = 313
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = Null
      end>
  end
  object dsSystem: TUniDataSource
    DataSet = qrySystem
    Left = 423
    Top = 357
  end
  object plSystem: TppDBPipeline
    DataSource = dsSystem
    UserName = 'plSystem'
    Left = 424
    Top = 404
    object plSystemppField1: TppField
      FieldAlias = #39'ABN:'#39'||ENTITY.ABN'
      FieldName = #39'ABN:'#39'||ENTITY.ABN'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plSystemppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plSystemppField3: TppField
      FieldAlias = 'COMPANY'
      FieldName = 'COMPANY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plSystemppField4: TppField
      FieldAlias = 'ADD1'
      FieldName = 'ADD1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plSystemppField5: TppField
      FieldAlias = 'ADD2'
      FieldName = 'ADD2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object plSystemppField6: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 94
      DisplayWidth = 94
      Position = 5
    end
    object plSystemppField7: TppField
      FieldAlias = 'LOGO_IMAGE'
      FieldName = 'LOGO_IMAGE'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object rpReceipt: TppReport
    AutoStop = False
    DataPipeline = plDep
    NoDataBehaviors = [ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\CVS\axiom6-17\RECEIPT_INV.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 383
    Top = 320
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDep'
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 162454
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Pen.Color = clSilver
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 16933
        mmLeft = 128323
        mmTop = 34131
        mmWidth = 67469
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DEPOSIT RECEIPT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif Black'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6879
        mmLeft = 3175
        mmTop = 16933
        mmWidth = 54240
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 71438
        mmWidth = 80963
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 78052
        mmWidth = 81227
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SUBURB'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 83079
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'STATE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 88106
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SHORTDESCR'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 102659
        mmWidth = 120915
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CREATED'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 136525
        mmTop = 71438
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REFERENCE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 136525
        mmTop = 78052
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plDep
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 102659
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INSTITUTE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 117740
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ACCOUNT_NUMBER'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 54240
        mmTop = 117740
        mmWidth = 36248
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ACCOUNT_TYPE'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 94721
        mmTop = 117740
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ACCOUNT_NAME'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 117740
        mmWidth = 54769
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PAYEEPAYOR'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 153988
        mmWidth = 23834
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 136525
        mmTop = 84667
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = #39'ABN:'#39'||ENTITY.ABN'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 5038
        mmLeft = 133350
        mmTop = 25929
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'COMPANY'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 4022
        mmLeft = 133350
        mmTop = 35454
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'ADD1'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 3969
        mmLeft = 133350
        mmTop = 40481
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'SUBURB'
        DataPipeline = plSystem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plSystem'
        mmHeight = 4022
        mmLeft = 133350
        mmTop = 45508
        mmWidth = 57415
        BandType = 4
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        DisplayFormat = 'dd-mmmm-yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 55033
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBImage2: TppDBImage
        DesignLayer = ppDesignLayer1
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        DataField = 'LOGO_IMAGE'
        DataPipeline = plSystem
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'plSystem'
        mmHeight = 21431
        mmLeft = 129646
        mmTop = 2117
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 125148
        mmWidth = 189707
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'PAYMENT_METHOD'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDep'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 130969
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'PAYMENT_DETAILS'
        DataPipeline = plDep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plDep'
        mmHeight = 11906
        mmLeft = 34131
        mmTop = 130969
        mmWidth = 158221
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Color = clSilver
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Width = 3
        ParentWidth = True
        Weight = 2.250000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 51858
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Width = 3
        ParentWidth = True
        Weight = 2.250000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 160867
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Width = 2
        Position = lpRight
        Weight = 1.500000000000000000
        mmHeight = 108479
        mmLeft = 195792
        mmTop = 52388
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 108479
        mmLeft = 0
        mmTop = 52388
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Report: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 240
    Top = 386
    Version = '19.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
