object frmdoc_folder_sel: Tfrmdoc_folder_sel
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Folder Selection'
  ClientHeight = 103
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 21
    Width = 67
    Height = 15
    Caption = 'Select Folder'
  end
  object BitBtn1: TBitBtn
    Left = 207
    Top = 69
    Width = 80
    Height = 27
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 308
    Top = 69
    Width = 80
    Height = 27
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
  end
  object cmbFolderList: TcxLookupComboBox
    Left = 91
    Top = 18
    Properties.DropDownRows = 10
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'FOLDER_ID'
    Properties.ListColumns = <
      item
        FieldName = 'LPAD('#39'*'#39',2*(LEVEL-1),'#39'*'#39')||DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsFolderList
    TabOrder = 2
    Width = 297
  end
  object qryFolderList: TUniQuery
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
      'select descr, folder_id'
      'from'
      'document_folders'
      'where'
      'nmatter = :nmatter'
      '*/')
    Left = 25
    Top = 49
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsFolderList: TUniDataSource
    DataSet = qryFolderList
    Left = 84
    Top = 52
  end
end
