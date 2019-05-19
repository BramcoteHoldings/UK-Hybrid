object frmScaleCostNew: TfrmScaleCostNew
  Left = 399
  Top = 183
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Fee Template Codes'
  ClientHeight = 534
  ClientWidth = 411
  Color = clBtnFace
  Constraints.MinHeight = 488
  Constraints.MinWidth = 417
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 17
  object Label8: TLabel
    Left = 12
    Top = 411
    Width = 66
    Height = 17
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Description'
  end
  object Label2: TLabel
    Left = 12
    Top = 517
    Width = 72
    Height = 17
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Other Notes'
  end
  object Label6: TLabel
    Left = 226
    Top = 10
    Width = 77
    Height = 17
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'UTBMS Code'
    Transparent = True
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 411
    Height = 534
    Align = alClient
    TabOrder = 0
    AutoSize = True
    DesignSize = (
      411
      534)
    object dbtbCode: TcxDBTextEdit
      Left = 115
      Top = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'CODE'
      DataBinding.DataSource = dsScaleCosts
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 90
    end
    object cbType: TcxDBLookupComboBox
      Left = 115
      Top = 46
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'TYPE'
      DataBinding.DataSource = dsScaleCosts
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end
        item
          FieldName = 'CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsMatterType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 292
    end
    object dbmmoFeeDesc: TcxDBMemo
      Left = 115
      Top = 447
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'DESCR'
      DataBinding.DataSource = dsScaleCosts
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 12
      Height = 101
      Width = 292
    end
    object dbmmoNotes: TcxDBMemo
      Left = 115
      Top = 556
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = dsScaleCosts
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 13
      Height = 100
      Width = 292
    end
    object btnOK: TcxButton
      Left = 115
      Top = 664
      Width = 91
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = [akLeft, akBottom]
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
      TabOrder = 14
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 214
      Top = 664
      Width = 91
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = [akLeft, akBottom]
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
      TabOrder = 15
      OnClick = btnCancelClick
    end
    object cmbBillType: TcxDBComboBox
      Left = 115
      Top = 79
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'BILLTYPE'
      DataBinding.DataSource = dsScaleCosts
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Billable'
        'NonBillable')
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
      Width = 292
    end
    object pageSelections: TcxPageControl
      Left = 13
      Top = 244
      Width = 394
      Height = 195
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 11
      Properties.ActivePage = tsItemCost
      Properties.CustomButtons.Buttons = <>
      Properties.ShowFrame = True
      Properties.TabSlants.Kind = skCutCorner
      LookAndFeel.NativeStyle = True
      ClientRectBottom = 191
      ClientRectLeft = 4
      ClientRectRight = 390
      ClientRectTop = 28
      object tsTimeCost: TcxTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Time Cost'
        ImageIndex = 0
        object Label39: TLabel
          Left = 1
          Top = 12
          Width = 107
          Height = 17
          Hint = 
            'The Time Rate per unit will override the employee rate set in th' +
            'e Employee or in the Fee Rate Codes for the Matter.'
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Time Rate per unit'
          Transparent = True
        end
        object Label10: TLabel
          Left = 1
          Top = 45
          Width = 139
          Height = 17
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Default number of Units'
          Transparent = True
        end
        object dbtbAmount: TcxDBCurrencyEdit
          Left = 177
          Top = 7
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          DataBinding.DataField = 'AMOUNT'
          DataBinding.DataSource = dsScaleCosts
          Properties.Alignment.Horz = taRightJustify
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 107
        end
        object cxLabel2: TcxLabel
          Left = 12
          Top = 108
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          AutoSize = False
          Caption = 
            'Enter a "Time Rate per unit" here if you want this template to b' +
            'e applied to a WIP entry on a per unit basis.'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clInfoBk
          Properties.Orientation = cxoTop
          Properties.ShowAccelChar = False
          Properties.WordWrap = True
          Height = 43
          Width = 355
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 177
          Top = 41
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          DataBinding.DataField = 'DFLT_TIME_UNITS'
          DataBinding.DataSource = dsScaleCosts
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 51
        end
      end
      object tsItemCost: TcxTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Item Cost'
        ImageIndex = 1
        object Label4: TLabel
          Left = 1
          Top = 12
          Width = 108
          Height = 17
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Item Rate per item'
          Transparent = True
        end
        object Label9: TLabel
          Left = 1
          Top = 69
          Width = 141
          Height = 17
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Default number of Items'
          Transparent = True
        end
        object Label5: TLabel
          Left = 1
          Top = 40
          Width = 94
          Height = 17
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Item description'
          Transparent = True
        end
        object Label7: TLabel
          Left = 272
          Top = 40
          Width = 96
          Height = 17
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = '(Folio, Page, etc)'
        end
        object dbtbRate: TcxDBCurrencyEdit
          Left = 169
          Top = 7
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          AutoSize = False
          DataBinding.DataField = 'RATE'
          DataBinding.DataSource = dsScaleCosts
          Properties.Alignment.Horz = taRightJustify
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 26
          Width = 84
        end
        object dbtbDefaultUnits: TcxDBTextEdit
          Left = 169
          Top = 66
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          DataBinding.DataField = 'DEFAULTTIME'
          DataBinding.DataSource = dsScaleCosts
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 51
        end
        object cxLabel3: TcxLabel
          Left = 1
          Top = 94
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          AutoSize = False
          Caption = 
            'Enter an "Item Rate per item" to be used for WIP creation that'#39's' +
            ' of a fixed nature.  You can optionally enter  the number of def' +
            'ault units the task will be shown as.'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = clInfoBk
          Properties.WordWrap = True
          Height = 56
          Width = 362
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 169
          Top = 36
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          DataBinding.DataField = 'UNIT'
          DataBinding.DataSource = dsScaleCosts
          TabOrder = 1
          Width = 103
        end
      end
      object tsEstimate: TcxTabSheet
        Caption = 'Budgets/Estimates'
        ImageIndex = 2
        object cxLabel5: TcxLabel
          Left = 2
          Top = 6
          Caption = 'Low Revenue Estimate'
          Transparent = True
        end
        object currEditBudgetLow: TcxDBCurrencyEdit
          Left = 165
          Top = 5
          Hint = 
            'If this is blank or 0.00, revenue is calculated on the Time Esti' +
            'mate for the relevant Fee Earner using their hourly charge rate.'
          DataBinding.DataField = 'BUDGET_LOW'
          DataBinding.DataSource = dsScaleCosts
          TabOrder = 1
          OnExit = currEditBudgetLowExit
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 2
          Top = 37
          Caption = 'High Revenue Estimate'
          Transparent = True
        end
        object currEditBudgetHigh: TcxDBCurrencyEdit
          Left = 165
          Top = 36
          Hint = 
            'If this is blank or 0.00, revenue is calculated on the Time Esti' +
            'mate for the relevant Fee Earner using their hourly charge rate.'
          DataBinding.DataField = 'BUDGET_HIGH'
          DataBinding.DataSource = dsScaleCosts
          TabOrder = 3
          Width = 121
        end
        object cxLabel9: TcxLabel
          Left = 2
          Top = 68
          Caption = 'Min Time Estimate (Units)'
          Transparent = True
        end
        object teTimeEstimateMin: TcxDBTextEdit
          Left = 165
          Top = 67
          Hint = 
            'The value in this field enables calculation of the cost to the f' +
            'irm of this task based on the notional cost of the relevant Fee ' +
            'Earner.'
          DataBinding.DataField = 'TIME_ESTIMATE'
          DataBinding.DataSource = dsScaleCosts
          TabOrder = 5
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 99
          Caption = 'Max Time Estimate (Units)'
          Transparent = True
        end
        object teTimeEstimateMax: TcxDBTextEdit
          Left = 165
          Top = 97
          Hint = 
            'The value in this field enables calculation of the cost to the f' +
            'irm of this task based on the notional cost of the relevant Fee ' +
            'Earner.'
          DataBinding.DataField = 'MAX_TIME_ESTIMATE'
          DataBinding.DataSource = dsScaleCosts
          TabOrder = 7
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 1
          Top = 130
          Caption = 'Estimated hourly cost'
          Transparent = True
          Visible = False
        end
        object currEstimatedHourlyCost: TcxDBCurrencyEdit
          Left = 165
          Top = 129
          DataBinding.DataField = 'EST_HOURLY_COST'
          DataBinding.DataSource = dsScaleCosts
          TabOrder = 9
          Visible = False
          OnExit = currEditBudgetLowExit
          Width = 121
        end
        object cxLabel7: TcxLabel
          Left = 292
          Top = 6
          Caption = 'Fixed'
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 292
          Top = 37
          Caption = 'Fixed'
          Transparent = True
        end
      end
      object tsDocument: TcxTabSheet
        Caption = 'Document'
        ImageIndex = 3
        object dbgDocs: TcxGrid
          Left = 0
          Top = 0
          Width = 386
          Height = 129
          Align = alTop
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvDocs: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 58
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 14
            Preview.LeftIndent = 23
            Preview.RightIndent = 6
            object tvDocsDOCUMENTNAME: TcxGridColumn
              Caption = 'Name'
              MinWidth = 23
              Styles.Header = dmAxiom.UnreadStyle
            end
            object tvDocsID: TcxGridColumn
              DataBinding.ValueType = 'Integer'
              Visible = False
              MinWidth = 23
            end
          end
          object dbgDocsLevel1: TcxGridLevel
            GridView = tvDocs
          end
        end
        object bnAddDoc: TButton
          Left = 108
          Top = 134
          Width = 74
          Height = 25
          Align = alCustom
          Caption = 'Add'
          TabOrder = 1
          OnClick = bnAddDocClick
        end
        object bnDeleteDoc: TButton
          Left = 187
          Top = 134
          Width = 75
          Height = 25
          Align = alCustom
          Caption = 'Delete'
          TabOrder = 2
          OnClick = bnDeleteDocClick
        end
      end
    end
    object cbZeroFee: TcxDBCheckBox
      Left = 13
      Top = 211
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Zero Fee'
      DataBinding.DataField = 'ZERO_FEE'
      DataBinding.DataSource = dsScaleCosts
      Properties.DisplayChecked = 'Y'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Transparent = True
    end
    object cbActive: TcxDBCheckBox
      Left = 96
      Top = 211
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Active'
      DataBinding.DataField = 'ACTIVE'
      DataBinding.DataSource = dsScaleCosts
      Properties.DisplayChecked = 'Y'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Transparent = True
    end
    object cbAutoTimer: TcxDBCheckBox
      Left = 162
      Top = 211
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Auto Timer'
      DataBinding.DataField = 'AUTO_TIMER'
      DataBinding.DataSource = dsScaleCosts
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
    end
    object dbtbUTBMSCode: TcxDBTextEdit
      Left = 296
      Top = 13
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'UTBMS_CODE'
      DataBinding.DataSource = dsScaleCosts
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 90
    end
    object cmbEmployee: TcxDBLookupComboBox
      Left = 115
      Top = 112
      DataBinding.DataField = 'EMPLOYEE_TYPE'
      DataBinding.DataSource = dsScaleCosts
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'VALUE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDisplayNames
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 292
    end
    object cmbParent: TcxDBLookupComboBox
      Left = 115
      Top = 145
      DataBinding.DataField = 'PARENT_ID'
      DataBinding.DataSource = dsScaleCosts
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'NSCALECOST'
      Properties.ListColumns = <
        item
          Width = 180
          FieldName = 'DESCR'
        end
        item
          FieldName = 'CODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dslScaleCostList
      Properties.OnInitPopup = cxDBLookupComboBox2PropertiesInitPopup
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 292
    end
    object spinDays: TcxDBSpinEdit
      Left = 115
      Top = 178
      DataBinding.DataField = 'DAYS'
      DataBinding.DataSource = dsScaleCosts
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 292
    end
    object cbProjectTask: TcxDBCheckBox
      Left = 258
      Top = 211
      Caption = 'Project Task'
      DataBinding.DataField = 'PROJECT_TASK'
      DataBinding.DataSource = dsScaleCosts
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Properties.OnEditValueChanged = cbProjectTaskPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 10
      OnClick = cbProjectTaskClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Template Code'
      Control = dbtbCode
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'UTBMS Code'
      Control = dbtbUTBMSCode
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Matter Type'
      Control = cbType
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 292
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Bill Type'
      Control = cmbBillType
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Employee Type'
      Control = cmbEmployee
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Parent Template'
      Control = cmbParent
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Sequence (Days)'
      Control = spinDays
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbAutoTimer
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbActive
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbZeroFee
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pageSelections
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 195
      ControlOptions.OriginalWidth = 394
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = dbmmoFeeDesc
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Other Notes'
      Control = dbmmoNotes
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 18
      ButtonOptions.DefaultWidth = 18
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbProjectTask
      ControlOptions.MinHeight = 23
      ControlOptions.MinWidth = 23
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object qryScaleCost: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT S.*, S.ROWID '
      'FROM SCALECOST S '
      'WHERE S.CODE = :Code')
    AfterInsert = qryScaleCostAfterInsert
    BeforePost = qryScaleCostBeforePost
    AfterScroll = qryScaleCostAfterScroll
    OnNewRecord = qryScaleCostNewRecord
    Left = 86
    Top = 77
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Code'
        Value = nil
      end>
  end
  object dsScaleCosts: TUniDataSource
    DataSet = qryScaleCost
    Left = 167
    Top = 34
  end
  object qryMatterType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from mattertype')
    Left = 41
    Top = 461
  end
  object dsMatterType: TUniDataSource
    DataSet = qryMatterType
    Left = 361
    Top = 53
  end
  object qryDisplayNames: TUniQuery
    UpdatingTable = 'DISPLAY_NAME'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*,ROWID'
      'FROM DISPLAY_NAME D'
      'WHERE ACCT = :ENTITY'
      'AND CLASS = '#39'MATTER'#39
      'and code in ('#39'P'#39','#39'A'#39','#39'L'#39','#39'C'#39', '#39'O'#39')')
    Left = 267
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end>
  end
  object dsDisplayNames: TUniDataSource
    DataSet = qryDisplayNames
    Left = 352
    Top = 105
  end
  object tblScaleCostList: TUniTable
    TableName = 'SCALECOST'
    Connection = dmAxiom.uniInsight
    Left = 380
    Top = 229
  end
  object dslScaleCostList: TUniDataSource
    DataSet = tblScaleCostList
    Left = 376
    Top = 186
  end
  object tbScalecostDocLink: TUniTable
    TableName = 'SCALECOSTDOCLINK'
    Connection = dmAxiom.uniInsight
    CachedUpdates = True
    Left = 58
    Top = 533
    object tbScalecostDocLinkDOCID: TFloatField
      FieldName = 'DOCID'
      Required = True
    end
    object tbScalecostDocLinkNSCALECOST: TFloatField
      FieldName = 'NSCALECOST'
      Required = True
    end
    object tbScalecostDocLinkROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsScalecostDocLink: TDataSource
    DataSet = tbScalecostDocLink
    Left = 38
    Top = 580
  end
end
