object frmTransitNew: TfrmTransitNew
  Left = 597
  Top = 177
  Hint = 
    'Record Cheques Recieved for delivery to a third party and cheque' +
    's dispatched.'
  BorderStyle = bsDialog
  Caption = 'Transit Item Creation'
  ClientHeight = 478
  ClientWidth = 382
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
  object pnlReceived: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 443
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 94
      Width = 72
      Height = 13
      Caption = 'Date Received'
    end
    object Label4: TLabel
      Left = 16
      Top = 277
      Width = 38
      Height = 13
      Caption = 'Reason'
    end
    object Label8: TLabel
      Left = 16
      Top = 117
      Width = 41
      Height = 13
      Caption = 'Amount'
    end
    object lblTaxDescr: TLabel
      Left = 200
      Top = 184
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 16
      Top = 399
      Width = 51
      Height = 13
      Caption = 'Reference'
    end
    object Label6: TLabel
      Left = 16
      Top = 141
      Width = 22
      Height = 13
      Caption = 'Type'
    end
    object Label7: TLabel
      Left = 16
      Top = 165
      Width = 26
      Height = 13
      Caption = 'Bank'
    end
    object Label9: TLabel
      Left = 17
      Top = 234
      Width = 50
      Height = 13
      Caption = 'Cheque #'
    end
    object Label10: TLabel
      Left = 16
      Top = 257
      Width = 63
      Height = 13
      Caption = 'From Whom'
    end
    object Label11: TLabel
      Left = 16
      Top = 339
      Width = 48
      Height = 13
      Caption = 'To Whom'
    end
    object Label12: TLabel
      Left = 16
      Top = 424
      Width = 50
      Height = 13
      Caption = 'Date Sent'
    end
    object lblMatterDesc: TLabel
      Left = 86
      Top = 23
      Width = 219
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
      Left = 86
      Top = 36
      Width = 157
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 247
      Top = 125
      Width = 47
      Height = 13
      Caption = 'Direction'
      Visible = False
    end
    object btnMatterFind: TSpeedButton
      Left = 54
      Top = 12
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
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 34
      Height = 13
      Caption = 'Matter'
    end
    object lblMatter: TLabel
      Left = 84
      Top = 11
      Width = 288
      Height = 13
      AutoSize = False
    end
    object Label13: TLabel
      Left = 16
      Top = 188
      Width = 36
      Height = 13
      Caption = 'Branch'
    end
    object Label14: TLabel
      Left = 16
      Top = 211
      Width = 72
      Height = 13
      Caption = 'BSB - Account'
    end
    object lblAddress: TLabel
      Left = 16
      Top = 359
      Width = 41
      Height = 13
      Caption = 'Address'
    end
    object Label15: TLabel
      Left = 16
      Top = 67
      Width = 43
      Height = 13
      Caption = 'Transit #'
    end
    object lblTransitNo: TLabel
      Left = 104
      Top = 67
      Width = 3
      Height = 13
    end
    object neAmount: TNumberEdit
      Left = 104
      Top = 114
      Width = 105
      Height = 21
      Alignment = taRightJustify
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
      TabOrder = 2
      Text = '0'
      OnEnter = neAmountEnter
      OnExit = neAmountExit
    end
    object dtpCreated: TDateTimePicker
      Left = 104
      Top = 91
      Width = 105
      Height = 22
      Date = 36720.664084305600000000
      Time = 36720.664084305600000000
      TabOrder = 1
    end
    object edtRefNo: TEdit
      Left = 104
      Top = 396
      Width = 177
      Height = 22
      MaxLength = 12
      TabOrder = 13
    end
    object edtBank: TEdit
      Left = 104
      Top = 162
      Width = 177
      Height = 22
      MaxLength = 60
      TabOrder = 4
    end
    object edtCheque: TEdit
      Left = 104
      Top = 231
      Width = 177
      Height = 22
      MaxLength = 12
      TabOrder = 8
    end
    object edtFrom: TEdit
      Left = 104
      Top = 254
      Width = 177
      Height = 22
      MaxLength = 40
      TabOrder = 9
    end
    object edtTo: TEdit
      Left = 104
      Top = 336
      Width = 177
      Height = 22
      MaxLength = 40
      TabOrder = 11
    end
    object dtpSent: TDateTimePicker
      Left = 127
      Top = 420
      Width = 107
      Height = 22
      Date = 36720.664084305600000000
      Time = 36720.664084305600000000
      TabOrder = 14
    end
    object rgDirection: TRadioGroup
      Left = 220
      Top = 88
      Width = 149
      Height = 31
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Received'
        'Sent')
      TabOrder = 0
      Visible = False
      OnClick = rgDirectionClick
    end
    object mmoDesc: TMemo
      Left = 104
      Top = 277
      Width = 265
      Height = 57
      MaxLength = 1000
      TabOrder = 10
      OnExit = mmoDescExit
      OnKeyPress = mmoDescKeyPress
    end
    object edtBranch: TEdit
      Left = 104
      Top = 185
      Width = 177
      Height = 22
      MaxLength = 60
      TabOrder = 5
    end
    object edtBSB: TEdit
      Left = 104
      Top = 208
      Width = 46
      Height = 22
      MaxLength = 60
      TabOrder = 6
    end
    object edtBankAcct: TEdit
      Left = 158
      Top = 208
      Width = 123
      Height = 22
      MaxLength = 60
      TabOrder = 7
    end
    object mmoAddress: TMemo
      Left = 104
      Top = 359
      Width = 265
      Height = 35
      TabOrder = 12
    end
    object cmbPaymentType: TcxLookupComboBox
      Left = 104
      Top = 138
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsPaymentType
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 3
      Width = 145
    end
    object chkSent: TCheckBox
      Left = 104
      Top = 422
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 15
      OnClick = chkSentClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 443
    Width = 382
    Height = 35
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      382
      35)
    object btnCancel: TBitBtn
      Left = 294
      Top = 4
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
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnSave: TBitBtn
      Left = 213
      Top = 4
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
      TabOrder = 1
      OnClick = btnSaveClick
    end
    object cbPrint: TcxCheckBox
      Left = 8
      Top = 6
      Caption = 'Print ?'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Transparent = True
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
      Active = True
      Component = pnlReceived
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
      ReportDocument.CreationDate = 43636.953538530090000000
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
