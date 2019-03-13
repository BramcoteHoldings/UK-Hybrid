object frmSelectDirectory: TfrmSelectDirectory
  Left = 474
  Top = 241
  BorderStyle = bsDialog
  Caption = 'Select Directory'
  ClientHeight = 429
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  DesignSize = (
    574
    429)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 9
    Top = 9
    Width = 86
    Height = 15
    Caption = 'Directory Name:'
  end
  object Label2: TLabel
    Left = 9
    Top = 62
    Width = 59
    Height = 15
    Caption = 'Directories:'
  end
  object Label3: TLabel
    Left = 257
    Top = 62
    Width = 47
    Height = 15
    Caption = 'Files (*.*)'
  end
  object Label4: TLabel
    Left = 257
    Top = 221
    Width = 35
    Height = 15
    Caption = 'Drives:'
  end
  object Label46: TLabel
    Left = 9
    Top = 274
    Width = 48
    Height = 15
    Caption = 'Category'
  end
  object Label47: TLabel
    Left = 9
    Top = 305
    Width = 70
    Height = 15
    Caption = 'Classification'
  end
  object Label5: TLabel
    Left = 9
    Top = 338
    Width = 67
    Height = 15
    Caption = 'Select Folder'
  end
  object JvDriveCombo1: TJvDriveCombo
    Left = 257
    Top = 237
    Width = 300
    Height = 22
    DotNetHighlighting = True
    DriveTypes = [dtRemovable, dtFixed, dtRemote, dtCDROM]
    Offset = 4
    TabOrder = 2
  end
  object lbDirectories: TJvDirectoryListBox
    Left = 9
    Top = 79
    Width = 236
    Height = 181
    Directory = 'D:\'
    FileList = lbFiles
    DriveCombo = JvDriveCombo1
    ItemHeight = 17
    ScrollBars = ssVertical
    TabOrder = 0
    OnClick = lbDirectoriesDblClick
  end
  object lbFiles: TJvFileListBox
    Left = 257
    Top = 79
    Width = 300
    Height = 138
    ParentShowHint = False
    ShowGlyphs = True
    ShowHint = True
    TabOrder = 1
    ForceFileExtensions = False
  end
  object cmbCategory: TcxLookupComboBox
    Left = 95
    Top = 271
    Properties.KeyFieldNames = 'NPRECCATEGORY'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsPRECCATEGORY
    TabOrder = 3
    Width = 309
  end
  object cmbClassification: TcxLookupComboBox
    Left = 95
    Top = 302
    Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsPRECCLASSIFICATION
    TabOrder = 4
    Width = 309
  end
  object rgCopyDocuments: TcxRadioGroup
    Left = 9
    Top = 383
    Anchors = [akLeft, akBottom]
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Copy Documents'
      end
      item
        Caption = 'Move Documents'
      end>
    ItemIndex = 0
    TabOrder = 8
    Transparent = True
    Height = 39
    Width = 266
  end
  object cmbFolderList: TcxLookupComboBox
    Left = 95
    Top = 335
    Properties.DropDownRows = 10
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'FOLDER_ID'
    Properties.ListColumns = <
      item
        FieldName = 'LPAD('#39'*'#39',2*(LEVEL-1),'#39'*'#39')||DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsFolderList
    TabOrder = 5
    Width = 309
  end
  object cbEmailSplit: TcxCheckBox
    Left = 303
    Top = 360
    Hint = 
      'Check this option if Outlook is installed on computer used to im' +
      'port files.  If running from server, Server needs a copy of Outl' +
      'ook installed.'
    Caption = 'Extract Attachments from Email?'
    State = cbsChecked
    TabOrder = 6
    Transparent = True
  end
  object cbCreateFolders: TcxCheckBox
    Left = 91
    Top = 360
    Caption = 'Create folders'
    TabOrder = 7
    Transparent = True
  end
  object txtPath: TcxLabel
    Left = 9
    Top = 29
    Caption = 'xxx'
    Transparent = True
  end
  object btnOk: TcxButton
    Left = 398
    Top = 396
    Width = 75
    Height = 27
    Caption = 'Start'
    ModalResult = 1
    TabOrder = 10
  end
  object btnCancel: TcxButton
    Left = 482
    Top = 396
    Width = 75
    Height = 27
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 11
  end
  object qryPRECCLASSIFICATION: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCLASSIFICATION order by descr')
    Left = 423
    Top = 237
  end
  object qryPRECCATEGORY: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from PRECCATEGORY order by descr'
      ''
      '')
    Left = 509
    Top = 268
  end
  object dsPRECCATEGORY: TUniDataSource
    DataSet = qryPRECCATEGORY
    Left = 158
    Top = 314
  end
  object dsPRECCLASSIFICATION: TUniDataSource
    DataSet = qryPRECCLASSIFICATION
    Left = 482
    Top = 320
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
    Left = 68
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
  object dsFolderList: TUniDataSource
    DataSet = qryFolderList
    Left = 106
    Top = 301
  end
end
