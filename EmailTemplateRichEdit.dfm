object frmEmailTemplateRichEdit: TfrmEmailTemplateRichEdit
  Left = 0
  Top = 0
  Caption = 'Email Template Rich Text Ad Edit'
  ClientHeight = 119
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    585
    119)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 19
    Width = 57
    Height = 13
    Caption = 'Description:'
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 104
    Top = 16
    DataBinding.DataField = 'DESCR'
    DataBinding.DataSource = dsEmailTemplate
    TabOrder = 0
    Width = 449
  end
  object btRichEdit: TcxButton
    Left = 152
    Top = 73
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Edit Template'
    TabOrder = 1
    OnClick = btRichEditClick
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 73
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Save'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 73
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object qryEmailTemplate: TUniQuery
    KeyFields = 'ID'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      'email_templates.*, email_templates.rowid'
      'from'
      'email_templates')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=seq_emailtemplate')
    Left = 24
    Top = 64
  end
  object dsEmailTemplate: TUniDataSource
    DataSet = qryEmailTemplate
    Left = 88
    Top = 64
  end
end
