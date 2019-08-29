object frmTransitNew: TfrmTransitNew
  Left = 597
  Top = 177
  Hint = 
    'Record Cheques Recieved for delivery to a third party and cheque' +
    's dispatched.'
  BorderStyle = bsDialog
  Caption = 'Transit Item Creation'
  ClientHeight = 537
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblInvoice: TLabel
    Left = 456
    Top = 488
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 423
    Height = 537
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    AutoSize = True
    DesignSize = (
      423
      537)
    object lblMatterDesc: TLabel
      Left = 11
      Top = 38
      Width = 391
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblClient: TLabel
      Left = 11
      Top = 57
      Width = 392
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnMatterFind: TSpeedButton
      Left = 89
      Top = 11
      Width = 21
      Height = 21
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = btnMatterFindClick
    end
    object lblMatter: TLabel
      Left = 116
      Top = 11
      Width = 288
      Height = 13
      AutoSize = False
    end
    object lblTransitNo: TLabel
      Left = 89
      Top = 76
      Width = 3
      Height = 14
    end
    object neAmount: TNumberEdit
      Left = 91
      Top = 126
      Width = 105
      Height = 17
      Alignment = taRightJustify
      BorderStyle = bsNone
      DecimalPlaces = 2
      DisplayFormat = dfCurrency
      EditText = '0'
      FontAbove.Charset = DEFAULT_CHARSET
      FontAbove.Color = clWindowText
      FontAbove.Height = -11
      FontAbove.Name = 'Segoe UI'
      FontAbove.Style = []
      FontBelow.Charset = DEFAULT_CHARSET
      FontBelow.Color = clWindowText
      FontBelow.Height = -11
      FontBelow.Name = 'Segoe UI'
      FontBelow.Style = []
      FontBetween.Charset = DEFAULT_CHARSET
      FontBetween.Color = clWindowText
      FontBetween.Height = -11
      FontBetween.Name = 'Segoe UI'
      FontBetween.Style = []
      NoZero = False
      TabOrder = 1
      Text = '0'
      OnEnter = neAmountEnter
      OnExit = neAmountExit
    end
    object dtpCreated: TDateTimePicker
      Left = 89
      Top = 96
      Width = 105
      Height = 22
      Date = 36720.664084305600000000
      Time = 36720.664084305600000000
      TabOrder = 0
    end
    object edtRefNo: TEdit
      Left = 91
      Top = 446
      Width = 311
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 12
      TabOrder = 12
    end
    object edtBank: TEdit
      Left = 91
      Top = 180
      Width = 311
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Ctl3D = False
      MaxLength = 60
      ParentCtl3D = False
      TabOrder = 3
    end
    object edtCheque: TEdit
      Left = 91
      Top = 261
      Width = 311
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 12
      TabOrder = 7
    end
    object edtFrom: TEdit
      Left = 91
      Top = 288
      Width = 311
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 40
      TabOrder = 8
    end
    object edtTo: TEdit
      Left = 91
      Top = 378
      Width = 311
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 40
      TabOrder = 10
    end
    object dtpSent: TDateTimePicker
      Left = 112
      Top = 471
      Width = 107
      Height = 22
      Date = 36720.664084305600000000
      Time = 36720.664084305600000000
      TabOrder = 14
    end
    object mmoDesc: TMemo
      Left = 91
      Top = 315
      Width = 311
      Height = 53
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 1000
      TabOrder = 9
      OnExit = mmoDescExit
      OnKeyPress = mmoDescKeyPress
    end
    object edtBranch: TEdit
      Left = 91
      Top = 207
      Width = 311
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 60
      TabOrder = 4
    end
    object edtBSB: TEdit
      Left = 91
      Top = 234
      Width = 46
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 60
      TabOrder = 5
    end
    object edtBankAcct: TEdit
      Left = 147
      Top = 234
      Width = 123
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      MaxLength = 60
      TabOrder = 6
    end
    object mmoAddress: TMemo
      Left = 91
      Top = 405
      Width = 311
      Height = 31
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 11
    end
    object cmbPaymentType: TcxLookupComboBox
      Left = 89
      Top = 151
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPaymentType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 2
      Width = 315
    end
    object chkSent: TCheckBox
      Left = 89
      Top = 471
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 13
      OnClick = chkSentClick
    end
    object btnCancel: TBitBtn
      Left = 329
      Top = 499
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancel'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 17
      OnClick = btnCancelClick
    end
    object btnSave: TBitBtn
      Left = 248
      Top = 499
      Width = 75
      Height = 25
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
      NumGlyphs = 2
      TabOrder = 16
      OnClick = btnSaveClick
    end
    object cbPrint: TcxCheckBox
      Left = 11
      Top = 499
      Caption = 'Print ?'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 15
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 391
      Control = lblMatterDesc
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 391
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblMatter
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 288
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Matter'
      Control = btnMatterFind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = lblClient
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 392
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Transit #'
      Control = lblTransitNo
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Date Received'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      Control = dtpCreated
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Control = neAmount
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 105
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Type'
      Control = cmbPaymentType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Bank'
      Control = edtBank
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      Index = 7
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Branch'
      Control = edtBranch
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      Index = 8
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'BSB - Account'
      Control = edtBSB
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 46
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edtBankAcct
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 123
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Cheque #'
      Control = edtCheque
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      Index = 10
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'From Whom'
      Control = edtFrom
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      Index = 11
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Reason'
      Control = mmoDesc
      ControlOptions.OriginalHeight = 53
      ControlOptions.OriginalWidth = 265
      Index = 12
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'To Whom'
      Control = edtTo
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      Index = 13
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Address'
      Control = mmoAddress
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 265
      Index = 14
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Reference'
      Control = edtRefNo
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      Index = 15
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Date Sent'
      Control = chkSent
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dtpSent
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 17
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbPrint
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object qryTransitInsert: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO TRANSIT'
      
        '  (NTRANSIT, NMATTER, AMOUNT, REFNO, DESCR, FILEID, CREATED, RCV' +
        'D_DATE, RCVD_FROM, PAID_TO, PAID_DATE, BRANCH, CHQNO, PAYMENT_TY' +
        'PE, BANK_BRANCH, BSB, BANK_ACCOUNT, PAID_TO_ADDRESS)'
      'VALUES'
      
        '  (:NTRANSIT, :NMATTER, :AMOUNT, :REFNO, :DESCR, :FILEID, :CREAT' +
        'ED, :RCVD_DATE, :RCVD_FROM, :PAID_TO, :PAID_DATE, :BRANCH, :CHQN' +
        'O, :PAYMENT_TYPE, :BANK_BRANCH, :BSB, :BANK_ACCOUNT, :PAID_TO_AD' +
        'DRESS)')
    Left = 319
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NTRANSIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NMATTER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'REFNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CREATED'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RCVD_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'RCVD_FROM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAID_TO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAID_DATE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BRANCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CHQNO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAYMENT_TYPE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_BRANCH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BSB'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'BANK_ACCOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PAID_TO_ADDRESS'
        Value = nil
      end>
  end
  object qryMatter: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT NMATTER, NCLIENT, AUTHOR FROM MATTER WHERE FILEID = :P_Fi' +
        'leID')
    Left = 287
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_FileID'
        Value = nil
      end>
  end
  object qryTransit: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT T.ROWID, T.*'
      'FROM TRANSIT T'
      'WHERE T.NTRANSIT =:NTRANSIT')
    Left = 348
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NTRANSIT'
        Value = nil
      end>
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink2
    Version = 0
    Left = 326
    Top = 153
    PixelsPerInch = 96
    object ComponentPrinterLink2: TdxCustomContainerReportLink
      Component = Owner
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Transit Receipt')
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Times New Roman'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.RightTitle.Strings = (
        'Printed Date: [Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43661.935363344910000000
      PixelsPerInch = 96
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qryPaymentType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from '
      'payment_type'
      'order by descr')
    Left = 124
    Top = 5
  end
  object dsPaymentType: TUniDataSource
    DataSet = qryPaymentType
    Left = 171
    Top = 4
  end
end
