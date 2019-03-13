object frmSafeCustodyNew: TfrmSafeCustodyNew
  Left = 537
  Top = 212
  BorderStyle = bsDialog
  Caption = 'Add/Edit Document'
  ClientHeight = 525
  ClientWidth = 599
  Color = clBtnFace
  Constraints.MinHeight = 425
  Constraints.MinWidth = 603
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label6: TLabel
    Left = 9
    Top = 8
    Width = 31
    Height = 15
    Caption = 'Client'
  end
  object Label1: TLabel
    Left = 9
    Top = 32
    Width = 35
    Height = 15
    Caption = 'Packet'
  end
  object Label4: TLabel
    Left = 9
    Top = 55
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label5: TLabel
    Left = 9
    Top = 104
    Width = 46
    Height = 15
    Caption = 'Location'
  end
  object lblClient: TcxLabel
    Left = 81
    Top = 5
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
  end
  object mmoDescription: TcxMemo
    Left = 81
    Top = 55
    Lines.Strings = (
      '')
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 45
    Width = 504
  end
  object mmoLocation: TcxMemo
    Left = 81
    Top = 104
    Lines.Strings = (
      '')
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Height = 45
    Width = 504
  end
  object tbPacket: TcxTextEdit
    Left = 81
    Top = 28
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 107
  end
  object cxGroupBox1: TcxGroupBox
    Left = 9
    Top = 154
    Align = alCustom
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clDefault
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Height = 337
    Width = 578
    object Label7: TLabel
      Left = 4
      Top = 26
      Width = 25
      Height = 15
      Caption = 'Type'
      Transparent = True
    end
    object Label8: TLabel
      Left = 333
      Top = 26
      Width = 97
      Height = 15
      Caption = 'Date of Document'
      Transparent = True
    end
    object Label11: TLabel
      Left = 4
      Top = 175
      Width = 73
      Height = 15
      Caption = 'Date Released'
      Transparent = True
    end
    object Label13: TLabel
      Left = 4
      Top = 203
      Width = 75
      Height = 15
      Caption = 'Date Returned'
      Transparent = True
    end
    object Label12: TLabel
      Left = 268
      Top = 175
      Width = 62
      Height = 15
      Caption = 'Released To'
      Transparent = True
    end
    object Label9: TLabel
      Left = 268
      Top = 230
      Width = 71
      Height = 15
      Caption = 'Requested By'
      Transparent = True
    end
    object Label3: TLabel
      Left = 4
      Top = 230
      Width = 82
      Height = 15
      Caption = 'Date Requested'
      Transparent = True
    end
    object Label14: TLabel
      Left = 4
      Top = 258
      Width = 64
      Height = 15
      Caption = 'Review Date'
      Transparent = True
    end
    object Label2: TLabel
      Left = 268
      Top = 203
      Width = 99
      Height = 15
      Caption = 'Movement Reason'
      Transparent = True
    end
    object Label15: TLabel
      Left = 268
      Top = 258
      Width = 28
      Height = 15
      Caption = 'Code'
      Transparent = True
    end
    object Label10: TLabel
      Left = 4
      Top = 53
      Width = 60
      Height = 15
      Caption = 'Description'
      Transparent = True
    end
    object Label16: TLabel
      Left = 4
      Top = 126
      Width = 59
      Height = 15
      Caption = 'Comments'
      Transparent = True
    end
    object cmbDocType: TcxDBLookupComboBox
      Left = 103
      Top = 21
      DataBinding.DataField = 'DOCUMENT_TYPE'
      DataBinding.DataSource = dsDocReg2
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DOCUMENT_TYPE'
      Properties.ListColumns = <
        item
          Caption = 'Description'
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListSource = dsDocTypes
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 201
    end
    object dtpLodged: TcxDBDateEdit
      Left = 443
      Top = 23
      DataBinding.DataField = 'LODGED'
      DataBinding.DataSource = dsDocReg2
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 129
    end
    object mmoDesc: TcxDBMemo
      Left = 103
      Top = 51
      DataBinding.DataField = 'DESCR'
      DataBinding.DataSource = dsDocReg2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Height = 67
      Width = 469
    end
    object dtpRelease: TcxDBDateEdit
      Left = 103
      Top = 169
      DataBinding.DataField = 'DATE_RELEASED'
      DataBinding.DataSource = dsDocReg2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 130
    end
    object dtpReturned: TcxDBDateEdit
      Left = 103
      Top = 197
      DataBinding.DataField = 'DATE_RETURNED'
      DataBinding.DataSource = dsDocReg2
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnValidate = dtpReturnedPropertiesValidate
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 130
    end
    object edReleasedTo: TcxDBTextEdit
      Left = 379
      Top = 170
      DataBinding.DataField = 'RELEASED_TO'
      DataBinding.DataSource = dsDocReg2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Width = 193
    end
    object edMovement: TcxDBTextEdit
      Left = 379
      Top = 198
      DataBinding.DataField = 'MOVEMENT_REASON'
      DataBinding.DataSource = dsDocReg2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 9
      Width = 193
    end
    object dtpRequestedDate: TcxDBDateEdit
      Left = 103
      Top = 225
      DataBinding.DataField = 'REQUESTED_DATE'
      DataBinding.DataSource = dsDocReg2
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 130
    end
    object cmbRequestedBy: TcxDBLookupComboBox
      Left = 379
      Top = 226
      DataBinding.DataField = 'REQUESTED_BY'
      DataBinding.DataSource = dsDocReg2
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = dsEmployee
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 10
      Width = 193
    end
    object dtpReviewDate: TcxDBDateEdit
      Left = 103
      Top = 253
      DataBinding.DataField = 'REVIEWDATE'
      DataBinding.DataSource = dsDocReg2
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Width = 130
    end
    object edCode: TcxDBTextEdit
      Left = 379
      Top = 254
      DataBinding.DataField = 'CODE'
      DataBinding.DataSource = dsDocReg2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Width = 193
    end
    object mmoComments: TcxDBMemo
      Left = 103
      Top = 123
      DataBinding.DataField = 'COMMENTS'
      DataBinding.DataSource = dsDocReg2
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Height = 41
      Width = 470
    end
    object cmbFirm: TcxDBCheckBox
      Left = 3
      Top = 281
      Caption = 'Firm'
      DataBinding.DataField = 'FIRM_MANAGED'
      DataBinding.DataSource = dsDocReg2
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 12
      OnClick = cmbFirmClick
      Width = 102
    end
    object dfFirmDetails: TcxDBTextEdit
      Left = 117
      Top = 281
      DataBinding.DataField = 'FIRM_DETAILS'
      DataBinding.DataSource = dsDocReg2
      Enabled = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 13
      Width = 456
    end
    object btnAddAttachment: TcxButton
      Left = 312
      Top = 308
      Width = 131
      Height = 23
      Caption = 'Attach Document'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        36080000424D3608000000000000360400002800000010000000100000000100
        2000000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFF008686
        860066CCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860000CCCC00FFFFFF00FFFFFF00868686008686860086868600868686008686
        86008686860086868600FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860066CCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860000CCCC00FFFFFF00FFFFFF00000000003939390000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860066CCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860000CCCC00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860066CCFF00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860000CCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860066CCFF00FFFFFF00FFFFFF0000000000393939000000000039393900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860000CCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860066CCFF00FFFFFF0086868600868686008686860086868600868686008686
        8600868686008686860086868600FFFFFF0000000000FFFFFF00FFFFFF008686
        860000CCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008686
        860066CCFF0000CCCC0066CCFF0000CCCC0066CCFF0000CCCC0066CCFF0000CC
        CC0066CCFF0000CCCC0066CCFF0000CCCC0000000000FFFFFF00FFFFFF008686
        8600FF990000FF990000FF990000FF990000FF990000FF990000FF990000FF99
        0000FF990000FF990000FF990000FF99000000000000FFFFFF00FFFFFF008686
        8600800000008000000080000000800000008000000080000000800000008000
        00008000000080000000800000008000000000000000FFFFFF00}
      TabOrder = 14
      OnClick = dxattachImageClick
    end
    object btnAcquireDoc: TcxButton
      Left = 443
      Top = 308
      Width = 130
      Height = 23
      Caption = 'Scan Document'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F0000000000F
        FFFF777777777777FFFF7F88888888770FFF7FA28888888770FF7FFFFFFFFFF7
        870F7777777777778770F78FFF88E8E87870FF78888E8E8EE770FFF78888888E
        8E70FFFF777000000000FFFFF77777777770FFFF78887877770FFFF788888787
        80FFFF78888888880FFFF78888888880FFFF77777777700FFFFF}
      TabOrder = 15
      OnClick = btnAcquireDocClick
    end
    object btnViewDoc: TcxButton
      Left = 149
      Top = 308
      Width = 163
      Height = 23
      Caption = 'View Attached Document'
      LookAndFeel.NativeStyle = True
      TabOrder = 16
      OnClick = btnViewDocClick
    end
    object btnRemoveAttDoc: TcxButton
      Left = 5
      Top = 308
      Width = 143
      Height = 23
      Caption = 'Remove Att Document'
      LookAndFeel.NativeStyle = True
      TabOrder = 17
      OnClick = btnRemoveAttDocClick
    end
  end
  object imgDocument: TcxImage
    Left = 132
    Top = 497
    TabOrder = 5
    Visible = False
    Height = 26
    Width = 150
  end
  object btnSave: TBitBtn
    Left = 419
    Top = 494
    Width = 80
    Height = 27
    Caption = '&Save'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 6
    OnClick = btnSaveClick
  end
  object btnCancel: TBitBtn
    Left = 507
    Top = 494
    Width = 80
    Height = 27
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 11
    OnClick = btnCancelClick
  end
  object dsDocReg2: TUniDataSource
    DataSet = qryDocReg2
    Left = 132
    Top = 490
  end
  object qryDocReg2: TUniQuery
    UpdatingTable = 'DOCREGITEM'
    KeyFields = 'NDOCUMENT'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*, D.ROWID '
      ' FROM DOCREGITEM D'
      'WHERE D.NCLIENT = :NCLIENT'
      '  AND D.NDOCUMENT = :NDOCUMENT')
    CachedUpdates = True
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SEQ_DOCREGITEM'
      'Oracle.SequenceMode=smInsert')
    Left = 40
    Top = 450
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCLIENT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NDOCUMENT'
        Value = nil
      end>
  end
  object qryDocTypes: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from document_type')
    Left = 237
    Top = 5
  end
  object dsDocTypes: TDataSource
    DataSet = qryDocTypes
    Left = 181
    Top = 231
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from employee'
      'order by name')
    Left = 290
    Top = 5
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 360
    Top = 1
  end
  object ActionManager1: TActionManager
    Images = dmAxiom.ilstToolbar
    Left = 497
    Top = 5
    StyleName = 'XP Style'
    object actSave: TAction
      Caption = '&Save'
      Enabled = False
      ImageIndex = 8
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 335
    Top = 233
    DockControlHeights = (
      0
      0
      0
      0)
    object dxattachImage: TdxBarButton
      Caption = 'Attach Image'
      Category = 0
      Hint = 'Attach Image'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
        000000000000000000FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFEC
        ECECECECECECFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFF00
        1500FFFFFFFFFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFFD
        FDFDFDFDFDFDFFFF00FFFFEC7AFFFFFDFDFDFDFDFDFDFFFF00FFFFEC37FFFFFF
        FFFFFFFFFFFFFFFF00FFFFEC7AFFFF00150015FFFFFFFFFF00FFFFEC37FFFFFF
        FFFFFFFFFFFFFFFF00FFFFEC7AFFECECECECECECECECECFF00FFFFEC37FFFFFF
        FFFFFFFFFFFFFFFF00FFFFEC7A377A377A377A377A377A3700FFFFECD3D3D3D3
        D3D3D3D3D3D3D3D300FFFFEC04040404040404040404040400FF}
      OnClick = dxattachImageClick
    end
    object dxloadImage: TdxBarButton
      Caption = 'Display'
      Category = 0
      Hint = 'Display'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF2FFFFF
        FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF2FFFFFFFDF85B7
        85FF0F6F0FFF167416FF1A761AFF1A761AFF187818FF177917FF137D13FF0D7F
        0DFF0A7E0AFF077C07FF027B02FF007000FF7FB07FFFFFFFFFDFFFFFFFFF1183
        11FF1F8C1FFF2A912AFF2F932FFF2E942EFF2C962CFF299A29FF239E23FF1CA3
        1CFF15A415FF0DA40DFF059F05FF019101FF006F00FFFFFFFFFFFFFFFFFF198D
        19FF2C962CFF379C37FF3D9F3DFF3C9F3CFF39A139FFA3D6A3FFFFFFFFFF24AF
        24FF1CB11CFF13B213FF0AAD0AFF049F04FF027902FFFFFFFFFFFFFFFFFF2291
        22FF389C38FF43A243FF48A448FF45A545FF42A642FFFFFFFFFFFFFFFFFFFFFF
        FFFF21B521FF18B618FF0EB10EFF08A308FF057E05FFFFFFFFFFFFFFFFFF2C96
        2CFF42A042FF4CA54CFF4FA74FFF4CA74CFF46A746FF40AA40FFFFFFFFFFFFFF
        FFFFFFFFFFFF1AB31AFF14AF14FF0FA30FFF0B800BFFFFFFFFFFFFFFFFFF359A
        35FF4BA54BFF52A852FF53A953FF4EA84EFF49A749FF41A841FF38AA38FFFFFF
        FFFFFFFFFFFFFFFFFFFF19AC19FF18A218FF128212FFFFFFFFFFFFFFFFFF3F9F
        3FFF53A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F9E1FFF188118FFFFFFFFFFFFFFFFFF45A2
        45FF5AAC5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF259A25FF1D7F1DFFFFFFFFFFFFFFFFFF4FA7
        4FFF63B163FF61AF61FF59AB59FF51A651FF48A248FF3F9F3FFF369C36FFFFFF
        FFFFFFFFFFFFFFFFFFFF269926FF2A972AFF217E21FFFFFFFFFFFFFFFFFF53A9
        53FF6CB66CFF68B468FF5EAD5EFF54A854FF4CA34CFF429F42FFFFFFFFFFFFFF
        FFFFFFFFFFFF299729FF2B982BFF2D952DFF237E23FFFFFFFFFFFFFFFFFF5EAF
        5EFF7ABD7AFF70B870FF63B063FF5AAB5AFF52A652FFFFFFFFFFFFFFFFFFFFFF
        FFFF339933FF309930FF309830FF2F942FFF237D23FFFFFFFFFFFFFFFFFF6BB5
        6BFF8DC68DFF80C080FF6FB76FFF67B267FF60AE60FFB4D9B4FFFFFFFFFF4CA5
        4CFF49A449FF41A141FF3A9D3AFF309530FF1E7A1EFFFFFFFFFFFFFFFFFF77BB
        77FF9DCF9DFF8CC68CFF79BC79FF70B870FF69B469FF65B265FF62B062FF5DAE
        5DFF56AB56FF4EA74EFF41A141FF2F942FFF197719FFFFFFFFFFFFFFFFDFB1D8
        B1FF76BB76FF67B367FF5BAD5BFF54A954FF4FA74FFF4AA44AFF4BA54BFF46A3
        46FF3FA03FFF3B9E3BFF319831FF238C23FF8ABB8AFFFFFFFFDFFFFFFF2FFFFF
        FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF2F}
      OnClick = imgDocumentDblClick
    end
    object dxAcquireImage: TdxBarButton
      Caption = 'Scan Document'
      Category = 0
      Hint = 'Scan Document'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F0000000000F
        FFFF777777777777FFFF7F88888888770FFF7FA28888888770FF7FFFFFFFFFF7
        870F7777777777778770F78FFF88E8E87870FF78888E8E8EE770FFF78888888E
        8E70FFFF777000000000FFFFF77777777770FFFF78887877770FFFF788888787
        80FFFF78888888880FFFF78888888880FFFF77777777700FFFFF}
      OnClick = btnAcquireDocClick
    end
  end
  object dlFile: TOpenDialog
    Filter = '*.*|*.*'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select document template'
    Left = 401
    Top = 233
  end
  object dxPopupImage: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxattachImage'
      end
      item
        Visible = True
        ItemName = 'dxAcquireImage'
      end>
    UseOwnFont = False
    Left = 257
    Top = 231
  end
end
