object fmEmployeeFindDialog: TfmEmployeeFindDialog
  Left = 608
  Top = 404
  BorderStyle = bsDialog
  Caption = 'Select Employee'
  ClientHeight = 202
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    366
    202)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 148
    Width = 52
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Employee:'
  end
  object cxGroupBox1: TcxGroupBox
    Left = 10
    Top = 8
    Caption = 'Employee Type'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 130
    Width = 153
    object cxRadioButton1: TcxRadioButton
      Left = 20
      Top = 19
      Width = 123
      Height = 15
      Caption = 'No Filter'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioChange
      LookAndFeel.NativeStyle = True
    end
    object rbPartner: TcxRadioButton
      Left = 20
      Top = 37
      Width = 123
      Height = 16
      Caption = 'Partners'
      TabOrder = 1
      OnClick = RadioChange
      LookAndFeel.NativeStyle = True
    end
    object rbAuthor: TcxRadioButton
      Left = 20
      Top = 55
      Width = 123
      Height = 16
      Caption = 'Authors'
      TabOrder = 2
      OnClick = RadioChange
      LookAndFeel.NativeStyle = True
    end
    object rbController: TcxRadioButton
      Left = 20
      Top = 72
      Width = 123
      Height = 15
      Caption = 'Controllers'
      TabOrder = 3
      OnClick = RadioChange
      LookAndFeel.NativeStyle = True
    end
    object rbOperator: TcxRadioButton
      Left = 20
      Top = 90
      Width = 123
      Height = 16
      Caption = 'Operators'
      TabOrder = 4
      OnClick = RadioChange
      LookAndFeel.NativeStyle = True
    end
    object rbParaLegal: TcxRadioButton
      Left = 20
      Top = 109
      Width = 123
      Height = 15
      Caption = 'Para Legal'
      TabOrder = 5
      OnClick = RadioChange
      LookAndFeel.NativeStyle = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 265
    Top = 8
    Caption = 'Display By'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 65
    Width = 86
    object rbCode: TcxRadioButton
      Left = 12
      Top = 18
      Width = 49
      Height = 15
      Caption = 'Code'
      TabOrder = 0
      OnClick = rbCodeClick
      LookAndFeel.NativeStyle = True
    end
    object rbName: TcxRadioButton
      Left = 12
      Top = 37
      Width = 56
      Height = 16
      Caption = 'Name'
      TabOrder = 1
      OnClick = rbNameClick
      LookAndFeel.NativeStyle = True
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 168
    Top = 8
    Caption = 'Limit To'
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 65
    Width = 91
    object cbDepartment: TcxCheckBox
      Left = 3
      Top = 15
      Caption = 'Department'
      Properties.NullStyle = nssUnchecked
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = RadioChange
      Width = 87
    end
    object cbBranch: TcxCheckBox
      Left = 3
      Top = 34
      Caption = 'Office'
      Properties.NullStyle = nssUnchecked
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnClick = RadioChange
      Width = 60
    end
  end
  object OKBtn: TcxButton
    Left = 109
    Top = 172
    Width = 69
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    TabOrder = 4
    OnClick = OKBtnClick
  end
  object CancelBtn: TcxButton
    Left = 186
    Top = 172
    Width = 69
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    TabOrder = 5
  end
  object lbEmployees: TcxLookupComboBox
    Left = 69
    Top = 145
    Anchors = [akLeft, akBottom]
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsEmployee
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 283
  end
  object tbEmployee: TUniTable
    TableName = 'EMPLOYEE'
    OrderFields = 'CODE'
    Connection = dmAxiom.uniInsight
    ReadOnly = True
    KeyFields = 'CODE'
    Filter = 'active=true'
    FilterOptions = [foCaseInsensitive]
    SpecificOptions.Strings = (
      'Oracle.FetchAll=True')
    Left = 163
    Top = 100
    object tbEmployeeCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object tbEmployeeNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object tbEmployeeTYPE: TStringField
      FieldName = 'TYPE'
      Size = 3
    end
    object tbEmployeeACTIVE: TStringField
      FieldName = 'ACTIVE'
      Size = 1
    end
    object tbEmployeeISPARTNER: TStringField
      FieldName = 'ISPARTNER'
      Size = 1
    end
    object tbEmployeeISAUTHOR: TStringField
      FieldName = 'ISAUTHOR'
      Size = 1
    end
    object tbEmployeeISCONTROLLER: TStringField
      FieldName = 'ISCONTROLLER'
      Size = 1
    end
    object tbEmployeeISOPERATOR: TStringField
      FieldName = 'ISOPERATOR'
      Size = 1
    end
    object tbEmployeeDEPT: TStringField
      FieldName = 'DEPT'
      Size = 3
    end
    object tbEmployeeBRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 3
    end
  end
  object dsEmployee: TDataSource
    AutoEdit = False
    DataSet = tbEmployee
    Left = 313
    Top = 102
  end
end
