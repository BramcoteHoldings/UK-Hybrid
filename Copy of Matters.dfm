object frmMatters: TfrmMatters
  Left = 218
  Top = 106
  Width = 670
  Height = 480
  Caption = 'Matter:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuMain
  OldCreateOrder = True
  Position = poDefaultPosOnly
  Scaled = False
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblMatterNo: TLabel
    Left = 8
    Top = 40
    Width = 30
    Height = 13
    Caption = 'Matter'
  end
  object lblClient: TLabel
    Left = 8
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Client'
  end
  object lblPartner: TLabel
    Left = 360
    Top = 40
    Width = 34
    Height = 13
    Caption = 'Partner'
  end
  object lblAuthor: TLabel
    Left = 360
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Author'
  end
  object lblPartnerName: TLabel
    Left = 446
    Top = 40
    Width = 3
    Height = 13
  end
  object lblType: TLabel
    Left = 360
    Top = 96
    Width = 24
    Height = 13
    Caption = 'Type'
  end
  object lblTypeDesc: TLabel
    Left = 446
    Top = 96
    Width = 3
    Height = 13
  end
  object lblDesc: TLabel
    Left = 8
    Top = 104
    Width = 72
    Height = 13
    Caption = 'Full Description'
  end
  object lblClientPhone: TLabel
    Left = 259
    Top = 64
    Width = 93
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblPartner: TDBText
    Left = 408
    Top = 40
    Width = 56
    Height = 13
    AutoSize = True
    DataField = 'PARTNER'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblAuthor: TDBText
    Left = 408
    Top = 75
    Width = 53
    Height = 13
    AutoSize = True
    DataField = 'AUTHOR'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dblblType: TDBText
    Left = 408
    Top = 96
    Width = 46
    Height = 13
    AutoSize = True
    DataField = 'TYPE'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblAuthorName: TLabel
    Left = 446
    Top = 75
    Width = 3
    Height = 13
  end
  object dblblTitle: TDBText
    Tag = 1
    Left = 104
    Top = 64
    Width = 145
    Height = 13
    Color = clBtnFace
    DataField = 'TITLE'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object dblblFileID: TDBText
    Tag = 1
    Left = 104
    Top = 40
    Width = 49
    Height = 13
    AutoSize = True
    DataField = 'FILEID'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 80
    Width = 81
    Height = 13
    Caption = 'Short Description'
  end
  object lblOPRef: TLabel
    Left = 168
    Top = 40
    Width = 79
    Height = 13
    Caption = 'Client Reference'
  end
  object lblOpened: TLabel
    Left = 360
    Top = 119
    Width = 73
    Height = 13
    Caption = 'Date Instructed'
  end
  object Label13: TLabel
    Left = 360
    Top = 136
    Width = 76
    Height = 13
    Caption = 'Date Completed'
  end
  object dbtbOpened: TDBText
    Left = 440
    Top = 119
    Width = 59
    Height = 13
    AutoSize = True
    DataField = 'OPENED'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dbtbCompleted: TDBText
    Left = 440
    Top = 136
    Width = 71
    Height = 13
    AutoSize = True
    DataField = 'COMPLETED'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object spdAssoc: TSpeedButton
    Left = 79
    Top = 36
    Width = 23
    Height = 22
    Hint = 'Jump to Associated Matters'
    Flat = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000005
      55550BFBFBFBFB0555550FBFBFBFBF0555550BFBCBFBFB0555550FBCCCBFBF05
      55550BFBCCCBFB0555550FBFBCCCBF000000000000CCC0C8B8B050FBFB0CCCCB
      8B8057000078CCC8B8B05555508CCCCB8B80555550B8B8B8B8B05555508B8B8B
      8B80555550000000000555555508B8B055555555555000055555}
    Visible = False
  end
  object Label16: TLabel
    Left = 360
    Top = 58
    Width = 44
    Height = 13
    Caption = 'Controller'
  end
  object dblblController: TDBText
    Left = 408
    Top = 58
    Width = 66
    Height = 13
    AutoSize = True
    DataField = 'CONTROLLER'
    DataSource = dsMatter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblControllerName: TLabel
    Left = 446
    Top = 58
    Width = 3
    Height = 13
  end
  object lblClientCode: TLabel
    Left = 40
    Top = 64
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dbmmoLongDescr: TDBMemo
    Left = 104
    Top = 104
    Width = 249
    Height = 49
    DataField = 'LONGDESCR'
    DataSource = dsMatter
    TabOrder = 4
  end
  object tbarToolbar: TToolBar
    Left = 0
    Top = 0
    Width = 662
    Height = 35
    BorderWidth = 2
    ButtonHeight = 23
    EdgeBorders = [ebTop, ebBottom]
    Flat = True
    Images = ilstToolbar
    TabOrder = 2
    object tbtnFee: TToolButton
      Left = 0
      Top = 0
      Hint = 'New Fee'
      Caption = '&Fee'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnFeeClick
    end
    object tbtnAutoCost: TToolButton
      Left = 23
      Top = 0
      Hint = 'Start Autocosting'
      Caption = 'tbtnAutoCost'
      ImageIndex = 34
      OnClick = tbtnAutoCostClick
    end
    object tbtnSundry: TToolButton
      Left = 46
      Top = 0
      Hint = 'Sundry Expenses'
      Caption = 'Sundries'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSundryClick
    end
    object tbtnCheque: TToolButton
      Left = 69
      Top = 0
      Hint = 'Create a cheque for this Matter'
      Caption = 'tbtnCheque'
      DropdownMenu = popCheque
      ImageIndex = 19
      Style = tbsDropDown
      OnClick = tbtnChequeClick
    end
    object tbtnCheqReq: TToolButton
      Left = 105
      Top = 0
      Hint = 'Cheque Requisition'
      Caption = 'tbtnCheqReq'
      ImageIndex = 2
      OnClick = tbtnCheqReqClick
    end
    object tbtnReceipt: TToolButton
      Left = 128
      Top = 0
      Hint = 'Create a receipt for this Matter'
      Caption = 'tbtnReceipt'
      DropdownMenu = popReceipt
      ImageIndex = 20
      Style = tbsDropDown
      OnClick = tbtnReceiptClick
    end
    object tbtnInvoice: TToolButton
      Left = 164
      Top = 0
      Hint = 'New Bill'
      Caption = 'Invoice'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnInvoiceClick
    end
    object tbtnDisbDebtJournal: TToolButton
      Left = 187
      Top = 0
      Hint = 'Debtor to Disbursement Journal'
      Caption = 'tbtnDisbDebtJournal'
      ImageIndex = 32
      OnClick = tbtnDisbDebtJournalClick
    end
    object tbtnTask: TToolButton
      Left = 210
      Top = 0
      Hint = 'Workflow and Precedents'
      Caption = 'tbtnTask'
      ImageIndex = 22
      OnClick = tbtnTaskClick
    end
    object tbtnDiary: TToolButton
      Left = 233
      Top = 0
      Hint = 'New Diary'
      Caption = 'tbtnDiary'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnDiaryClick
    end
    object ToolButton1: TToolButton
      Left = 256
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tbtnFirst: TToolButton
      Left = 264
      Top = 0
      Hint = 'First'
      Caption = 'tbtnFirst'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnFirstClick
    end
    object tbtnPrev: TToolButton
      Left = 287
      Top = 0
      Hint = 'Previous'
      Caption = 'tbtnPrev'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnPrevClick
    end
    object tbtnNext: TToolButton
      Left = 310
      Top = 0
      Hint = 'Next'
      Caption = 'tbtnNext'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnNextClick
    end
    object tbtnLast: TToolButton
      Left = 333
      Top = 0
      Hint = 'Last'
      Caption = 'tbtnLast'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnLastClick
    end
    object ToolButton3: TToolButton
      Left = 356
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tbtnFind: TToolButton
      Left = 364
      Top = 0
      Hint = 'Find Matter'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnFindClick
    end
    object tbtnSnapshot: TToolButton
      Left = 387
      Top = 0
      Hint = 'Take Snapshot'
      Caption = 'SnapShot'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSnapshotClick
    end
    object tbtnAssociate: TToolButton
      Left = 410
      Top = 0
      Hint = 'Associate another Matter with this one'
      Caption = 'tbtnAssociate'
      ImageIndex = 16
      OnClick = tbtnAssociateClick
    end
    object ToolButton6: TToolButton
      Left = 433
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnRefresh: TToolButton
      Left = 441
      Top = 0
      Hint = 'Refresh'
      ImageIndex = 11
      OnClick = tbtnRefreshClick
    end
    object tbtnMatterEdit: TToolButton
      Left = 464
      Top = 0
      Hint = 'Edit Matter details'
      Caption = 'tbtnMatterEdit'
      ImageIndex = 21
      OnClick = tbtnMatterEditClick
    end
    object tbnCloseMatter: TToolButton
      Left = 487
      Top = 0
      Hint = 'Close this matter'
      Caption = 'tbnCloseMatter'
      ImageIndex = 31
      OnClick = tbnCloseMatterClick
    end
    object tbtnClient: TToolButton
      Left = 510
      Top = 0
      Hint = 'Open Client for this Matter'
      Caption = 'tbtnClient'
      ImageIndex = 33
      OnClick = tbtnClientClick
    end
    object ToolButton2: TToolButton
      Left = 533
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tbtnPrint: TToolButton
      Left = 541
      Top = 0
      Hint = 'Print Matter Label'
      ImageIndex = 12
      OnClick = tbtnPrintClick
    end
    object ToolButton7: TToolButton
      Left = 564
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tbtnHelp: TToolButton
      Left = 572
      Top = 0
      Hint = 'Help'
      Caption = 'Help'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
    end
  end
  object dbtbShortDescr: TDBEdit
    Left = 104
    Top = 80
    Width = 249
    Height = 21
    DataField = 'SHORTDESCR'
    DataSource = dsMatter
    ReadOnly = True
    TabOrder = 0
  end
  object pageMatter: TPageControl
    Left = 8
    Top = 160
    Width = 647
    Height = 273
    ActivePage = tabBalances
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = ilstToolbar
    TabOrder = 1
    OnChange = pageMatterChange
    object tabBalances: TTabSheet
      Caption = 'Balances'
      ImageIndex = 30
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 81
        Height = 13
        Caption = 'Work in Progress'
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 110
        Height = 13
        Caption = 'Unbilled Disbursements'
      end
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 41
        Height = 13
        Caption = 'Sundries'
      end
      object Label4: TLabel
        Left = 8
        Top = 112
        Width = 37
        Height = 13
        Caption = 'Debtors'
      end
      object Label5: TLabel
        Left = 8
        Top = 160
        Width = 88
        Height = 13
        Caption = 'Total Trust Monies'
      end
      object Label7: TLabel
        Left = 8
        Top = 64
        Width = 125
        Height = 13
        Caption = 'Anticipated Disbursements'
      end
      object lblRate: TLabel
        Left = 408
        Top = 27
        Width = 23
        Height = 13
        Caption = 'Rate'
      end
      object Label14: TLabel
        Left = 408
        Top = 48
        Width = 75
        Height = 13
        Caption = 'Expected Value'
      end
      object Label22: TLabel
        Left = 8
        Top = 136
        Width = 51
        Height = 13
        Caption = 'Billed Fees'
      end
      object dblblWIP: TDBText
        Left = 152
        Top = 16
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'UNBILL_FEES'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblUnbillDisb: TDBText
        Left = 152
        Top = 40
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'UNBILL_DISB'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblUnbillAntd: TDBText
        Left = 152
        Top = 64
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'UNBILL_ANTD'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblUnbillSund: TDBText
        Left = 152
        Top = 88
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'UNBILL_SUND'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblDebtors: TDBText
        Left = 152
        Top = 112
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'DEBTORS'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblBillFees: TDBText
        Left = 152
        Top = 136
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'BILL_FEES'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblTrust: TDBText
        Left = 152
        Top = 160
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataField = 'TRUST_BAL'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblClearTrust: TDBText
        Left = 168
        Top = 176
        Width = 66
        Height = 13
        Alignment = taRightJustify
        DataField = 'CL_TRUST_BAL'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 312
        Top = 168
        Width = 28
        Height = 13
        Caption = 'Notes'
      end
      object dblblRate: TDBText
        Left = 520
        Top = 26
        Width = 45
        Height = 13
        AutoSize = True
        DataField = 'RateDescr'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblSpecPurpose: TDBText
        Left = 52
        Top = 176
        Width = 74
        Height = 13
        Alignment = taRightJustify
        DataField = 'SPEC_PURPOSE'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 176
        Width = 46
        Height = 13
        Caption = 'Protected'
      end
      object Label10: TLabel
        Left = 408
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Branch'
      end
      object dblblBranch: TDBText
        Left = 520
        Top = 7
        Width = 56
        Height = 13
        AutoSize = True
        DataField = 'BranchDescr'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 128
        Top = 176
        Width = 36
        Height = 13
        Caption = 'Cleared'
      end
      object dblblLastTrust: TDBText
        Left = 120
        Top = 208
        Width = 185
        Height = 17
        Alignment = taRightJustify
        DataField = 'LASTTRUST'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dblblLastTrans: TDBText
        Left = 96
        Top = 224
        Width = 209
        Height = 17
        Alignment = taRightJustify
        DataField = 'LASTTRANS'
        DataSource = dsMatter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 224
        Width = 79
        Height = 13
        Caption = 'Last Transaction'
      end
      object Label29: TLabel
        Left = 8
        Top = 208
        Width = 106
        Height = 13
        Caption = 'Last Trust Transaction'
      end
      object dbtbExpValue: TDBEdit
        Left = 520
        Top = 48
        Width = 73
        Height = 21
        Hint = 'Expected Costs you will recover for this matter.'
        DataField = 'EXPECTED_VALUE'
        DataSource = dsMatter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object btnFeeLedger: TBitBtn
        Left = 240
        Top = 136
        Width = 65
        Height = 20
        Caption = 'Fees      '
        TabOrder = 4
        OnClick = btnFeeLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object btnDisbLedger: TBitBtn
        Left = 240
        Top = 40
        Width = 65
        Height = 20
        Caption = 'Disburse'
        TabOrder = 0
        OnClick = btnDisbLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object btnAntdLedger: TBitBtn
        Left = 240
        Top = 64
        Width = 65
        Height = 20
        Caption = 'AntDisb  '
        TabOrder = 1
        OnClick = btnAntdLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object btnSundLedger: TBitBtn
        Left = 240
        Top = 88
        Width = 65
        Height = 20
        Caption = 'Sundry   '
        TabOrder = 2
        OnClick = btnSundLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object btnDebtLedger: TBitBtn
        Left = 240
        Top = 112
        Width = 65
        Height = 20
        Caption = 'Debtors  '
        TabOrder = 3
        OnClick = btnDebtLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object btnTrustLedger: TBitBtn
        Left = 240
        Top = 160
        Width = 65
        Height = 20
        Caption = 'Trust      '
        TabOrder = 6
        OnClick = btnTrustLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object btnComboLedger: TBitBtn
        Left = 240
        Top = 184
        Width = 65
        Height = 20
        Caption = 'Combo   '
        TabOrder = 7
        OnClick = btnComboLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object gbCreditLimits: TGroupBox
        Left = 400
        Top = 72
        Width = 201
        Height = 105
        Caption = 'Credit Limits'
        TabOrder = 9
        object Label30: TLabel
          Left = 8
          Top = 24
          Width = 55
          Height = 13
          Hint = 'Credit Limit for Costs'
          Caption = 'Fee Budget'
          ParentShowHint = False
          ShowHint = True
        end
        object Label32: TLabel
          Left = 8
          Top = 72
          Width = 70
          Height = 13
          Hint = 'Credit Limit for Disbursements + Fees'
          Caption = 'Overall Budget'
          ParentShowHint = False
          ShowHint = True
        end
        object Label31: TLabel
          Left = 8
          Top = 48
          Width = 101
          Height = 13
          Hint = 'Credit Limit for Disbursements'
          Caption = 'Disbursement Budget'
          ParentShowHint = False
          ShowHint = True
        end
        object dbtbBudgetFees: TDBEdit
          Left = 120
          Top = 24
          Width = 73
          Height = 21
          Hint = 'Enter a Credit Limit or Budget for Fees'
          DataField = 'BUDGET_FEES'
          DataSource = dsMatter
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object dbtbBudgetDisb: TDBEdit
          Left = 120
          Top = 48
          Width = 73
          Height = 21
          Hint = 'Enter a budget or Credit Limit for Disbursements'
          DataField = 'BUDGET_DISB'
          DataSource = dsMatter
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object dbtbBudgetTotal: TDBEdit
          Left = 120
          Top = 72
          Width = 73
          Height = 21
          Hint = 'Enter a Total Credit Limit or Budget.'
          DataField = 'BUDGET_TOTAL'
          DataSource = dsMatter
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
      end
      object btnMaister: TBitBtn
        Left = 312
        Top = 136
        Width = 20
        Height = 21
        Hint = 'Maister Analysis of Fees'
        TabOrder = 5
        Visible = False
        OnClick = btnMaisterClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
          73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
          0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
          0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
          0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
          0333337F777777737F333308888888880333337F333333337F33330888888888
          03333373FFFFFFFF733333700000000073333337777777773333}
        NumGlyphs = 2
      end
      object dbmNotes: TDBMemo
        Left = 312
        Top = 184
        Width = 324
        Height = 46
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'NOTES'
        DataSource = dsMatter
        TabOrder = 10
      end
      object btnWIPLedger: TBitBtn
        Left = 241
        Top = 14
        Width = 65
        Height = 20
        Caption = 'WIP      '
        TabOrder = 11
        OnClick = btnWIPLedgerClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888AAA88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object gbTax: TGroupBox
        Left = 312
        Top = 0
        Width = 81
        Height = 132
        Caption = 'Tax'
        TabOrder = 12
        object dblblTaxWIP: TDBText
          Left = 8
          Top = 16
          Width = 66
          Height = 13
          Alignment = taRightJustify
          DataField = 'TaxWip'
          DataSource = dsMatter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dblblTaxDisb: TDBText
          Left = 8
          Top = 40
          Width = 66
          Height = 13
          Alignment = taRightJustify
          DataField = 'TaxDisb'
          DataSource = dsMatter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dblblTaxSund: TDBText
          Left = 8
          Top = 88
          Width = 66
          Height = 13
          Alignment = taRightJustify
          DataField = 'TaxSund'
          DataSource = dsMatter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dblblTaxTotal: TDBText
          Left = 8
          Top = 112
          Width = 66
          Height = 13
          Alignment = taRightJustify
          DataField = 'TaxTotal'
          DataSource = dsMatter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 5
          Top = 104
          Width = 71
          Height = 9
          Shape = bsTopLine
        end
        object dblblTaxAntD: TDBText
          Left = 7
          Top = 64
          Width = 66
          Height = 13
          Alignment = taRightJustify
          DataField = 'TaxAntD'
          DataSource = dsMatter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object tabParties: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 23
      object pagParties: TPageControl
        Left = 0
        Top = 0
        Width = 639
        Height = 244
        ActivePage = tabPartiesVariable
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        TabPosition = tpRight
        TabWidth = 70
        OnChange = pagPartiesChange
        OnChanging = pagPartiesChanging
        object tabPartiesVariable: TTabSheet
          BorderWidth = 2
          Caption = 'Variable'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageIndex = -1
          ParentFont = False
          object dbgrMatterParty: TDBGrid
            Left = 0
            Top = 0
            Width = 608
            Height = 199
            Align = alClient
            DataSource = dsMatterParty
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = dbgrMatterPartyDrawColumnCell
            OnDblClick = dbgrMatterPartyDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CATEGORY'
                Title.Caption = 'Type'
                Width = 107
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'SEQ'
                Title.Alignment = taRightJustify
                Title.Caption = 'Seq'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEARCH'
                Title.Caption = 'Name'
                Width = 189
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WORKPHONE'
                Title.Caption = 'Phone'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REFNO'
                Title.Caption = 'Reference'
                Width = 110
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 0
            Top = 199
            Width = 608
            Height = 31
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object btnPartyDelete: TBitBtn
              Left = 1
              Top = 5
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = 'Delete'
              TabOrder = 0
              OnClick = btnPartyDeleteClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333333333333333333333333333333333333333333F3333333333333
                30F33333F333333337333330F333333333333337FF3333333F3333000F333333
                0F3333777F333333733333000F333330F33333777FF33337F333333000F33300
                F333333777FF337733333333000F300F33333333777FF77333333333300000F3
                33333333377777333333333333000F333333333333777FF333333333300000F3
                33333333377777F333333333000F30F33333333F7773373FF333330000F33300
                F333337777333377FF3330000F3333300F333777733333377FF3300F33333333
                00F3377333333333773333333333333333333333333333333333}
              NumGlyphs = 2
            end
            object btnPartyOpen: TBitBtn
              Left = 373
              Top = 5
              Width = 75
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'Open'
              TabOrder = 1
              OnClick = btnPartyOpenClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555550
                00555555555FFF57775F55555500050BBB0555FFF57775777775500050EEE000
                777057775777777775F709990777777770F0777775FFFFFFF7F7000000000000
                F0F0777777777777F7F7011111111110F0F07F5555555557F7F7011111111110
                F0F07F5555555557F7F7011111111110F0F07F5555555557F7F7011111111110
                F0F07F5555555557F7F7011111111110F0F07F5555555557F7F7011111111110
                F0F07F5555555557F7F7011111111110F0F07FFFFFFFFFF7F7F7000000000000
                F005777777777777F77F0070707070700005777777777777777F707070707070
                55055757575757575F7555050505050500555575757575757755}
              NumGlyphs = 2
            end
            object btnMatterPartyNew: TBitBtn
              Left = 532
              Top = 5
              Width = 75
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'New'
              TabOrder = 2
              OnClick = btnMatterPartyNewClick
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
                0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
                0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
                8888880FFFFFF008888888000000008888888888888888888888}
            end
            object btnPartyEdit: TBitBtn
              Left = 453
              Top = 5
              Width = 75
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'Edit'
              TabOrder = 3
              OnClick = btnPartyEditClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                00333377737FFFFF773333303300000003333337337777777333}
              NumGlyphs = 2
            end
            object btnPartyRelate: TBitBtn
              Left = 293
              Top = 5
              Width = 75
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'Relate'
              TabOrder = 4
              OnClick = btnPartyRelateClick
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555550
                005555555500050BBB05500050EEE000777009990777777770F0099990000000
                F0B00BFBFBFBFBF0B0F00FBFBFBFBFB0F0B00BFBFBFBFBF0B0F00F77B77F7FB0
                F0B00BFBFBFBFBF0B0F00F77B777BFB0F0B00BFBFBFBFBF0B0F000B0B0B0B0B0
                F005007070707070000570707070707055055505050505050055}
            end
          end
        end
        object tabPartiesStatic: TTabSheet
          Caption = 'Static'
          ImageIndex = 1
          object lblSparty1Desc: TLabel
            Left = 8
            Top = 40
            Width = 64
            Height = 14
            Caption = 'Other Party 1'
          end
          object lblSparty2Desc: TLabel
            Left = 8
            Top = 64
            Width = 64
            Height = 14
            Caption = 'Other Party 2'
          end
          object lblSparty3Desc: TLabel
            Left = 8
            Top = 88
            Width = 64
            Height = 14
            Caption = 'Other Party 3'
          end
          object Label12: TLabel
            Left = 8
            Top = 120
            Width = 59
            Height = 14
            Caption = 'Referred By'
          end
          object Label15: TLabel
            Left = 8
            Top = 152
            Width = 28
            Height = 14
            Caption = 'Bill To'
          end
          object lblContact: TLabel
            Left = 8
            Top = 8
            Width = 37
            Height = 14
            Caption = 'Contact'
          end
          object dbtbOtherParty1: TDBEdit
            Left = 104
            Top = 40
            Width = 177
            Height = 22
            DataField = 'PARTY1'
            DataSource = dsMatter
            TabOrder = 0
          end
          object dbtbOtherParty2: TDBEdit
            Left = 104
            Top = 64
            Width = 177
            Height = 22
            DataField = 'PARTY2'
            DataSource = dsMatter
            TabOrder = 1
          end
          object dbtbOtherParty3: TDBEdit
            Left = 104
            Top = 88
            Width = 177
            Height = 22
            DataField = 'PARTY3'
            DataSource = dsMatter
            TabOrder = 2
          end
          object dbtbRefBy: TDBEdit
            Left = 104
            Top = 120
            Width = 177
            Height = 22
            DataField = 'REFERREDBY'
            DataSource = dsMatter
            TabOrder = 3
          end
          object dbtbBillTo: TDBEdit
            Left = 104
            Top = 152
            Width = 177
            Height = 22
            DataField = 'BILL_TO'
            DataSource = dsMatter
            TabOrder = 4
          end
          object dbtbContact: TDBEdit
            Left = 104
            Top = 8
            Width = 177
            Height = 22
            DataField = 'CONTACT'
            DataSource = dsMatter
            TabOrder = 5
          end
          object btnBillTo: TBitBtn
            Left = 288
            Top = 152
            Width = 25
            Height = 21
            TabOrder = 6
            OnClick = btnBillToClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
          end
          object btnRefBy: TBitBtn
            Left = 288
            Top = 120
            Width = 25
            Height = 21
            TabOrder = 7
            OnClick = btnRefByClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
          end
          object btnOParty3: TBitBtn
            Left = 288
            Top = 88
            Width = 25
            Height = 21
            TabOrder = 8
            OnClick = btnOParty3Click
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
          end
          object btnOParty2: TBitBtn
            Left = 288
            Top = 64
            Width = 25
            Height = 21
            TabOrder = 9
            OnClick = btnOParty2Click
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
          end
          object btnOParty1: TBitBtn
            Left = 288
            Top = 40
            Width = 25
            Height = 21
            TabOrder = 10
            OnClick = btnOParty1Click
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
          end
          object btnContact: TBitBtn
            Left = 288
            Top = 8
            Width = 25
            Height = 21
            TabOrder = 11
            OnClick = btnContactClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888800000888880000080F000888880F00080F000888880F
              0008000000080000000800F000000F00000800F000800F00000800F000800F00
              00088000000000000088880F00080F0008888800000800000888888000888000
              88888880F08880F0888888800088800088888888888888888888}
          end
        end
        object tabPartiesClient: TTabSheet
          Caption = 'Client'
          ImageIndex = 2
          object gbPhoneBook: TGroupBox
            Left = 8
            Top = -3
            Width = 511
            Height = 219
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = 'PhoneBook Details'
            TabOrder = 0
            object lblPhoneBookKey: TLabel
              Left = 8
              Top = 16
              Width = 49
              Height = 14
              Caption = 'Key Name'
            end
            object Label18: TLabel
              Left = 8
              Top = 40
              Width = 27
              Height = 14
              Caption = 'Name'
            end
            object Label19: TLabel
              Left = 8
              Top = 71
              Width = 19
              Height = 14
              Caption = 'Title'
            end
            object Label21: TLabel
              Left = 288
              Top = 16
              Width = 58
              Height = 14
              Caption = 'Work Phone'
            end
            object Label23: TLabel
              Left = 288
              Top = 160
              Width = 28
              Height = 14
              Caption = 'Notes'
            end
            object Label24: TLabel
              Left = 288
              Top = 136
              Width = 58
              Height = 14
              Caption = 'DX Location'
            end
            object Label25: TLabel
              Left = 288
              Top = 112
              Width = 14
              Height = 14
              Caption = 'DX'
            end
            object Label26: TLabel
              Left = 288
              Top = 64
              Width = 60
              Height = 14
              Caption = 'Home Phone'
            end
            object Label28: TLabel
              Left = 288
              Top = 40
              Width = 44
              Height = 14
              Caption = 'Facsimile'
            end
            object Label34: TLabel
              Left = 288
              Top = 88
              Width = 30
              Height = 14
              Caption = 'Mobile'
            end
            object dbtbKeyName: TDBEdit
              Left = 88
              Top = 16
              Width = 193
              Height = 22
              DataField = 'SEARCH'
              DataSource = dsPhonebook
              ReadOnly = True
              TabOrder = 0
            end
            object dbtbPBName: TDBEdit
              Left = 88
              Top = 40
              Width = 193
              Height = 22
              DataField = 'NAME'
              DataSource = dsPhonebook
              TabOrder = 1
            end
            object dbtbTitle: TDBEdit
              Left = 88
              Top = 64
              Width = 193
              Height = 22
              DataField = 'TITLE'
              DataSource = dsPhonebook
              TabOrder = 2
            end
            object dbtbWorkPhone: TDBEdit
              Left = 352
              Top = 16
              Width = 121
              Height = 22
              DataField = 'WORKPHONE'
              DataSource = dsPhonebook
              TabOrder = 4
            end
            object dbtbFax: TDBEdit
              Left = 352
              Top = 40
              Width = 121
              Height = 22
              DataField = 'FAX'
              DataSource = dsPhonebook
              TabOrder = 5
            end
            object dbtbHomePhone: TDBEdit
              Left = 352
              Top = 64
              Width = 121
              Height = 22
              DataField = 'HOMEPHONE'
              DataSource = dsPhonebook
              TabOrder = 6
            end
            object dbtbMobile: TDBEdit
              Left = 352
              Top = 88
              Width = 121
              Height = 22
              DataField = 'MOBILE'
              DataSource = dsPhonebook
              TabOrder = 7
            end
            object dbtbDX: TDBEdit
              Left = 352
              Top = 112
              Width = 121
              Height = 22
              DataField = 'DX'
              DataSource = dsPhonebook
              TabOrder = 8
            end
            object dbtbDXloc: TDBEdit
              Left = 352
              Top = 136
              Width = 121
              Height = 22
              DataField = 'DXLOC'
              DataSource = dsPhonebook
              TabOrder = 9
            end
            object dbmmoNotes: TDBMemo
              Left = 288
              Top = 176
              Width = 215
              Height = 37
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'NOTE'
              DataSource = dsPhonebook
              TabOrder = 10
            end
            object pagAddress: TPageControl
              Left = 5
              Top = 89
              Width = 281
              Height = 148
              ActivePage = tabStreetAddress
              Style = tsFlatButtons
              TabOrder = 3
              object tabStreetAddress: TTabSheet
                Caption = 'Street Address'
                object Label35: TLabel
                  Left = 0
                  Top = 0
                  Width = 42
                  Height = 14
                  Caption = 'Address'
                end
                object Label36: TLabel
                  Left = 0
                  Top = 48
                  Width = 35
                  Height = 14
                  Caption = 'Suburb'
                end
                object Label37: TLabel
                  Left = 0
                  Top = 70
                  Width = 25
                  Height = 14
                  Caption = 'State'
                end
                object Label38: TLabel
                  Left = 144
                  Top = 70
                  Width = 45
                  Height = 14
                  Caption = 'Postcode'
                end
                object Label39: TLabel
                  Left = 0
                  Top = 96
                  Width = 38
                  Height = 14
                  Caption = 'Country'
                end
                object dbmmoAddress: TDBMemo
                  Left = 80
                  Top = 0
                  Width = 193
                  Height = 41
                  DataField = 'ADDRESS'
                  DataSource = dsPhonebook
                  TabOrder = 0
                end
                object dbtbSuburb: TDBEdit
                  Left = 104
                  Top = 46
                  Width = 169
                  Height = 22
                  DataField = 'SUBURB'
                  DataSource = dsPhonebook
                  TabOrder = 2
                end
                object btnSuburbs: TBitBtn
                  Left = 80
                  Top = 46
                  Width = 24
                  Height = 21
                  TabOrder = 1
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                    8888888888888888888800000888880000080F000888880F00080F000888880F
                    0008000000080000000800F000000F00000800F000800F00000800F000800F00
                    00088000000000000088880F00080F0008888800000800000888888000888000
                    88888880F08880F0888888800088800088888888888888888888}
                end
                object dbtbPostcode: TDBEdit
                  Left = 192
                  Top = 70
                  Width = 81
                  Height = 22
                  DataField = 'POSTCODE'
                  DataSource = dsPhonebook
                  TabOrder = 4
                end
                object dbtbCountry: TDBEdit
                  Left = 80
                  Top = 93
                  Width = 193
                  Height = 22
                  DataField = 'COUNTRY'
                  DataSource = dsPhonebook
                  TabOrder = 5
                end
                object dbtbState: TDBEdit
                  Left = 80
                  Top = 70
                  Width = 57
                  Height = 22
                  CharCase = ecUpperCase
                  DataField = 'STATE'
                  DataSource = dsPhonebook
                  TabOrder = 3
                end
              end
              object tabPostalAddress: TTabSheet
                Caption = 'Postal Address'
                ImageIndex = 1
                object Label40: TLabel
                  Left = 0
                  Top = 0
                  Width = 42
                  Height = 14
                  Caption = 'Address'
                end
                object Label41: TLabel
                  Left = 0
                  Top = 48
                  Width = 35
                  Height = 14
                  Caption = 'Suburb'
                end
                object Label42: TLabel
                  Left = 0
                  Top = 70
                  Width = 25
                  Height = 14
                  Caption = 'State'
                end
                object Label43: TLabel
                  Left = 144
                  Top = 70
                  Width = 45
                  Height = 14
                  Caption = 'Postcode'
                end
                object Label44: TLabel
                  Left = 0
                  Top = 96
                  Width = 38
                  Height = 14
                  Caption = 'Country'
                end
                object dbmmoPostalAddress: TDBMemo
                  Left = 80
                  Top = 0
                  Width = 193
                  Height = 41
                  DataField = 'POSTALADDRESS'
                  DataSource = dsPhonebook
                  TabOrder = 0
                end
                object dbtbPostalSuburb: TDBEdit
                  Left = 104
                  Top = 46
                  Width = 169
                  Height = 22
                  DataField = 'POSTALSUBURB'
                  DataSource = dsPhonebook
                  TabOrder = 2
                end
                object btnPostalSuburbs: TBitBtn
                  Left = 80
                  Top = 46
                  Width = 24
                  Height = 21
                  TabOrder = 1
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                    8888888888888888888800000888880000080F000888880F00080F000888880F
                    0008000000080000000800F000000F00000800F000800F00000800F000800F00
                    00088000000000000088880F00080F0008888800000800000888888000888000
                    88888880F08880F0888888800088800088888888888888888888}
                end
                object dbtbPostalPostcode: TDBEdit
                  Left = 192
                  Top = 70
                  Width = 81
                  Height = 22
                  DataField = 'POSTALPOSTCODE'
                  DataSource = dsPhonebook
                  TabOrder = 4
                end
                object dbtbPostalCountry: TDBEdit
                  Left = 80
                  Top = 93
                  Width = 193
                  Height = 22
                  DataField = 'POSTALCOUNTRY'
                  DataSource = dsPhonebook
                  TabOrder = 5
                end
                object dbtbPostalState: TDBEdit
                  Left = 80
                  Top = 70
                  Width = 57
                  Height = 22
                  CharCase = ecUpperCase
                  DataField = 'POSTALSTATE'
                  DataSource = dsPhonebook
                  TabOrder = 3
                end
              end
            end
          end
          object btnClientEdit: TBitBtn
            Left = 525
            Top = 187
            Width = 75
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Edit'
            TabOrder = 1
            OnClick = btnClientEditClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000010000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555550
              00555555555FFF57775F55555500050BBB0555FFF57775777775500050EEE000
              777057775777777775F709990777777770F0777775FFFFFFF7F7000000000000
              F0F0777777777777F7F7011111111110F0F07F5555555557F7F7011111111110
              F0F07F5555555557F7F7011111111110F0F07F5555555557F7F7011111111110
              F0F07F5555555557F7F7011111111110F0F07F5555555557F7F7011111111110
              F0F07F5555555557F7F7011111111110F0F07FFFFFFFFFF7F7F7000000000000
              F005777777777777F77F0070707070700005777777777777777F707070707070
              55055757575757575F7555050505050500555575757575757755}
            NumGlyphs = 2
          end
        end
      end
    end
    object tabFields: TTabSheet
      Caption = 'Data'
      ImageIndex = 28
      object spltDataForm: TSplitter
        Left = 91
        Top = 0
        Width = 3
        Height = 244
        Cursor = crHSplit
      end
      object obarDataForms: TFEGXOutlookBar
        Left = 0
        Top = 0
        Width = 91
        Height = 244
        Align = alLeft
        AllowEditing = False
        ButtonFont.Charset = DEFAULT_CHARSET
        ButtonFont.Color = clWindowText
        ButtonFont.Height = -11
        ButtonFont.Name = 'Segoe UI'
        ButtonFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        SelectedFont.Charset = DEFAULT_CHARSET
        SelectedFont.Color = clWindow
        SelectedFont.Height = -11
        SelectedFont.Name = 'Segoe UI'
        SelectedFont.Style = []
        Images = ilstDataForms
        ParentColor = False
        ParentFont = False
        PopupMenu = popDataForms
        ScrollBtnStyle = sbSlider
        ScrollDelay = 0
        SmoothScrolling = True
        Spacing = 10
        TabStop = True
        TabOrder = 0
        TopSpacing = 4
        WordWrap = True
        OnChange = obarDataFormsChange
        SelectedButton = 0
        SelectedItem = -1
        List = (
          'DataForms'
          <
            item
              Caption = 'All Current Information'
              Enabled = True
              ImageIndex = 0
              Tag = 0
            end>)
      end
      object pnlDataForm: TPanel
        Left = 94
        Top = 0
        Width = 545
        Height = 244
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object tpDataFormHeader: TTitlePanel
          Left = 0
          Top = 0
          Width = 545
          Height = 31
          Align = alTop
          Border = True
          Caption = 'DataForm Fields'
          Color = clBtnShadow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          IconAlignment = iaLeft
          IconType = itCustom
          ParentFont = False
          RecordFont.Charset = DEFAULT_CHARSET
          RecordFont.Color = clWindowText
          RecordFont.Height = -11
          RecordFont.Name = 'Segoe UI'
          RecordFont.Style = []
        end
        object dbgrExtFields: TDBGrid
          Left = 0
          Top = 31
          Width = 545
          Height = 213
          Align = alClient
          DataSource = dsExtFields
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = popFields
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = dbgrExtFieldsDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CAPTION'
              Title.Caption = 'Description'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TEXTVALUE'
              Title.Caption = 'Value'
              Width = 457
              Visible = True
            end>
        end
        object btnDataForm: TBitBtn
          Left = 437
          Top = 4
          Width = 105
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&Run DataForm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnDataFormClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555500000000000000050777778887888705077777888788870507777777777
            7770507000007FFFFF705077777777777770507007777FFFFF70507777777777
            7770507000077FFFFF705077777777777770507000777FFFFF70507777777777
            7770504444444444444050844444444484805000000000000000}
        end
        object btnDataFormSearch: TBitBtn
          Left = 356
          Top = 4
          Width = 80
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&DataForms'
          TabOrder = 2
          OnClick = btnDataFormSearchClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
        end
      end
    end
    object tabInvoices: TTabSheet
      BorderWidth = 2
      Caption = 'Bills'
      ImageIndex = 3
      object dbgrInvoices: TDBGrid
        Left = 0
        Top = 0
        Width = 635
        Height = 209
        Align = alClient
        DataSource = dsInvoices
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrInvoicesDrawColumnCell
        OnDblClick = dbgrInvoicesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DISPATCHED'
            Title.Caption = 'Dispatched'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFNO'
            Title.Caption = 'Bill Number'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Owing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FEES'
            Title.Alignment = taRightJustify
            Title.Caption = 'Fees'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISB'
            Title.Alignment = taRightJustify
            Title.Caption = 'Disburse'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANTD'
            Title.Alignment = taRightJustify
            Title.Caption = 'Ant. Disb.'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUND'
            Title.Alignment = taRightJustify
            Title.Caption = 'Sundry'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAX'
            Title.Alignment = taRightJustify
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRUST'
            Title.Alignment = taRightJustify
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FEES_PAID'
            Title.Alignment = taRightJustify
            Title.Caption = 'Fees Paid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISB_PAID'
            Title.Alignment = taRightJustify
            Title.Caption = 'Disb. Paid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUND_PAID'
            Title.Alignment = taRightJustify
            Title.Caption = 'Sundry Paid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFNO'
            Title.Caption = 'Bill Number'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENERATED'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 209
        Width = 635
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnInvWord: TBitBtn
          Left = 0
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = '&Merge'
          TabOrder = 0
          OnClick = btnInvWordClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555500055555555555506600555555555550660E05555555550660EE00
            055555550660EE0EE0555550660EEE0EE0555550660E0EEEE055550660EE0EEE
            E055550000E00EE0E055550666060EE0E055555000000E00E055555550666060
            E055555555000000E05555555555506600555555555555000055}
        end
        object btnInvOpen: TBitBtn
          Left = 88
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = '&Open'
          TabOrder = 1
          OnClick = btnInvOpenClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
            8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
            0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
            0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
            05555555575FF777755555555500055555555555557775555555}
          NumGlyphs = 2
        end
        object btnAutoReceipt: TBitBtn
          Left = 173
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = '&Receipt'
          TabOrder = 2
          OnClick = btnAutoReceiptClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
            0000577777777777777708888888880888807FFFFFFFFF7F5557000000000008
            888077777777777F55570FFFFFFFFF0888807F5F5F5F5F7F55570F0F0F0F0F08
            88807F757575757F55570FFFFFFFFF0888807F5F5F5F5F7F55570F0F0F0F0F08
            88807F7575757575F5570FFFFFFFFFF0888075F5F5F5F5F75F5750F0F0F0F0FF
            088057575757575575F7550FFFFFFFFFF080557FFFFFFFFFF7F7550000000000
            0000557777777777777755088888888888805575555555555557550888888888
            8880557FFFFFFFFFFFF7550000000000000055777777777777775508888888FF
            99F05575FFFFFFFFFFF755500000000000055557777777777775}
          NumGlyphs = 2
        end
        object btnDeleteDraft: TBitBtn
          Left = 480
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Delete'
          TabOrder = 3
          OnClick = btnDeleteDraftClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333333333333333333333333333333333F3333333333333
            30F33333F333333337333330F333333333333337FF3333333F3333000F333333
            0F3333777F333333733333000F333330F33333777FF33337F333333000F33300
            F333333777FF337733333333000F300F33333333777FF77333333333300000F3
            33333333377777333333333333000F333333333333777FF333333333300000F3
            33333333377777F333333333000F30F33333333F7773373FF333330000F33300
            F333337777333377FF3330000F3333300F333777733333377FF3300F33333333
            00F3377333333333773333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object btnNewInvoice: TBitBtn
          Left = 560
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&New'
          TabOrder = 4
          OnClick = btnNewInvoiceClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
            8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
            0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
            0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
            05555555575FF777755555555500055555555555557775555555}
          NumGlyphs = 2
        end
      end
    end
    object tabReceipts: TTabSheet
      BorderWidth = 2
      Caption = 'Receipts'
      ImageIndex = 20
      object dbgrReceipts: TDBGrid
        Left = 0
        Top = 0
        Width = 635
        Height = 240
        Align = alClient
        DataSource = dsReceipts
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CREATED'
            Title.Caption = 'Date'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACCT'
            Title.Caption = 'Bank'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFNO'
            Title.Caption = 'Receipt'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCR'
            Title.Caption = 'Description'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Debit'
            Title.Alignment = taRightJustify
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Credit'
            Title.Alignment = taRightJustify
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TYPE'
            Title.Caption = 'Type'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Clearance'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NMEMO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Invoice'
            Visible = True
          end>
      end
    end
    object tabGraph: TTabSheet
      Caption = 'Graphs'
      ImageIndex = 24
      object dbchFeePie: TDBChart
        Left = 0
        Top = 0
        Width = 506
        Height = 320
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Fee Distribution')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        Legend.Alignment = laBottom
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 0
        object Series1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryFees
          SeriesColor = clRed
          Title = 'Fees'
          XLabelsSource = 'AUTHOR'
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1
          PieValues.Order = loNone
          PieValues.ValueSource = 'AMT'
        end
      end
      object dbchTime: TDBChart
        Left = 408
        Top = 0
        Width = 527
        Height = 320
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Time Distribution')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        Legend.Alignment = laBottom
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 1
        object PieSeries1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          DataSource = qryTime
          SeriesColor = clRed
          Title = 'Fees'
          XLabelsSource = 'AUTHOR'
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1
          PieValues.Order = loNone
          PieValues.ValueSource = 'AMT'
        end
      end
    end
    object tabDiary: TTabSheet
      BorderWidth = 2
      Caption = 'Diary'
      ImageIndex = 25
      object dbgrDiary: TDBGrid
        Left = 0
        Top = 0
        Width = 635
        Height = 209
        Align = alClient
        DataSource = dsDiary
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = dbgrDiaryDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'START_DT'
            Title.Caption = 'Date'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REMINDER_FOR'
            Title.Caption = 'For'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCR'
            Title.Caption = 'Description'
            Width = 299
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIORITY'
            Title.Caption = 'Priority'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 209
        Width = 635
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnNewDiary: TBitBtn
          Left = 558
          Top = 4
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&New'
          TabOrder = 0
          OnClick = btnNewDiaryClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
            F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
            F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
            F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
            F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
            F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
            F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
            333337FFFFFFFF77333330000000000333333777777777733333}
          NumGlyphs = 2
        end
      end
    end
    object tabDocs: TTabSheet
      Caption = 'Documents'
      ImageIndex = 26
      object Splitter1: TSplitter
        Left = 91
        Top = 0
        Width = 3
        Height = 213
        Cursor = crHSplit
      end
      object Panel4: TPanel
        Left = 0
        Top = 213
        Width = 639
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnDocDelete: TBitBtn
          Left = 482
          Top = 4
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Delete'
          TabOrder = 0
          OnClick = btnDocDeleteClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333333333333333333333333333333333F3333333333333
            30F33333F333333337333330F333333333333337FF3333333F3333000F333333
            0F3333777F333333733333000F333330F33333777FF33337F333333000F33300
            F333333777FF337733333333000F300F33333333777FF77333333333300000F3
            33333333377777333333333333000F333333333333777FF333333333300000F3
            33333333377777F333333333000F30F33333333F7773373FF333330000F33300
            F333337777333377FF3330000F3333300F333777733333377FF3300F33333333
            00F3377333333333773333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object btnPrecSearch: TBitBtn
          Left = 560
          Top = 4
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Search'
          TabOrder = 1
          OnClick = btnPrecSearchClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
        end
        object btnModifyCreateNew: TBitBtn
          Left = 2
          Top = 4
          Width = 88
          Height = 25
          Caption = '&Merge'
          TabOrder = 2
          OnClick = btnModifyCreateNewClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555500055555555555506600555555555550660E05555555550660EE00
            055555550660EE0EE0555550660EEE0EE0555550660E0EEEE055550660EE0EEE
            E055550000E00EE0E055550666060EE0E055555000000E00E055555550666060
            E055555555000000E05555555555506600555555555555000055}
        end
        object btnCreateNewDF: TBitBtn
          Left = 92
          Top = 4
          Width = 88
          Height = 25
          Caption = '&New + Data'
          TabOrder = 3
          OnClick = btnCreateNewDFClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFF202020
            4040404040404040404040404040404040404040404040404040404040404040
            40202020FFFFFFFFFFFF00000040404040404040404040404040404040404040
            4040404040404040404040404040808080404040FFFFFFFFFFFF000000EFEFEF
            DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F7F7F8080
            80404040FFFFFFFFFFFF000000EFEFEFDFDFDFDFDFDFDFDFDFCFCFCFDFDFDFDF
            DFDFDFDFDFDFDFDFDFDFDF7F7F7F808080404040FFFFFFFFFFFF000000EFEFEF
            EFEFEFEFEFEFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F7F7F8080
            80404040FFFFFFFFFFFF000000EFEFEFDFDFDFEFEFEFFFFFFFDFDFDFDFDFDFEF
            EFEFDFDFDFDFDFDFDFDFDF7F7F7F808080404040FFFFFFFFFFFF000000FFFFFF
            FFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F8080
            80404040FFFFFFFFFFFF000000EFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
            DFDFDFDFDFDFDFDFDFDFDF7F7F7F808080404040FFFFFFFFFFFF000000EFEFEF
            DFDFDFDFDFDFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F7F7F8080
            80404040FFFFFFFFFFFF000000EFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
            DFDFDFDFDFDFDFDFDFDFDF7F7F7F808080404040FFFFFFFFFFFF000000EFEFEF
            DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F7F7F8080
            80404040FFFFFFFFFFFF000000EFEFEFDFDFDFDFDFDFEFEFEFDFDFDFDFDFDFEF
            EFEFDFDFDFDFDFDFDFDFDF7F7F7F808080404040FFFFFFFFFFFF000000DFDFDF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F8080
            80404040FFFFFFFFFFFF000000BFBFBF80808080808080808080808080808080
            80808080808080808080807F7F7F808080404040FFFFFFFFFFFF000000DFDFDF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F4040
            40202020FFFFFFFFFFFF00000000000000000000000000000000000000000000
            0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btnDocAdd: TBitBtn
          Left = 402
          Top = 4
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Add'
          TabOrder = 4
          OnClick = btnDocAddClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
            0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
            0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
            8888880FFFFFF008888888000000008888888888888888888888}
        end
      end
      object obarDocuments: TFEGXOutlookBar
        Left = 0
        Top = 0
        Width = 91
        Height = 213
        Align = alLeft
        AllowEditing = False
        ButtonFont.Charset = DEFAULT_CHARSET
        ButtonFont.Color = clWindowText
        ButtonFont.Height = -11
        ButtonFont.Name = 'Segoe UI'
        ButtonFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        SelectedFont.Charset = DEFAULT_CHARSET
        SelectedFont.Color = clWindow
        SelectedFont.Height = -11
        SelectedFont.Name = 'Segoe UI'
        SelectedFont.Style = []
        Images = dmAxiom.ilPrecCategory
        ParentColor = False
        ParentFont = False
        PopupMenu = popPrecCategory
        ScrollBtnStyle = sbSlider
        ScrollDelay = 0
        SmoothScrolling = True
        Spacing = 10
        TabStop = True
        TabOrder = 0
        TopSpacing = 4
        WordWrap = True
        OnChange = obarDocumentsChange
        OnItemClick = obarDocumentsItemClick
        SelectedButton = 0
        SelectedItem = -1
        List = (
          'Precedents'
          <
            item
              Caption = 'All Categories'
              Enabled = True
              ImageIndex = 0
              Tag = 0
            end>
          'Generated'
          <
            item
              Caption = 'All Categories'
              Enabled = True
              ImageIndex = 0
              Tag = 0
            end>)
      end
      object Panel7: TPanel
        Left = 94
        Top = 0
        Width = 545
        Height = 213
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object pageDocuments: TPageControl
          Left = 0
          Top = 0
          Width = 545
          Height = 213
          ActivePage = tabPrecedents
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
          object tabPrecedents: TTabSheet
            Caption = 'tabPrecedents'
            ImageIndex = 1
            object tpPrecedents: TTitlePanel
              Left = 0
              Top = 0
              Width = 537
              Height = 27
              Align = alTop
              Border = True
              Caption = 'All Categories'
              Color = clBtnShadow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              IconAlignment = iaRight
              IconType = itCustom
              ParentFont = False
              RecordFont.Charset = DEFAULT_CHARSET
              RecordFont.Color = clWindowText
              RecordFont.Height = -11
              RecordFont.Name = 'Segoe UI'
              RecordFont.Style = []
            end
            object dbgTemplates: TDBGrid
              Left = 0
              Top = 27
              Width = 537
              Height = 155
              Align = alClient
              DataSource = dsPrecendents
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = popPrecedents
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              OnDblClick = dbgTemplatesDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FileName'
                  Title.Caption = 'File Name'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCR'
                  Width = 448
                  Visible = True
                end>
            end
            object btnCategories: TBitBtn
              Left = 456
              Top = 1
              Width = 80
              Height = 25
              Anchors = [akTop, akRight]
              Caption = '&Categories'
              TabOrder = 1
              OnClick = btnCategoriesClick
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888888800000888880000080F000888880F00080F000888880F
                0008000000080000000800F000000F00000800F000800F00000800F000800F00
                00088000000000000088880F00080F0008888800000800000888888000888000
                88888880F08880F0888888800088800088888888888888888888}
            end
          end
          object tabGenerated: TTabSheet
            Caption = 'tabGenerated'
            object tpGenerated: TTitlePanel
              Left = 0
              Top = 0
              Width = 565
              Height = 27
              Align = alTop
              Border = True
              Caption = 'Generated'
              Color = clBtnShadow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              IconAlignment = iaRight
              IconType = itCustom
              ParentFont = False
              RecordFont.Charset = DEFAULT_CHARSET
              RecordFont.Color = clWindowText
              RecordFont.Height = -11
              RecordFont.Name = 'Segoe UI'
              RecordFont.Style = []
            end
            object dbgrDocs: TDBGrid
              Left = 0
              Top = 27
              Width = 565
              Height = 190
              Align = alClient
              DataSource = dsDocs
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              OnDblClick = dbgrDocsDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DOC_NAME'
                  Title.Caption = 'Document'
                  Width = 169
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'D_CREATE'
                  Title.Caption = 'Created'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AUTH1'
                  Title.Caption = 'By'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCR'
                  Title.Caption = 'Description'
                  Width = 222
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'D_MODIF'
                  Title.Caption = 'Modified'
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AUTH2'
                  Title.Caption = 'By'
                  Width = 24
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object tabWorkflow: TTabSheet
      Caption = 'Workflow'
      ImageIndex = 29
      object lblWorkFlowType: TLabel
        Left = 0
        Top = 0
        Width = 5
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgrWorkflow: TDBGrid
        Left = 0
        Top = 16
        Width = 609
        Height = 190
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsTask
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODE'
            Title.Caption = 'Task Code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DUE'
            Title.Caption = 'Due'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTHOR'
            Title.Caption = 'Author'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STARTED'
            Title.Caption = 'Started'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCR'
            Title.Caption = 'Description'
            Width = 600
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 213
        Width = 639
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnTaskStart: TBitBtn
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = '&Start'
          Enabled = False
          TabOrder = 0
          OnClick = btnTaskStartClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000055
            5555555550FAAF055555555008AAAA800555550008AAAA800055500008FAAF80
            00050000088888800000555008F33F8005555500083333800055500008333380
            0005000008F33F8000005550088888800555550008F11F800055500008111180
            00050000081111800000555508F11F8055555555500000055555}
        end
        object btnTaskSkip: TBitBtn
          Left = 88
          Top = 3
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'S&kip'
          Enabled = False
          TabOrder = 1
          OnClick = btnTaskSkipClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888078888888888888708888800000888808888888000088880888888880
            0088880888888808008888708888008880888887000088888888888888888888
            8888888888888888888888888888888888888888888888888888}
        end
        object btnTaskEnd: TBitBtn
          Left = 562
          Top = 3
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Finish'
          Enabled = False
          TabOrder = 2
          OnClick = btnTaskEndClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000055
            5555555550F22F05555555500822228005555500082222800055500008F22F80
            00050000088888800000555008F33F8005555500083333800055500008333380
            0005000008F33F8000005550088888800555550008F99F800055500008999980
            00050000089999800000555508F99F8055555555500000055555}
        end
      end
    end
  end
  object dbtbOPRef: TDBEdit
    Left = 256
    Top = 40
    Width = 97
    Height = 21
    DataField = 'OPREF'
    DataSource = dsMatter
    TabOrder = 3
  end
  object qryFees: TOraQuery
    SQL.Strings = (
      
        'SELECT AUTHOR, SUM(AMOUNT) AS AMT FROM FEE WHERE NMATTER = :P_Ma' +
        'tter GROUP BY AUTHOR')
    Left = 760
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_Matter'
        ParamType = ptInput
      end>
  end
  object ilstToolbar: TImageList
    Left = 824
    Top = 48
    Bitmap = {
      494C010123002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
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
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000000FFFF007B7B7B0000FF
      FF00840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000840000008400000084000000840000008400000084000000
      0000000084000000840000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000007B7B7B0000FFFF0000FFFF00FFFFFF0000FF
      FF0000FFFF007B7B7B0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C60000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000840000008400000000FFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF0000FFFF0084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000840000008400000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000008400000000FFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000FFFF0000FFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000840000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      000000000000840000007B7B7B00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF007B7B7B00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C60000FF
      FF0000FFFF0000FFFF00FFFFFF00848484000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000008400000000FFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000FFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C60000FF
      FF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF000000FFFF000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF0000FFFF0084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C60000FF
      FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF0084848400000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
      FF0000FFFF007B7B7B0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6C60000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000FFFF007B7B7B0000FF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000840000008400
      00008400000000000000840000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000C6C6C60000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00FFFF0000FFFF00000000000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6C60000FF
      FF0000FFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000C6C6
      C60000FFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400C6C6C600C6C6C600C6C6C60084848400C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400C6C6C600C6C6C600C6C6C60084848400C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000848484000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C60000008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000084000000FF0000008400FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000848484000000
      00000000000084848400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600000084000000FF000000FF000000FF0000008400C6C6C600C6C6C600C6C6
      C600FFFFFF000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF000000FF000000FF000000840000000000FFFF
      FF00FFFFFF000000000084848400000000000000000000000000848484000000
      00000000000000000000000000008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000FF000000FF00000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF000000FF0000008400C6C6
      C600FFFFFF000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000FF0000000000000000000000FF000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      8400FFFFFF000000000084848400000000000000000000000000848484000000
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000FF000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF000000
      FF00FFFFFF000000000084848400000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840000000000000000000000000000000000FF00
      0000000000000000000000000000FF0000000000000000FFFF00000000000000
      0000FF000000FF000000FF00000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      FF00FFFFFF000000000084848400000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000000000000000000000000000000000000FF00
      00000000000000000000FF00000000000000FF0000000000000000000000FF00
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF000000000084848400000000000000000000000000C6C6C6008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000C6C6C60084000000C6C6C600000000000000000000000000000000000000
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      0000FF000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
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
      00000000000000000000FF000000FF0000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF0000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF0000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF00000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF0000000000000000FF000000FF0000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF00FFFFFF007B7B
      7B000000FF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000FF000000FF000000FF000000FF0000000000000000
      FF000000FF000000FF000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF00FFFFFF007B7B7B000000FF00FFFF
      FF007B7B7B000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF00FF00FF00000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00FF00FF000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000000000007B7B7B000000
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000007B7B
      7B00000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000007B7B
      7B0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000000000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C6000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD00000000000000000000000000FFFFFF000000
      000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BDBDBD0000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00C6C6C60000FFFF00C6C6C6000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FFFF00000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFF000000000000FFFF000000000000FFFF0000000000007B7B
      7B00000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FF00000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF000000
      FF000000FF000000FF000000FF0000FFFF00FFFFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF0000FFFF000000
      FF000000FF000000FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF000000
      FF000000FF000000FF000000FF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF0000000000FFFFFF0000FFFF000000
      FF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF007B7B7B00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF00000000000000FF00C6C6
      C60000FFFF00C6C6C60000FFFF0000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF007B7B7B0000FFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000000000FF000000FF000000FF000000FF0000FF
      FF00C6C6C60000FFFF00C6C6C6000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00FFFFFF007B7B7B00FFFFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000084848400000000000000
      0000000000000000000084848400C6C6C6000000FF000000FF000000FF00C6C6
      C60000FFFF00C6C6C60000FFFF0000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000C6C6C6000000FF000000FF000000FF000000FF0000FF
      FF00C6C6C60000FFFF00C6C6C60000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000FF0000000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000FF000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      00000000000000000000C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C6000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000FF0000000000000000FFFF00000000000000
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF00000000000000000000000000000000000000000000000000FF00
      00000000000000000000FF00000000000000FF0000000000000000000000FF00
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60000FFFF00C6C6C60000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF0000000000000000000000000000000000
      0000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840084848400848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000008484840000000000848484008484840084848400848484000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000084848400FFFFFF00000000008484840084848400848484000000
      000084848400848484000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000084848400848484008484840084848400000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFFFF00FFFFFF0000000000848484000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00000000007B7B7B000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000007B7B7B000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8400000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000000000000
      8400000084000000000000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF008400000084000000FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000FF00000000000000000000000000007B7B7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000840000008400000000000000000000000000FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000008400000000000000000000000000FFFFFF00FFFF
      0000FFFF0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFFFF00FF000000FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF007B7B7B0000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FF000000FFFF0000FFFFFF0084000000FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FF000000FF000000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF007B7B7B0000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E007FFFFFF070000C003FE3FFE030000
      8001F81FFC0100008000F40FF80000008000E007F800000000008003F8000000
      C000400178000000C00000002000000000000000000100000000800100000000
      0000C003000400000000E00F000F00000000F07F000700000000F8FF000F0000
      0000FFFF01FF00000000FFFFE3FF0000FFFFE00FC007C0018000F00FC0078001
      8000F00FC00780018000F80FC00780018000F007C00780018000F007C0078001
      8000F007C00780018000F00FC00780018000F01FC00780018000F819C0078001
      8000FE16C00780018000F00EC00780018000EE11C00780018000ED2FC0078001
      8000F2F7C00780018000FEFBC0078003FC1FFFFFFFFFFFFFF0070000FC7F3FFB
      E0030000F83F07C1C0010000F81F0303C0010000F007000380000000F0030003
      80000000E003000780000000E003000780000000C003000F80000000C003000F
      C0010000C0030007C0010000E0030003E0030000F8030003F0070000FC030003
      FC1F0000FF830001FFFF0000FFC300018000FF00FFFBFFE30000FF00FFF1FC41
      0000FF00FFE088000000FE00FFC100000000FE00F80300000000FE00F0070000
      0000C000E00F000000008001E00F000080008003E08F0000C0008007E14F0000
      C000800FE28F0000C000800FF01F0000C000800FF83F0001C000801FFFFF0001
      C000C0FFFFFF000DE001C0FFFFFFD553801FFEFFE00FFF00001FFC7FF00FFF00
      001FFC7FF00FFF00001FD837F80FFE00001FE00FF007FE00001FE00FF007FE00
      0000C007F007FF000000C007F00FFF8080000001F01F00008000C007F8190000
      F800C007FE160000F800E00FF00E0000F800E00FEE110000F801D837ED2F0000
      FC0FFEFFF2F70000FE1FFEFFFEFB0000FFFFFFFFFFFFFFFFC007FE7FFFFFFFFF
      BFEBFC3FC007FFFF0005FC3FC007FFFF7E31FE7FC007C00F7E35FC3FC0078007
      0006FC3FC00780037FEAFC3FC00780018014FC1FC0078001C00AF20FC007800F
      E001E107C007800FE007E187C007801FF007E007C00FC0FFF003F00FC01FC0FF
      F803F81FC03FFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFFFEFFFFE7DFFFFFFFFCFFF
      FE3D07C1FFFF8007FE1D07C1FC3F0003FE0D07C180018001FE0501018001CFF1
      FE0100018001EFF1FE0502018201FFF1FE0D020181018FFFFE1D800380018FF7
      FE3DC10780018FF3FE7DC10780018001FEFDE38FC813C000FFFFE38FFC3FE001
      FFFFE38FFFFFFFF3FFFFFFFFFFFFFFF78003BF7FFF7FFEFF8003BE7FFE7FFE7F
      8003BC7FFC7FFE3F8003B87FF87FFE1F8003B07FF07FFE0F8003A07FE07FFE07
      8003807FC07FFE038003A07FE07FFE078003B07FF07FFE0F8003B87FF87FFE1F
      8003BC7FFC7FFE3F8003BE7FFE7FFE7F8003BF7FFF7FFEFF8007FFFFFFFFFFFF
      800FFFFFFFFFFFFF801FFFFFFFFFFFFF80038003FF00FFFF80038003FF00E01F
      80038003FF00C00F80038003FE00800780038003FE00000380038003FE000001
      80038003FF00800080038003FF80C000800380030000E000800380030000F000
      800380030000F801800380030000FC01800380030000FE01800780070000FF1F
      800F800F0000FFFF801F801F0000FFFF00000000000000000000000000000000
      000000000000}
  end
  object dsMatter: TOraDataSource
    DataSet = qryMatter
    Left = 792
    Top = 80
  end
  object qryTime: TOraQuery
    SQL.Strings = (
      
        'SELECT AUTHOR, SUM(UNITS) AS AMT FROM FEE WHERE NMATTER = :P_Mat' +
        'ter GROUP BY AUTHOR')
    Left = 760
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_Matter'
        ParamType = ptInput
      end>
  end
  object qryDiary: TOraQuery
    SQL.Strings = (
      
        'SELECT REMINDER_FOR, START_DT, NDIARY, DESCR,  PRIORITY FROM DIA' +
        'RY WHERE FILEID = :P_FileID ORDER BY START_DT')
    OnCalcFields = qryDiaryCalcFields
    Left = 728
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FileID'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object dsDiary: TOraDataSource
    DataSet = qryDiary
    Left = 696
    Top = 112
  end
  object qryDocs: TSmartQuery
    CheckMode = cmNone
    DMLRefresh = True
    SQL.Strings = (
      'SELECT D.*, D.ROWID '
      'FROM DOC D '
      'WHERE D.FILEID = :P_FileID'
      'ORDER BY D.D_MODIF DESC')
    LockMode = lmLockImmediate
    AfterScroll = qryDocsAfterScroll
    Left = 728
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'P_FileID'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object dsDocs: TOraDataSource
    DataSet = qryDocs
    Left = 696
    Top = 144
  end
  object qryMatter: TSmartQuery
    CheckMode = cmNone
    SQL.Strings = (
      'SELECT M.*, M.ROWID FROM MATTER M WHERE M.FILEID = :P_File')
    CachedUpdates = True
    LockMode = lmLockImmediate
    BeforeClose = qryMatterBeforeClose
    BeforeScroll = qryMatterBeforeScroll
    AfterScroll = qryMatterAfterScroll
    OnCalcFields = qryMatterCalcFields
    Left = 824
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'P_File'
        ParamType = ptInput
        Size = 2000
      end>
    object qryMatterRateDescr: TStringField
      FieldKind = fkCalculated
      FieldName = 'RateDescr'
      Size = 12
      Calculated = True
    end
    object qryMatterTaxWip: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TaxWip'
      currency = True
      Calculated = True
    end
    object qryMatterTaxDisb: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TaxDisb'
      currency = True
      Calculated = True
    end
    object qryMatterTaxSund: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TaxSund'
      currency = True
      Calculated = True
    end
    object qryMatterTaxTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TaxTotal'
      currency = True
      Calculated = True
    end
    object qryMatterTaxAntD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TaxAntD'
      Calculated = True
    end
    object qryMatterBRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 3
    end
    object qryMatterBranchDescr: TStringField
      FieldKind = fkCalculated
      FieldName = 'BranchDescr'
      Calculated = True
    end
    object qryMatterNMATTER: TFloatField
      FieldName = 'NMATTER'
      Required = True
    end
    object qryMatterOPENED: TDateTimeField
      FieldName = 'OPENED'
    end
    object qryMatterPARTNER: TStringField
      FieldName = 'PARTNER'
      Size = 3
    end
    object qryMatterAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Size = 3
    end
    object qryMatterTYPE: TStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object qryMatterRATE: TFloatField
      FieldName = 'RATE'
    end
    object qryMatterTITLE: TStringField
      FieldName = 'TITLE'
      Required = True
      Size = 40
    end
    object qryMatterFILEID: TStringField
      FieldName = 'FILEID'
      Size = 12
    end
    object qryMatterSTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object qryMatterNARCHIVE: TIntegerField
      FieldName = 'NARCHIVE'
    end
    object qryMatterARCHIVED: TDateTimeField
      FieldName = 'ARCHIVED'
    end
    object qryMatterACCT: TStringField
      FieldName = 'ACCT'
      Size = 8
    end
    object qryMatterTRUSTAUTH: TStringField
      FieldName = 'TRUSTAUTH'
      Size = 1
    end
    object qryMatterPARTY1: TStringField
      FieldName = 'PARTY1'
      Size = 85
    end
    object qryMatterPARTY2: TStringField
      FieldName = 'PARTY2'
      Size = 35
    end
    object qryMatterPARTY3: TStringField
      FieldName = 'PARTY3'
      Size = 35
    end
    object qryMatterSHORTDESCR: TStringField
      FieldName = 'SHORTDESCR'
      Size = 40
    end
    object qryMatterLONGDESCR: TStringField
      FieldName = 'LONGDESCR'
      Size = 400
    end
    object qryMatterOFFICE: TStringField
      FieldName = 'OFFICE'
      Size = 2
    end
    object qryMatterTRUST_BAL: TFloatField
      FieldName = 'TRUST_BAL'
    end
    object qryMatterCL_TRUST_BAL: TFloatField
      FieldName = 'CL_TRUST_BAL'
    end
    object qryMatterNCLIENT: TIntegerField
      FieldName = 'NCLIENT'
    end
    object qryMatterBILL_TO: TStringField
      FieldName = 'BILL_TO'
      Size = 35
    end
    object qryMatterBUDGET_FEES: TFloatField
      FieldName = 'BUDGET_FEES'
    end
    object qryMatterBUDGET_DISB: TFloatField
      FieldName = 'BUDGET_DISB'
    end
    object qryMatterBUDGET_TOTAL: TFloatField
      FieldName = 'BUDGET_TOTAL'
    end
    object qryMatterLASTTRANS: TDateTimeField
      FieldName = 'LASTTRANS'
    end
    object qryMatterLASTTRUST: TDateTimeField
      FieldName = 'LASTTRUST'
    end
    object qryMatterREFERREDBY: TStringField
      FieldName = 'REFERREDBY'
      Size = 35
    end
    object qryMatterUNBILL_DISB: TFloatField
      FieldName = 'UNBILL_DISB'
    end
    object qryMatterDEBTORS: TFloatField
      FieldName = 'DEBTORS'
    end
    object qryMatterUNBILL_FEES: TFloatField
      FieldName = 'UNBILL_FEES'
    end
    object qryMatterBILL_FEES: TFloatField
      FieldName = 'BILL_FEES'
    end
    object qryMatterUNBILL_SUND: TFloatField
      FieldName = 'UNBILL_SUND'
    end
    object qryMatterBILL_DISB: TFloatField
      FieldName = 'BILL_DISB'
    end
    object qryMatterRECVD_FEES: TFloatField
      FieldName = 'RECVD_FEES'
    end
    object qryMatterBILL_SUND: TFloatField
      FieldName = 'BILL_SUND'
    end
    object qryMatterBILL_ANTD: TFloatField
      FieldName = 'BILL_ANTD'
    end
    object qryMatterTRUST_TRANS: TFloatField
      FieldName = 'TRUST_TRANS'
    end
    object qryMatterSPEC_PURPOSE: TFloatField
      FieldName = 'SPEC_PURPOSE'
    end
    object qryMatterNOTES: TStringField
      FieldName = 'NOTES'
      Size = 400
    end
    object qryMatterUNBILL_ANTD: TFloatField
      FieldName = 'UNBILL_ANTD'
    end
    object qryMatterLITIGATION: TStringField
      FieldName = 'LITIGATION'
      Size = 1
    end
    object qryMatterSPECULATION: TStringField
      FieldName = 'SPECULATION'
      Size = 1
    end
    object qryMatterAGENCY: TStringField
      FieldName = 'AGENCY'
      Size = 1
    end
    object qryMatterGRATIS: TStringField
      FieldName = 'GRATIS'
      Size = 1
    end
    object qryMatterBILLING_PLAN: TStringField
      FieldName = 'BILLING_PLAN'
      Size = 3
    end
    object qryMatterCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 85
    end
    object qryMatterPREV_NCMAUDIT: TIntegerField
      FieldName = 'PREV_NCMAUDIT'
    end
    object qryMatterPREV_NTRAUDIT: TIntegerField
      FieldName = 'PREV_NTRAUDIT'
    end
    object qryMatterTASK: TStringField
      FieldName = 'TASK'
      Size = 11
    end
    object qryMatterEXPECTED_VALUE: TFloatField
      FieldName = 'EXPECTED_VALUE'
    end
    object qryMatterEXP_COMPLETION: TDateTimeField
      FieldName = 'EXP_COMPLETION'
    end
    object qryMatterOPREF: TStringField
      FieldName = 'OPREF'
    end
    object qryMatterTASK_DATE: TDateTimeField
      FieldName = 'TASK_DATE'
    end
    object qryMatterUNREC_DISB: TFloatField
      FieldName = 'UNREC_DISB'
    end
    object qryMatterREFRESH: TIntegerField
      FieldName = 'REFRESH'
    end
    object qryMatterPERIOD0: TFloatField
      FieldName = 'PERIOD0'
    end
    object qryMatterPERIOD1: TFloatField
      FieldName = 'PERIOD1'
    end
    object qryMatterPERIOD2: TFloatField
      FieldName = 'PERIOD2'
    end
    object qryMatterPERIOD3: TFloatField
      FieldName = 'PERIOD3'
    end
    object qryMatterCONTROLLER: TStringField
      FieldName = 'CONTROLLER'
      Size = 3
    end
    object qryMatterFEECODE: TStringField
      FieldName = 'FEECODE'
      Size = 5
    end
    object qryMatterCOMPLETED: TDateTimeField
      FieldName = 'COMPLETED'
    end
    object qryMatterWORKFLOW: TStringField
      FieldName = 'WORKFLOW'
      Size = 11
    end
    object qryMatterLABELCODE: TStringField
      FieldName = 'LABELCODE'
    end
    object qryMatterMODBY: TStringField
      FieldName = 'MODBY'
      Size = 3
    end
    object qryMatterARCHVLOCN: TStringField
      FieldName = 'ARCHVLOCN'
      Size = 40
    end
    object qryMatterCLIENTID: TStringField
      FieldName = 'CLIENTID'
      Size = 35
    end
    object qryMatterNNAME: TFloatField
      FieldName = 'NNAME'
    end
    object qryMatterINTTRIGDATE: TDateTimeField
      FieldName = 'INTTRIGDATE'
    end
    object qryMatterTCCLRDATE: TDateTimeField
      FieldName = 'TCCLRDATE'
    end
    object qryMatterLASTBILLDATE: TDateTimeField
      FieldName = 'LASTBILLDATE'
    end
    object qryMatterLASTLETTER: TDateTimeField
      FieldName = 'LASTLETTER'
    end
    object qryMatterBFPRGDATE: TDateTimeField
      FieldName = 'BFPRGDATE'
    end
    object qryMatterARCHIVEREVIEW: TDateTimeField
      FieldName = 'ARCHIVEREVIEW'
    end
    object qryMatterARCHIVEDEST: TDateTimeField
      FieldName = 'ARCHIVEDEST'
    end
    object qryMatterANTDISBS: TFloatField
      FieldName = 'ANTDISBS'
    end
    object qryMatterANTDRS: TFloatField
      FieldName = 'ANTDRS'
    end
    object qryMatterFEESDRS: TFloatField
      FieldName = 'FEESDRS'
    end
    object qryMatterUNBILL_UNITS: TFloatField
      FieldName = 'UNBILL_UNITS'
    end
    object qryMatterAMT_LAST_REC: TFloatField
      FieldName = 'AMT_LAST_REC'
    end
    object qryMatterDISBSWOFF: TFloatField
      FieldName = 'DISBSWOFF'
    end
    object qryMatterDRSWOFF: TFloatField
      FieldName = 'DRSWOFF'
    end
    object qryMatterWIPWOFF: TFloatField
      FieldName = 'WIPWOFF'
    end
    object qryMatterARCHIVENUM: TFloatField
      FieldName = 'ARCHIVENUM'
    end
    object qryMatterGSTEXEMPT: TIntegerField
      FieldName = 'GSTEXEMPT'
    end
    object qryMatterCLOSED: TIntegerField
      FieldName = 'CLOSED'
    end
    object qryMatterTRSTMNT: TIntegerField
      FieldName = 'TRSTMNT'
    end
    object qryMatterTRAUTH: TIntegerField
      FieldName = 'TRAUTH'
    end
    object qryMatterDISBSLIM: TFloatField
      FieldName = 'DISBSLIM'
    end
    object qryMatterROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object mnuMain: TMainMenu
    Images = ilstToolbar
    Left = 760
    Top = 48
    object mnuFile: TMenuItem
      Caption = '&File'
      object mnuFileNew: TMenuItem
        Caption = '&New'
        ImageIndex = 14
        object mnuFileNewFee: TMenuItem
          Caption = '&Fee'
          ImageIndex = 0
          OnClick = mnuFileNewFeeClick
        end
        object mnuFileNewSundry: TMenuItem
          Caption = '&Sundry'
          ImageIndex = 1
          OnClick = mnuFileNewSundryClick
        end
        object mnuFileNewCheque: TMenuItem
          Caption = '&Cheque'
          ImageIndex = 19
        end
        object mnuFileNewCheqReq: TMenuItem
          Caption = 'Che&que Request'
          ImageIndex = 2
          OnClick = mnuFileNewCheqReqClick
        end
        object mnuFileNewReceipt: TMenuItem
          Caption = '&Receipt'
          ImageIndex = 20
        end
        object mnuFileNewInvoice: TMenuItem
          Caption = '&Invoice'
          ImageIndex = 3
          OnClick = mnuFileNewInvoiceClick
        end
        object mnuFileNewTask: TMenuItem
          Caption = '&Task'
          ImageIndex = 18
        end
        object mnuFileNewDiary: TMenuItem
          Caption = '&Diary'
          ImageIndex = 4
          OnClick = mnuFileNewDiaryClick
        end
      end
      object mnuFileReopen: TMenuItem
        AutoHotkeys = maManual
        Caption = '&Reopen'
        Enabled = False
        ImageIndex = 15
      end
      object mnuFileAssoc: TMenuItem
        Caption = '&Associations'
        ImageIndex = 16
        object mnuFileAssocEdit: TMenuItem
          Caption = '&Associate'
          ImageIndex = 16
          OnClick = mnuFileAssocEditClick
        end
        object mnuFileAssocLine1: TMenuItem
          Caption = '-'
          Visible = False
        end
      end
      object mnuFileSnapshot: TMenuItem
        Caption = '&Snapshot'
        ImageIndex = 10
        OnClick = mnuFileSnapshotClick
      end
      object mnuFileAutocost: TMenuItem
        Caption = 'A&utocost'
        ImageIndex = 34
        OnClick = mnuFileAutocostClick
      end
      object mnuFileLine1: TMenuItem
        Caption = '-'
      end
      object mnuFilePrint: TMenuItem
        Caption = '&Print'
        object mnuFilePrintLabel: TMenuItem
          Caption = '&Label'
          OnClick = mnuFilePrintLabelClick
        end
        object mnuFilePrintDetails: TMenuItem
          Caption = '&Details'
          OnClick = mnuFilePrintDetailsClick
        end
      end
      object mnuFileLedgers: TMenuItem
        Caption = '&Ledger'
        object mnuFileLedgerFees: TMenuItem
          Caption = '&Fees'
          OnClick = mnuFileLedgerFeesClick
        end
        object mnuFileLedgerSundry: TMenuItem
          Caption = '&Sundries'
          OnClick = mnuFileLedgerSundryClick
        end
        object mnuFileLedgerDisb: TMenuItem
          Caption = '&Disbursements'
          OnClick = mnuFileLedgerDisbClick
        end
        object mnuFileLedgerDebtors: TMenuItem
          Caption = 'De&btors'
          OnClick = mnuFileLedgerDebtorsClick
        end
        object mnuFileLedgerTrust: TMenuItem
          Caption = '&Trust'
          OnClick = mnuFileLedgerTrustClick
        end
        object mnuFileLedgerCombo: TMenuItem
          Caption = '&Combo'
          OnClick = mnuFileLedgerComboClick
        end
      end
      object mnuFileLine2: TMenuItem
        Caption = '-'
      end
      object mnuFileExit: TMenuItem
        Caption = 'E&xit'
        OnClick = mnuFileExitClick
      end
    end
    object mnuSearch: TMenuItem
      Caption = '&Search'
      object mnuSearchFind: TMenuItem
        Caption = '&Find...'
        ImageIndex = 9
        OnClick = mnuSearchFindClick
      end
      object mnuSearchLine1: TMenuItem
        Caption = '-'
      end
      object mnuSearchFirst: TMenuItem
        Caption = 'F&irst'
        ImageIndex = 5
        OnClick = mnuSearchFirstClick
      end
      object mnuSearchPrev: TMenuItem
        Caption = '&Previous'
        ImageIndex = 6
        OnClick = mnuSearchPrevClick
      end
      object mnuSearchNext: TMenuItem
        Caption = '&Next'
        ImageIndex = 7
        OnClick = mnuSearchNextClick
      end
      object mnuSearchLast: TMenuItem
        Caption = '&Last'
        ImageIndex = 8
        OnClick = mnuSearchLastClick
      end
    end
    object mnuHelp: TMenuItem
      Caption = '&Help'
      object mnuHelpContents: TMenuItem
        Caption = '&Contents'
        ImageIndex = 13
      end
      object mnuHelpSearch: TMenuItem
        Caption = '&Search'
      end
    end
  end
  object dsExtFields: TOraDataSource
    DataSet = qryExtFields
    Left = 696
    Top = 80
  end
  object qryInvoices: TOraQuery
    SQL.Strings = (
      
        'SELECT DISPATCHED, GENERATED, NMEMO, REFNO, FEES, DISB, ANTD, SU' +
        'ND, TAX, TRUST, FEES_PAID, DISB_PAID, ANTD_PAID, SUND_PAID, TAX_' +
        'PAID, RV_NMEMO, RV_TYPE'
      'FROM NMEMO '
      'WHERE NMATTER  = :P_Matter '
      'ORDER BY NMEMO DESC')
    AfterScroll = qryInvoicesAfterScroll
    OnCalcFields = qryInvoicesCalcFields
    Left = 728
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_Matter'
        ParamType = ptInput
      end>
    object qryInvoicesTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object qryInvoicesOwing: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Owing'
      Calculated = True
    end
    object qryInvoicesDISPATCHED: TDateTimeField
      FieldName = 'DISPATCHED'
    end
    object qryInvoicesGENERATED: TDateTimeField
      FieldName = 'GENERATED'
    end
    object qryInvoicesNMEMO: TFloatField
      FieldName = 'NMEMO'
      Required = True
    end
    object qryInvoicesREFNO: TStringField
      FieldName = 'REFNO'
    end
    object qryInvoicesFEES: TFloatField
      FieldName = 'FEES'
    end
    object qryInvoicesDISB: TFloatField
      FieldName = 'DISB'
    end
    object qryInvoicesANTD: TFloatField
      FieldName = 'ANTD'
    end
    object qryInvoicesSUND: TFloatField
      FieldName = 'SUND'
    end
    object qryInvoicesTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryInvoicesTRUST: TFloatField
      FieldName = 'TRUST'
    end
    object qryInvoicesFEES_PAID: TFloatField
      FieldName = 'FEES_PAID'
    end
    object qryInvoicesDISB_PAID: TFloatField
      FieldName = 'DISB_PAID'
    end
    object qryInvoicesANTD_PAID: TFloatField
      FieldName = 'ANTD_PAID'
    end
    object qryInvoicesSUND_PAID: TFloatField
      FieldName = 'SUND_PAID'
    end
    object qryInvoicesTAX_PAID: TFloatField
      FieldName = 'TAX_PAID'
    end
    object qryInvoicesRV_NMEMO: TIntegerField
      FieldName = 'RV_NMEMO'
    end
    object qryInvoicesRV_TYPE: TStringField
      FieldName = 'RV_TYPE'
      Size = 1
    end
  end
  object dsInvoices: TOraDataSource
    DataSet = qryInvoices
    Left = 696
    Top = 48
  end
  object qryPhoneBook: TOraQuery
    SQL.Strings = (
      'SELECT * FROM PHONEBOOK WHERE NCLIENT = :NCLIENT')
    MasterSource = dsMatter
    Left = 728
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NCLIENT'
        ParamType = ptInput
      end>
  end
  object tmrRefresh: TTimer
    Enabled = False
    OnTimer = tmrRefreshTimer
    Left = 792
    Top = 48
  end
  object qryTask: TSmartQuery
    CheckMode = cmNone
    SQL.Strings = (
      'SELECT T.*, T.ROWID FROM TASK T'
      'WHERE T.FILEID = :P_File'
      '  AND T.FINISHED IS NULL'
      '  AND T.SKIPPED IS NULL'
      'ORDER BY T.COMMENCE')
    LockMode = lmLockImmediate
    AfterPost = qryTaskAfterScroll
    AfterScroll = qryTaskAfterScroll
    Left = 728
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'P_File'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object dsTask: TOraDataSource
    DataSet = qryTask
    Left = 696
    Top = 208
  end
  object qryTmp: TOraQuery
    Left = 760
    Top = 144
  end
  object qryMatterParty: TOraQuery
    SQL.Strings = (
      'SELECT MP.CATEGORY, MP.SEQ, MP.PREFIX, MP.ACTING_FOR, MP.REFNO,'
      '  P.SEARCH, P.WORKPHONE'
      'FROM MATTERPARTY MP, PHONEBOOK P'
      'WHERE MP.FILEID = :FILEID '
      '  AND MP.NNAME = P.NNAME'
      'ORDER BY 1, 2')
    CachedUpdates = True
    Left = 728
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'FILEID'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object dsMatterParty: TOraDataSource
    DataSet = qryMatterParty
    Left = 696
    Top = 240
  end
  object qryReceipts: TOraQuery
    SQL.Strings = (
      
        'SELECT ALLOC.CREATED, ALLOC.ACCT, ALLOC.REFNO, ALLOC.DESCR, ALLO' +
        'C.AMOUNT, ALLOC.NMEMO, ALLOC.TYPE, ALLOC.CLEARED, ALLOC.DCLEARDA' +
        'TE, RECEIPT.REVERSED FROM ALLOC, RECEIPT WHERE ALLOC.FILEID = :F' +
        'ILEID AND ALLOC.NRECEIPT > 0 AND ALLOC.NRECEIPT = RECEIPT.NRECEI' +
        'PT ORDER BY CREATED DESC')
    OnCalcFields = qryReceiptsCalcFields
    Left = 728
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'FILEID'
        ParamType = ptInput
        Size = 2000
      end>
    object qryReceiptsCredit: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Credit'
      Calculated = True
    end
    object qryReceiptsDebit: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debit'
      Calculated = True
    end
    object qryReceiptsClearance: TStringField
      FieldKind = fkCalculated
      FieldName = 'Clearance'
      Size = 15
      Calculated = True
    end
    object qryReceiptsCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryReceiptsACCT: TStringField
      FieldName = 'ACCT'
      Size = 8
    end
    object qryReceiptsREFNO: TStringField
      FieldName = 'REFNO'
      Size = 10
    end
    object qryReceiptsDESCR: TStringField
      FieldName = 'DESCR'
      Size = 160
    end
    object qryReceiptsAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qryReceiptsNMEMO: TFloatField
      FieldName = 'NMEMO'
    end
    object qryReceiptsTYPE: TStringField
      FieldName = 'TYPE'
      Size = 2
    end
    object qryReceiptsCLEARED: TStringField
      FieldName = 'CLEARED'
      Size = 1
    end
    object qryReceiptsDCLEARDATE: TDateTimeField
      FieldName = 'DCLEARDATE'
    end
    object qryReceiptsREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
  end
  object dsReceipts: TOraDataSource
    DataSet = qryReceipts
    Left = 696
    Top = 272
  end
  object qryPhonebookParty1: TOraQuery
    SQL.Strings = (
      
        'SELECT "NAME", ADDRESS, SUBURB, STATE, POSTCODE, WORKPHONE, HOME' +
        'PHONE, FAX, DX, DXLOC , MOBILE, EMAIL'
      'FROM PHONEBOOK'
      'WHERE SEARCH =:PARTY1')
    MasterSource = dsMatter
    Left = 474
    Top = 41
    ParamData = <
      item
        DataType = ftString
        Name = 'PARTY1'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object qryPhonebookParty2: TOraQuery
    SQL.Strings = (
      
        'SELECT "NAME", ADDRESS, SUBURB, STATE, POSTCODE, WORKPHONE, HOME' +
        'PHONE, FAX, DX, DXLOC , MOBILE, EMAIL'
      'FROM PHONEBOOK'
      'WHERE SEARCH =:PARTY2')
    MasterSource = dsMatter
    Left = 516
    Top = 41
    ParamData = <
      item
        DataType = ftString
        Name = 'PARTY2'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object qryPhonebookParty3: TOraQuery
    SQL.Strings = (
      
        'SELECT "NAME", ADDRESS, SUBURB, STATE, POSTCODE, WORKPHONE, HOME' +
        'PHONE, FAX, DX, DXLOC , MOBILE, EMAIL'
      'FROM PHONEBOOK'
      'WHERE SEARCH =:PARTY3')
    MasterSource = dsMatter
    Left = 554
    Top = 41
    ParamData = <
      item
        DataType = ftString
        Name = 'PARTY3'
        ParamType = ptInput
        Size = 2000
      end>
  end
  object dsPhonebook: TOraDataSource
    DataSet = qryPhoneBook
    Left = 696
    Top = 304
  end
  object prcDeleteDBill: TOraStoredProc
    StoredProcName = 'DELETE_DRAFT_BILL'
    SQL.Strings = (
      'begin'
      '  DELETE_DRAFT_BILL(:MEMONUMBER);'
      'end;')
    Left = 855
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MEMONUMBER'
        ParamType = ptInput
      end>
  end
  object qryPrecedents: TOraQuery
    SQL.Strings = (
      
        'SELECT DISTINCT P.*, M.WORKFLOWTYPE AS MTRWORKFLOWTYPE, M.DATAFO' +
        'RM AS GENERICDATAFORM, M.WORKFLOWTYPE'
      'FROM PREC P, MATTERTYPE M'
      'WHERE M.CODE = :TYPE'
      
        '  AND P.NPREC IN (SELECT NPREC FROM WORKFLOWTYPELINK WHERE WORKF' +
        'LOWTYPE = M.WORKFLOWTYPE)'
      'ORDER BY UPPER(P.PATH)')
    MasterSource = dsMatter
    OnCalcFields = qryPrecedentsCalcFields
    Left = 728
    Top = 174
    ParamData = <
      item
        DataType = ftString
        Name = 'TYPE'
        ParamType = ptInput
        Size = 1000
      end>
    object qryPrecedentsFileName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FileName'
      Size = 255
      Calculated = True
    end
    object qryPrecedentsNPREC: TFloatField
      FieldName = 'NPREC'
      Required = True
    end
    object qryPrecedentsDESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qryPrecedentsPATH: TStringField
      FieldName = 'PATH'
      Size = 100
    end
    object qryPrecedentsTYPE: TStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object qryPrecedentsWORKFLOWTYPE: TStringField
      FieldName = 'WORKFLOWTYPE'
      Size = 11
    end
    object qryPrecedentsDATAFORM: TStringField
      FieldName = 'DATAFORM'
      Size = 32
    end
    object qryPrecedentsCONTROLMACRO: TStringField
      FieldName = 'CONTROLMACRO'
      Size = 80
    end
    object qryPrecedentsSAVEPATH: TStringField
      FieldName = 'SAVEPATH'
      Size = 80
    end
    object qryPrecedentsMAINDATAFILE: TStringField
      FieldName = 'MAINDATAFILE'
      Size = 80
    end
    object qryPrecedentsDATAFILEPATH: TStringField
      FieldName = 'DATAFILEPATH'
      Size = 80
    end
    object qryPrecedentsNPRECCATEGORY: TFloatField
      FieldName = 'NPRECCATEGORY'
    end
    object qryPrecedentsMACROSTARTUP: TFloatField
      FieldName = 'MACROSTARTUP'
    end
    object qryPrecedentsMERGEFILE: TStringField
      FieldName = 'MERGEFILE'
      Size = 80
    end
    object qryPrecedentsAFTERMACRO: TStringField
      FieldName = 'AFTERMACRO'
      Size = 80
    end
    object qryPrecedentsMTRWORKFLOWTYPE: TStringField
      FieldName = 'MTRWORKFLOWTYPE'
      Size = 11
    end
    object qryPrecedentsGENERICDATAFORM: TStringField
      FieldName = 'GENERICDATAFORM'
      Size = 32
    end
    object qryPrecedentsWORKFLOWTYPE_1: TStringField
      FieldName = 'WORKFLOWTYPE_1'
      Size = 11
    end
  end
  object dsPrecendents: TOraDataSource
    DataSet = qryPrecedents
    Left = 696
    Top = 175
  end
  object popCheque: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = popChequePopup
    Left = 592
    Top = 40
  end
  object popReceipt: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = popReceiptPopup
    Left = 624
    Top = 40
  end
  object qryPrecCategories: TOraQuery
    SQL.Strings = (
      'SELECT * FROM PRECCATEGORY'
      'ORDER BY DESCR')
    Left = 760
    Top = 174
  end
  object popPrecedents: TPopupMenu
    Left = 592
    Top = 70
    object miPrecEdit: TMenuItem
      Caption = '&Edit'
      OnClick = miPrecEditClick
    end
    object miPrecNew: TMenuItem
      Caption = '&New'
      OnClick = miPrecNewClick
    end
  end
  object popFields: TPopupMenu
    OnChange = popFieldsChange
    Left = 624
    Top = 70
    object popFieldDelete: TMenuItem
      Caption = '&Delete'
      OnClick = popFieldDeleteClick
    end
  end
  object qryExtFields: TOraQuery
    SQLDelete.Strings = (
      'DELETE FROM FIELDTYPELINK'
      'WHERE'
      '  NUNIQUE = :NUNIQUE and'
      '  LINKTABLE = :LINKTABLE and'
      '  FIELDNAME = :FIELDNAME')
    SQL.Strings = (
      
        'SELECT F.FIELDNAME, T.CAPTION, F.TEXTVALUE, F.NUNIQUE, F.LINKTAB' +
        'LE'
      'FROM FIELDTYPELINK F, FIELDTYPE T'
      'WHERE T.NAME = F.FIELDNAME'
      '  AND F.NUNIQUE = :NMATTER '
      '  AND F.LINKTABLE = '#39'MATTER'#39' '
      'ORDER BY T.CAPTION')
    MasterSource = dsMatter
    Left = 728
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NMATTER'
        ParamType = ptInput
      end>
  end
  object popPrecCategory: TPopupMenu
    Left = 592
    Top = 100
    object mnuPrecCatSearch: TMenuItem
      Caption = '&Search'
      OnClick = mnuPrecCatSearchClick
    end
  end
  object ilstDataForms: TImageList
    Height = 32
    Width = 32
    Left = 552
    Top = 72
    Bitmap = {
      494C010110001300040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000A000000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000021212100181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000100810001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818001818180018181800181818001818
      1800181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      0000FFE784000000000000000000000000000000000000000000000000000000
      0000B5ADB500A5ADAD00AD9CAD00B5ADB500A5A5AD00B5ADB500ADADB500EFEF
      EF0000000000000000000000000000000000FFEFD600FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080008000808080008080800080808000808080008080800080808000808
      0800181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      0000FFE78C000000000000000000000000000000000000000000F7F7F700BDB5
      B500ADADAD00ADADAD00ADADAD00CECECE00DEDEDE00F7F7F700000000000000
      000000000000000000000000000000000000FFF7CE00FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000CECED600C6CECE00C6CEC600CEC6CE00CEC6
      C600C6CEC600C6CECE00CEC6C600CEC6CE00C6CECE00C6CECE00D6D6D600EFE7
      E700F7FFFF000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0000000000000000000000000000000000ADADAD00FFFFF700FFFF
      F700FFE79400FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700A5A59C00B5AD
      AD00B5ADA500EFE7DE00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFF7C600FFFFEF00FFFFF700FFFF
      F700181018000000000000000000000000000000000000000000000000000000
      0000000000000000000008080800948C94008C7B8C00737B8400393142001008
      100039314200212121001008100010101000392939001008100031313100636B
      6300292929001818180063736300EFEFEF000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      00000000000000000000000000000000000000000000EFF7EF00D6DED600D6DE
      D600BDBDBD0000000000000000000000000000000000ADA58C00FFF7CE00FFEF
      CE00FFE78C00FFF7CE00FFEFCE00FFF7CE00FFF7C600FFEFCE00100800008C7B
      5A00FFF7C600FFF7CE00FFEFCE00FFF7CE00FFEFCE00FFEFC600FFF7CE00FFEF
      CE00FFF7CE00FFF7C600FFEFCE00FFF7CE00FFE7AD00FFEFBD00FFF7CE00FFEF
      CE00181018000000000000000000000000000000000000000000000000000000
      0000000000000000000008080800949494006B736B005A525200211821002118
      2100212921002129210029212900292121002129210029292100424242005A5A
      5A00CECED6009CA59C006B6B6B006B6B6B00A5A5A50000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000005252520000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF7EF00D6DE
      D600BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78400CE84AD00A5298400A5297B00AD2973009C297B008C216B000000
      000018001000941063009C187B00A5298400EFC6DE009C297B00AD298400AD29
      8400E7BDD600AD297B00C673AD00B5429400FFF7D600FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000B5B5B5008C948C006B736B004A4A4A003131
      3100212921002129210029212100292129002129210031293100524A4A009C94
      9400D6DED600E7E7E700E7E7E700EFEFF700F7F7F70000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000000000000000000000000000FF00
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000006B6B
      6B005252520000000000000000005A635A009C9C9C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF7
      EF00BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78C00DEADCE00CE6BAD00CE6BAD00CE84B500DEA5CE00BD5A9C001800
      100008081000292139005A5A8C00ADA5DE00C66BAD00C66BAD00CE6BAD00CE6B
      AD00D69CC600CE84BD00CE6BAD00CE6BAD00FFEFCE00FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000080000009C6363009C6B6B009C7373009C7B73009C847B009C8C94009C94
      9C009C9C9C009C9C9C009C9C9C009C9C9C000800080031212900393131006B63
      6B009C9C9C00A5A5A5009C9C9C00C6C6CE00DEDEDE00F7F7F700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000393939000808080039393900101810002931290000000000000000003939
      390000000000000000000000000000000000000000000000000000000000EFF7
      EF00BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE79400FFEFF700F7DEEF00F7DEEF0000000000F7DEEF00F7E7F7006352
      5A007363B5004242730029294200313952005A5A9400CED6E700F7EFF700F7E7
      EF00F7DEEF0000000000F7DEEF00F7DEEF00FFF7CE00FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000DE949C00F7ADAD00FFBDCE00FFCECE00FFDED600FFEF
      E700FFF7EF00FFFFF70000000000000000000808080031313100525A5A00A5A5
      A500E7EFE7000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000029312900B5B5B500BDBDBD00BDBDBD006B6B6B000000000010181000A5AD
      A500000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78C00EFD6E700E7ADD600E7ADD600FFF7FF00E7ADD600EFBDDE00EFC6
      E7007B6BC600847BD6005A639C0031395A0031294200393963006B5A94008C5A
      AD00E7ADD600FFF7F700E7ADD600E7ADD600FFF7CE00FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      000000000000000000000808080063525200DE847B00FFB5BD00FFC6C600FFD6
      D600FFDEE700FFF7EF00FFFFF7000000000008080800313131005A525200ADAD
      A500E7EFEF000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000005A635A00525252003939
      3900A5ADA500BDBDBD005A635A00A5ADA500BDBDBD00A5ADA500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78400DE94C600D639AD00EFB5DE00CE42A500CE42A500D639AD00D639
      AD00E7E7F70094A5EF009484E7007373D600394263002921390039315A004A42
      7B005A5A9C00AD399C00E77BCE00DE52BD00FFEFD600FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000080808006B636B0042292900FFADAD00FFB5BD00FFC6
      C600FFCECE00FFDEDE00FFE7EF00FFEFFF000808080031393100524A5200ADA5
      AD00C6BDC600E7E7E700DEDEDE00E7E7E700D6D6D60000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000FF000000FF0000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000293129007B7B
      7B00BDBDBD00212121002121210000000000BDBDBD00BDBDBD00A5ADA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78400EFA5DE00DE63BD00DE63BD00DE6BBD00DE63BD00DE63BD00DE63
      BD00D65ABD008C6BC600ADB5FF00948CEF007B73CE0039426B00292142002921
      4A0031315200313152009C7BB500DE63BD00FFF7D600FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000010000000AD524A00FF8C8400FF949400FFA5A500FFAD
      B500FFBDB500FFCEC600FFD6D600FFE7E7000000000008180800102108009C94
      94009CA59C00C6CEC600B5B5B500CECECE00ADADAD00F7F7F700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000010181000737B
      7300A5ADA500737B7300101810003939390010181000A59C9C00B5B5B5009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE79400FFE7F700FFD6EF00FFD6EF00FFD6EF00FFD6EF00FFD6EF00FFD6
      EF00FFF7FF00AD7BCE00A5ADF700A5A5EF008C94EF00847BCE0042426B002931
      4200212142002121420021294A00C6C6DE00FFF7CE00FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000018000000FF525A00FF5A6300FF6B7300FF7B8400F7848C00CE7B
      8400AD5A5A00FFBDBD00FFCEC600FFD6D600292929009C9C9C008C848C00B5B5
      BD00E7EFEF000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000005A635A0084848400000000006B6B
      6B007B7B7B00B5B5B5008C948C000000000021212100BDBDBD00A5ADA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78C00FFDEEF00F7BDE700F7BDE700F7BDE700F7BDE700F7BDE700F7BD
      E700FFF7FF00F7BDE7007384C600ADB5FF00A5ADF7009C8CEF007B73CE005A5A
      940021214200212142001818390021294200A5A59C00FFFFF700000000000000
      0000181018000000000000000000000000000000000000000000000000000808
      0800B5182100DE313900FF424A00FF525200FF636300FF6B7300392121000008
      0000080810004A313100FFADB500FFBDC600101010004242420031423900B5BD
      BD005A63630052525A00737B73004A4A4A006B736B00EFEFEF00000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      000000000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000525252007B7B7B00A59C9C00A59C9C00BDBDBD00BDBDBD006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78400000000000000000000000000CEDECE00EFF7EF00000000000000
      0000F7FFF700EFF7EF00DEDEEF009C9CEF00B5BDFF008494E7007B7BDE004263
      AD0021428C0018213900212142001018420021214A00C6C6DE00000000000000
      0000181018000000000000000000000000000000000000000000000000001008
      1000CE211800FF212100FF313100FF394200D642390010101000181810001818
      0800102910002939180042393100EFADAD0010181000527B4A0052734200D6DE
      CE00F7FFF7000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE78400000000000000000094BD940008731800398C4200000000000000
      000042944200318C4200F7F7FF009494D600A5BDFF005A8CEF0031529C00315A
      9C0029529C00294A8C0018183900212142001818390018184200A5ADCE000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000808080063101000FF181800FF212100E729290052292900312129001818
      210018101800423939002931310042313100394242009CA59C00525252009494
      A50042394200DEDEDE00848C8400EFEFEF000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000212121009C9C
      9C000000000000000000000000000000000000000000000000009C9C9C002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE7940000000000B5CEB500106B180010731000106B1800318431004A94
      5200106B100010731800398C4200EFF7EF006384C6004A84FF00428CEF00295A
      A50031529C0031529C00294A840018213900182139002121420021294A00C6C6
      DE00181018000000000000000000000000000000000000000000000000000000
      0000000000000000000031000000DE181000FF101800DE182100631010004A4A
      5200736373008C8C8C00A59CA500BDBDBD0042424200CECECE00BDBDBD00F7F7
      F700BDBDBD00F7F7F700BDBDBD00BDBDBD00D6D6D60000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000212121009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000FFE7940094C694001073180010731800ADD6B50010AD210018C6180018C6
      1800318C390052CE520010731800398C3900F7F7FF005A7BBD004A94FF00428C
      EF0031529C0031529C00295A9C00214A8C002121420021214200181839001829
      3900181018000000000000000000000000000000000000000000000000000000
      000000000000000000000808080042212900FF101000FF182100F72129006310
      1800948C9C00C6C6C600C6CEC600D6D6D600D6D6D600D6D6D600C6C6C600F7F7
      F700C6C6C600F7F7F700C6C6C600C6C6C600DEDEDE0000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000101810005A635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000EFD67300087310001873290094C69400107B210031943100ADCEAD0094DE
      9C00217B2100CEDECE0021CE2900297B290000000000E784CE006384C600428C
      FF004284E700295AA50031529C0031529C002942840018213900182139002118
      4200212131000000000000000000000000000000000000000000000000000000
      0000000000000000000029000000B5000000DE080000BD081000842131005242
      42008C9C8C004A4A4A004A4A4A00CECECE004A4A4A004A4A4A004A4A4A004A4A
      4A00C6C6C6004A4A4A004A4A4A009494A500BDBDBD00EFEFEF00000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0000000000000000000000000000000000ADADAD00000000000000
      0000EFD6730008731800C6DEC60094C69C00BDD6C600A5CEA500DEEFDE00DEFF
      DE00108C210031AD420018842900ADCEAD0000000000EF73C600E76BCE005A7B
      BD004A8CFF004284EF0031529C0031529C0029529C00294A8C00181839002121
      4200181839001008210000000000000000000000000000000000000000000000
      0000000000005A000000840000004200000084736300BDBDBD00E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      0000FFE78C00A5CEA50010731800107310001073100042944A00107310001073
      1800107310001073100084B584000000000000000000E7C6DE00E7B5D600E7B5
      D6005252AD004A8CFF004284E700295AA500295A9C00315A9C00294A84001818
      3900182139002121420010101800000000000000000000000000000000001010
      1000000000000800000010101000EFEFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      0000FFE7940000000000C6DECE001073100029842900F7F7F700BDD6BD001073
      1800106B10009CC69C00000000000000000000000000F7E7EF00F7DEEF00F7DE
      EF00EFDEEF005273BD004A8CFF00428CF70031529C0031529C0031529C00214A
      9400182139002121420018213900000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000000000000000000000000000000000008C6363008C6363008C6B5A008C6B
      5A008C6B63008C6363008C6B5A008C735A008C6B5A008C636300BDAD9C000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000000000ADADAD00000000000000
      0000FFE784000000000000000000A5C6AD000000000000000000000000009CBD
      A5007BB5840000000000000000000000000000000000D68CBD00D66BB500D66B
      B500CE63AD00F7E7F7006B8CCE00428CFF004284E700295AA50029529C00315A
      9C00214284001821390018213900000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000AD9C7B00FFE78C00FFE7
      9400FFDE8C00FFE79400FFE78C00FFE79400FFE79C00FFE79400FFE78C00FFE7
      8C00FFE79C00FFE79400FFE78C00FFE78C00FFE79400FFE79C00FFE78C00FFE7
      8C00FFE79400FFE79C00F7DE8C004A6BA5004A8CFF004284F70029529C00315A
      9C0029529C002152940018183900000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000212121006373
      630084737300212121002121210021212100C6C6C60021212100212121007384
      73002121210021212100636B6300212121007373730000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000ADADAD00000000000000
      0000FFE78C000000000000000000EFCEC600FFE79C00EFC69C00DEAD9C00DEAD
      9C00FFEFEF00DEAD9C00E7BD9C00E7BD9C00F7D69C00F7EFE700DEAD9C00DEAD
      9C00F7D69C00DEAD9C0000000000000000006B8CCE004A8CFF004284E700295A
      A50031529C0031529C0029428400000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181018000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000ADADAD00000000000000
      0000FFE794000000000000000000FFF7EF00FFF7E700FFEFE700F7EFE700F7EF
      E70000000000F7EFE700F7EFE700F7EFE700FFF7E70000000000F7EFE700F7EF
      E700FFF7E700F7EFE7000000000000000000F7EFCE004A63A5004A94FF004294
      F70029529C0031529C00295A9C00000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000000000ADA58400FFEFBD00FFE7
      B500FFDE8400FFEFB500FFE7BD00FFEFBD00FFEFB500FFEFB500FFEFBD00FFE7
      BD00FFEFB500FFEFB500FFE7BD00FFEFBD00FFEFB500FFEFB500FFEFBD00FFE7
      BD00FFEFB500FFEFB500FFE7BD00FFEFBD00FFE79C00FFEFAD006B8CCE00428C
      FF00427BE700295AA50029529C00000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000B55A0000C68C4A00C68C5200A57B4A008C5218009C8C6B00946B4A006331
      00008C6B4A006329000000000000212121006B6B6B006B6B6B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      0000FFE784000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7D600FFFFF700000000004263
      AD00428CFF004284FF0029529C00000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000BD732900000000000000000000000000FFF7F7000000000000000000F7F7
      EF000000000073522100000000002121210000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400B5B5B500B5B5
      B500B5A57B00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5AD9400B5B5AD00B5B5B500B5B5
      B500426BA5004A8CFF004284E700000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000B55A0000B55A0000D69C6B00B55A0000B55A0000D69C6B00B55A0000B55A
      0000843900006B31000000000000212121000000000094949400000000000000
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
      00000000000031529C004A8CFF00000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFF7F70000000000212121009C9C9C0000000000000000000000
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
      0000000000000000000021396B00000000000000000000000000000000000000
      0000000000000000000008080800848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400101010000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000181818004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A0039313900000000000000000010101000292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929000000000000000000000000000000000000000000181818004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00212121001010100010101000000000000000000000000000000000001818
      1800313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100000000000000000029292900080808000808
      0800080808000808080008080800080808000808080008080800080808000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000080808000808080008080800080808000808080008080800080808000808
      0800000000003131310039313900000000000000000029292900080808000808
      0800080808000808080008080800080808000808080008080800080808000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000080808000808080008080800080808000808080008080800080808000808
      0800212121000000000000000000000000000000000029292900080808000808
      0800080808000808080008080800080808000808080008080800080808000808
      0800080808000808080008080800080808000808080008080800080808000808
      0800080808000808080008080800080808000808080008080800000000000000
      0000000000000000000010101000000000000000000000000000000000003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      310031313100313131004A4A4A00000000000000000029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600ADADAD00A5A5A500ADA5A500A5ADAD00A5A5A500D6D6D600D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      00008C8C8C0031313100313931000000000000000000ADADAD00000000000000
      000000000000000000000000000000000000000000000000000000000000E7DE
      DE00B5ADB500ADADAD00ADA5A500B5ADB500ADADAD00D6CECE00DEDEDE00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484005A5A
      5A00313131002929290031313100000000000000000000000000525252008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C00000000004A4A4A00000000000000000029292900000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600A5ADAD00A59CAD00ADADAD00A5ADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C0031313100313931000000000000000000ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00B5AD
      B500A5ADAD00B5ADB500B5B5B500E7EFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636363005A5A5A005252
      52001810180000000000000000000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      000073737300C6C6C600949494008C8C8C009C9C9C00DEDEDE008C8C8C006363
      63007373730052524A009C9C9C009C9C9C00B5B5B500B5B5B500BDBDBD00ADAD
      AD009C9C9C00EFEFEF009C9C9C009C9C9C007B7B7B009C9C9C00C6C6C6000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000ADAD
      AD00F7F7F7009C9C9C006B6B6B009C9C9C00ADADAD00BDBDBD00524A4A007B7B
      7B0073737300848484009C9C9C009C9C9C00E7E7E7009C9C9C00E7E7E7009C9C
      9C00BDBDBD00ADADAD009C9C9C00737373009C9C9C009C9C9C00000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      000084738400D6ADC600AD739C00AD739C00AD739C00AD739C00AD739C00AD73
      9C00AD739C00AD739C00AD739C00AD739C00C69CB500948C94009C949C009484
      9400736B7300E7E7E700AD739C00AD739C006B52630039293100422939004239
      4200A5B5D600BDBDBD00080818000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00D6D6D6000000
      00006B6B6B00EFEFEF00F7F7F70000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF0000000000E7E7E700EFEFEF00EFEFEF00EFEFEF0000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD00000000000000
      0000000000000000000000000000F7F7F700EFEFEF0000000000000000003131
      3100E7E7E700F7F7F700FFF7FF00F7F7F700E7E7E700EFEFEF00EFEFEF000000
      0000EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F70000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      000000000000000000000000000000000000F7E7EF00F7E7EF00F7EFF700F7EF
      F700F7E7EF00F7E7EF00F7E7EF0000000000F7E7EF00F7E7EF00F7E7EF00F7E7
      EF00FFF7FF00F7E7EF00EFE7EF0063636300524A52005252520042314200A5BD
      F700ADC6E70029315200313131000000000000000000000000005A5A5A000000
      0000EFEFEF009C9C9C0063636300313131006363630063636300212121006363
      630063636300D6D6D6000000000000000000000000000000000063636300E7E7
      E7006363630063636300C6C6C60063636300424242005A5A5A0063636300F7F7
      F70000000000080808004A4A4A00000000000000000029292900000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00F7F7F7003939
      390000000000181818006B637B00DEDEE700B5B5B500B5B5B500BDBDBD00BDBD
      BD00EFEFEF00A5A5A500BDBDBD00BDBDBD00BDBDBD00F7F7F700000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD00000000000000
      0000000000000000000000000000D6D6D600BDBDBD00E7E7E7009C9C9C000000
      0000101018005A4A5A009C9CBD00CECECE00A5A5A500BDBDBD00BDBDBD00F7F7
      F700B5B5B500B5B5B500BDBDBD00BDBDBD00D6D6D60000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      000000000000000000000000000000000000CEA5BD00CEA5BD00D6B5C600DEC6
      D600CEA5BD00CEA5BD00CEA5BD00F7E7EF00CEA5BD00CEA5BD00CEA5BD00CEA5
      BD00EFE7EF00CEA5BD005A394A004A3142003129310042314200A5B5DE00A5BD
      E70029315A0031313100313131000000000000000000000000005A5A5A000000
      000000000000000000000000000000000000F7F7F700949494006B6B6B00DEDE
      DE00ADADAD0000000000B5B5B500636363007B7B7B00F7F7F700DEDEDE009494
      9400B5B5B500A5A5A50073737300949494009494940094949400000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      00006B6B6B006B6B6B00F7F7F700393939006B6B6B006B6B6B00C6C6C6009C9C
      9C0000000000212139002121420039427300948CD600EFEFF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000ADAD
      AD006B6B6B00C6C6C600636363004A4A4A006B6B6B009C9C9C00E7E7E7002121
      2100101021002921420039316B00736BBD00EFEFF70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      00008C316B008C316B00F7EFF7008C316B008C316B008C316B00EFDEE7008429
      63006B1852004A183100421831002918290039292900ADA5AD00EFEFEF00F7F7
      F700F7F7F7006B6B6B005A5A5A00524A520042394200A5BDF700B5C6E7004252
      73008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000EFEFEF00EFEFEF00F7F7F700DEDEDE00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF0000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      00005A5A5A007B7B7B009C9C9C00BDBDBD00949494009494940094949400DEDE
      DE006B6B7B00736BB5004A4A8C0031315200293152005A5294009494BD00EFEF
      FF00000000000000000000000000000000000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000A5A5
      A5005A5A5A0094949400F7F7F700949494009494940094949400A5A5A5009C9C
      9C006B63B500635AA50042396B0029294A004A427B007B84A500CEC6EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      00007B637B0084637B00946B8C00B59CAD007B637B0084637B007B5A73005A4A
      52005A5A5A005A5A5A0042213100392131005A5A5A005A5A5A005A5A5A007B73
      7B007B7B7B005A5A5A004A424A0042394200A5B5DE00A5BDE7006B7B9C000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000C6C6C600C6C6C600DEDEDE00A5A5A500C6C6C600CECECE00D6D6
      D600CECECE0000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      0000E7E7E700DEDEDE00E7E7E700E7E7E700E7E7E700DEDEDE00E7E7E700EFEF
      EF00DED6EF008C8CD600847BD60063639C0039395A0021293100393963004A4A
      7B00949CCE00EFE7F70000000000E7E7E700E7E7E70000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000EFEF
      EF00E7E7E700DEDEDE00E7E7E700E7E7E700D6D6D600E7E7E70000000000EFEF
      EF008C84CE009484E7006B73B50042527300312939003131520052527B006B73
      BD00E7E7F70000000000F7F7F700E7E7E700EFEFEF0000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000EFDEE700EFDEE700EFDEE700EFDEE700E7D6E700847B7B00524A52005A4A
      5200947B8C00DEC6D600EFDEE700EFDEE700D6C6D6006B5A6300524A5200524A
      4A00524A4A004A4A4A0042314200A5BDEF00B5C6DE004A527B00000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F700292929006B6B6B00C6C6C6006B6B6B006B6B6B006B6B6B006B6B
      6B00525252000000000094949400292929004A4A4A00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      0000C6C6C600B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00D6D6D600DEDE
      DE00EFE7EF00949CC600A5B5FF00948CEF007373CE0031425A00292139003129
      4200393963005A5A8C00BDBDDE00CECECE00C6C6C60000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000E7E7
      E700C6C6C600BDBDBD00CECECE00CECECE00ADADAD00CECECE00F7F7F700DED6
      DE00E7E7EF0094A5EF00A59CF7008C84E70052528C0031294200312942003931
      6300524A7B00948CC600EFEFEF00CECECE00DEDEDE0000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000D6B5CE00D6B5CE00D6B5CE00D6B5CE005A4252004A3942008C7B8400735A
      6B00634252006342520063425A007B638400B594AD00D6B5CE00C6B5BD00947B
      8C003129310039313900A5B5DE00A5B5E7006B7B9C00F7F7FF00000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F7008C8C8C00525252008C8C8C008C8C8C00636363008C8C8C00DEDE
      DE008C8C8C00DEDEDE00000000000000000000000000000000008C8C8C005A5A
      5A008C8C8C008C8C8C00B5B5B500000000008C8C8C008C8C8C00000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      00000000000000000000000000000000000073737300CECECE00737373004242
      42007B847B00E7EFEF00737BCE0094A5F7008C8CEF007373CE0039396B002121
      39002121420029315A0018214200C6C6DE000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD00000000000000
      0000000000000000000000000000ADADAD008C8C8C00A5A5A5006B6B6B006363
      6300C6C6CE009494D600ADB5FF009494EF008484E7004A528C0029294A002121
      420029314A00181831006B73A500000000000000000000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000000000000000000000000000949494002918210039313900424242003939
      310039393100393931003939290042424A004A524A004A313100521052005200
      3900000000005A5A5A00ADB5CE00424A6B000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      00000000000000000000000000000000000000000000DEDEDE0000000000DEDE
      DE00CECECE00DEDEDE0000000000DEDEDE000000000000000000DEDEDE00CECE
      CE00E7E7E7000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      00008484840084848400525A52008C8C94008C848C00848C8C0094949400EFEF
      E7008C848C00DEDEDE00C6BDE7009CADF7009CA5F7009494EF007373CE003939
      6B0021294A00182142001018310018183900A5ADCE0000000000000000000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000BDBD
      BD0084848400636363008484840084848400848484008484840000000000ADAD
      AD009C9C9C00E7DEF700848CDE00ADADF7009494EF008C84E700525294003131
      5A001821390018213900211842006373A5000000000000000000000000000000
      0000212121000000000000000000000000000000000029292900000000000000
      000094528400945284008C4A8400524A4A000810100008000800393939006B63
      6B007B7B7B007B7B7B0039393900101018000808080018101800424242000000
      00005A5A5A0073737300212121006B6B6B000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000000000000000000000000000F7F7F700CECECE00F7F7F700CECE
      CE00BDBDBD00CECECE000000000042424200D6D6D60000000000CECECE00BDBD
      BD00DEDEDE000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      0000D6D6D600CEC6C6008C8C8C0094949400BDC6BD00C6B5B5008C7B84008C84
      8C00C6BDBD00CECEC600C6CED60094A5DE00ADB5FF009CA5EF00948CEF007B73
      CE004252840010183900182139001821390018214200BDC6DE00E7E7E7000000
      00008C8C8C0031313100313131000000000000000000ADADAD0000000000EFEF
      EF00DEDEDE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D6008C9CCE00ADB5FF00ADB5F7009C94EF008C84E7006363
      AD00212952002121420018213900181831006B73A500E7EFEF00EFEFEF000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000DECEDE00DECEDE008C7B8C002118180021212100ADA5AD00000000000000
      0000000000000000000000000000D6CED600ADA5AD0021212100000000005252
      52007B7B7B0029182100B5A5B50052525200CEBDC600DECEDE00DECEDE000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F7007B7B7B0073737300636363007B7B7B007B7B7B007B7B7B00D6D6
      D600E7E7E7007B7B7B00000000005A5A5A003939390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900000000000000
      0000C69C8400844229003910100021181800734A31006B392100311010003921
      2100848C8400ADADAD00DED6CE00948CC600ADB5F700ADBDFF004263AD004263
      AD0031529C001842840018213900182139001018390018293900848CAD000000
      00008C8C8C0031313100313139000000000000000000ADADAD0000000000E7E7
      E700D6D6D600C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00DEDEEF009CA5EF00B5BDFF00637BC6004263B5003163
      A5002952940021294A001821390018183900212142004A5A8C00E7E7E7000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000DEC6D600947B8C001000080073636B00DEDEDE0000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600525252002121
      2100212121005A4A5200B5A5AD0052525200B59CAD00DEC6D600DEC6D6000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F7007B7B7B007B7B7B006B6B6B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000EFEFEF0008080800CECECE00DEDEDE004A4A
      4A007B7B7B00EFEFEF007B7B7B004A4A4A00CECECE007B7B7B005A5A5A007B7B
      7B0000000000080808004A4A4A0000000000000000002929290000000000DECE
      CE00CE523900DE634200CE4A18006B29100073312900C64A2100C64218002110
      00005A4A52008C8C84007B7B8400D6CED6008494CE008CA5FF00427BE7002952
      9C0029529C0029529C002142840010213900182139001810390018214200BDC6
      D6008C8C8C0031313100313931000000000000000000ADADAD00000000009494
      94008C8C8C00B5B5B500848484005A5A5A009494940084848400848484008484
      84009C9C9C00A5A5A500D6C6D600ADADDE008CA5EF005A94FF003163B5003152
      9C0029529C0029529C00212152002121420018183900181031006B7BA5000000
      0000212121000000000000000000000000000000000029292900000000000000
      0000944A7B002108180063395A0000000000000000000000000000000000C69C
      B500C6319400CE4A9C00C642940000000000B5007300EFC6E700EFEFEF006342
      5A0010101000424242007B6373004A2142009494940000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000CECECE0000000000D6D6D600CECECE00CECECE00F7F7F700CECE
      CE00D6D6D600D6D6D600DEDEDE0000000000212121006363630000000000DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600E7E7E70000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900D69C84006B42
      3100CE6B5200D64A1800DE8C6300E79C7B00EFA59400EFB5A500E7947B006321
      18000808000029211800525252008C848C00BDBDC6005A7BBD00428CFF00427B
      EF0029529C0029529C0029529C00214A84001018390018213900101839001018
      390031395A0031313100313131000000000000000000ADADAD00000000009494
      94007B7B7B007B7B7B007B7B7B007B7B7B00EFEFEF00D6D6D60000000000A5A5
      A50094949400000000007B7B7B00ADA5AD00ADBDDE004284EF00428CF700315A
      AD0029529C0029529C002952940018184A001821390018213900181839005A6B
      A500212121000000000000000000000000000000000029292900000000000000
      000073425A00292929006339520000000000000000000000000000000000EFE7
      EF00EFCEE700CE4A9C00C639940000000000B5007300EFC6E70000000000EFEF
      EF0031313100312121004A424200421831005A314200944A7B00000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000CECECE0000000000D6D6D600D6D6D600D6D6D600F7F7F700D6D6
      D600D6D6D600D6D6D600E7E7E70000000000ADADAD0000000000A5A5A500DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600E7E7E70000000000000000000000
      000000000000080808004A4A4A000000000000000000734229007B422900A539
      1000D64A1000CE735200D64A1800BD391800AD391000A5391800C68C7B00EFAD
      9400C65229007B3108001010080084848400E7E7E700DEDEDE005A84C6004A84
      FF003984E70029529C0029529C0029529C002142840010183900182139001821
      39000810180031313100393139000000000000000000ADADAD0000000000E7E7
      E700D6D6D600E7E7E700CECECE00EFEFEF00CECECE00CECECE00CECECE00CECE
      CE00BDBDBD00CECECE00CECECE00F7F7F700D6D6D6008C9CC600428CEF004A94
      FF003163B50031529C00295A9C0029529C002129520021214200182139001818
      310029292900000000000000000000000000000000002929290000000000F7F7
      F70000000000524A52005A4A5200DEDEDE000000000000000000000000000000
      000000000000CE4A9C00BD298C00FFF7F700B5007300EFC6E700000000000000
      00008484840000000000394242005A5A5A00A5A5A50000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F7006B6B6B00848484008484840084848400D6D6D6009C9C9C000000
      0000E7E7E700848484000000000000000000EFEFEF002929290021212100E7E7
      E700D6D6D60084848400ADADAD00949494008484840084848400B5B5B5000000
      000000000000080808004A4A4A000000000000000000DE8C6B00EF8C7300D652
      18007B422900D64A1800944A4200BD847300CEB59C00C69C8C007B5A5200BD7B
      6300EFAD8C00DE52210039181800A5949C00EFF7EF00EFE7EF00F7F7FF005273
      BD004284FF00428CEF0029529C0029529C0031529C00214A8C00182139001821
      39001818390010212100313131000000000000000000ADADAD0000000000EFEF
      EF00DEDEDE00EFEFEF00DEDEDE00F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600DEDEDE00DEDEDE00F7F7F700E7E7E70000000000ADBDDE004284
      EF004A8CF700315AAD0029529C0031529C0029529C0021214A00182139001821
      390021213900000000000000000000000000000000002929290000000000ADAD
      AD00000000005252520052424A008C8C8C000000000000000000CE52A5000000
      000000000000CE4A9C00B5298400CE4A9C00B5218400F7E7EF00000000000000
      0000DEDEDE00181818002929290052525200C6BDC60000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F70073737300F7F7F7007373730084848400A5A5A500737373007373
      730073737300424242007373730073737300000000006B6B6B00000000005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A000000000000000000CE7B5A00EFC6AD009429
      1000D64A1800D6947300DEAD9C00B56B5200D64A1800EF9C7B00CEADA500AD39
      1800E7AD9400BD6339003118100073737300848C84008C8C84009C9C9C00F7F7
      F7006384C600428CFF00427BE70029529C0029529C0031529C0018427B001021
      39001821390010103900081018000000000000000000ADADAD0000000000C6C6
      C600525252008C8C8C00525252008C8C8C0084848400737373008C8C8C008C8C
      8C008C8C8C008C8C8C00E7E7E7008C8C8C008C8C8C008C8C8C00DECEDE0094A5
      CE004284EF004A8CFF003163B50031529C00295A9C0029529C00182152002121
      4200181839001818310000000000000000000000000029292900000000007373
      73004A394A004239390039183100847B7B00C6B5BD00BD298C00B5087B00C642
      9C0000000000CE4A9C00C6399400000000000000000000000000000000000000
      0000DECED60063525A0010101000391831008C527300A55A8C00000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000B5B5B500C6C6C600B5B5B500C6C6C600C6C6C600BDBDBD000000
      00000000000000000000F7F7F700EFEFEF00D6D6D600D6D6D600000000000000
      0000DEDEDE0000000000C6C6C600F7F7F700C6C6C600C6C6C600DEDEDE000000
      000000000000080808004A4A4A000000000000000000CE5A3900DE7B63007329
      0800DE4A2900EFB5AD00C69C8C00A5391800D6421800D64A2100D65A3900D642
      1000E7846300CE6B4A00080000005A6352007B7B7B006B736B005A5A5A00D6D6
      D600C6BDCE005273B5004284FF004284EF0029529C0031529C0029529C00214A
      8C001818390018213900181839000808180000000000ADADAD00000000000000
      000000000000ADADAD006B6B6B00525252006B6B6B0052525200737373007373
      7300E7E7E700737373007373730073737300737373007373730063636300CEBD
      CE00ADBDDE004284F700428CFF00315AAD0029529C0029529C0029529C002118
      4A00182139001821390018103100000000000000000029292900000000007373
      7300525252005A5A5A00390829007B737B00ADADAD00BD429400EFB5D600EFB5
      D60000000000C64A9C00C6399400000000000000000000000000000000000000
      0000945A7B00311821001008100052525200B584A50000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000DEDEDE00E7E7E700DEDEDE00E7E7E700E7E7E700DEDEDE009C9C
      9C0031313100D6D6D600F7F7F700F7F7F700EFEFEF0000000000000000000000
      00005A5A5A0000000000E7E7E70000000000E7E7E700E7E7E700EFEFEF000000
      000000000000080808004A4A4A00000000004A181800D6735A00D64A18005218
      0800DE522100F7CEC600AD8C84009C391000DE4A2100D6522100D64A2100DE4A
      2100D66B4200DE6B4200843110003129290094949C00BDBDB500ADADAD00C6C6
      C600C6C6C600DED6DE006384C6004A84FF003984E70029529C0029529C002952
      9C0021427B0010183900182139001821390000000000ADADAD0000000000DEDE
      DE00C6C6C600C6C6C600CECECE00DEDEDE00C6C6C600C6C6C600C6C6C600ADAD
      AD00C6C6C600C6C6C600D6D6D600D6D6D600C6C6C600ADADAD00C6C6C600C6C6
      C600CECECE008C9CC600427BEF004A94FF003163B50031529C0031529C002952
      9C00182952002121420018213900000000000000000029292900000000007373
      73005A5A5A00A59CA500735A6B0084848400B5ADB500B5ADB500BDBDBD00BDAD
      B500CEC6CE00DEC6D600E7CEDE00F7F7F700DECED600CEBDC600AD9CA5007B6B
      7B004A3942004239420008100800735A6300CEADC600CEADC600CEADC6000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      00000000000000000000F7F7F700949494006363630094949400000000005252
      520000000000B5B5B500E7E7E70094949400ADADAD0000000000000000000000
      0000525252000000000094949400EFEFEF00D6D6D600F7F7F700000000000000
      000000000000080808004A4A4A0000000000BD633100EFB59C00CE4218006321
      0800A54A1800EFD6CE00C68C8C006B291000DE522100DE5210006B211000AD31
      1800DE8C6300D6632900C64A2100945A4A00DEDEE700EFEFEF00E7E7E700EFEF
      EF00EFEFEF00F7EFF700F7F7FF004A6BAD004A8CFF00428CF70029529C002952
      9C0031529C00184A8C00182139001821420000000000ADADAD0000000000F7F7
      F700EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE00EFEFEF00EFEF
      EF00EFEFEF0000000000A5B5DE004294F7004A8CFF00315AA50029529C002963
      9C0029529C002121420018213900000000000000000029292900000000007373
      73004A4A4A007B7B7300F7EFF700C6BDC600B5ADB500B5ADB500A59CA5005252
      52005A525A005A5A5A00635A5A006B636B00635A5A005A525A00524A5200524A
      5200524A4A00524A4A0018181800A59CA500EFDEEF00EFDEEF00EFDEEF000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F7006B6B6B006B6B6B006B6B6B00EFEFEF006B6B6B00000000005252
      520008080800CECECE00DEDEDE006B6B6B0000000000C6C6C600000000000000
      000084848400000000006B6B6B00292929006B6B6B006B6B6B006B6B6B006B6B
      6B0000000000080808004A4A4A00000000007B393100DE8C6B00F7BDAD009C4A
      290018000800D6947B00EFDECE005242390063291800945A5200BD8C7B00AD4A
      2100D66B5A00BD422900CE7B6300A58C8C006B6B6B0094949400000000000000
      000000000000000000000000000000000000638CCE004284FF00427BE7002952
      9C0029529C0031529C0021397B001021390000000000ADADAD0000000000C6C6
      C60094949400949494006363630094949400F7F7F70094949400EFEFEF009494
      94006B6B6B0094949400949494006B6B6B0094949400E7E7E700000000000000
      000000000000000000000000000094A5CE00427BE7004A8CFF003163B5003152
      9C0031529C0029529C0021295200000000000000000029292900000000008484
      8400212121005A5A5A00CEA5BD00DEBDD600CEC6CE00B5ADB500A59CA5004A31
      42003929310039293100422131004221310039293100392931005A5A5A005A5A
      5A0073737B00424242004A424A00F7F7F7000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000BDBDBD00BDBDBD00ADADAD00BDBDBD00E7E7E70000000000A5A5
      A50021212100EFEFEF000000000000000000F7F7F7005A5A5A00000000003131
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A0000000000000000005A292100DE633100E79C
      84008429080029100800D66B4A00E7BDAD00E7BDCE00EFBDAD00D67B5200B54A
      2900CE42180063291800635A5A0063636B0063636300DEDEDE004A4A4A005252
      520063636300E7E7E70063636300636363009C9C9C004263AD004284FF004284
      F70029529C0031529C0029529C00214A8C0000000000ADADAD0000000000ADAD
      AD00212121007B7B7B006363630063636300000000009C9C9C00636363003131
      3100848484009494940063636300636363008C8C8C008C8C8C00292929006363
      6300949494007B7B7B006363630063636300A5B5D6004284F700428CFF00315A
      A50029529C0029529C0029529C0000000000000000002929290000000000C6C6
      C6000000000052525200AD849C00B56B9C0000000000F7F7F7009C9494003108
      2100291018004A424A0031082900310829002910210052424A0042183900845A
      6B00AD6B9400180818005210390084296300B57BA50000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      000000000000EFEFEF00EFEFEF00EFEFEF00EFEFEF0000000000000000000000
      00007B7B7B001010100073737300B5B5B5004A4A4A000000000029292900E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000031292100DE7B6300EFB5
      9C00D64A100084291000310800005218080084291000732910009C391800D642
      1800C64218005A311800CEC6BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000638CCE004A84
      FF00397BE70029529C0029529C0029529C0000000000ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094A5CE004284E7004294
      FF003163B50031529C00295A9C00000000000000000029292900000000000000
      000042394200423942006363630000000000000000000000000000000000EFEF
      EF00DEDEDE00ADA5AD009C9C9C009C9C9C00BDBDC600DEDEE700FFF7FF000000
      0000BDBDBD002121210000000000000000000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000F7F7F7007B7B7B00F7F7F7008C8C8C009C9C9C00DEDEDE00EFEFEF00DEDE
      DE0000000000DEDEDE006B6B6B006B6B6B006B6B6B0094949400000000000000
      0000DEDEDE009C9C9C00DEDEDE009C9C9C009C9C9C00F7F7F700000000000000
      000000000000080808004A4A4A00000000000000000029292900FF947300E7A5
      8400EFB5A500EFB5A500E79C8C00D6523100D64A1800D6521000EF8C7300EFC6
      AD00E79C7B00B584630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003963
      A5004A84FF004294F70029529C0031529C0000000000ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5B5D6004284
      FF004A8CFF00315AA50029529C00000000000000000029292900000000000000
      0000EFE7EF00212929005A5A5A00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021212100DEDEDE0000000000000000000000000000000000000000000000
      00008C8C8C0031313100313131000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000029292900F7EFDE00EF9C
      7B00E79C8C00E79C7B00EF9C8400E7B59C00DE7B5A00BD6B4A00DE7B4A00E78C
      7300EF8C6B00FFEFE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B8CCE00428CFF00427BE70029529C0000000000ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094AD
      CE004284E7004A8CFF003163B500000000000000000029292900000000000000
      000000000000848484002929210052525200B5B5B500EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5001818
      18009C9C9C000000000000000000000000000000000000000000000000000000
      00008C8C8C0031313100181818000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A000000000000000000292929005A5A5A005A52
      52005A5252005A5A520073524200D67B5A00E7947B00AD5231005A5252005A52
      52005A5252005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A0052525A0031529C004284FF004284FF00000000005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A004A5A7B00428CFF00428CFF000000000000000000292929005A5A5A005A5A
      5A005A5A5A005A5A5A003929310000000000525252005A5A5A005A635A007373
      6B00947B6B00949C8C00848C7B00848C7B006B736B005A635A00000000004242
      42005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A0000000000000000000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000808080018181800000000000000000000000000000000000000
      00000000000000000000080000006339290063311800DEEFF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000294A8C004A84FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018294A00427BE700000000000000000000000000000000000000
      0000000000000000000000000000101010002121210029212900423939005252
      52005A5A5A005A5A5A004A4A4200393939002929290010101000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7D6B500BD7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C68C3100000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6000000000029211800524A
      4A005A5A5A005A5A5A0042423100E7DEE7000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100000000000000000000000000000000001818
      1800313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      31003131310031313100313131000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      310031313100313131004A4A4A00000000000000000000000000000000003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      3100313131003131310031313100313131003131310031313100313131003131
      310031313100313131004A4A4A000000000000000000FFFF0000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFF0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525252006B8C
      8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C
      8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C
      8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C8C006B8C
      8C006B8C8C00000000004A4A4A00000000000000000000000000525252008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C00000000004A4A4A000000000000000000FFFF000000000000BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFF000000000000BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00E7DEDE00E7EFDE00EFE7EF00EFE7
      EF00EFEFEF00EFEFEF00EFF7EF00FFF7FF00F7FFFF00F7FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A000000000000000000FFFF0000000000000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDED600E7D6DE00E7E7DE00E7E7DE00EFEF
      DE00EFE7EF00EFEFEF00F7F7EF00F7F7EF00FFF7EF00FFF7FF00FFFFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A000000000000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DED6CE00DEDED600D6D6D600DECEDE00EFE7
      DE00CED6CE00D6D6CE00E7E7DE00F7E7E700E7DEDE00DEE7D600EFE7DE00E7E7
      E700F7F7E700EFEFEF00F7F7F700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6EFF700849CA5007B2163007B2163007B2163007B2163007B2163007B21
      63007B2163007B2163007B2163007B2163007B216300BDCEDE0021182100ADD6
      D6002118210021182100ADB5C6007B2163007B2163007B2163007B216300C6F7
      F700CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000EFEFEF00211821003118210021182100DEDEDE002918
      210021182100311821002118210021182100311821002118210029182100D6D6
      D60021182100311821002118210021182100ADA5AD0021182100000000000000
      000000000000080808004A4A4A000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DED6CE00D6DED600B5A5CE009C94DE00E7DE
      DE008C948C008C948C00B5ADAD00CECECE00ADADA500949C9400B5ADAD009C94
      9400CEC6C600A5A59C00D6D6D600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00C6EFF700946B9400946B9400BDCE
      DE00946B9400946B9400946B9400946B9400BDDEE700946B9400946B9400946B
      9400A59CB5009C84A500946B9400946B9400946B940063637B00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000F7EFF700736373007363730073637300736373007363
      73007363730073637300736373007363730073637300DEDEDE00736373007363
      73007363730073637300CEC6CE00736373007363730073637300000000000000
      000000000000080808004A4A4A00000000007B7B7B0000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CECE00DED6CE00DED6D600DEDED600DEDE
      D600DEDEDE00EFE7DE00E7EFE700EFEFE700EFE7EF00EFEFEF00F7EFEF00F7EF
      EF00FFF7F700FFF7FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00C6DEEF00C6E7EF00C6EFF700C6DEEF00C6DEEF00C6E7EF00C6EF
      EF00C6DEEF00C6DEEF00C6DEEF00CEF7FF00B5DEE700C6F7F700CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000E7DEE70000000000E7DEE700E7DEE700F7F7
      F700E7DEE700E7DEE700E7DEE700E7DEE700F7F7F700E7DEE700E7DEE700E7DE
      E700EFE7EF00E7E7E700E7DEE700E7DEE700E7DEE700E7DEE700000000000000
      000000000000080808004A4A4A0000000000000000007B7B7B00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B000000000000000000000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CEC600CED6CE008C7BCE00735AD600DEDE
      D6005A5A520063635A00CEC6C600A59C9C0073736B009C9C94006B636300635A
      5A00A5A5A500BDB5B500F7FFFF00F7FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00ADADC600ADB5C600BDCEDE00ADADC600ADADC600B5B5CE00B5C6
      D600ADADC600ADADC600ADADC600C6EFEF0094A5AD00BDEFEF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000F7F7F700B5A5B500F7F7F700B5A5B500B5A5B500E7E7
      E700B5A5B500B5A5B500B5ADB500B5A5B500EFEFEF00B5A5B500B5A5B500B5AD
      B500CEC6CE00C6B5C600B5A5B500B5A5B500B5A5B500B5A5B500000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE00D6CEC600D6D6C600DED6CE00DED6
      CE00DEDED600DEDED600EFE7DE00EFE7DE00E7EFDE00EFEFE700EFEFEF00EFEF
      EF00F7F7EF00F7FFEF00FFF7EF0000000000FFFFF70000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F700522952004A3152009CADBD0052295200522952004A3152004A31
      52006B527300CEFFFF00BDD6DE0084316B00946B9400CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000EFEFEF005A31520063295200632952006B526B009473
      8C005A2952005A29520063315200D6C6D6006329520063295200523152006331
      5200946B8C007B4A6B0063315200523152006329520063295200000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEC6BD00CECEC600CECEC600DED6CE00DED6
      CE00D6DED600DEDED600DEDEDE00E7DEDE00E7EFDE00E7EFE700EFE7E700EFEF
      EF00F7EFE700F7EFEF00F7F7F700FFF7EF00FFFFF70000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F700945A8C00945A8C00945A8C00945A8C00945A8C00945A8C00BDCE
      DE00945A8C00945A8C00945A8C00945A8C00945A8C00945A8C00945A8C00945A
      8C00945A8C00945A8C008C94A500CEFFFF00945A8C00945A8C00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000F7EFF700D6BDCE008C527B0084527B008C5A7B00845A
      7300A5739400AD84A500845A73008C5A7B008C527B008C527B008C5A7B00845A
      7300DECED6008C527B00845A73008C5A7B0084527B008C527B00000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6CEBD00CEC6CE007363C6005242CE00D6CE
      CE0031393100393939009C9494005A5A5A00292929009C9C9C00292929006363
      63008C8C8C006B6B63009CA59C00F7FFEF00F7F7FF00F7FFFF00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00C6FFFF00B5CEDE00C6F7FF00B5CE
      DE00B5CEDE00B5CEDE00B5CEDE00B5CEDE00BDDEE700BDD6E700B5CEDE00B5CE
      DE00BDDEE700CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000DECEDE00DECEDE00DECEDE00DECEDE00F7EF
      F700DECEDE00DECEDE00DECEDE00DECEDE00E7DEE700E7D6E700DECEDE00DECE
      DE00DECEDE00DECEDE00DECEDE00FFF7FF00DECEDE00E7CEDE00000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B00000000007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B00000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6BDBD00CEC6BD00CEC6C600CECEC600D6CE
      C600CED6CE00DED6CE00D6DED600DEDED600E7D6DE00E7E7DE00E7E7DE00E7EF
      DE00EFE7EF00EFE7EF00EFF7EF00F7EFEF00F7F7EF00F7FFF700000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00C6F7F700ADB5C600C6F7F700ADB5
      CE00ADB5C600ADB5CE00ADBDC600ADB5C600B5C6DE00B5C6D600ADB5CE00ADBD
      CE00B5CEDE00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000FFF7FF00CEB5CE00D6B5CE00CEB5CE00CEBDCE00EFE7
      EF00D6B5CE00D6B5CE00CEBDCE00CEB5CE00DEC6DE00DEC6D600CEB5CE00CEBD
      CE00D6B5CE00D6B5CE00CEB5CE00FFF7F700CEB5CE00D6B5CE00000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEBDBD00C6CEB500B5ADC600AD9CC600CECE
      CE00A5A59C00ADAD9C00CEC6C600CEC6C600BDBDB500ADADA500CECEC600BDB5
      B500B5BDB500DEDED600C6C6BD00F7EFEF00F7EFEF00FFF7EF00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F70084397B007B426B007B427B0084397B007B3973007B427B00B5BD
      D600BDDEE70084397B00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      000000000000EFCEC600EFD6C600FFEFC600EFCEC600EFCEC600EFD6CE00F7DE
      D600EFCEC600F7E7C600EFD6C600EFD6C600FFF7EF00EFCEC600EFD6C600EFD6
      C600F7DED6000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECEBD00CECEBD00ADA5BD00A594C600CEC6
      C6009C9C9400A5A59400CEC6BD00CEC6BD00ADB5AD00A5A59C00C6C6BD00B5AD
      AD00B5B5AD00D6DECE00BDB5AD00EFEFEF00EFEFE700FFF7EF00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F7008C4A7B008C4A7B008C4A7B008C4A7B008C4A7B008C4A7B008C4A
      7B008C4A7B008C4A7B008C4A7B008C4A7B008C4A7B00BDD6E7008C4A7B008C4A
      7B008C4A7B00C6E7EF008C4A7B008C4A7B00B5BDCE008C4A7B008C4A7B008C4A
      7B00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      000000000000EFC6BD00EFCEBD00FFEFBD00EFCEBD00EFCEBD00EFCEC600EFDE
      D600EFCEBD00F7E7BD00EFD6BD00EFCEBD00FFF7EF00EFCEBD00EFD6BD00EFD6
      BD00EFDED6000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CEC600CEC6CE00CEC6C600C6BDBD00C6C6
      BD00CEC6CE00CEC6C600CECEC600D6CECE00DED6CE00DED6D600DEDED600DEDE
      D600E7DEDE00EFE7DE00E7E7E700EFEFE700EFE7EF00F7EFEF00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00B5C6D600CEFFFF00B5C6D600B5C6D600B5C6D600C6F7F700B5C6
      D600B5C6D600B5C6D600C6F7F700B5C6D600B5C6D600B5C6D600B5C6D600B5C6
      D600B5C6D600B5C6D600B5C6D600B5C6D600BDDEE700CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CECE00CECECE007B63CE005242CE00C6BD
      BD00292929002929290073737300A5A5A50063635A0063636300635A5A009C9C
      9C008C8C8C004A4A4A0063636300847B7B00EFE7EF00F7EFEF00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00B5CED600CEFFFF00B5CED600B5CED600B5CED600CEF7F700B5CE
      D600B5CED600B5CED600C6F7F700B5CED600B5CED600B5CED600B5CED600B5CE
      D600B5CED600B5CED600B5CED600B5CED600BDDEE700CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000F7EFF700AD428C00AD428C00AD428C00AD429400AD42
      9400BD6B9C00C67BAD00AD429400AD429400AD428C00EFD6E700AD429400AD42
      9400AD428C00F7DEEF00AD429400AD429400DEB5D600AD428C00000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DED6CE00D6DEC600D6CEC600CECEBD00CEC6
      C600C6C6B500CEC6BD00CEC6BD00CECECE00D6CEC600D6D6C600DED6CE00DED6
      CE00DEDED600DEDED600E7E7DE00EFE7DE00E7E7DE00EFEFEF00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F7008C5284008C5284008C52840094528C00BDC6DE0094739C00CEFF
      FF00BDDEE7008C528400CEFFFF009C84A5008C5284008C5284008C5284008C52
      84008C5284008C528400A594AD00946B94008C5284008C528400AD9CB500CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000FFF7FF00E7BDD600E7BDD600E7BDD600FFF7F700E7BD
      D600E7BDD600E7BDD600F7EFF700E7BDD600F7EFF700E7BDD600E7BDD600E7BD
      D600E7BDD600E7BDD600F7E7F700E7BDD600E7BDD600E7BDD600000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFDEDE00DEDECE00D6D6CE00DECECE00CECE
      CE00CEC6BD00C6C6B500CEC6BD00CEC6BD00CECEC600CECEC600DED6CE00DED6
      CE00D6DED600DEDED600DEDEDE00EFDEDE00E7EFDE00EFE7DE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F70084397300C6EFF700843973008C5284009C84A500843973008439
      730084397300843973008439730084397300B56BB500946B9400843973008439
      7300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000EFD6E700EFCEE700EFD6E700FFF7FF00EFCE
      E700EFD6E700EFCEE700FFF7F700EFD6E700FFF7F700EFD6E700EFCEE700EFCE
      E700EFD6E700EFCEE700F7EFF700EFD6E700EFCEE700EFD6E700000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7DEDE00DED6DE008C7BD6006B5ACE00D6D6
      C6004A4A4A007B7B7B00423939006B6B6B0052524A00C6BDB500424242007373
      7300A5A5A5004A524A00BDBDBD00DEDEDE00E7DEDE00E7EFDE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00ADB5C600ADB5C600ADB5C600ADB5C600ADB5C600ADB5C600ADB5
      C600ADB5C600ADB5C600ADB5C600C6EFEF00ADB5C600ADB5C600ADB5C600ADB5
      C600ADB5C600ADB5C600ADB5C600C6F7F700ADB5C600ADB5C600BDD6DE00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000FFEFF700CE5AAD00C663A500EFC6E700CE5AAD00CE63
      AD00F7DEEF00C663A50000000000DE84C600C663A500C65AA500CE63AD00CE5A
      AD00CE5AA500C663A500E794CE00D673B500CE63A500C65AA500000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7DEDE00EFDEDE00DED6DE00DEDECE00D6CE
      CE00CECECE00CEC6CE00C6CEBD00C6BDBD00CEC6BD00CEC6CE00CECEC600D6CE
      C600CED6CE00DED6CE00D6DED600DEDED600DED6DE00E7DEDE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00BDD6E700BDD6E700BDD6E700BDD6E700BDD6E700BDD6E700BDD6
      E700BDD6E700BDD6E700BDD6E700C6F7F700BDD6E700BDD6E700BDD6E700BDD6
      E700BDD6E700BDD6E700BDD6E700CEFFFF00BDD6E700BDD6E700C6E7EF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000FFEFF700CE39A500CE5AA500DE84BD00D639A500CE39
      9C00C6429C00F7C6E700CE399C00CE39A500CE429C00F7D6E700CE39A500D639
      9C0000000000CE63AD00CE399C00D639A500EFB5D600C6429C00000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFE7E700EFEFE700BDADD600AD9CDE00DED6
      D600848C84009C9C9400BDBDBD00A59C9C007B847300B5B5AD009C9494009C9C
      9C00B5ADAD00BDC6B500BDB5B500DED6CE00DEDED600EFDEDE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00C6EFF700946394009463940094639400946394009463
      940094639400BDD6DE0094639400946394009463940094639400946394009463
      9400BDCEDE009463940094639400C6EFEF00B5C6D600C6EFF700CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000FFF7FF00EFADDE00EFADDE00EFADDE00EFADDE00EFAD
      DE00EFADDE00EFADDE00EFADDE00FFEFF700EFADDE00EFADDE00EFADDE00EFAD
      DE00F7E7F700EFADDE00EFADDE00FFF7FF00EFADDE00EFADDE00000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700EFEFE700D6D6DE00D6C6DE00DEDE
      DE00C6BDB500C6C6B500D6C6C600BDBDB500B5ADA500BDC6AD00BDB5AD00BDAD
      AD00C6C6BD00C6C6BD00CECEC600DED6CE00D6DED600DEDEDE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F70084296B0084296B0084296B00C6E7EF0084296B0084296B008429
      6B0084296B0084296B0084296B0084296B00B5CED60084296B0084296B008429
      6B0084296B0084296B0084296B0084296B0084296B0084296B0084296B008429
      6B00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000F7E7F700F7E7F700F7E7F700F7DEF700F7DE
      F700F7E7F700F7E7F700F7DEF700FFF7FF00F7E7F700F7E7F700F7DEF700F7DE
      F700FFF7FF00F7E7F700F7E7F70000000000F7E7F700F7E7F700000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7EFEF00EFF7EF00EFEFE700E7DEDE00EFE7
      DE00E7D6DE00E7DED600D6D6CE00D6D6C600CEC6C600CEC6C600C6BDBD00C6C6
      BD00CEC6C600CEC6C600CECEC600D6CECE00D6D6CE00DEDECE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00ADA5BD00ADA5BD00ADA5BD00ADA5BD00BDDEE700ADA5BD00C6E7
      EF00ADA5BD00ADA5BD00ADA5BD00ADA5BD00ADA5BD00ADA5BD00B5BDCE00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      00000000000000000000FFF7F700EF73C600EF73C600EF73C600EF6BCE00EF6B
      C600EF73C600F7D6EF00EF6BC600EF6BC600EF73C600EF73C600EF6BC600EF6B
      CE00F7CEEF00EF73C600EF6BC600FFEFF700EF73C600EF73C600000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7FFEF00EFF7FF007B63DE004A31D600E7EF
      E700212121006363630039313100B5ADB50010101000525252009C949C002121
      2100B5ADB500292929008C8C8C00D6CEC600CECECE00D6DECE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00C6E7EF00C6E7EF00C6E7EF00C6E7EF00CEF7FF00C6E7EF00CEF7
      FF00C6E7EF00C6E7EF00C6E7EF00C6E7EF00C6E7EF00C6E7EF00C6EFF700CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFF700F7F7F700EFEFEF00EFEF
      E700E7E7E700E7DEDE00DEDEDE00DED6D600D6D6CE00D6CEC600CECEC600CEC6
      C600C6C6BD00CEC6BD00CEC6C600CECEC600D6CEC600DECECE00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00C6F7F7009C739C00C6F7F7009C739C009C739C00BDCEDE00C6E7EF009C73
      9C009C739C009C739C00BDDEE7009C739C009C739C009C739C00BDD6E7009C73
      9C009C739C009C739C00BDCEDE009C739C009C739C00C6F7F700CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000FFF7F700CE846B00F7CE6B00E7B56B00CE7B6B00CE846B00F7EFE700E7BD
      6B00CE7B6B00CE846B00EFC66B00C6846B00EFDEDE00EFBD6B00C6846B00C684
      6B00F7D66B00D68C6B00C6846B00F7EFEF000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFFFF700EFEF
      F700EFEFEF00EFE7EF00E7EFDE00E7DEDE00DED6DE00DED6CE00CECECE00CECE
      C600CEC6CE00CEBDBD00C6BDBD00C6CEBD00CEC6CE00CECEBD00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000808004A4A4A000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0000080800181818000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000808080018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290000000000000000000000000000000000292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFCECE0000000000FFCECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B00BDBD
      BD007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59C9C00DEDEDE00FFCECE0000000000000000007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400A59C9C00DEDEDE00FFCECE0000000000A59C
      9C00737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009494940094949400A59C9C00DEDEDE0000000000FFCE
      CE00A59C9C007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B00
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494009494940000000000EFFFFF00DEDE
      DE00FFCECE00A59C9C0073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF007B007B0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000949494000000000000000000EFFF
      FF00DEDEDE00FFCECE00A59C9C00737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000000000000000000000007B007B00
      7B000000FF007B007B0000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFFFFF00DEDEDE00FFCECE00A59C9C007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      FF007B007B000000FF007B007B0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFFFFF000000
      000000000000EFFFFF00DEDEDE00FFCECE00A59C9C0073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000BDBDBD00BDBDBD000000000000000000000000000000000000FF
      FF00BDBDBD00BDBDBD000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000007B00
      7B000000FF007B007B000000FF000000FF00000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFFFFF0000000000EFFF
      FF000000000000000000EFFFFF00DEDEDE00FFCECE00A59C9C00737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000FF000000000000000000000000000000000000000000000000007B000000
      FF007B007B000000FF007B007B000000FF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00FFCECE00EFFFFF000000
      0000EFFFFF000000000000000000EFFFFF00DEDEDE00FFCECE00A59C9C007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00BDBDBD00BDBDBD00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000FF0000000000000000000000000000007B7B7B00000000007B00
      7B000000FF007B007B000000FF000000FF00000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00FFCECE00DEDEDE00FFCECE00EFFF
      FF0000000000000000000000000000000000EFFFFF00DEDEDE00FFCECE00A59C
      9C000000000000000000000000000000000000000000000000006394CE006394
      CE006394CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      FF007B007B000000FF007B007B000000FF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000DEDEDE00FFCECE00DEDEDE00FFCECE00DEDEDE00FFCE
      CE00EFFFFF0000000000000000000000000000000000EFFFFF00DEDEDE000000
      000000000000000000006394CE006394CE006394CE006394CE0094CEFF0094CE
      FF006394CE000000000000000000000000000000000000000000FF0000000000
      0000FF00000000000000000000000000000000000000000000000000000000FF
      FF0000000000BDBDBD00000000000000000000000000000000000000000000FF
      FF007B7B7B0000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000FF000000000000000000000000007B007B00
      7B000000FF007B007B000000FF000000FF00000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000DEDEDE00FFCECE00DEDEDE00FFCECE00DEDEDE00FFCECE00DEDE
      DE00FFCECE00EFFFFF00000000006394CE000000000000000000000000006394
      CE006394CE006394CE0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394CE0000000000000000000000000000000000FF00000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      FF007B007B000000FF007B007B000000FF0000000000BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000FF00FF000000
      FF00FF00FF000000FF0000000000000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      0000DEDEDE00FFCECE00DEDEDE00FFCECE00DEDEDE00FFCECE00DEDEDE00FFCE
      CE00DEDEDE00FFCECE000000000000FFFF0000000000CEFFFF0094CEFF0094CE
      FF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394CE0000000000000000000000000000000000FF000000FF0000000000
      000000000000BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B000000000000000000000000007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      7B000000FF007B007B000000FF000000FF00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF000000FF00FF00FF000000FF00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B0000000000000000000000000000000000DEDE
      DE00FFCECE0000000000FFCECE00DEDEDE00A59C9C00DEDEDE00FFCECE00DEDE
      DE00FFCECE00DEDEDE00FFCECE000000000000FFFF0000000000000000000000
      00000000000000000000CEFFFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394CE0000000000000000000000000000000000FF000000FF0000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000007B7B7B007B7B7B000000000000000000000000007B7B7B000000
      00007B7B7B007B7B7B000000000000000000000000000000000000007B000000
      FF007B007B000000FF007B007B000000FF0000000000BDBDBD00BDBDBD000000
      00007B007B000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD000000000000000000BDBDBD00BDBDBD000000
      0000FF00FF000000FF00FF00FF00000000007B7B7B000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B000000000000000000A59C9C00A59C9C00FFCE
      CE00DEDEDE000000000000000000FFCECE0094949400A59C9C00DEDEDE00FFCE
      CE00DEDEDE00FFCECE00000000006394CE000000000000FFFF006394CE000000
      00000000000000000000000000002963FF0094CEFF0094CEFF0094CEFF0094CE
      FF000000000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B00
      7B000000FF007B007B000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF000000FF00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000073737300A59C9C00A59C
      9C00FFCECE000000000073737300000000009494940094949400A59C9C00DEDE
      DE00FFCECE00DEDEDE000000000094CEFF006394CE000000000000FFFF006394
      CE000000000000000000000000006394CE0094CEFF0094CEFF0094CEFF000000
      00000000000000000000000000000000000000000000FF00000000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF007B007B000000FF007B007B000000FF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00FF00FF00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000BDBDBD007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B0000000000000000006331290073737300A59C
      9C0000000000FF9494009494940073737300000000009494940094949400A59C
      9C00DEDEDE00FFCECE00DEDEDE000000000094CEFF006394CE000000000000FF
      FF006394CE0000000000000000006394CE006394CE0094CEFF00000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00000000000000000000FFFF0000000000BDBDBD00000000000000
      00007B7B7B00000000007B7B7B007B7B7B000000000000000000000000000000
      000000000000000000007B7B7B0000000000000000000000000000007B007B00
      7B000000FF007B007B000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000FF00FF00000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF000000FF00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      0000CECECE00FFCECE00FF949400949494007373730000000000949494009494
      9400A59C9C00DEDEDE00FFCECE00DEDEDE000000000094CEFF006394CE000000
      000000FFFF006394CE0000000000000000006394CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD000000000000FFFF0000000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000007B7B7B00000000000000
      FF007B007B000000FF007B007B000000FF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0000000000BDBDBD0000000000FF00FF000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00FF00FF00000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      0000EFFFFF00CECECE00FFCECE00FF9494009494940073737300000000009494
      940094949400A59C9C00DEDEDE00FFCECE00A59C9C000000000094CEFF006394
      CE000000000029FFFF006394CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000BDBDBD0000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF007B007B000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000BDBDBD0000000000FF00FF0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000EFFFFF00CECECE00FFCECE00FF94940094949400737373000000
      00009494940094949400A59C9C00DEDEDE0073737300000000000000000094CE
      FF006394CE000000000029FFFF006394CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF007B007B000000FF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD0000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000EFFFFF00CECECE00FFCECE00FF949400949494007373
      7300000000009494940094949400737373000000000000000000000000000000
      000000000000000000000000000000FFFF006394CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF00CECECE00FFCECE00FF9494009494
      9400737373000000000073737300000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF006394CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00BDBDBD007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000EFFFFF00CECECE00FFCECE00FF94
      9400949494007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF006394CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFFFFF00CECECE00FFCE
      CE00FF9494009494940073737300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000CE63FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B000000FF000000FF000000007B0000007B00007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFFFFF00CECE
      CE00FFCECE00FF94940094949400737373000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE63
      FF00CE63FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B000000FFFF0000FF00000000FF0000007B00007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00000000007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFFF
      FF00CECECE00FFCECE00FF949400949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B00000000007B0000007B00007B7B00007B7B007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFFFFF00CECECE00FFCECE00A59C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD007B0000000000FF0000007B0000FFFF00007B7B007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFCECE00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
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
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00424D3E000000000000003E000000
      2800000080000000A00000000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000080000007FFFFFFFFFFFFFFFFFFFFFFFF
      00000007FE000007FFFFFFFFFFFFFFFF37F00F37FC000007FFF003FFFFF0007F
      37C03F37FC0007F7C000FFFF8000000700000007FC0000F7C0FFFFFF8000FF87
      00000007FC000077DFFFFFFF80C43FC730000037C0000077DFFCECFF8FC437E7
      30000037E0000037CC0041FF8FE003E730800437F00307F7CFFFFFDF8F0007F3
      30000037FC0107F7CF0FFCDF8F000FF330000037FC000077CC0190DF8FC003F3
      30000037FC000037CFFFFFDF8F0003F330000037F00007F7CFFFFFDF8E0003F3
      30000037C0000037CD8018DF8F000FF337300037E00007F7CFFFFEDF8FE00FF3
      36300017F00000F7DFFFFFDF8F800FF334000007FC000077DC00C0DF9FCC4FF3
      30000007FC000077DF3FFFCF9FFC7FF130008007F8000037DFFEF9CF9FFF0001
      30008003F01FFFF7DC0C30CF8000000130018001C0FFFFF7FFFFFFCF80000001
      34038001FDFF0017FFFFFFCF8000000136E78001FDFFFFF7DE300CCF80000001
      00000001FDC00077CFFFFFCF80000DB136000301FDFFFFF7CFFFFFC780000DB1
      36084301FDFFFF07E7FFFFC78000000100000001FDF00207E3FFE00780000001
      37FFFF21FDF76ADFF0000007C000000100000001FDF0029FFF801FF7C0001FFF
      FFFFFFF9FDF0027FFFFFFFFFFFFFFFFFFFFFFFFDFC00007FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000001FFFFFFFFC0000001FFFFFFFF
      C000000180000007C0000001E0000001800000010000000780000001C0000001
      BFF00FF13FE00FF7BFFFFFC1C0000001BFE0FFF13FC0FFF7BFFFFF81DFFFFFF9
      B000001120000037B0000001DFFFFFF9BF0108713E401077BF010001D003C009
      BF0000313E000077BF000001DF040039B0003FF120007FF7B0000001D8043FF9
      B0000FF120001FF7B0000011D8043FF9B000027120200477B0000031D0043FF9
      B000007120000077B0000031D003C139BF0000F13E0001F7BE0000F1DFA2C7F9
      B0000071202000F7B00000F1DF0247F9B000001120000017B03E0011D0027FF9
      B000001120000017B07F0011D0020009A000000120000017B1E10071DA012079
      8000000120240007B1E12031DA0100790000000120000007A0F83071D0130019
      0000000120004007A0D83071D0008FF90000000120000001A009F031D81C0419
      0000000038000001A009F071D80045190000000020000001A0000011DC204439
      0000000020000401A0000011D020840900003F0020003E01A00000F1D8230FF9
      8000000020800001A0800071D8700FF98001FFC03FFFFF81B1E013F1D0083039
      8003FFE03FFFFFC1B0FFF3F1DFFFFFF98003FFF03FFFFFE1B83FC7F1DFFFFFF9
      800000000000000180000007DFFFFFF9FC3FFFFCFFFFFFF9FE001FFFC0000003
      FFFFFFFCFFFFFFFDFF40FFFFFFFFFFFFC7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      83F07FFFFFFFFFFFE0000001E000000101E03FFFFFFFFFFFC0000001C0000001
      01E03FFFFC00001FC0000001C000000121E43FFFFE003FDFC0000001DFFFFFF9
      30C60003FE001FDFC0000001DFFFFFF91D23BFFBFE0001DFC0000001DC000039
      01E03FFBFE0001DFC0000001DC00003903F03FFBFE0003DFC0000001DE800039
      87C01FFBFE0000DFC0000001DC000039F7FFDF7BFE00015FC0000001DC000039
      F3C0087BFE00005FC0000001DC000039F5F7F77BFE00001FC0000001DE000039
      F6C1C07BFE00001FC0000001DC000039F777FCFBFE00001FC0000001D80007F9
      F78063FBFE00001FC0000001D80007F9F7FFFFFBFE00001FC0000001DFFFFFF9
      F7C180FBFE00001FC0000001DC000039F7FFFFFBFE00001FC0000001DC000039
      F7C007FBFE00001FC0000001DE000039F7FFFFFBFE00001FC0000001DC020039
      F7C030FBFE00001FC0000001DC000839F7FFFFFBFE00001FC0000001DC000039
      F7FFFFFBFE00001FC0000001DE000139F7FFFFFBFE00001FC0000001DC000039
      F0000003FE00001FC0000001DFFFFFF9F0000003FF00001FC0000001D00000F9
      F0000003FFC0001FC0000001DFFFFFF9F0000003FC00003FC0000001DFFFFFF9
      FFFFFFFFFFFFFFFFC0000001DFFFFFF9FFFFFFFFFFFFFFFFC0000003C0000003
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFF
      FE1FFFFFFFFF0FFFE000003F00003FFFFC8FFFFFFFFC67FF8000001F7FFF3FFF
      F847FFFFFFF193FF8000000F7FFF3FFFF803FFFFFFC669FF8FFFC04F60033FFF
      F801FFFFFF19E4FF07FF03CF7FFF3FFFFC00FFFFFC67FA7F000001CF60030000
      FE207FFFFD9E9D3F81F01FCF7FFF0000FF703FFFFC7E7E9F000001CF60030000
      FED81FFFFDE9E34F00003FCF7FFF3FF8FDAC0FF8FEE7CFA7800001CF60033FF8
      FB1607C0FF7E3ED30000FFCF7FFF3FF8F60B0400C3BCFCE9000001CF60033FF8
      EC00800081CBE3E48003FFC37FFF3FF8D80000000181C79A0000018160033FF8
      B0000000007E067C002781807FFF3FF8A000000007FE09C280007C0060183FF8
      000004000FF807E90073FFF07FF07FF80000000F0FF21FE500000FF07FF4FFF8
      0000001F0FF0108D80784FF07FF1FFF80000003F87F05A6300000FF07FF3FFF8
      B000007FF9F0897F007A0FE10007FFF8D800003FFEE3637FE0010F9FF1FFFFF8
      EC00601FFF06F8FFF07E877FF1FFFFF8F600FE0FFF81FFFFF87F60FFF0000000
      FB01FF07FF1FFFFFFC7F81FFF0000000FD80FF83FE3FFFFFFE7FF8FFF0000000
      FEC07FC3FC7FFFFFFFFFFC7FF0000000FF607FE3F8FFFFFFFFFFFE3FF0000000
      FFB07FFFF1FFFFFFFFFFFF1FF0000000FFD0FFFFF3FFFFFFFFFFFF8FF0000000
      FFE1FFFFFFFFFFFFFFFFFFCFF000000000000000000000000000000000000000
      000000000000}
  end
  object popDataForms: TPopupMenu
    Left = 624
    Top = 100
    object popDataFormsSearch: TMenuItem
      Caption = '&Search'
      OnClick = popDataFormsSearchClick
    end
  end
end
