object frmUserStatementEditor: TfrmUserStatementEditor
  Left = 305
  Top = 231
  ActiveControl = dbmUserStatement
  BorderStyle = bsDialog
  Caption = 'User Statement Editor'
  ClientHeight = 259
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 230
    Width = 408
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 406
    DesignSize = (
      408
      29)
    object btnOK: TBitBtn
      Left = 260
      Top = 4
      Width = 70
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 334
      Top = 4
      Width = 70
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = '&Cancel'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnTestStatement: TBitBtn
      Left = 6
      Top = 4
      Width = 69
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = '&Test'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        477777777777777777778877000077777FFFFFF74477FF777778888877888888
        00007744877777844877777788777777888877770000777487FFF84487FFFF77
        7877887888878888000077748877744777777777787777788877777700007774
        487F4447FFFFFF77788777888788888800007774444444877777777778888888
        777777770000777744444487FFFFFF7777888888778888880000777777844877
        774777777777788777778777000077788874487FF747FF777777788777788788
        00007844448444778487777788887888778877770000747784444444447FFF78
        7788888888887888000077777844444477777777777788888877777700007777
        777844887FFFFF77777777887778888800007777777448777777777777777887
        77777777000077777774487FFFFFFF7777777887788888880000777777744777
        7777777777777887777777770000777777777777777777777777777777777777
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnTestStatementClick
      ExplicitLeft = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 40
    Width = 408
    Height = 166
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    ExplicitWidth = 406
    object dbmUserStatement: TDBMemo
      Left = 4
      Top = 4
      Width = 400
      Height = 158
      Align = alClient
      DataField = 'STOREDSTATEMENT'
      DataSource = dsUserStatements
      TabOrder = 0
      OnKeyUp = dbmUserStatementKeyUp
      ExplicitWidth = 399
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 408
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 406
    object DBText1: TDBText
      Left = 71
      Top = 4
      Width = 61
      Height = 16
      DataField = 'CODE'
      DataSource = dsUserStatements
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 71
      Top = 22
      Width = 341
      Height = 16
      DataField = 'DESCRIPTION'
      DataSource = dsUserStatements
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 27
      Height = 13
      Caption = 'Code'
    end
    object Label2: TLabel
      Left = 5
      Top = 21
      Width = 59
      Height = 13
      Caption = 'Description'
    end
    object Label3: TLabel
      Left = 139
      Top = 4
      Width = 22
      Height = 13
      Caption = 'Type'
    end
    object DBText3: TDBText
      Left = 185
      Top = 4
      Width = 60
      Height = 16
      DataField = 'STATEMENTTYPE'
      DataSource = dsUserStatements
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 206
    Width = 408
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 406
    object Label4: TLabel
      Left = 5
      Top = 5
      Width = 45
      Height = 13
      Caption = 'Data File'
    end
    object dbeDataFile: TDBEdit
      Left = 61
      Top = 2
      Width = 113
      Height = 21
      DataField = 'DATAFILE'
      DataSource = dsUserStatements
      TabOrder = 0
    end
  end
  object qryUserStatements: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT US.*, US.ROWID'
      'FROM USERSTATEMENTS US')
    Left = 404
    Top = 9
    object qryUserStatementsCODE: TStringField
      FieldName = 'CODE'
      Size = 12
    end
    object qryUserStatementsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object qryUserStatementsSTATEMENTTYPE: TStringField
      FieldName = 'STATEMENTTYPE'
      Size = 12
    end
    object qryUserStatementsSTOREDSTATEMENT: TMemoField
      FieldName = 'STOREDSTATEMENT'
      BlobType = ftMemo
    end
    object qryUserStatementsWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      Size = 11
    end
    object qryUserStatementsDATAFILE: TStringField
      FieldName = 'DATAFILE'
      Size = 70
    end
    object qryUserStatementsROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object dsUserStatements: TUniDataSource
    DataSet = qryUserStatements
    Left = 372
    Top = 9
  end
  object qryTestStatement: TUniQuery
    Connection = dmAxiom.uniInsight
    FetchRows = 1
    ReadOnly = True
    Left = 340
    Top = 9
  end
end
