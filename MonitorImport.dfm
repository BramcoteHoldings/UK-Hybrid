object frmMonitorImport: TfrmMonitorImport
  Left = 210
  Top = 356
  Caption = 'Monitor Import'
  ClientHeight = 92
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    497
    92)
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 4
    Top = 11
    Width = 86
    Height = 15
    Caption = 'Import from File'
  end
  object tbFile: TEdit
    Left = 104
    Top = 8
    Width = 359
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = 'NETLOG01.ACC'
    ExplicitWidth = 369
  end
  object btnSave: TBitBtn
    Left = 462
    Top = 6
    Width = 25
    Height = 24
    Anchors = [akTop, akRight]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
      000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
      FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
      00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
      FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
      0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
      05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
      55557F7777777555555500000005555555557777777555555555}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object btnOK: TBitBtn
    Left = 412
    Top = 63
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnOKClick
  end
  object chkFileDelete: TCheckBox
    Left = 104
    Top = 36
    Width = 235
    Height = 17
    Caption = 'Delete file after processing?'
    TabOrder = 3
  end
  object btnCancel: TBitBtn
    Left = 331
    Top = 63
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object sdlgFile: TSaveDialog
    DefaultExt = 'txt'
    Title = 'Save merge file as...'
    Left = 8
    Top = 56
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FILEID, NMATTER, NCLIENT, AUTHOR, COMPLETED FROM MATTER W' +
        'HERE FILEID = :FILEID')
    Left = 192
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end>
    object qryMatterFILEID: TStringField
      FieldName = 'FILEID'
    end
    object qryMatterNMATTER: TFloatField
      FieldName = 'NMATTER'
      Required = True
    end
    object qryMatterNCLIENT: TFloatField
      FieldName = 'NCLIENT'
    end
    object qryMatterAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Required = True
      Size = 3
    end
    object qryMatterCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
    end
  end
  object qrySundryInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRY'
      '  (ACCT, CREATED, AMOUNT, BILLED, DESCR, NMATTER, NCLIENT,'
      '   PERUNIT, UNITS, NMEMO, TYPE, PRIVATE, FILEID, TAXCODE, TAX)'
      'VALUES'
      '  (:ACCT, :CREATED, :AMOUNT, '#39'N'#39', :DESCR, :NMATTER, :NCLIENT,'
      '   :PERUNIT, :UNITS, 0, :TYPE, '#39'N'#39', :FILEID, :TAXCODE, :TAX)'
      '  ')
    Left = 160
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ACCT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERUNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAXCODE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TAX'
        Value = nil
      end>
  end
  object qrySundryErrorInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO SUNDRYERROR'
      '  (NSUNDRYERROR, FILEID, SUNDRYTYPE, UNITS, AMOUNT, '
      '  CREATED, DESCR, ERROR)'
      'VALUES'
      '  (:NSUNDRYERROR, :FILEID, :SUNDRYTYPE, :UNITS, :AMOUNT, '
      '  :CREATED, :DESCR, :ERROR)'
      '  ')
    Left = 128
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NSUNDRYERROR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUNDRYTYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UNITS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ERROR'
        Value = nil
      end>
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 96
    Top = 56
  end
end
