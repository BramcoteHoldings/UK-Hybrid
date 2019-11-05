object frmFeeNew: TfrmFeeNew
  Left = 623
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Fee Creation'
  ClientHeight = 594
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    385
    594)
  PixelsPerInch = 96
  TextHeight = 15
  object Label13: TLabel
    Left = 5
    Top = 460
    Width = 63
    Height = 15
    Caption = 'Department'
  end
  object Label14: TLabel
    Left = 9
    Top = 589
    Width = 47
    Height = 15
    Caption = 'Fee Basis'
    Visible = False
  end
  object Label1: TLabel
    Left = 5
    Top = 4
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object Label2: TLabel
    Left = 5
    Top = 62
    Width = 24
    Height = 15
    Caption = 'Date'
  end
  object Label3: TLabel
    Left = 5
    Top = 112
    Width = 37
    Height = 15
    Caption = 'Author'
  end
  object Label4: TLabel
    Left = 5
    Top = 159
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object lblUnits: TLabel
    Left = 3
    Top = 313
    Width = 27
    Height = 15
    Caption = 'Units'
  end
  object lblInvoiceMsg: TLabel
    Left = 233
    Top = 62
    Width = 16
    Height = 15
    Caption = 'Bill'
    Transparent = True
    Visible = False
  end
  object Label15: TLabel
    Left = 5
    Top = 435
    Width = 43
    Height = 15
    Caption = 'Tax Rate'
  end
  object Label5: TLabel
    Left = 5
    Top = 487
    Width = 25
    Height = 15
    Caption = 'Type'
  end
  object Label6: TLabel
    Left = 5
    Top = 138
    Width = 23
    Height = 15
    Caption = 'Task'
  end
  object Label10: TLabel
    Left = 5
    Top = 236
    Width = 34
    Height = 15
    Caption = 'Notes:'
  end
  object Label17: TLabel
    Left = 5
    Top = 88
    Width = 24
    Height = 15
    Caption = 'Start'
  end
  object Label18: TLabel
    Left = 223
    Top = 88
    Width = 20
    Height = 15
    Caption = 'End'
  end
  object Label19: TLabel
    Left = 4
    Top = 273
    Width = 35
    Height = 15
    Caption = '0/4000'
  end
  object Label20: TLabel
    Left = 4
    Top = 290
    Width = 57
    Height = 15
    Caption = '(Max 4000)'
  end
  object Label22: TLabel
    Left = 248
    Top = 311
    Width = 8
    Height = 15
    Caption = '='
  end
  object Label23: TLabel
    Left = 133
    Top = 311
    Width = 11
    Height = 15
    Caption = '@'
  end
  object Label24: TLabel
    Left = 239
    Top = 517
    Width = 53
    Height = 15
    Caption = 'Prac Num'
    Visible = False
  end
  object btnCancel: TcxButton
    Left = 285
    Top = 562
    Width = 80
    Height = 27
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
    TabOrder = 19
    OnClick = btnCancelClick
  end
  object btnOk: TcxButton
    Left = 196
    Top = 562
    Width = 80
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = '&Ok'
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
    TabOrder = 18
    OnClick = btnOkClick
  end
  object cbDept: TcxLookupComboBox
    Left = 79
    Top = 457
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Description'
        Width = 200
        FieldName = 'DESCR'
      end
      item
        Caption = 'Code'
        Width = 100
        FieldName = 'CODE'
      end>
    Properties.ListOptions.ColumnSorting = False
    Properties.ListSource = dsEmpDept
    Properties.OnChange = cbDeptPropertiesChange
    EditValue = ''
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Width = 178
  end
  object cbFeeBasis: TcxLookupComboBox
    Left = 78
    Top = 588
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end
      item
        FieldName = 'BILLTYPE'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsFeeBasisList
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 14
    Visible = False
    OnClick = cbFeeBasisClick
    Width = 178
  end
  object cbAuthor: TcxLookupComboBox
    Left = 79
    Top = 109
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Name'
        FieldName = 'NAME'
      end
      item
        Caption = 'Code'
        Width = 35
        FieldName = 'code'
      end>
    Properties.ListOptions.RowSelect = False
    Properties.ListSource = dsFeeEarners
    Properties.OnChange = cbAuthorPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 285
  end
  object chkPrivate: TcxCheckBox
    Left = 298
    Top = 535
    Caption = 'Private?'
    Properties.Alignment = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Visible = False
  end
  object cbPrint: TcxCheckBox
    Left = 4
    Top = 565
    Anchors = [akLeft, akBottom]
    Caption = 'Print Notes'
    Properties.Alignment = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object lblInvoice: TcxLabel
    Left = 265
    Top = 60
    AutoSize = False
    Transparent = True
    Height = 18
    Width = 99
  end
  object cbTaxType: TcxLookupComboBox
    Left = 79
    Top = 432
    Properties.DropDownAutoSize = True
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Description'
        FieldName = 'DESCR'
      end
      item
        Caption = 'Code'
        Width = 80
        FieldName = 'CODE'
      end>
    Properties.ListSource = dsTaxType
    Properties.OnChange = cbTaxTypeChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Width = 178
  end
  object lblMatterDesc: TcxLabel
    Left = 189
    Top = 1
    AutoSize = False
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Properties.WordWrap = True
    Height = 34
    Width = 175
  end
  object lblClient: TcxLabel
    Left = 79
    Top = 38
    AutoSize = False
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Height = 18
    Width = 285
  end
  object sbPrint: TcxButton
    Left = 158
    Top = 562
    Width = 27
    Height = 27
    Anchors = [akLeft, akBottom]
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360800000000000036000000280000002000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0080800000808000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFBFBFBFFFFFFF
      FFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFF
      FFFFBFBFBFFFFFFFFFFF0000FFFFFFFFFFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBF
      BFFFFFFFFFFFBFBFBFFFFFFFFFFFBFBFBFFF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFFFFFFFFFF7F7F7FFFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF00808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080
      8000FFFFFFFF7F7F7FFFFFFFFFFF008080000080800000808000008080000080
      8000000000FFFFFFFFFF000000FF000000FF000000FF000000FFFFFFFFFF0000
      00FFFFFFFFFF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080007F7F
      7FFF008080007F7F7FFFFFFFFFFF008080000080800000808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFFFFFF00808000FFFFFFFFFFFF
      FFFFFFFFFFFF7F7F7FFFFFFFFFFF008080000080800000808000008080000080
      8000000000FFFFFFFFFF000000FF000000FFFFFFFFFF000000FF000000FF0000
      00FF000000FF000000FF00808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF008080007F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF00808000008080000080800000808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFF000000FF0080800000808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFF0080
      80007F7F7FFF0080800000808000008080000080800000808000008080000080
      8000000000FFFFFFFFFF000000FFBFBFBFFFFFFFFFFF000000FFFFFFFFFF0000
      00FF008080000080800000808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF008080007F7F7FFFFFFFFFFF7F7F
      7FFF008080000080800000808000008080000080800000808000008080000080
      8000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000FF000000FF000000FF000000FF000000FF000000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 17
    OnClick = sbPrintClick
  end
  object cmbTemplate: TcxLookupComboBox
    Left = 79
    Top = 135
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 15
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        Width = 240
        FieldName = 'DESCR'
      end
      item
        Width = 80
        FieldName = 'BILLTYPE'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsScaleCostsList
    Properties.OnChange = cmbTemplatePropertiesChange
    Properties.OnCloseUp = cmbTemplatePropertiesCloseUp
    Properties.OnInitPopup = cmbTemplatePropertiesInitPopup
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Width = 285
  end
  object dfItems: TcxTextEdit
    Left = 79
    Top = 310
    Properties.Alignment.Horz = taRightJustify
    Properties.OnChange = dfItemsPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Text = '1'
    Width = 48
  end
  object icmbType: TcxImageComboBox
    Left = 79
    Top = 484
    Properties.Images = ImageList1
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Description = 'Overhead'
        ImageIndex = 1
        Tag = 1
        Value = 'O'
      end
      item
        Description = 'Held'
        ImageIndex = 2
        Tag = 2
        Value = 'H'
      end>
    Properties.LargeImages = ImageList1
    Properties.OnInitPopup = icmbTypePropertiesInitPopup
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 13
    Width = 177
  end
  object dtpCreated: TcxDateEdit
    Left = 79
    Top = 59
    Properties.DateButtons = [btnClear, btnNow, btnToday]
    Properties.DateOnError = deToday
    Properties.ImmediatePost = True
    Properties.InputKind = ikStandard
    Properties.Kind = ckDateTime
    Properties.ShowTime = False
    Properties.OnChange = dtpCreatedPropertiesChange
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 143
  end
  object chkExcludeFromBill: TCheckBox
    Left = 5
    Top = 515
    Width = 222
    Height = 18
    Hint = 'This excludes this entry from the merged bill'
    Alignment = taLeftJustify
    Caption = 'Exclude Fee Description from Bill'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 23
  end
  object dtpStartTime: TDateTimePicker
    Left = 79
    Top = 84
    Width = 100
    Height = 23
    Date = 36221.764170659700000000
    Time = 36221.764170659700000000
    Kind = dtkTime
    TabOrder = 2
    OnChange = dtpStartTimeChange
  end
  object dtpEndTime: TDateTimePicker
    Left = 265
    Top = 84
    Width = 99
    Height = 23
    Date = 36221.764170659700000000
    Time = 36221.764170659700000000
    Kind = dtkTime
    TabOrder = 3
    OnChange = dtpEndTimeChange
  end
  object chkKeepOpen: TCheckBox
    Left = 5
    Top = 538
    Width = 222
    Height = 18
    Hint = 'Keep Fee Creation form open after posting.'
    Alignment = taLeftJustify
    Caption = 'Keep form open after posting'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 24
  end
  object neItem: TcxCurrencyEdit
    Left = 282
    Top = 311
    Enabled = False
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 9
    Width = 82
  end
  object neTimeAmount: TcxCurrencyEdit
    Left = 167
    Top = 310
    Properties.Alignment.Horz = taRightJustify
    Properties.OnChange = neRateChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Width = 60
  end
  object neItemTax: TcxCurrencyEdit
    Left = 300
    Top = 457
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 25
    Visible = False
    Width = 64
  end
  object Panel1: TPanel
    Left = 1
    Top = 339
    Width = 384
    Height = 87
    BevelInner = bvSpace
    BevelKind = bkSoft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 10
    object Label7: TLabel
      Left = 140
      Top = 7
      Width = 23
      Height = 15
      Caption = 'Rate'
    end
    object Label8: TLabel
      Left = 245
      Top = 7
      Width = 28
      Height = 15
      Caption = 'Value'
    end
    object Label11: TLabel
      Left = 232
      Top = 31
      Width = 44
      Height = 15
      Caption = 'Amount'
    end
    object Label12: TLabel
      Left = 130
      Top = 31
      Width = 35
      Height = 15
      Caption = 'Disc %'
    end
    object Label21: TLabel
      Left = 1
      Top = 7
      Width = 27
      Height = 15
      Caption = 'Units'
    end
    object Label9: TLabel
      Left = 2
      Top = 31
      Width = 43
      Height = 15
      Caption = 'Minutes'
    end
    object Label16: TLabel
      Left = 256
      Top = 55
      Width = 17
      Height = 15
      Caption = 'Tax'
    end
    object neRate: TcxCurrencyEdit
      Left = 166
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = neRateChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 60
    end
    object neAmount: TcxCurrencyEdit
      Left = 280
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = neAmountChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      OnEnter = neAmountEnter
      OnExit = neAmountExit
      Width = 82
    end
    object neValue: TcxCurrencyEdit
      Left = 280
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.OnChange = neAmountChange
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnEnter = neAmountEnter
      OnExit = neAmountExit
      Width = 82
    end
    object neDiscount: TcxTextEdit
      Left = 166
      Top = 28
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ClearKey = 46
      Properties.OnChange = neDiscountPropertiesChange
      TabOrder = 3
      Text = '0'
      Height = 23
      Width = 60
    end
    object neUnits: TcxSpinEdit
      Left = 76
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ValueType = vtFloat
      Properties.OnChange = neUnitsChange
      TabOrder = 0
      Value = 1.000000000000000000
      Width = 48
    end
    object neTax: TcxCurrencyEdit
      Left = 280
      Top = 52
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 82
    end
    object neMinutes: TcxTextEdit
      Left = 76
      Top = 28
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Text = '0'
      Width = 48
    end
  end
  object cmbPracNums: TcxLookupComboBox
    Left = 296
    Top = 513
    Enabled = False
    Properties.KeyFieldNames = 'PRAC_NUM'
    Properties.ListColumns = <
      item
        FieldName = 'PRAC_NUM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsPracNum
    TabOrder = 26
    Visible = False
    Width = 68
  end
  object mmoDesc: TcxRichEdit
    Left = 79
    Top = 162
    Properties.OnChange = mmoDescChange
    TabOrder = 6
    OnEnter = mmoDescEnter
    OnExit = mmoDescExit
    OnKeyPress = mmoDescKeyPress
    Height = 69
    Width = 285
  end
  object edMatterFind: TcxButtonEdit
    Left = 78
    Top = 1
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnValidate = edMatterFindPropertiesValidate
    TabOrder = 0
    OnKeyDown = edMatterFindKeyDown
    Width = 105
  end
  object mmoNotes: TcxMemo
    Left = 79
    Top = 237
    TabOrder = 27
    Height = 68
    Width = 284
  end
  object qryFee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT F.*, F.ROWID '
      'FROM '
      'FEE F '
      'WHERE F.NFEE = :P_Nfee')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 376
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Nfee'
        Value = nil
      end>
  end
  object qryScaleCost: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT nvl(AMOUNT,0) as amount, nvl(RATE,0) as rate, '
      'DESCR, UNIT, ZERO_FEE, DFLT_TIME_UNITS, DEFAULTTIME'
      'FROM '
      'SCALECOST '
      'WHERE CODE = :P_Code')
    Left = 298
    Top = 29
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end>
  end
  object qFeeEarners: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME, DEPT FROM EMPLOYEE WHERE'
      'ACTIVE = '#39'Y'#39' AND ISFEEEARNER = '#39'Y'#39
      'ORDER BY NAME')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 324
    Top = 127
    object qFeeEarnersCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object qFeeEarnersNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object qFeeEarnersDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
  end
  object dsFeeEarners: TDataSource
    DataSet = qFeeEarners
    Left = 347
    Top = 46
  end
  object qryEmpDept: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from empdept'
      'order by descr')
    Left = 45
    Top = 180
  end
  object dsEmpDept: TUniDataSource
    DataSet = qryEmpDept
    Left = 125
    Top = 166
  end
  object qryFeeBasisList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from feebasis')
    Left = 237
    Top = 105
  end
  object dsFeeBasisList: TUniDataSource
    DataSet = qryFeeBasisList
    Left = 299
    Top = 180
  end
  object qryTaxType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select code,descr from taxtype')
    Left = 302
    Top = 273
  end
  object dsTaxType: TUniDataSource
    DataSet = qryTaxType
    Left = 186
    Top = 149
  end
  object qryBillType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT f.billtype as BillType FROM FeeBasis f, Matter m'
      'WHERE f.code = m.feebasis'
      'AND m.nmatter = :p_nmatter')
    Left = 358
    Top = 474
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_nmatter'
        Value = nil
      end>
  end
  object qryScaleCostsList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO SCALECOST'
      
        '  (CODE, TYPE, CREATED, DESCR, NOTES, UNIT, PARENT, DAYS, DEFAUL' +
        'TTIME, AMOUNT, RATE, BILLTYPE, ZERO_FEE, PAID_YN, LEAVE_YN, ACTI' +
        'VE)'
      'VALUES'
      
        '  (:CODE, :TYPE, :CREATED, :DESCR, :NOTES, :UNIT, :PARENT, :DAYS' +
        ', :DEFAULTTIME, :AMOUNT, :RATE, :BILLTYPE, :ZERO_FEE, :PAID_YN, ' +
        ':LEAVE_YN, :ACTIVE)')
    SQLDelete.Strings = (
      'DELETE FROM SCALECOST WHERE CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      
        '  CODE, TYPE, CREATED, DESCR, NOTES, UNIT, PARENT, DAYS, DEFAULT' +
        'TIME, nvl(AMOUNT,0) AS AMOUNT,  '
      
        '  NVL(RATE,0) AS RATE, BILLTYPE, ZERO_FEE, PAID_YN, LEAVE_YN, AC' +
        'TIVE'
      ' FROM SCALECOST '
      'where active = '#39'Y'#39
      'ORDER BY CODE')
    Left = 325
    Top = 9
  end
  object dsScaleCostsList: TUniDataSource
    AutoEdit = False
    DataSet = qryScaleCostsList
    Left = 400
    Top = 16
  end
  object qryMRUList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   TRIM (m.fileid) AS fileid, TRIM (p.search) AS search,'
      '         TRIM (m.shortdescr) AS shortdescr, idx'
      '    FROM matter m, phonebook p, openlist o'
      '   WHERE o.author = :p_author'
      '     AND o.TYPE = :p_type'
      '     AND o.code = m.fileid'
      '     AND m.nclient = p.nclient'
      '     AND m.closed = 0'
      'UNION'
      'SELECT   '#39'Search...'#39', '#39#39', '#39#39', 999'
      '    FROM DUAL'
      'ORDER BY 3')
    Left = 18
    Top = 51
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
  object dsMRUList: TUniDataSource
    DataSet = qryMRUList
    Left = 48
    Top = 70
  end
  object ImageList1: TImageList
    Left = 285
    Top = 39
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000C0C0C00000000000C0C0C000000000008080800000FF00008080
      800000000000C0C0C00000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000C0C0C00000000000C0C0
      C00000000000C0C0C00000000000000000000000000000008000000080000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000080808000808080008080
      8000808080008080800000000000000000000000000000008000000080000000
      0000000000000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000C0C0C0000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000000000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000080808000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000808080008080800080808000808080000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      0000000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFE000FFFF0000FFFFEFFEFFFF0000
      FFFFE802FFFF0000E007EA8A7FF80000C007E0023F780000C007E02A9F7F0000
      C007C0029CF80000C0079E1ECCF80000C0072E1EC1F80000C0073F80E3F80000
      C00F589FC3F80000E07F3B9F19F80000E07F2A9FFCFF0000FFFF9F3FFE7F0000
      FFFF007FFFFF0000FFFFA0FFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object dsFee: TUniDataSource
    DataSet = qryFee
    Left = 423
    Top = 188
  end
  object ppFileNoteRpt: TppReport
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 60350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppFileNoteRptBeforePrint
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
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
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 381
    Top = 261
    Version = '20.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object pplblTransTitle: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTransTitle'
        Border.mmPadding = 0
        Caption = 'lblTransTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 89451
        mmTop = 2910
        mmWidth = 18923
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Matter Fee Filenote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 82815
        mmTop = 8202
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15619
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 51329
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Matter #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 19579
        mmTop = 3440
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Matter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 9525
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Client'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 15610
        mmWidth = 8466
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Units'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 21696
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 19579
        mmTop = 27781
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20638
        mmTop = 34660
        mmWidth = 10318
        BandType = 4
        LayerName = Foreground
      end
      object pplblMatter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatter'
        Border.mmPadding = 0
        Caption = 'lblMatter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 34660
        mmTop = 3440
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object pplblMatterDesc: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMatterDesc'
        Border.mmPadding = 0
        Caption = 'lblMatterDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 9525
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object pplblClient: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblClient'
        Border.mmPadding = 0
        Caption = 'lblClient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 15610
        mmWidth = 11907
        BandType = 4
        LayerName = Foreground
      end
      object pplblUnits: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblUnits'
        Border.mmPadding = 0
        Caption = 'lblUnits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 21696
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object pplblMinutes: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMinutes'
        Border.mmPadding = 0
        Caption = 'lblMinutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 27781
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppMemoDetails: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'MemoDetails'
        Border.mmPadding = 0
        Caption = 'MemoDetails'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 6085
        mmLeft = 34661
        mmTop = 34660
        mmWidth = 142611
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Brush.Style = bsClear
        Pen.Style = psClear
        ShiftRelativeTo = ppMemoDetails
        Stretch = True
        Transparent = True
        mmHeight = 7144
        mmLeft = 0
        mmTop = 42335
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Border.mmPadding = 0
          Caption = 'Notes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 22225
          mmTop = 43921
          mmWidth = 8731
          BandType = 4
          LayerName = Foreground
        end
        object ppMemoNotes: TppRichText
          DesignLayer = ppDesignLayer1
          UserName = 'MemoNotes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Border.mmPadding = 0
          Caption = 'MemoNotes'
          ExportRTFAsBitmap = False
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          mmHeight = 3938
          mmLeft = 34660
          mmTop = 43920
          mmWidth = 142611
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object pplblFooter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblFooter'
        Border.mmPadding = 0
        Caption = 'lblFooter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 1852
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 524
        mmLeft = 0
        mmTop = 528
        mmWidth = 197300
        BandType = 7
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
  object strFeeEarners: TStringz
    Strings.Strings = (
      'SELECT DISTINCT CODE, NAME, DEPT'
      ''
      'FROM'
      ''
      '(SELECT '
      ''
      'CODE, '
      'NAME,'
      'DEPT '
      ''
      'FROM EMPLOYEE '
      ''
      'WHERE'
      ''
      'ACTIVE = '#39'Y'#39' AND '
      'ISFEEEARNER = '#39'Y'#39
      ''
      'UNION ALL'
      ''
      'SELECT'
      ''
      'CODE,'
      'NAME,'
      'DEPT'
      ''
      'FROM EMPLOYEE'
      ''
      'WHERE'
      ''
      'CODE = :CODE)'
      ''
      'ORDER BY CODE')
    Left = 55
    Top = 20
  end
  object qryPracNum: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select distinct'
      'prac_num'
      'from prac_num'
      'order by 1')
    Left = 252
    Top = 524
  end
  object dsPracNum: TUniDataSource
    DataSet = qryPracNum
    Left = 299
    Top = 527
  end
end
