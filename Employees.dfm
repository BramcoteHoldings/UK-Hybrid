object frmEmployees: TfrmEmployees
  Left = 379
  Top = 189
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Employees'
  ClientHeight = 683
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 82
    Top = 38
    Width = 28
    Height = 15
    Caption = 'Code'
  end
  object Label3: TLabel
    Left = 29
    Top = 289
    Width = 80
    Height = 15
    Caption = 'Employee Type'
  end
  object Department: TLabel
    Left = 46
    Top = 314
    Width = 63
    Height = 15
    Caption = 'Department'
  end
  object Label2: TLabel
    Left = 78
    Top = 64
    Width = 32
    Height = 15
    Caption = 'Name'
  end
  object Label8: TLabel
    Left = 502
    Top = 747
    Width = 94
    Height = 15
    Caption = 'Monthly Budgets:'
    Visible = False
  end
  object Label10: TLabel
    Left = 598
    Top = 747
    Width = 27
    Height = 15
    Caption = 'Time'
    Visible = False
  end
  object Label11: TLabel
    Left = 686
    Top = 747
    Width = 55
    Height = 15
    Caption = 'Billed Fees'
    Visible = False
  end
  object Label12: TLabel
    Left = 502
    Top = 771
    Width = 80
    Height = 15
    Caption = 'Yearly Budgets:'
    Visible = False
  end
  object Label13: TLabel
    Left = 598
    Top = 771
    Width = 27
    Height = 15
    Caption = 'Time'
    Visible = False
  end
  object Label14: TLabel
    Left = 686
    Top = 771
    Width = 55
    Height = 15
    Caption = 'Billed Fees'
    Visible = False
  end
  object Label15: TLabel
    Left = 8
    Top = 340
    Width = 102
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Reopen List Length'
    WordWrap = True
  end
  object Label16: TLabel
    Left = 176
    Top = 340
    Width = 102
    Height = 15
    Hint = 'Controls Matter and Diary refresh.'
    Caption = 'Refresh Time (secs)'
  end
  object Label17: TLabel
    Left = 223
    Top = 163
    Width = 56
    Height = 15
    Caption = 'Experience'
  end
  object Label18: TLabel
    Left = 76
    Top = 138
    Width = 34
    Height = 15
    Caption = 'Phone'
  end
  object Label6: TLabel
    Left = 93
    Top = 164
    Width = 17
    Height = 15
    Caption = 'Fax'
  end
  object Label26: TLabel
    Left = 30
    Top = 214
    Width = 79
    Height = 15
    Caption = 'E-Mail Address'
  end
  object Label28: TLabel
    Left = 209
    Top = 37
    Width = 65
    Height = 15
    Caption = 'Login Name'
  end
  object Label30: TLabel
    Left = 338
    Top = 340
    Width = 103
    Height = 15
    Caption = 'Fee Alert Min Units:'
  end
  object Label40: TLabel
    Left = 35
    Top = 238
    Width = 74
    Height = 15
    Caption = 'Position/Title:'
  end
  object Label42: TLabel
    Left = 40
    Top = 87
    Width = 70
    Height = 15
    Caption = 'Given Names'
  end
  object Label43: TLabel
    Left = 63
    Top = 112
    Width = 47
    Height = 15
    Caption = 'Surname'
  end
  object lblEmpLevel: TLabel
    Left = 30
    Top = 263
    Width = 82
    Height = 15
    Caption = 'Employee Level'
  end
  object dbtbMonthTime: TDBEdit
    Left = 630
    Top = 747
    Width = 41
    Height = 23
    DataField = 'MONTHLY_TIME'
    DataSource = dsEmployees
    TabOrder = 5
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 742
    Top = 747
    Width = 97
    Height = 23
    DataField = 'MONTHLY_BILLS'
    DataSource = dsEmployees
    TabOrder = 20
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 630
    Top = 771
    Width = 41
    Height = 23
    DataField = 'YTD_TIME'
    DataSource = dsEmployees
    TabOrder = 21
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 742
    Top = 771
    Width = 97
    Height = 23
    DataField = 'YTD_BILLS'
    DataSource = dsEmployees
    TabOrder = 22
    Visible = False
  end
  object dbcbType: TcxDBLookupComboBox
    Left = 118
    Top = 286
    Hint = 
      'This controls'#39' the security level that applies to this user.  Ch' +
      'anges will take place once user has logged in.'
    DataBinding.DataField = 'TYPE'
    DataBinding.DataSource = dsEmployees
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.DropDownSizeable = True
    Properties.DropDownWidth = 300
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Description'
        Width = 35
        FieldName = 'DESCR'
      end
      item
        Caption = 'Code'
        Width = 20
        FieldName = 'Code'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsTypes
    Style.BorderStyle = ebsUltraFlat
    Style.HotTrack = False
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 16
    OnClick = dbcbTypeClick
    Width = 185
  end
  object cbDepartment: TcxDBLookupComboBox
    Left = 118
    Top = 311
    DataBinding.DataField = 'DEPT'
    DataBinding.DataSource = dsEmployees
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.DropDownWidth = 300
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        Caption = 'Description'
        Width = 35
        FieldName = 'descr'
      end
      item
        Caption = 'Code'
        Width = 20
        FieldName = 'CODE'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsDepts
    Style.BorderStyle = ebsUltraFlat
    Style.HotTrack = False
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 17
    Width = 185
  end
  object rgSex: TcxDBRadioGroup
    Left = 379
    Top = 59
    Caption = 'Gender'
    DataBinding.DataField = 'SEX'
    DataBinding.DataSource = dsEmployees
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Male'
        Value = 'M'
      end
      item
        Caption = 'Female'
        Value = 'F'
      end>
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 10
    Transparent = True
    Height = 41
    Width = 134
  end
  object dbtbCode: TcxDBButtonEdit
    Left = 118
    Top = 33
    DataBinding.DataField = 'CODE'
    DataBinding.DataSource = dsEmployees
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
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Properties.OnButtonClick = dbtbCodePropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnExit = dbtbCodeExit
    Width = 86
  end
  object dbedPhone: TcxDBTextEdit
    Left = 118
    Top = 135
    DataBinding.DataField = 'PHONE'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Width = 96
  end
  object eFax: TcxDBTextEdit
    Left = 118
    Top = 160
    DataBinding.DataField = 'FAX'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 12
    Width = 96
  end
  object eEmail: TcxDBHyperLinkEdit
    Left = 118
    Top = 210
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = dsEmployees
    Properties.Prefix = ''
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 15
    Width = 280
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 118
    Top = 337
    DataBinding.DataField = 'REOPENLENGTH'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 18
    Width = 32
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 287
    Top = 337
    DataBinding.DataField = 'REFRESH'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 19
    Width = 41
  end
  object dbedExperience: TcxDBTextEdit
    Left = 287
    Top = 160
    DataBinding.DataField = 'EXPERIENCE'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 14
    Width = 112
  end
  object dfUserName: TcxDBTextEdit
    Left = 278
    Top = 34
    DataBinding.DataField = 'USER_NAME'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 94
  end
  object dbchkActive: TcxDBCheckBox
    Left = 377
    Top = 33
    Caption = 'Active'
    DataBinding.DataField = 'ACTIVE'
    DataBinding.DataSource = dsEmployees
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Transparent = True
  end
  object dbcbFeeEarner: TcxDBCheckBox
    Left = 437
    Top = 33
    Caption = 'Fee Earner'
    DataBinding.DataField = 'ISFEEEARNER'
    DataBinding.DataSource = dsEmployees
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Transparent = True
  end
  object dbtbName: TcxDBButtonEdit
    Left = 118
    Top = 59
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = dsEmployees
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
        Visible = False
      end>
    Properties.OnButtonClick = dbtbNamePropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 254
  end
  object dfPosition: TcxDBTextEdit
    Left = 117
    Top = 235
    DataBinding.DataField = 'POSITION'
    DataBinding.DataSource = dsEmployees
    Properties.OnValidate = dfPositionPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 23
    Width = 280
  end
  object cbAxiomClassic: TcxDBCheckBox
    Left = 325
    Top = 308
    Hint = 
      'Changes to this will only take effect once you log back in to Ax' +
      'iom.'
    Caption = 'Axiom Classic'
    DataBinding.DataField = 'CLASSIC_VERSION'
    DataBinding.DataSource = dsEmployees
    Properties.Alignment = taRightJustify
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    Properties.OnChange = cbAxiomClassicPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 24
    Visible = False
  end
  object cxGroupBox1: TcxGroupBox
    Left = 439
    Top = 175
    Caption = 'Photo'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 25
    Transparent = True
    DesignSize = (
      150
      162)
    Height = 162
    Width = 150
    object imgEmployee: TcxDBImage
      Left = 3
      Top = 17
      Hint = 'Right click to change or remove image'
      Align = alCustom
      Anchors = []
      AutoSize = True
      DataBinding.DataField = 'IMAGE'
      DataBinding.DataSource = dsEmployees
      PopupMenu = dxPopupImage
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Height = 100
      Width = 140
    end
    object btnAttachImage: TcxButton
      Left = 3
      Top = 16
      Width = 144
      Height = 144
      Hint = 'Add Employee Picture'
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Add Picture'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFE
        FE01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
        FE01FCFCFC03F8F8F807F5F5F50AF4F4F40BF4F4F40BF3F3F30CF4F4F40BF4F4
        F40BF4F4F40BF6F6F609F9F9F906FCFCFC03FEFEFE01FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FCFCFC03F4F3
        F30CE8E7E719D9D9D927D3D2D130CECCCB36CCCAC938CCCAC937CFCECD33D7D4
        D22FDDD9D72AE1E0DF21E7E7E718EFEFEF10F5F5F50AFAFAFA05FEFEFE01FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F708E2DFDC25C7BA
        B05BB48B6DB2A46334F9A46232FFA2602EFFA15E28FFA15D26FF9A5725FF9356
        26FF905B31EFA0836EA4B6ACA463C9C6C53DDEDDDD22EFEFEF10F9F9F906FEFE
        FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFBFB04D7CAC144A5795BC3B66E
        36FFAF6730FFB76A32FFBD6A2BFFC26A27FFCC6F2AFFCC6F25FFB36321FFAC63
        2EFFAC632EFF965623FF8F5425FF9D724FCDADA2996FD9D8D827EFEFEF10FBFB
        FB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEE6E024AE6F45E1CF7E45FFDA86
        4EFFE88849FFEA863FFFEC8640FFEA883FFFEB8437FFE78030FFCD712DFFCE76
        3CFFDF7E36FFCB6E26FFA55C22FF8E5225FF93633FE1ACA39C6BE1E1E11EF5F5
        F50AFDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6AD8F8BD5824AFFED965FFFF29C
        68FFEF9764FFEE955FFFED935AFFEB8E53FFEC8C48FFE7843AFFD27839FFD982
        44FFE58640FFE07C33FFD2752AFFAF6322FF925423FF906648D5C7C4C240EFEF
        EF10FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2854CF3E7996BFFF3A375FFEEA4
        7BFFEDA37BFFEEA073FFEE9E6EFFED9B6AFFF0975FFFDF8544FFC7743AFFDB85
        4AFFEE8B46FFEC833EFFDE7D37FFCC7428FFA65D21FF895229FFB1A29775EDED
        ED12FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0874FF0F0AD87FFF0AE8AFFF0A8
        7EFFF0A882FFF0A67EFFEFA479FFEFA477FFEF9962FFC76F31FFAC622DFFD98C
        58FFEF9857FFEA8B47FFE6833DFFDB7C33FFBF6B28FF8C5326FFA8918190EEEE
        EE11FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAA47BADEAAA86FFF4BCA0FFF0AA
        84FFF0A983FFF0A982FFF1A981FFEEA274FFDE7F41FFB76832FFAB7C57FFD39B
        71FFECA36CFFE89253FFE68640FFE0803BFFC47130FF8C5222FFB29F917DF2F2
        F20DFDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBD2BE4DDB9765FBF7C3ABFFF3B6
        96FFF0A883FFF1AA83FFF2AB84FFDD8954FFBF692DFFD2AE94FFDDD9D6FFC9A7
        8FFFDE9866FFEB975DFFE58944FFDD7F3EFFBE7037FF945C33F4CBC4BE49F8F8
        F807FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF8F50BD8A276A7E7AD88FFF9C5
        ABFFF3B89DFFF1AC89FFEA9664FFCB7135FFD0A483FFFFFDFAFFFFFFFFFFD1B8
        ADFFCF926CFFEAA16DFFE79459FFDA8346FFBF733DFFA98C77A2EBEAEA16FDFD
        FD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6EBE220D8A47AAEE7AB
        85F3FCC8ADFFFAB28BFFD67638FFBE7B4EFFDAD2CFFFEAEDEFFFF0F2F3FFE3D1
        CFFFD39C7CFFEEAA7CFFF2A673FFD48751FFA77E5FC6DEDAD72CFCFCFC03FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EEE61BE5BD
        9D74E8A67ACADD956FF4A76D4BFF927E71FF989CA1FF909396FF9A9EA1FFB3AB
        ADFFCE9D7FFFEC9E6DFFDC9462F4B08C6DB7D8D2CE37FCFCFC03FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DBCBC142917469CE898484FF8B8E8FFF8B8B8CFF7C7A7CFF656567FF6263
        68FFA38D84FFB78A6DE6AD98878ADFDBD72BFCFCFC03FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
        FB04C1BFBD4E7A7A7AE5B3B5BAFFBABABCFFB3B0B2FFA8A7A8FF8F8D8EFF6F6F
        72FF7E7E80FF8D8D90C7CECDCC38F1F1F10EFCFCFC03FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01E1E3
        E426838582C0A4A5A6FFD4D2D5FFC6C5C7FFBAB9BAFFB6B6B6FFAEAEAEFF9E9C
        9DFF88888BFF7D7F83EAB1B0B05DEAEAEA15F9F9F906FEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F909B8B8
        B86B7B7C7DF9C4C3C4FFDFDEDEFFCAC8CAFFC3C1C3FFBFBEBFFFB5B4B5FFAFAE
        B0FFA3A0A4FF8C8889FF8B8B8B96DBDBDB26F6F6F609FEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F0189091
        92AF8D8F8FFFE0DFDEFFECEBEBFFD7D6D7FFCFCFCFFFCAC9CAFFBDBCBDFFB6B5
        B6FFB2B0B1FFA4A3A5FF7D7D7DC4CECECE39F5F5F50AFEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD02E1E2E2307B7C
        7BDA9F9F9FFFEEEEEDFFF5F5F4FFE0E0E0FFD8D8D8FFD5D5D5FFC9C8C9FFBEBD
        BEFFBAB7B9FFB2B1B3FF848484D1CBCBCB40F5F5F50AFEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC04D0D0D1497171
        71F39E9E9EFFE7E7E7FFFDFDFDFFE7E7E7FFD9D9D9FFD4D4D4FFCDCCCDFFC4C4
        C4FFBDBDBDFFB8B6B8FF898989CECECECE3EF5F5F50AFEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB06C7C7C859696A
        69FF858584FFD4D4D4FFFFFFFFFFFFFFFFFFF7F7F7FFE5E5E5FFD9D8D9FFC9C9
        C9FFBFBFBFFFB8B7B9FF8E8D8FCCD0D0D03CF6F6F609FEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB05CBCBCB536E6E
        6DFB6A696AFF9A9B9BFFD5D6D6FFDEDFDFFFE8E7E7FFF5F5F5FFF4F4F5FFDCDB
        DCFFCCCACBFFB6B4B4FF8C8B8CC6D6D6D635F9F9F906FEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD02E3E3E334908E
        8EE4868587FF6A6C6DFF646565FF696A6AFF696868FF808181FFAEAFAFFFDBDA
        DBFFD3D2D3FFA4A3A3FE9F9E9F87E8E8E819FCFCFC03FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F317B3B3
        B2AAA7A6A8FFB4B4B4FF8D8E8EFF7E7E7EFF6E6D6DFF5A5A5AFF585959FF807F
        80FF99999AFF888A8BE6C0C0C04FF8F8F807FEFEFE01FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03E0E0
        E041999999D5ABABACFFBCB9BBFFB7B6B7FFA3A3A3FF858786FF737171FF6665
        65FF6A6A6AFFA09FA086ECEDED15FDFDFD02FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
        FD04E8E7E82AB4B3B48E878688EF898A8AFF969696FF959595FF888988FF8685
        85D5B8B7B763F0F0F011FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FDFDFD02FAFAFA09EFEFEF1CD8D7D748C0BFBF76B4B4B478D3D3D348F1F0
        F116FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 1
      OnClick = dxattachImageClick
    end
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 451
    Top = 337
    DataBinding.DataField = 'fee_alert_min_units'
    DataBinding.DataSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 26
    Width = 41
  end
  object cbIsTimeRecorder: TcxDBCheckBox
    Left = 517
    Top = 33
    Caption = 'Time Record'
    DataBinding.DataField = 'ISTIME_RECORDER'
    DataBinding.DataSource = dsEmployees
    Properties.NullStyle = nssUnchecked
    Properties.ValueChecked = 'Y'
    Properties.ValueUnchecked = 'N'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Transparent = True
  end
  object DBEdit1: TDBEdit
    Left = 118
    Top = 84
    Width = 254
    Height = 23
    DataField = 'GIVENNAMES'
    DataSource = dsEmployees
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 118
    Top = 109
    Width = 254
    Height = 23
    DataField = 'SURNAME'
    DataSource = dsEmployees
    TabOrder = 8
  end
  object chkILARSNo: TDBCheckBox
    Left = 220
    Top = 138
    Width = 62
    Height = 17
    Alignment = taLeftJustify
    Caption = 'ILARS'
    DataField = 'ILARS'
    DataSource = dsEmployees
    TabOrder = 27
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
    OnClick = chkILARSNoClick
  end
  object dbedILARSNo: TDBEdit
    Left = 287
    Top = 135
    Width = 111
    Height = 23
    DataField = 'ILARS_NUMBER'
    DataSource = dsEmployees
    TabOrder = 28
  end
  object cxPageControl1: TcxPageControl
    Left = 7
    Top = 373
    Width = 618
    Height = 277
    TabOrder = 30
    Properties.ActivePage = tabDefaults
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    ClientRectBottom = 273
    ClientRectLeft = 4
    ClientRectRight = 614
    ClientRectTop = 46
    object tabDefaults: TcxTabSheet
      Caption = 'Defaults'
      ImageIndex = 0
      object Label34: TLabel
        Left = 74
        Top = 43
        Width = 66
        Height = 15
        Caption = 'Label Printer'
        Transparent = True
      end
      object Label24: TLabel
        Left = 110
        Top = 17
        Width = 30
        Height = 15
        Caption = 'Entity'
        Transparent = True
      end
      object Label38: TLabel
        Left = 3
        Top = 70
        Width = 137
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Time Recording Method'
        WordWrap = True
      end
      object lblAutoTimerTask: TLabel
        Left = 297
        Top = 70
        Width = 130
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Default Auto Timer Task'
        Transparent = True
        WordWrap = True
      end
      object lblBranch: TLabel
        Left = 390
        Top = 17
        Width = 37
        Height = 15
        Caption = 'Branch'
        Transparent = True
      end
      object dblEntity: TcxDBLookupComboBox
        Left = 146
        Top = 14
        DataBinding.DataField = 'DEFAULT_ENTITY'
        DataBinding.DataSource = dsEmployees
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 10
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsEntity
        Properties.OnChange = dblEntityPropertiesChange
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 145
      end
      object dbcLabelPrinter: TcxDBComboBox
        Left = 146
        Top = 41
        DataBinding.DataField = 'LABEL_PRINTER'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 145
      end
      object dblBranch: TcxDBLookupComboBox
        Left = 435
        Top = 14
        DataBinding.DataField = 'BRANCH'
        DataBinding.DataSource = dsEmployees
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 10
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsBranch
        Properties.OnCloseUp = cxDBLookupComboBox2PropertiesCloseUp
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 144
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 434
        Top = 67
        DataBinding.DataField = 'DFLT_AUTOTIMER_TASK'
        DataBinding.DataSource = dsEmployees
        Properties.DropDownRows = 10
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAutoTimerTask
        Properties.OnCloseUp = cxDBLookupComboBox2PropertiesCloseUp
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 144
      end
      object chkGSTDefault: TcxDBCheckBox
        Left = 353
        Top = 40
        Hint = 
          'You want to default the Show Unbilled Balances with GST option o' +
          'n the matter ledger form (only) to be ticked or not ticked ? '
        AutoSize = False
        Caption = 'Matter Ledger GST Ticked'
        DataBinding.DataField = 'MAT_LEDG_GST_TICK'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Transparent = True
        Height = 23
        Width = 228
      end
      object DBComboBox1: TDBComboBox
        Left = 146
        Top = 67
        Width = 145
        Height = 23
        DataField = 'DFLT_TIME_REC_METHOD'
        DataSource = dsEmployees
        Items.Strings = (
          ''
          'Time Sheet'
          'Time Diary')
        TabOrder = 5
      end
      object cxGroupBox2: TcxGroupBox
        Left = 13
        Top = 99
        Caption = 'Office Default Printers'
        TabOrder = 6
        Height = 54
        Width = 572
        object Label22: TLabel
          Left = 48
          Top = 23
          Width = 79
          Height = 15
          Caption = 'Cheque Printer'
          Transparent = True
        end
        object Label23: TLabel
          Left = 340
          Top = 23
          Width = 77
          Height = 15
          Caption = 'Receipt Printer'
          Transparent = True
        end
        object dbcCPrinter: TcxDBComboBox
          Left = 133
          Top = 20
          DataBinding.DataField = 'CHEQUE_PRINTER'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 145
        end
        object dbcRPrinter: TcxDBComboBox
          Left = 421
          Top = 20
          DataBinding.DataField = 'RECEIPT_PRINTER'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 145
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 13
        Top = 154
        Caption = 'Trust Default Printers'
        TabOrder = 7
        Height = 54
        Width = 572
        object Label46: TLabel
          Left = 48
          Top = 23
          Width = 79
          Height = 15
          Caption = 'Cheque Printer'
          Transparent = True
        end
        object Label47: TLabel
          Left = 340
          Top = 23
          Width = 77
          Height = 15
          Caption = 'Receipt Printer'
          Transparent = True
        end
        object dbcTrustCPrinter: TcxDBComboBox
          Left = 133
          Top = 20
          DataBinding.DataField = 'TRUST_CHEQUE_PRINTER'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 145
        end
        object dbcTrustRPrinter: TcxDBComboBox
          Left = 421
          Top = 20
          DataBinding.DataField = 'TRUST_RECEIPT_PRINTER'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 145
        end
      end
    end
    object tabRoles: TcxTabSheet
      Caption = 'Roles'
      ImageIndex = 1
      object gbShowAs: TcxGroupBox
        Left = 6
        Top = 7
        Caption = 'Show In Lists Of'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 102
        Width = 528
        object dbcbController: TcxDBCheckBox
          Left = 8
          Top = 12
          Caption = 'Controller'
          DataBinding.DataField = 'ISCONTROLLER'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
        end
        object dbcbAuthor: TcxDBCheckBox
          Left = 8
          Top = 30
          Caption = 'Author'
          DataBinding.DataField = 'ISAUTHOR'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Transparent = True
        end
        object cbParalegal: TcxDBCheckBox
          Left = 8
          Top = 48
          AutoSize = False
          Caption = 'Para Legal'
          DataBinding.DataField = 'ISPARALEGAL'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Transparent = True
          Height = 24
          Width = 240
        end
        object dbcbPartner: TcxDBCheckBox
          Left = 8
          Top = 67
          Caption = 'Partner'
          DataBinding.DataField = 'ISPARTNER'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
        end
        object dbcbOperator: TcxDBCheckBox
          Left = 269
          Top = 12
          Caption = 'Operator'
          DataBinding.DataField = 'ISOPERATOR'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Transparent = True
        end
        object cxDBCheckBox10: TcxDBCheckBox
          Left = 269
          Top = 30
          Caption = 'Credit Control'
          DataBinding.DataField = 'IS_CREDIT_CONTROLLER'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Transparent = True
        end
        object cxDBCheckBox13: TcxDBCheckBox
          Left = 269
          Top = 49
          Caption = 'Cashier'
          DataBinding.DataField = 'IS_CASHIER'
          DataBinding.DataSource = dsEmployees
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Transparent = True
        end
      end
    end
    object tabGL: TcxTabSheet
      Caption = 'G/L'
      ImageIndex = 2
      object gbGLPosting: TcxGroupBox
        Left = 6
        Top = 7
        Caption = 'G/L Posting'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 74
        Width = 530
        object Label7: TLabel
          Left = 12
          Top = 16
          Width = 68
          Height = 15
          Caption = 'Ledger Suffix'
          Transparent = True
        end
        object Label20: TLabel
          Left = 186
          Top = 19
          Width = 46
          Height = 15
          Caption = 'Fee W/O'
          Transparent = True
        end
        object Label21: TLabel
          Left = 330
          Top = 19
          Width = 51
          Height = 15
          Caption = 'Disb W/O'
          Transparent = True
        end
        object Label25: TLabel
          Left = 186
          Top = 46
          Width = 46
          Height = 15
          Caption = 'Disb U/R'
          Transparent = True
        end
        object Label19: TLabel
          Left = 54
          Top = 46
          Width = 18
          Height = 15
          Caption = 'Fee'
          Transparent = True
        end
        object dfLedgerSuffix: TcxDBTextEdit
          Left = 91
          Top = 15
          DataBinding.DataField = 'CHART_SUFFIX'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 74
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 242
          Top = 15
          DataBinding.DataField = 'FEEWOFF_CHART'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 74
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 388
          Top = 15
          DataBinding.DataField = 'DISBWOFF_CHART'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 74
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 242
          Top = 42
          DataBinding.DataField = 'DISBUNREC_CHART'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 74
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 91
          Top = 42
          DataBinding.DataField = 'FEE_CHART'
          DataBinding.DataSource = dsEmployees
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 74
        end
      end
    end
    object tabFinancial: TcxTabSheet
      Caption = 'Financial'
      ImageIndex = 3
      object Label39: TLabel
        Left = 65
        Top = 8
        Width = 62
        Height = 15
        Caption = 'Hourly Rate'
        Transparent = True
      end
      object Label9: TLabel
        Left = 54
        Top = 36
        Width = 73
        Height = 15
        Caption = 'Notional Cost'
        Transparent = True
      end
      object Label44: TLabel
        Left = 81
        Top = 63
        Width = 46
        Height = 15
        Caption = 'Net Cost'
        Transparent = True
      end
      object dbtbRate: TcxDBCurrencyEdit
        Left = 135
        Top = 5
        DataBinding.DataField = 'RATE'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 70
      end
      object dbtbCost: TcxDBCurrencyEdit
        Left = 135
        Top = 33
        DataBinding.DataField = 'COST_PER_HOUR'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 70
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 135
        Top = 60
        DataBinding.DataField = 'NET_COST_HOUR'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 70
      end
      object cmbCurrencyList: TcxDBLookupComboBox
        Left = 135
        Top = 88
        DataBinding.DataField = 'CURRENCY'
        DataBinding.DataSource = dsEmployees
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ISO4217_CURRENCY_CODE'
        Properties.ListColumns = <
          item
            Width = 90
            FieldName = 'ISO4217_CURRENCY_CODE'
          end
          item
            FieldName = 'ISO4217_CURRENCY_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        TabOrder = 3
        Width = 182
      end
      object cxLabel10: TcxLabel
        Left = 35
        Top = 90
        AutoSize = False
        Caption = 'Billing Currency:'
        Transparent = True
        Height = 21
        Width = 89
      end
    end
    object tabDates: TcxTabSheet
      Caption = 'Dates'
      ImageIndex = 4
      object dtStartDate: TcxDBDateEdit
        Left = 139
        Top = 46
        DataBinding.DataField = 'START_DATE'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 290
        Top = 48
        Caption = 'Termination Date'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object dtEndDate: TcxDBDateEdit
        Left = 393
        Top = 46
        DataBinding.DataField = 'END_DATE'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 9
        Top = 15
        Caption = 'Date of Birth'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 9
        Top = 48
        Caption = 'Commencement Date:'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object dtDOB: TcxDBDateEdit
        Left = 139
        Top = 13
        DataBinding.DataField = 'BIRTHDATE'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 121
      end
    end
    object tabSignatory: TcxTabSheet
      Caption = 'Signatory'
      ImageIndex = 5
      object Label27: TLabel
        Left = 2
        Top = 15
        Width = 50
        Height = 15
        Caption = 'Signatory'
        Transparent = True
      end
      object dbeSignatory: TcxDBTextEdit
        Left = 58
        Top = 12
        DataBinding.DataField = 'SIGNATORY'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 340
      end
      object btnHTML: TcxButton
        Left = -2
        Top = 50
        Width = 179
        Height = 25
        Caption = 'Add eMail Signature - HTML'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00808080FF000000FF000000FF000000FF0000
          00FF808080FF808080FF808080FF000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00808080FF808080FF000000FF000000FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C0C0C0FF000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FF00FFFFFF000000FF000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF0000FFFFFF000000FFFFFF
          FF00FFFFFF00000000FF000000FF000000FF000000FFFFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFFFFFFF0000FFFFFF0000
          00FF000000FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF00FF
          FFFF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
          FF0000FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FF00FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
          FF00000000FFFFFFFF000000FFFFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 1
        Visible = False
        OnClick = btnHTMLClick
      end
      object btnRTF: TcxButton
        Tag = 1
        Left = 181
        Top = 50
        Width = 179
        Height = 25
        Caption = 'Add eMail Signature - RTF'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00808080FF000000FF000000FF000000FF0000
          00FF808080FF808080FF808080FF000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00808080FF808080FF000000FF000000FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C0C0C0FF000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FF00FFFFFF000000FF000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF0000FFFFFF000000FFFFFF
          FF00FFFFFF00000000FF000000FF000000FF000000FFFFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFFFFFFF0000FFFFFF0000
          00FF000000FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF00FF
          FFFF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
          FF0000FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FF00FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
          FF00000000FFFFFFFF000000FFFFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 2
        OnClick = btnHTMLClick
      end
      object btnJPG: TcxButton
        Tag = 2
        Left = 364
        Top = 50
        Width = 192
        Height = 25
        Caption = 'Add eMail Signature - JPG/PNG'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00808080FF000000FF000000FF000000FF0000
          00FF808080FF808080FF808080FF000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00808080FF808080FF000000FF000000FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C0C0C0FF000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FF00FFFFFF000000FF000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FFFF0000FFFFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF0000FFFFFF000000FFFFFF
          FF00FFFFFF00000000FF000000FF000000FF000000FFFFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFFFFFFF0000FFFFFF0000
          00FF000000FFFFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF00FF
          FFFF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
          FF0000FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FF00FFFFFF000000FFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
          FF00000000FFFFFFFF000000FFFFFFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00C0C0C0FFC0C0C0FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 3
        OnClick = btnHTMLClick
      end
      object cxDBImage3: TcxDBImage
        Left = 364
        Top = 80
        DataBinding.DataField = 'EMAIL_SIGNATURE_HTML'
        DataBinding.DataSource = dsEmployees
        Properties.GraphicClassName = 'TdxSmartImage'
        Properties.ReadOnly = True
        TabOrder = 4
        Height = 81
        Width = 191
      end
      object cxDBRichEdit1: TcxDBRichEdit
        Left = 181
        Top = 80
        DataBinding.DataField = 'EMAIL_SIGNATURE_RTF'
        DataBinding.DataSource = dsEmployees
        Properties.ReadOnly = True
        TabOrder = 5
        Height = 81
        Width = 179
      end
      object cxDBRichEdit2: TcxDBRichEdit
        Left = 0
        Top = 80
        DataBinding.DataField = 'EMAIL_SIGNATURE_HTML'
        DataBinding.DataSource = dsEmployees
        Properties.ReadOnly = True
        TabOrder = 6
        Height = 81
        Width = 179
      end
    end
    object tabSecurity: TcxTabSheet
      Caption = 'Security'
      ImageIndex = 6
      object Label4: TLabel
        Left = 15
        Top = 30
        Width = 65
        Height = 15
        Caption = 'Report Level'
        Transparent = True
      end
      object Label5: TLabel
        Left = 182
        Top = 30
        Width = 207
        Height = 15
        Caption = '(0 for most access, to 9 for least access)'
        Transparent = True
      end
      object Label29: TLabel
        Left = 15
        Top = 56
        Width = 71
        Height = 15
        Caption = 'Fee Authority'
        Transparent = True
      end
      object cbSecurity: TcxDBComboBox
        Left = 125
        Top = 26
        DataBinding.DataField = 'ACCESSLEVEL'
        DataBinding.DataSource = dsEmployees
        Properties.DropDownRows = 10
        Properties.Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 46
      end
      object cmbFeeAuthority: TcxDBLookupComboBox
        Left = 125
        Top = 53
        DataBinding.DataField = 'NFEE_AUTHORITY'
        DataBinding.DataSource = dsEmployees
        Properties.KeyFieldNames = 'NFEE_AUTHORITY'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsFeeAuthority
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 231
      end
      object cbFeeEnquiryAccess: TcxDBCheckBox
        Left = 11
        Top = 2
        Hint = 
          'Ticking this option will allow the employee to view time other t' +
          'han their own.'
        AutoSize = False
        Caption = 'Fee Enquiry Access'
        DataBinding.DataField = 'FEE_ENQUIRY_ACCESS'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Height = 22
        Width = 126
      end
      object cbRestrictedMatters: TcxDBCheckBox
        Left = 183
        Top = 2
        Hint = 
          'Ticking this option will allow the employee to view Restricted M' +
          'atters.'
        AutoSize = False
        Caption = 'Access Restricted Matters'
        DataBinding.DataField = 'VIEW_RESTRICTED_MATTERS'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Height = 22
        Width = 169
      end
      object cbInfoTrack: TcxGroupBox
        Left = 15
        Top = 109
        Caption = 'InfoTrack Login Details'
        TabOrder = 4
        Height = 50
        Width = 511
        object Label65: TLabel
          Left = 18
          Top = 21
          Width = 53
          Height = 15
          Caption = 'Username'
        end
        object Label66: TLabel
          Left = 275
          Top = 21
          Width = 50
          Height = 15
          Caption = 'Password'
        end
        object DBEdit23: TDBEdit
          Left = 105
          Top = 18
          Width = 112
          Height = 23
          DataField = 'INFOTRACK_USER'
          DataSource = dsEmployees
          TabOrder = 0
        end
        object DBEdit24: TDBEdit
          Left = 349
          Top = 16
          Width = 112
          Height = 23
          DataField = 'INFOTRACK_PASSWORD'
          DataSource = dsEmployees
          PasswordChar = '*'
          TabOrder = 1
        end
      end
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 14
        Top = 81
        Hint = 
          'Ticking this option will allow the employee to view only the Che' +
          'que Requisitions created by them.'
        AutoSize = False
        Caption = 'View only my CheqReqs'
        DataBinding.DataField = 'VIEW_EMP_CHEQREQS_ONLY'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 22
        Width = 170
      end
      object cxDBCheckBox12: TcxDBCheckBox
        Left = 218
        Top = 81
        Hint = 
          'Ticking this option means that this employee can Authorise Bills' +
          '.'
        AutoSize = False
        Caption = 'Authorise Bills'
        DataBinding.DataField = 'AUTHORISE_BILLS'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 22
        Width = 138
      end
    end
    object tabOptions: TcxTabSheet
      Caption = 'Options'
      ImageIndex = 7
      object Label35: TLabel
        Left = 304
        Top = 13
        Width = 98
        Height = 15
        Caption = 'Time Sheet Layout'
      end
      object Label45: TLabel
        Left = 7
        Top = 130
        Width = 106
        Height = 15
        Caption = 'Report Output Level'
      end
      object Label41: TLabel
        Left = 5
        Top = 174
        Width = 69
        Height = 15
        Caption = 'Nav Bar Type'
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 6
        Top = 5
        AutoSize = False
        Caption = 'Select Task Description (Time Sheet)'
        DataBinding.DataField = 'TIME_SHEET_SEL_DESCR'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 23
        Width = 238
      end
      object cxLabel7: TcxLabel
        Left = 6
        Top = 31
        Hint = 
          'Set Font for Grids used within Insight.  Requires Insight to be ' +
          're-started if value cahnged.'
        Caption = 'Grid Font Size (Default = 8)'
        Transparent = True
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 187
        Top = 30
        DataBinding.DataField = 'GRID_FONT_SIZE'
        DataBinding.DataSource = dsEmployees
        Properties.Items.Strings = (
          '8'
          '9'
          '10'
          '11'
          '12'
          '14')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 53
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 6
        Top = 56
        AutoSize = False
        Caption = 'Use Multi-Line tabs in Matter Screen'
        DataBinding.DataField = 'MATTER_MULTILINE_TABS'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Transparent = True
        Height = 21
        Width = 238
      end
      object rgPostTime: TcxDBRadioGroup
        Left = 3
        Top = 82
        Caption = 'Post outstanding time on Insight exit'
        DataBinding.DataField = 'PROCESS_TIME_ON_EXIT'
        DataBinding.DataSource = dsEmployees
        Properties.Columns = 3
        Properties.DefaultValue = 'N'
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Caption = 'No'
            Value = 'N'
          end
          item
            Caption = 'Yes'
            Value = 'Y'
          end
          item
            Caption = 'Ask'
            Value = 'A'
          end>
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Transparent = True
        Height = 37
        Width = 241
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 429
        Top = 10
        DataBinding.DataField = 'TIME_SHEET_VIEW_LAYOUT'
        DataBinding.DataSource = dsEmployees
        Enabled = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'Classic Grid'
          'New Grid')
        Properties.OnEditValueChanged = cxDBComboBox2PropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 121
      end
      object DBCheckBox5: TDBCheckBox
        Left = 259
        Top = 43
        Width = 291
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Immediate drop down of description (Time Sheet)'
        DataField = 'TIME_SHEET_DESCR_DROP'
        DataSource = dsEmployees
        TabOrder = 6
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 259
        Top = 60
        Width = 291
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Show Time Component of Time entry (Time Sheet)'
        DataField = 'SAVE_TS_TIME_STAMP'
        DataSource = dsEmployees
        TabOrder = 7
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 259
        Top = 77
        Width = 291
        Height = 18
        Alignment = taLeftJustify
        Caption = 'Auto Timer'
        DataField = 'AUTO_TIMER'
        DataSource = dsEmployees
        TabOrder = 8
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 259
        Top = 112
        Width = 291
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Hide Notes field in Fee/Time Sheet'
        DataField = 'HIDE_FEE_NOTES'
        DataSource = dsEmployees
        TabOrder = 9
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cbAllowMultipleCopies: TcxCheckBox
        Left = 255
        Top = 91
        AutoSize = False
        Caption = 'Allow multiple copies of INSIGHT to be loaded'
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'Y'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Properties.OnChange = cbAllowMultipleCopiesPropertiesChange
        State = cbsGrayed
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Visible = False
        Height = 23
        Width = 299
      end
      object DBCheckBox27: TDBCheckBox
        Left = 259
        Top = 129
        Width = 291
        Height = 18
        Alignment = taLeftJustify
        Caption = 'Save Fee Notes as Document'
        DataField = 'FEE_FILE_NOTES'
        DataSource = dsEmployees
        TabOrder = 11
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cmbRptOutputLevel: TcxDBSpinEdit
        Left = 141
        Top = 127
        DataBinding.DataField = 'REPORTLEVEL'
        DataBinding.DataSource = dsEmployees
        TabOrder = 12
        Width = 103
      end
      object DBCheckBox1: TDBCheckBox
        Left = 259
        Top = 146
        Width = 291
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Use decimal units in Timesheet?'
        DataField = 'USE_DECIMAL_UNITS'
        DataSource = dsEmployees
        TabOrder = 13
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
      end
      object cbViews: TcxComboBox
        Left = 81
        Top = 171
        Properties.OnChange = cbViewsPropertiesChange
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Width = 185
      end
    end
    object tabWorkingWeek: TcxTabSheet
      Caption = 'Working Week'
      ImageIndex = 8
      object Label32: TLabel
        Left = 4
        Top = 193
        Width = 154
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Target Daily Overhead Units'
        Transparent = True
        WordWrap = True
      end
      object Label33: TLabel
        Left = 276
        Top = 192
        Width = 162
        Height = 21
        AutoSize = False
        Caption = 'Target Daily NonBillable Units'
        Transparent = True
        WordWrap = True
      end
      object grpWorkHours: TcxGroupBox
        Left = 3
        Top = 0
        Caption = 'Working Hours'
        TabOrder = 0
        Height = 100
        Width = 566
        object Label37: TLabel
          Left = 84
          Top = 73
          Width = 71
          Height = 15
          Caption = 'Weekly hours'
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 4
          Top = 16
          Caption = 'Monday'
          DataBinding.DataField = 'WORK_MONDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Transparent = True
        end
        object spinWorkMonday: TcxDBSpinEdit
          Left = 7
          Top = 42
          DataBinding.DataField = 'HOURS_MONDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 61
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 83
          Top = 16
          Caption = 'Tuesday'
          DataBinding.DataField = 'WORK_TUESDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
        end
        object spinWorkTuesday: TcxDBSpinEdit
          Left = 87
          Top = 42
          DataBinding.DataField = 'HOURS_TUESDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 61
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 162
          Top = 16
          Caption = 'Wednesday'
          DataBinding.DataField = 'WORK_WEDNESDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Transparent = True
        end
        object spinWorkWednesday: TcxDBSpinEdit
          Left = 167
          Top = 42
          DataBinding.DataField = 'HOURS_WEDNESDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 61
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 252
          Top = 16
          Caption = 'Thursday'
          DataBinding.DataField = 'WORK_THURSDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Transparent = True
        end
        object spinWorkThursday: TcxDBSpinEdit
          Left = 257
          Top = 42
          DataBinding.DataField = 'HOURS_THURSDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 61
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 332
          Top = 16
          Caption = 'Friday'
          DataBinding.DataField = 'WORK_FRIDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Transparent = True
        end
        object spinWorkFriday: TcxDBSpinEdit
          Left = 337
          Top = 42
          DataBinding.DataField = 'HOURS_FRIDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Width = 61
        end
        object cxDBCheckBox8: TcxDBCheckBox
          Left = 406
          Top = 16
          AutoSize = False
          Caption = 'Saturday'
          DataBinding.DataField = 'WORK_SATURDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Transparent = True
          Height = 22
          Width = 71
        end
        object spinWorkSaturday: TcxDBSpinEdit
          Left = 409
          Top = 42
          DataBinding.DataField = 'HOURS_SATURDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 61
        end
        object cxDBCheckBox9: TcxDBCheckBox
          Left = 482
          Top = 16
          AutoSize = False
          Caption = 'Sunday'
          DataBinding.DataField = 'WORK_SUNDAY'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Transparent = True
          Height = 22
          Width = 66
        end
        object spinWorkSunday: TcxDBSpinEdit
          Left = 487
          Top = 42
          DataBinding.DataField = 'HOURS_SUNDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinWorkSundayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Width = 61
        end
        object edWeeklyHours: TcxDBTextEdit
          Left = 167
          Top = 71
          DataBinding.DataField = 'WEEKLY_HOURS'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 14
          Width = 61
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 3
        Top = 101
        Caption = 'Chargeable Hours'
        TabOrder = 1
        Height = 79
        Width = 566
        object Label48: TLabel
          Left = 32
          Top = 51
          Width = 122
          Height = 15
          Caption = 'Total Chargeable hours'
        end
        object spinChargeMonday: TcxDBSpinEdit
          Left = 7
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_MONDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 61
        end
        object spinChargeTuesday: TcxDBSpinEdit
          Left = 87
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_TUESDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 61
        end
        object spinChargeWednesday: TcxDBSpinEdit
          Left = 167
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_WEDNESDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 61
        end
        object spinChargeThursday: TcxDBSpinEdit
          Left = 257
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_THURSDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 61
        end
        object spinChargeFriday: TcxDBSpinEdit
          Left = 337
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_FRIDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 61
        end
        object spinChargeSaturday: TcxDBSpinEdit
          Left = 409
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_SATURDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 61
        end
        object spinChargeSunday: TcxDBSpinEdit
          Left = 487
          Top = 20
          DataBinding.DataField = 'CHARGEABLE_HOURS_SUNDAY'
          DataBinding.DataSource = dsEmployees
          Properties.OnChange = spinChargeMondayPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 61
        end
        object dbtbDailyChargeUnits: TcxDBTextEdit
          Left = 167
          Top = 48
          DataBinding.DataField = 'DAILY_TARGET_CHARGE_UNITS'
          DataBinding.DataSource = dsEmployees
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 7
          Width = 61
        end
      end
      object dbtxtOverheadUnits: TcxDBTextEdit
        Left = 162
        Top = 191
        DataBinding.DataField = 'TARGET_DAILY_OH_UNITS'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 71
      end
      object dbtxtNonBillUnits: TcxDBTextEdit
        Left = 442
        Top = 191
        DataBinding.DataField = 'TARGET_DAILY_NONBILLABLE_UNITS'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 70
      end
    end
    object tabEmailOptions: TcxTabSheet
      Caption = 'Email Options'
      ImageIndex = 9
      object Label36: TLabel
        Left = 8
        Top = 42
        Width = 113
        Height = 15
        Caption = 'Incoming Mail Folder'
        Transparent = True
        Visible = False
      end
      object cxLabel6: TcxLabel
        Left = 8
        Top = 11
        Caption = 'Outlook Profile'
        Transparent = True
      end
      object cmbBxProfiles: TcxDBComboBox
        Left = 133
        Top = 10
        DataBinding.DataField = 'EMAIL_PROFILE_DEFAULT'
        DataBinding.DataSource = dsEmployees
        Properties.Items.Strings = (
          'Outlook')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 171
      end
      object btnedtFolderList: TcxDBButtonEdit
        Left = 133
        Top = 38
        DataBinding.DataField = 'EMAIL_INCOMING_FLDR'
        DataBinding.DataSource = dsEmployees
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = btnedtFolderListPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Visible = False
        Width = 151
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 3
        Top = 65
        Caption = 'Outlook Diary Synchronization'
        DataBinding.DataField = 'OUTLOOK_SYNC'
        DataBinding.DataSource = dsEmployees
        Properties.Columns = 4
        Properties.Items = <
          item
            Caption = 'None'
            Value = 0
          end
          item
            Caption = 'from Outlook'
            Value = 1
          end
          item
            Caption = 'to Outlook'
            Value = 2
          end
          item
            Caption = 'Both ways'
            Value = 3
          end>
        TabOrder = 3
        Height = 45
        Width = 451
      end
    end
    object tabNotes: TcxTabSheet
      Caption = 'Notes'
      ImageIndex = 10
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'NOTES'
        DataBinding.DataSource = dsEmployees
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 227
        Width = 610
      end
    end
    object tabMatterOptions: TcxTabSheet
      Caption = 'Matter Options'
      ImageIndex = 11
      object GroupBox1: TGroupBox
        Left = 8
        Top = 5
        Width = 526
        Height = 126
        Caption = 'Visible Toolbar Buttons'
        TabOrder = 0
        object DBCheckBox8: TDBCheckBox
          Left = 7
          Top = 21
          Width = 50
          Height = 17
          Caption = 'Fees'
          DataField = 'MATTER_FEE_BTN'
          DataSource = dsEmployees
          TabOrder = 0
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 94
          Top = 21
          Width = 51
          Height = 17
          Caption = 'Timer'
          DataField = 'MATTER_TIMER_BTN'
          DataSource = dsEmployees
          TabOrder = 1
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 168
          Top = 21
          Width = 60
          Height = 17
          Caption = 'Sundry'
          DataField = 'MATTER_SUNDRY_BTN'
          DataSource = dsEmployees
          TabOrder = 2
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 263
          Top = 21
          Width = 68
          Height = 17
          Caption = 'Payment'
          DataField = 'MATTER_PAYMENT_BTN'
          DataSource = dsEmployees
          TabOrder = 3
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 438
          Top = 21
          Width = 66
          Height = 17
          Caption = 'Receipt'
          DataField = 'MATTER_RECEIPT_BTN'
          DataSource = dsEmployees
          TabOrder = 4
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox13: TDBCheckBox
          Left = 7
          Top = 94
          Width = 83
          Height = 17
          Caption = 'Acc Payable'
          DataField = 'MATTER_ACC_PAYABLE_BTN'
          DataSource = dsEmployees
          TabOrder = 5
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 357
          Top = 21
          Width = 68
          Height = 17
          Caption = 'CheqReq'
          DataField = 'MATTER_CHEQREQ_BTN'
          DataSource = dsEmployees
          TabOrder = 6
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox15: TDBCheckBox
          Left = 7
          Top = 45
          Width = 61
          Height = 17
          Caption = 'New Bill'
          DataField = 'MATTER_NEW_BILL_BTN'
          DataSource = dsEmployees
          TabOrder = 7
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox16: TDBCheckBox
          Left = 94
          Top = 45
          Width = 50
          Height = 17
          Caption = 'Email'
          DataField = 'MATTER_EMAIL_BTN'
          DataSource = dsEmployees
          TabOrder = 8
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox17: TDBCheckBox
          Left = 168
          Top = 45
          Width = 67
          Height = 17
          Caption = 'Workflow'
          DataField = 'MATTER_WKFLOW_BTN'
          DataSource = dsEmployees
          TabOrder = 9
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox18: TDBCheckBox
          Left = 263
          Top = 45
          Width = 43
          Height = 17
          Caption = 'SMS'
          DataField = 'MATTER_SMS_BTN'
          DataSource = dsEmployees
          TabOrder = 10
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox19: TDBCheckBox
          Left = 357
          Top = 45
          Width = 58
          Height = 17
          Caption = 'Search'
          DataField = 'MATTER_SEARCH_BTN'
          DataSource = dsEmployees
          TabOrder = 11
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox20: TDBCheckBox
          Left = 438
          Top = 45
          Width = 71
          Height = 17
          Caption = 'SnapShot'
          DataField = 'MATTER_SNAPSHOT_BTN'
          DataSource = dsEmployees
          TabOrder = 12
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox21: TDBCheckBox
          Left = 94
          Top = 94
          Width = 96
          Height = 17
          Caption = 'Master Matter'
          DataField = 'MATTER_MASTER_BTN'
          DataSource = dsEmployees
          TabOrder = 13
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox22: TDBCheckBox
          Left = 7
          Top = 69
          Width = 80
          Height = 17
          Caption = 'Edit Matter'
          DataField = 'MATTER_EDIT_BTN'
          DataSource = dsEmployees
          TabOrder = 14
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox23: TDBCheckBox
          Left = 94
          Top = 69
          Width = 65
          Height = 17
          Caption = 'Research'
          DataField = 'MATTER_RESEARCH_BTN'
          DataSource = dsEmployees
          TabOrder = 15
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox24: TDBCheckBox
          Left = 168
          Top = 69
          Width = 89
          Height = 17
          Caption = 'Close Matter'
          DataField = 'MATTER_CLOSE_BTN'
          DataSource = dsEmployees
          TabOrder = 16
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox25: TDBCheckBox
          Left = 263
          Top = 69
          Width = 89
          Height = 17
          Caption = 'Open Matter'
          DataField = 'MATTER_OPEN_BTN'
          DataSource = dsEmployees
          TabOrder = 17
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
        object DBCheckBox26: TDBCheckBox
          Left = 357
          Top = 69
          Width = 75
          Height = 17
          Caption = 'Edit Client'
          DataField = 'MATTER_EDIT_CLIENT_BTN'
          DataSource = dsEmployees
          TabOrder = 18
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Authorisation'
      ImageIndex = 12
      object cbBankLineApprover: TcxDBCheckBox
        Left = 4
        Top = 6
        AutoSize = False
        Caption = 'Bank Line Approver'
        DataBinding.DataField = 'BANK_LINE_APPROVER'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
        Height = 23
        Width = 185
      end
      object cxLabel1: TcxLabel
        Left = 4
        Top = 64
        Caption = 'Authorise Client Payment Limit'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 4
        Top = 92
        Caption = 'Authorise Disbs Payment Limit'
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 4
        Top = 132
        Caption = 'Authorisation Password'
        Transparent = True
      end
      object edAuthPassword: TcxDBTextEdit
        Left = 174
        Top = 131
        DataBinding.DataField = 'AUTHORISATION_PASSWD'
        DataBinding.DataSource = dsEmployees
        Properties.EchoMode = eemPassword
        TabOrder = 4
        Width = 100
      end
      object edAuthClientPaymentLimit: TcxDBCurrencyEdit
        Left = 174
        Top = 63
        DataBinding.DataField = 'AUTH_CLIENT_PAYMENT_LIMIT'
        DataBinding.DataSource = dsEmployees
        TabOrder = 2
        Width = 100
      end
      object edAuthDisbPatmentLimit: TcxDBCurrencyEdit
        Left = 174
        Top = 91
        DataBinding.DataField = 'AUTH_DISBS_PAYMENT_LIMIT'
        DataBinding.DataSource = dsEmployees
        TabOrder = 3
        Width = 100
      end
      object grdEmpDepartments: TcxGrid
        Left = 286
        Top = 18
        Width = 311
        Height = 185
        TabOrder = 8
        object tvEmpDepartments: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsEmpAuthDept
          DataController.KeyFieldNames = 'ROWID'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsView.NavigatorOffset = 49
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object tvEmpDepartmentsDEPT_CODE: TcxGridDBColumn
            Caption = 'Department Name'
            DataBinding.FieldName = 'DEPT_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'DESCR'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsDepts
            MinWidth = 18
            Options.Grouping = False
            Width = 191
          end
          object tvEmpDepartmentsEMP_CODE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'DEPT_CODE'
            MinWidth = 18
            Width = 82
          end
          object tvEmpDepartmentsROWID: TcxGridDBColumn
            DataBinding.FieldName = 'ROWID'
            Visible = False
            MinWidth = 18
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
        end
        object lvEmpDepartments: TcxGridLevel
          GridView = tvEmpDepartments
        end
      end
      object cbFinancialDirector: TcxDBCheckBox
        Left = 3
        Top = 31
        AutoSize = False
        Caption = 'Financial Director'
        DataBinding.DataField = 'BANK_LINE_APPROVER'
        DataBinding.DataSource = dsEmployees
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        TabOrder = 1
        Height = 23
        Width = 186
      end
    end
  end
  object cxLabel9: TcxLabel
    Left = 23
    Top = 187
    Caption = 'Payroll Number'
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    AnchorX = 110
  end
  object tePayrollNumber: TcxDBTextEdit
    Left = 118
    Top = 185
    DataBinding.DataField = 'PAYROLL_NUMBER'
    DataBinding.DataSource = dsEmployees
    TabOrder = 13
    Width = 121
  end
  object dbcbEmpLevel: TcxDBLookupComboBox
    Left = 118
    Top = 260
    Hint = 'This controls'#39' the employee position/level'
    DataBinding.DataField = 'EMP_LEVEL'
    DataBinding.DataSource = dsEmployees
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 10
    Properties.DropDownSizeable = True
    Properties.DropDownWidth = 300
    Properties.KeyFieldNames = 'EMP_LEVEL'
    Properties.ListColumns = <
      item
        FieldName = 'DESCRIPTION'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsEmpLevel
    Style.BorderStyle = ebsUltraFlat
    Style.HotTrack = False
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 35
    OnClick = dbcbEmpLevelClick
    Width = 185
  end
  object dbtxtInitials: TcxDBTextEdit
    Left = 445
    Top = 109
    DataBinding.DataField = 'INITIALS'
    DataBinding.DataSource = dsEmployees
    TabOrder = 9
    Width = 121
  end
  object lblInitials: TcxLabel
    Left = 401
    Top = 110
    Caption = 'Initials'
    Transparent = True
  end
  object qryEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT E.*, E.ROWID '
      'FROM EMPLOYEE E '
      'ORDER BY E.CODE')
    FetchRows = 1
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    IndexFieldNames = 'code'
    AfterInsert = qryEmployeesAfterInsert
    BeforePost = qryEmployeesBeforePost
    AfterPost = qryEmployeesAfterPost
    AfterCancel = qryEmployeesAfterCancel
    AfterScroll = qryEmployeesAfterScroll
    Left = 844
    Top = 212
  end
  object dsEmployees: TUniDataSource
    DataSet = qryEmployees
    Left = 844
    Top = 264
  end
  object dsTypes: TUniDataSource
    DataSet = qryTypes
    Left = 781
    Top = 405
  end
  object qryTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM EMPTYPE ORDER BY CODE')
    Left = 733
    Top = 406
  end
  object qryDepts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM EMPDEPT ORDER BY CODE')
    Left = 978
    Top = 91
  end
  object dsDepts: TUniDataSource
    DataSet = qryDepts
    Left = 1010
    Top = 91
  end
  object ilstToolbar: TImageList
    Left = 830
    Top = 104
    Bitmap = {
      494C01011F002100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B00000000000000000000000000B5A091FF755E49FF6E5740FF674F
      38FF624A32FF604830FF604830FF604830FF604830FF604830FF604830FF6048
      30FF604830FF604830FF604830FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000FF00000000000000FF000000
      00000000FF00000000000000FF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000B7A293FFEDDDD3FFECDACFFFE5CC
      BCFFE1C4B2FFDEBDA8FFDEBDA8FFDEBDA8FFDDBCA7FFDBB9A1FFDAB8A2FFDCB6
      9EFFDEB297FFE1AE91FFE2AF8FFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      FF000000000000000000000000000000FF000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B000000000000000000B9A596FFFCF2EDFFADB5C4FF0D5A
      C1FF1353A9FF044197FF25508BFFAAA3A4FFF9E2D3FFF6DCCAFFF4D6C3FFF4D6
      C3FFF4D6C3FFF4D6C3FFDFB295FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000BCA899FFE7EAF0FF1B61C2FF69A5
      F6FF4284DEFF0346A1FF1564CDFF043F92FFF9E8DBFFDABAA9FFC59F8CFFC199
      86FFC09682FFBE937EFFDCB49CFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000C0AC9DFFEEEFF4FF306EC3FF71A4
      E6FF1C5BB0FF2673D9FF0E51B6FF1854A7FFFBEFE6FFF8E1D2FFF8DFCFFFF7DC
      CBFFF5D9C7FFF4D7C4FFD8B8A3FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000C3B0A1FFFEFAF8FFDADCDFFF3251
      8CFF999993FF818B9BFF2C5395FFD5D6D9FFFBF3EEFFE8D1C4FFC39E8BFFC199
      85FFBF9681FFBD937EFFD6BEA8FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7B4A5FFFEFCFBFF656464FF2828
      27FFB6B5B4FF7A7C7EFF666768FFF9F9F8FFFDF9F6FFFBF1E9FFFAEEE5FFFAEA
      E0FFF9E8DCFFF8E3D5FFD4BFAEFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000CAB7A9FFFAF9F8FF4C4C4CFF4848
      48FFE3E3E3FFC5C5C4FF7B7977FFDBDAD9FFFEF5F0FFFCC9A7FFFCB78BFFFAAD
      82FFF8A478FFF69D70FFD3C3B6FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00000000007B7B7B0000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000CDBBADFFFFFEFEFF696969FF7475
      75FF989898FF969797FF7C7A79FFE1E0DFFFFFFCFBFFFEF9F6FFFEFAF8FFFDF8
      F5FFFCF4EFFFFCF4EEFFD1C4BFFF674F38FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000D0BEB0FFFFFFFFFFE0E0E0FF7575
      75FF848484FF757575FFC6C6C6FFFAFAFAFFFFFFFFFFFFFEFEFFFFFEFDFFFEFC
      FAFFFDF8F5FFFDF8F5FFCFC7C5FF725B45FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000D2C0B2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
      FEFFFEFBFAFFFDFBFAFFFEFCFAFF7D6652FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B00000000000000000000000000D2C0B2FFD2C0B2FFD1BEB0FFCFBC
      AEFFCCBAABFFCAB7A8FFC7B4A5FFC4B0A2FFC1AD9EFFBEAA9BFFBBA798FFB9A4
      95FFB7A293FFB5A091FFB5A091FFB5A091FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F9000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D400000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800042424200996633000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C2000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5F003939390099663300CC99
      66000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D60000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006666330099663300CC66
      3300CC996600000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C00010152007171710000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D00000000000000006666660066666600666666006666
      660066666600666666006666660066666600000000000000000099663300CC66
      3300CC996600CC9966000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E450000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D00000000000000006666660039393900393939003366
      330066663300666633006666330099663300CC99660000000000000000006666
      3300CC663300CC99660000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D0000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C00000000000000006666660039393900666633009966
      3300CC663300CC996600CC999900CC9999000000000000000000000000000000
      000099663300CC996600CC996600000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D66990000000000000000666666003939390099663300CC66
      3300CC9966007777770000000000000000000000000000000000000000000000
      000042424200CC993300CC996600000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B8001111780000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD000000000000000000000000000000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A0000000000000000666666003939390099663300CC99
      3300CC996600CC99660077777700000000000000000000000000000000000000
      00004D4D4D00CC663300CC996600000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB000000000000000000000000000000006666660039393900CC663300CC99
      3300CC993300CC663300CC663300777777000000000000000000000000007777
      770042424200CC663300CC99660000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F850000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E7000000000000000000000000000000006666660039393900CC9966000000
      0000CC663300CC663300CC663300996633009966330077777700666666004D4D
      4D0066663300CC996600CC99660000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD000000000000000000000000000000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA000000000000000000000000000000006666660033663300CC9999000000
      000000000000CC663300CC663300CC663300CC66330099663300666633006666
      3300CC663300CC996600000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB000000000000000000000000000000006666660066663300F0CAA6000000
      0000000000000000000000000000CC663300CC663300CC663300CC663300CC99
      6600CC9966000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E90000000000000000000000000000000000000000CC999900F0CAA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C600000000000000000000000000DADA
      DA001C1C1C000000000010101000FFFFFF00FFFFFF0008080800000000001C1C
      1C00DADADA000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF008484840084848400C9C9C9002B2B2B0099999900FFFF
      FF00D5D5D500171717000000000033333300434343000202020017171700D5D5
      D500FFFFFF00999999002C2C2C00C9C9C9000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000003E3E3E000D0D0D00262626003232
      32003B3B3B0008080800BCBCBC00C4C4C400B9B9B90006060600070707003B3B
      3B00323232002F2F2F000E0E0E003E3E3E00FFFFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FF000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF008400000000000000000000000000000000000000A1A1A100D0D0D000CDCD
      CD00CCCCCC0019191900EDEDED00FFFFFF00FAFAFA000101010015151500CCCC
      CC00CDCDCD00D1D1D100A1A1A10000000000FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF0000000000FF000000FF000000FF000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000021212100E2E2E200FFFF
      FF00FFFFFF001F1F1F00E1E1E100FFFFFF00EFEFEF00000000001A1A1A00FFFF
      FF00FFFFFF00E2E2E2002121210000000000FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000E4E4E4003C3C3C0012121200D9D9
      D900FFFFFF001F1F1F00E1E1E100FFFFFF00EFEFEF000000000019191900FFFF
      FF00D9D9D900121212003C3C3C00E4E4E400FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000848484008484
      84000000FF000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000000000000000000000000000FFFFFF0046464600000000001313
      1300DADADA0026262600E1E1E100FFFFFF00EFEFEF000000000020202000DCDC
      DC00131313000000000046464600FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000848484000000FF000000
      FF000000FF000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000FFFFFF0043434300C1C1C1002C2C
      2C000D0D0D0005050500E9E9E900FFFFFF00EFEFEF0007070700020202000D0D
      0D002C2C2C00C1C1C10043434300FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000848484000000
      FF000000FF000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000000000000000000000000000FFFFFF0043434300D2D2D2003636
      36000F0F0F0004040400E9E9E900FFFFFF00EFEFEF0007070700030303000F0F
      0F0036363600D2D2D20043434300FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF0000008484
      84000000FF008484840084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000FFFFFF0043434300CDCDCD003434
      3400D9D9D90028282800E2E2E200FFFFFF00EFEFEF000707070025252500D9D9
      D90034343400CDCDCD0043434300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000FF000000FF000000FF000000FF0000008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000FFFFFF0043434300CDCDCD003434
      3400E2E2E2002A2A2A00E2E2E200FFFFFF00EFEFEF000707070027272700E2E2
      E20034343400CDCDCD0043434300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400FF000000FF000000FF000000FF000000FF000000FF0000008484
      84000000FF0084848400FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003B3B3B00D4D4D4003434
      3400DEDEDE0020202000EAEAEA00FFFFFF00EFEFEF00070707001D1D1D00DEDE
      DE0034343400D4D4D4003B3B3B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FF000000FF000000FF000000FF000000848484000000
      FF000000FF000000FF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0062626200A9A9A9004949
      4900E5E5E5004B4B4B00C3C3C300FCFCFC00EFEFEF000B0B0B0049494900E5E5
      E50049494900A9A9A90062626200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484008484840084848400848484000000FF000000
      FF000000FF000000FF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0051515100DCDC
      DC00FFFFFF00FFFFFF000B0B0B00F9F9F900FAFAFA0013131300FFFFFF00FFFF
      FF00DCDCDC0051515100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000FF000000FF000000FF000000
      FF000000FF000000FF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE0057575700B3B3B300B3B3B30057575700FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000FF000000FF000000
      FF000000FF0084848400FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000D0D0D000D0D0D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000084000000
      84000000FF000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000008400000084000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000000000000000008400000084000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000008400000084000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084000000FF000000FF000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000FF0000000000000000000000FF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      84000000FF00000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000084000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000FFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000000000000008400848484008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000084840000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000084840000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000007B7B7B000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400000084008484
      8400848484000000840000008400848484008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000084840000FFFF0000FFFF00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400000084008484
      8400848484000000840000008400848484008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B0000FFFF000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00008484000084840000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF00000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFFC1FFFFF0000FFFFF007FFFF0000
      BBBBE003000000005555C00100000000EEEEC001000000003C81C00100000000
      3C9CC00100000000009CC00100000000999CE00300000000999CFFC700000000
      C38CF1C700000000C391F1C700000000E79FF1C700000000E79FF00700000000
      FF9FF80FFFFF0000FFFFFC1FFFFF0000F80FC007E7FFFFFFE007C007E01FFF1F
      C003C007E00FFF0F8001C007E007FF878001C007E00300C30001C007E0430063
      0001C007E06300F10001C007A03303F10001C0079FF301F10001C0078C0F00E1
      0001C007840F10010001C007800F18038003C007C00F1E07C003C007C00F9FFF
      E00FC007E00FFFFFF01FC007FFCFFFFFFFFF0000E4278040FFFF000002008040
      FFFF000000006180FFFFE00780011200F3E7E00780412100F1C7E00700404080
      F88FE00720444080FC1FE00700004080FE3FE00700002100FC1FE00700001E00
      F88FE00700000000F1C7FFFF00000000F3E7F81F00000000FFFFF81F00000000
      FFFFF81F00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFE7E7FC7FFFFFF1FF
      E1E7FC7FFFFFE0FFE067E00FE007C47FE007E00FE007CE3FE067E00FE007FF1F
      E1E7FC7FFFFFFF8FE7E7FC7FFFFFFFC7FFFFFC7FFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF9FE7FFFFFFFFFFFF8FC7FFFFFFFFFFFF8787E7E7FF9FF9FF
      C30FE787FE1FF87FE01FE607F81FF81FF03FE007F01FF80FF87FE607F81FF81F
      F03FE787FE1FF87FE01FE7E7FF9FF9FFC30FFFFFFFFFFFFF8787FFFFFFFFFFFF
      8FC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FE7FF007FFFF
      8003FC3FE003F9FF0001FC3FC001F0FF0001FE7FC001F0FF0001FC3FC001E07F
      0000FC3FC001C07F0000FC3FC001843F8000FC1FE0031E3FC000F20FF1C7FE1F
      E001E107F1C7FF1FE007E187F1C7FF8FF007E007F007FFC7F003F00FF80FFFE3
      F803F81FFC1FFFF8FFFFFFFFFFFFFFFFBF7FFF7FFEFFFEFDBE7FFE7FFE7FFE7D
      BC7FFC7FFE3FFE3DB87FF87FFE1FFE1DB07FF07FFE0FFE0DA07FE07FFE07FE05
      807FC07FFE03FE01A07FE07FFE07FE05B07FF07FFE0FFE0DB87FF87FFE1FFE1D
      BC7FFC7FFE3FFE3DBE7FFE7FFE7FFE7DBF7FFF7FFEFFFEFDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFF8FFFF0000E007FFF8FFFF0000
      E007FFE0FFF90000F00FFFE0E7FFC000FC3FFF81C3F38000F81FFF03C3E70000
      F00FFF07E1C70000F00F840FF08F0000F00F001FF81F8000F81F003FFC3F8000
      FC3F007FF81F8000FFFF003FF09F8000FFFF003FC1C78000FFFF803F83E38000
      FFFFC03F8FF1C000FFFFE07FFFFFE00000000000000000000000000000000000
      000000000000}
  end
  object qryRateChange: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE EMPLOYEE SET RATE = :Rate WHERE TYPE = :EmpType')
    Left = 942
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Rate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EmpType'
        Value = nil
      end>
  end
  object qryEmpList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT E.CODE, E.NAME, E.PHONE, E.RATE, T.DESCR, T.REPORTGROUP, ' +
        'DISBWOFF_CHART, FEE_CHART, FEEWOFF_CHART'
      'FROM EMPLOYEE E, EMPTYPE T'
      'WHERE E.TYPE = T.CODE'
      'ORDER BY T.REPORTGROUP, E.CODE'
      '')
    Left = 1063
    Top = 129
  end
  object qryBranch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from branch'
      'where entity = :entity')
    Left = 659
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object dsBranch: TUniDataSource
    DataSet = qryBranch
    Left = 693
    Top = 207
  end
  object qryEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM ENTITY')
    Left = 1016
    Top = 167
  end
  object dsEntity: TUniDataSource
    DataSet = qryEntity
    Left = 1119
    Top = 39
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = aNew
            Caption = '&New'
            ImageIndex = 0
          end
          item
            Action = aDelete
            ImageIndex = 2
          end
          item
            Action = aPost
            ImageIndex = 13
          end
          item
            Action = aCancel
            ImageIndex = 14
          end
          item
            Action = aPassword
            Caption = 'P&assword'
            ImageIndex = 1
          end
          item
            Caption = '-'
          end
          item
            Action = aEmpType
            Caption = 'E&mployee Types'
            ImageIndex = 3
          end
          item
            Action = aEmpDept
            Caption = 'Emplo&yee Departments'
            ImageIndex = 4
          end
          item
            Caption = '-'
          end
          item
            Action = aLaunch
            Caption = 'La&unch Clearance'
            ImageIndex = 5
          end
          item
            Caption = '-'
          end
          item
            Action = aDataSetFirst
            ImageIndex = 15
          end
          item
            Action = aDataSetPrior
            ImageIndex = 16
          end
          item
            Action = aDataSetNext
            Caption = 'N&ext'
            ImageIndex = 17
          end
          item
            Action = aDataSetLast
            ImageIndex = 18
          end
          item
            Caption = '-'
          end
          item
            Action = aPrint
            Caption = 'P&rint'
            ImageIndex = 10
          end
          item
            Caption = '-'
          end
          item
            Action = aHelp
            Caption = '&Help'
            ImageIndex = 11
          end>
        Visible = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = aNew
                Caption = '&New'
                ImageIndex = 0
              end
              item
                Action = aPassword
                Caption = '&Password'
                ImageIndex = 1
              end
              item
                Action = aDelete
                ImageIndex = 2
              end
              item
                Caption = '-'
              end
              item
                Action = aEmpType
                Caption = '&Employee Types'
                ImageIndex = 3
              end
              item
                Action = aEmpDept
                Caption = 'E&mployee Departments'
                ImageIndex = 4
              end
              item
                Caption = '-'
              end
              item
                Action = aLaunch
                Caption = '&Launch Clearance'
                ImageIndex = 5
              end
              item
                Caption = '-'
              end
              item
                Action = aPrint
                Caption = 'P&rint'
                ImageIndex = 10
              end
              item
                Caption = '-'
              end
              item
                Action = aExit
                Caption = 'E&xit'
                ImageIndex = 23
                ShortCut = 16499
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = aHelp
                Caption = '&Help'
                ImageIndex = 11
              end>
            Caption = '&Help'
          end>
      end>
    Images = ilstToolbar
    Left = 727
    Top = 98
    StyleName = 'XP Style'
    object aNew: TDataSetInsert
      Category = 'File'
      Caption = 'New'
      Hint = 'New Employee'
      ImageIndex = 0
      OnExecute = aNewExecute
      OnUpdate = NewDeleteUpdate
      DataSource = dsEmployees
    end
    object aPassword: TAction
      Category = 'File'
      Caption = 'Password'
      Hint = 'Change Password'
      ImageIndex = 1
      OnExecute = aPasswordExecute
    end
    object aDelete: TDataSetDelete
      Category = 'File'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 2
      OnExecute = aDeleteExecute
      OnUpdate = NewDeleteUpdate
      DataSource = dsEmployees
    end
    object aPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Apply'
      ImageIndex = 13
      OnExecute = aPostExecute
      OnUpdate = PostCancelUpdate
      DataSource = dsEmployees
    end
    object aCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 14
      OnUpdate = PostCancelUpdate
      DataSource = dsEmployees
    end
    object aDataSetFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 15
      DataSource = dsEmployees
    end
    object aDataSetPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 16
      DataSource = dsEmployees
    end
    object aDataSetNext: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 17
      DataSource = dsEmployees
    end
    object aDataSetLast: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 18
      DataSource = dsEmployees
    end
    object aHelp: TAction
      Category = 'Help'
      Caption = 'Help'
      Enabled = False
      ImageIndex = 11
      OnExecute = aHelpExecute
    end
    object aEmpType: TAction
      Category = 'File'
      Caption = 'Employee Types'
      Hint = 'Employee Types'
      ImageIndex = 23
      OnExecute = aEmpTypeExecute
    end
    object aEmpDept: TAction
      Category = 'File'
      Caption = 'Employee Departments'
      Hint = 'Employee Departments'
      ImageIndex = 3
      OnExecute = aEmpDeptExecute
    end
    object aLaunch: TAction
      Category = 'File'
      Caption = 'Launch Clearance'
      Hint = 'Programs this Employee may launch'
      ImageIndex = 22
      OnExecute = aLaunchExecute
    end
    object aPrint: TAction
      Category = 'File'
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 8
      OnExecute = aPrintExecute
    end
    object aExit: TAction
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exit'
      ImageIndex = 24
      ShortCut = 16499
      OnExecute = aExitExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'File'
      'Menu'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 608
    Top = 33
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 239
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavCancel1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPassword'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnUnlockUser'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtonEmployeeTypes'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnBudget'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnFirst'
        end
        item
          Visible = True
          ItemName = 'btnPrev'
        end
        item
          Visible = True
          ItemName = 'btnNext'
        end
        item
          Visible = True
          ItemName = 'btnLast'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton2: TdxBarButton
      Action = aNew
      Category = 0
      Hint = 'Add a new Employee to Insight'
    end
    object btnPassword: TdxBarButton
      Action = aPassword
      Category = 0
      Hint = 'Change Password for currently selected User'
    end
    object dxBarButton4: TdxBarButton
      Action = aDelete
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = aEmpType
      Caption = 'Employee Security'
      Category = 0
      Hint = 'View/Edit this Employees Security settings'
      ImageIndex = 10
    end
    object dxBarButton6: TdxBarButton
      Action = aEmpDept
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = aLaunch
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = aPrint
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = aExit
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close Form'
      PaintStyle = psCaptionGlyph
    end
    object btnBudget: TdxBarButton
      Caption = 'Budget'
      Category = 0
      Hint = 'Enter Budget for current employee'
      Visible = ivAlways
      ImageIndex = 25
      OnClick = btnBudgetClick
    end
    object dxattachImage: TdxBarButton
      Caption = 'Attach Image'
      Category = 0
      Hint = 'Attach Image'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5A091FF755E49FF6E57
        40FF674F38FF624A32FF604830FF604830FF604830FF604830FF604830FF6048
        30FF604830FF604830FF604830FF604830FF604830FFB7A293FFEDDDD3FFECDA
        CFFFE5CCBCFFE1C4B2FFDEBDA8FFDEBDA8FFDEBDA8FFDDBCA7FFDBB9A1FFDAB8
        A2FFDCB69EFFDEB297FFE1AE91FFE2AF8FFF604830FFB9A596FFFCF2EDFFADB5
        C4FF0D5AC1FF1353A9FF044197FF25508BFFAAA3A4FFF9E2D3FFF6DCCAFFF4D6
        C3FFF4D6C3FFF4D6C3FFF4D6C3FFDFB295FF604830FFBCA899FFE7EAF0FF1B61
        C2FF69A5F6FF4284DEFF0346A1FF1564CDFF043F92FFF9E8DBFFDABAA9FFC59F
        8CFFC19986FFC09682FFBE937EFFDCB49CFF604830FFC0AC9DFFEEEFF4FF306E
        C3FF71A4E6FF1C5BB0FF2673D9FF0E51B6FF1854A7FFFBEFE6FFF8E1D2FFF8DF
        CFFFF7DCCBFFF5D9C7FFF4D7C4FFD8B8A3FF604830FFC3B0A1FFFEFAF8FFDADC
        DFFF32518CFF999993FF818B9BFF2C5395FFD5D6D9FFFBF3EEFFE8D1C4FFC39E
        8BFFC19985FFBF9681FFBD937EFFD6BEA8FF604830FFC7B4A5FFFEFCFBFF6564
        64FF282827FFB6B5B4FF7A7C7EFF666768FFF9F9F8FFFDF9F6FFFBF1E9FFFAEE
        E5FFFAEAE0FFF9E8DCFFF8E3D5FFD4BFAEFF604830FFCAB7A9FFFAF9F8FF4C4C
        4CFF484848FFE3E3E3FFC5C5C4FF7B7977FFDBDAD9FFFEF5F0FFFCC9A7FFFCB7
        8BFFFAAD82FFF8A478FFF69D70FFD3C3B6FF604830FFCDBBADFFFFFEFEFF6969
        69FF747575FF989898FF969797FF7C7A79FFE1E0DFFFFFFCFBFFFEF9F6FFFEFA
        F8FFFDF8F5FFFCF4EFFFFCF4EEFFD1C4BFFF674F38FFD0BEB0FFFFFFFFFFE0E0
        E0FF757575FF848484FF757575FFC6C6C6FFFAFAFAFFFFFFFFFFFFFEFEFFFFFE
        FDFFFEFCFAFFFDF8F5FFFDF8F5FFCFC7C5FF725B45FFD2C0B2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFFFFFEFEFFFEFBFAFFFDFBFAFFFEFCFAFF7D6652FFD2C0B2FFD2C0B2FFD1BE
        B0FFCFBCAEFFCCBAABFFCAB7A8FFC7B4A5FFC4B0A2FFC1AD9EFFBEAA9BFFBBA7
        98FFB9A495FFB7A293FFB5A091FFB5A091FFB5A091FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = dxattachImageClick
    end
    object tbChangeImage: TdxBarButton
      Caption = 'Change Image...'
      Category = 0
      Hint = 'Change Image'
      Visible = ivAlways
      OnClick = dxattachImageClick
    end
    object tbRemoveImage: TdxBarButton
      Caption = 'Remove image'
      Category = 0
      Hint = 'Remove image'
      Visible = ivAlways
      OnClick = tbRemoveImageClick
    end
    object btnDictionaryOptions: TdxBarButton
      Caption = 'Dictionary Settings'
      Category = 0
      Hint = 'Dictionary Settings'
      Visible = ivAlways
      ImageIndex = 28
    end
    object bbtnUnlockUser: TdxBarButton
      Caption = 'Unlock User'
      Category = 0
      Hint = 'Unlock Currently selected User'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = bbtnUnlockUserClick
    end
    object bbtonEmployeeTypes: TdxBarButton
      Caption = 'Employee Types'
      Category = 0
      Hint = 'Employee Types'
      Visible = ivAlways
      ImageIndex = 23
      OnClick = bbtonEmployeeTypesClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'File'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'btnPassword'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object btnFirst: TdxBarDBNavButton
      Category = 2
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000808080FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FF808080FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000808080FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dbNav
      NavButton = dxbnFirst
    end
    object btnPrev: TdxBarDBNavButton
      Category = 2
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
        80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000808080FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
        00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
        80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dbNav
      NavButton = dxbnPrior
    end
    object btnNext: TdxBarDBNavButton
      Category = 2
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dbNav
      NavButton = dxbnNext
    end
    object btnLast: TdxBarDBNavButton
      Category = 2
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF000000FF000000FF8080
        80FF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF000000FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      BarDBNavigator = dbNav
      NavButton = dxbnLast
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Action = aPost
      Category = 2
      Enabled = False
      ImageIndex = 11
      BarDBNavigator = dbNav
      NavButton = dxbnPost
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Action = aCancel
      Category = 2
      Enabled = False
      ImageIndex = 27
      BarDBNavigator = dbNav
      NavButton = dxbnCancel
    end
  end
  object dbNav: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = dsEmployees
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnPost, dxbnCancel]
    Left = 621
    Top = 148
  end
  object qryEmpCuts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT E.ROWID, E.* FROM EMPCUTS E WHERE E. EMP = :P_Emp')
    Left = 678
    Top = 154
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Emp'
        Value = nil
      end>
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 779
    Top = 97
  end
  object qryEmpTypeCuts: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from emp_type_cuts where emptype = :code')
    Left = 624
    Top = 206
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end>
  end
  object dlFile: TOpenDialog
    Filter = 'JPG|*.jpg|HTML|*.html'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Title = 'Select document template'
    Left = 940
    Top = 117
  end
  object dxPopupImage: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'tbChangeImage'
      end
      item
        Visible = True
        ItemName = 'tbRemoveImage'
      end>
    UseOwnFont = False
    OnPopup = dxPopupImagePopup
    Left = 1017
    Top = 215
    PixelsPerInch = 96
  end
  object qryFeeAuthority: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from fee_authority')
    Left = 672
    Top = 264
  end
  object dsFeeAuthority: TUniDataSource
    DataSet = qryFeeAuthority
    Left = 620
    Top = 257
  end
  object rptEmployeeList: TppReport
    AutoStop = False
    DataPipeline = plEmployeeList
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
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
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
    Left = 782
    Top = 47
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEmployeeList'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 9790
        mmLeft = 120915
        mmTop = 10054
        mmWidth = 74348
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 529
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3768
        mmLeft = 184150
        mmTop = 794
        mmWidth = 8213
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 93255
        mmTop = 0
        mmWidth = 11134
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Employee List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 87191
        mmTop = 5821
        mmWidth = 23791
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 529
        mmTop = 15610
        mmWidth = 6519
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 9790
        mmTop = 15610
        mmWidth = 7070
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Telephone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 98954
        mmTop = 15610
        mmWidth = 13081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Ledgers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 153538
        mmTop = 11113
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Fees'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 121973
        mmTop = 15610
        mmWidth = 5927
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Fee W/Off'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 143934
        mmTop = 15610
        mmWidth = 12107
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Disb W/Off'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3725
        mmLeft = 168805
        mmTop = 15610
        mmWidth = 13250
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 19579
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 120915
        mmTop = 15081
        mmWidth = 74348
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = plEmployeeList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmployeeList'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 529
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plEmployeeList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmployeeList'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 529
        mmWidth = 85725
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PHONE'
        DataPipeline = plEmployeeList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmployeeList'
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 529
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FEE_CHART'
        DataPipeline = plEmployeeList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmployeeList'
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 529
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'FEEWOFF_CHART'
        DataPipeline = plEmployeeList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmployeeList'
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 529
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'DISBWOFF_CHART'
        DataPipeline = plEmployeeList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plEmployeeList'
        mmHeight = 4233
        mmLeft = 168805
        mmTop = 529
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DESCR'
      DataPipeline = plEmployeeList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEmployeeList'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'DESCR'
          DataPipeline = plEmployeeList
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEmployeeList'
          mmHeight = 4106
          mmLeft = 8467
          mmTop = 529
          mmWidth = 128059
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
  object plEmployeeList: TppDBPipeline
    DataSource = dsEmployeeList
    UserName = 'plEmployeeList'
    Left = 715
    Top = 50
    object plEmployeeListppField1: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plEmployeeListppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object plEmployeeListppField3: TppField
      FieldAlias = 'PHONE'
      FieldName = 'PHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object plEmployeeListppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'RATE'
      FieldName = 'RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object plEmployeeListppField5: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object plEmployeeListppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPORTGROUP'
      FieldName = 'REPORTGROUP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plEmployeeListppField7: TppField
      FieldAlias = 'DISBWOFF_CHART'
      FieldName = 'DISBWOFF_CHART'
      FieldLength = 12
      DisplayWidth = 12
      Position = 6
    end
    object plEmployeeListppField8: TppField
      FieldAlias = 'FEE_CHART'
      FieldName = 'FEE_CHART'
      FieldLength = 12
      DisplayWidth = 12
      Position = 7
    end
    object plEmployeeListppField9: TppField
      FieldAlias = 'FEEWOFF_CHART'
      FieldName = 'FEEWOFF_CHART'
      FieldLength = 12
      DisplayWidth = 12
      Position = 8
    end
  end
  object dsEmployeeList: TUniDataSource
    DataSet = qryEmpList
    Left = 662
    Top = 50
  end
  object MainMenu1: TMainMenu
    Left = 741
    Top = 263
  end
  object RwMapiFolderDialog: TRwMAPIFolderDialog
    AllowSelectMsgStore = True
    MAPISession = dmAxiom.MapiSession
    Caption = 'Select a folder..'
    Left = 611
    Top = 78
  end
  object qryAutoTimerTask: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT *'
      'FROM'
      'SCALECOST'
      'WHERE ACTIVE = '#39'Y'#39
      'AND AUTO_TIMER = '#39'Y'#39)
    Left = 747
    Top = 164
  end
  object dsAutoTimerTask: TUniDataSource
    DataSet = qryAutoTimerTask
    Left = 742
    Top = 211
  end
  object procNonWorkingDays: TUniStoredProc
    StoredProcName = 'update_non_working_days'
    SQL.Strings = (
      'begin'
      '  update_non_working_days(:P_CODE);'
      'end;')
    Connection = dmAxiom.uniInsight
    Left = 674
    Top = 101
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CODE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'update_non_working_days'
  end
  object qryEmpAuthDept: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '
      '  empauthdept.*, empauthdept.rowid'
      'from empauthdept'
      'where emp_code = :emp_code')
    AfterInsert = qryEmpAuthDeptAfterInsert
    Left = 30
    Top = 629
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_code'
        Value = Null
      end>
  end
  object dsEmpAuthDept: TUniDataSource
    DataSet = qryEmpAuthDept
    Left = 710
    Top = 313
  end
  object qryEmpLevel: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT EMP_LEVEL, DESCRIPTION FROM EMP_LEVEL ORDER BY DESCRIPTIO' +
        'N')
    Left = 725
    Top = 462
  end
  object dsEmpLevel: TUniDataSource
    DataSet = qryEmpLevel
    Left = 781
    Top = 461
  end
end
