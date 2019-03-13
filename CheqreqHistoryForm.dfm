object frmCheqreqHistory: TfrmCheqreqHistory
  Left = 435
  Top = 196
  Caption = 'CheqReq History and Correction Tool'
  ClientHeight = 576
  ClientWidth = 774
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  DesignSize = (
    774
    576)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 26
    Width = 774
    Height = 100
    Align = alTop
    Caption = 'Matter Details'
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 18
      Width = 40
      Height = 13
      Caption = 'Matter #'
    end
    object Label2: TLabel
      Left = 15
      Top = 37
      Width = 57
      Height = 13
      Caption = 'Client Name'
    end
    object Label3: TLabel
      Left = 15
      Top = 56
      Width = 86
      Height = 13
      Caption = 'Matter Description'
    end
    object Label4: TLabel
      Left = 275
      Top = 18
      Width = 34
      Height = 13
      Caption = 'Partner'
    end
    object Label5: TLabel
      Left = 275
      Top = 37
      Width = 34
      Height = 13
      Caption = 'Lawyer'
    end
    object Label6: TLabel
      Left = 275
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Legal Assistant'
    end
    object Label7: TLabel
      Left = 545
      Top = 18
      Width = 57
      Height = 13
      Caption = 'Matter Type'
    end
    object Label8: TLabel
      Left = 545
      Top = 37
      Width = 34
      Height = 13
      Caption = 'Branch'
    end
    object DBText1: TDBText
      Left = 115
      Top = 18
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'NMATTER'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 115
      Top = 35
      Width = 150
      Height = 17
      DataField = 'TITLE'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 115
      Top = 56
      Width = 150
      Height = 35
      DataField = 'LONGDESCR'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object DBText4: TDBText
      Left = 355
      Top = 18
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PARTNER'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 355
      Top = 37
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'AUTHOR'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 355
      Top = 56
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'OPERATOR'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 615
      Top = 18
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'TYPE'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 615
      Top = 37
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'BRANCH'
      DataSource = dsMatterDetails
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbPartner: TLabel
      Left = 410
      Top = 18
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'lbPartner'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbLawyer: TLabel
      Left = 410
      Top = 37
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'lbLawyer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbLegalAsst: TLabel
      Left = 410
      Top = 56
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'lbLegalAsst'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbMatterType: TLabel
      Left = 660
      Top = 18
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'lbMatterType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbBranch: TLabel
      Left = 660
      Top = 37
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'lbBranch'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 129
    Width = 782
    Height = 358
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Cheque Requests Drawn against this Matter'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 2
      Top = 132
      Width = 778
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
    end
    object dbgCheqReqs: TDBGrid
      Left = 2
      Top = 15
      Width = 778
      Height = 117
      Align = alClient
      DataSource = dsCheqReqs
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmCheqReqs
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = dbgCheqReqsDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NCHEQREQ'
          ReadOnly = True
          Title.Caption = 'NCheqReq'
          Title.Color = 8454143
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMATTER'
          Title.Caption = 'NMatter'
          Title.Color = 8454143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FILEID'
          Title.Caption = 'File Id'
          Title.Color = 8454143
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CONVERTED'
          ReadOnly = True
          Title.Caption = 'Converted?'
          Title.Color = 8454143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCHEQUE'
          Title.Caption = 'NCheque'
          Title.Color = 8454143
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HELD'
          Title.Caption = 'Held?'
          Title.Color = 8454143
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ANTICIPATED'
          Title.Caption = 'Ant'#39'd?'
          Title.Color = 8454143
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAYEE'
          Title.Caption = 'Payee'
          Title.Color = 8454143
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REQDATE'
          ReadOnly = True
          Title.Caption = 'Req'#39'd Date'
          Title.Color = 8454143
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          Title.Caption = 'Description'
          Title.Color = 8454143
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFNO'
          Title.Caption = 'Ref#'
          Title.Color = 8454143
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANK'
          Title.Caption = 'Bank'
          Title.Color = 8454143
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMOUNT'
          ReadOnly = True
          Title.Caption = '$ Amount'
          Title.Color = 8454143
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAXCODE'
          ReadOnly = True
          Title.Caption = 'Tax Code'
          Title.Color = 8454143
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAX'
          ReadOnly = True
          Title.Caption = '$ Tax'
          Title.Color = 8454143
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_AMOUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Caption = '$ Total'
          Title.Color = 8454143
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRUST'
          Title.Caption = 'Trust?'
          Title.Color = 8454143
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTHOR'
          Title.Caption = 'Author'
          Title.Color = 8454143
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'URGENT'
          Title.Caption = 'Urgent?'
          Title.Color = 8454143
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BILLED'
          Title.Caption = 'Billed?'
          Title.Color = 8454143
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMEMO'
          Title.Color = 8454143
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REV_NCHEQREQ'
          ReadOnly = True
          Title.Color = 8454143
          Visible = True
        end>
    end
    object pcCheqReqs: TPageControl
      Left = 2
      Top = 139
      Width = 778
      Height = 217
      ActivePage = tsReceipts
      Align = alBottom
      TabOrder = 1
      object tsReceipts: TTabSheet
        Caption = 'Receipt Transactions for these Cheque Requests'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter2: TSplitter
          Left = 0
          Top = 89
          Width = 770
          Height = 7
          Cursor = crVSplit
          Align = alTop
          Beveled = True
        end
        object gbReceipts: TGroupBox
          Left = 0
          Top = 96
          Width = 770
          Height = 93
          Align = alClient
          Caption = 'Receipts'
          TabOrder = 0
          object dbgReceipts: TDBGrid
            Left = 2
            Top = 15
            Width = 766
            Height = 76
            Align = alClient
            DataSource = dsReceipts
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'PRINTER'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRECEIPT'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CREATED'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TYPE'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACCT'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RCPTNO'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAYOR'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DRAWER'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANK'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BRANCH'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHQNO'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REVERSED'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RVBY'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DCLEARDATE'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CCTYPE'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANKED'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLEARED'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NTRANS'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TRUST'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUFCHQ'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NBANKDEP'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SYSTEM_DATE'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRINTED'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NNAME'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMOUNT'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCHEQUE'
                Title.Color = 16777088
                Width = 50
                Visible = True
              end>
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 770
          Height = 89
          Align = alTop
          TabOrder = 1
          object Splitter4: TSplitter
            Left = 301
            Top = 1
            Width = 7
            Height = 87
            Beveled = True
          end
          object dbgCheqReqTrans: TDBGrid
            Left = 1
            Top = 1
            Width = 300
            Height = 87
            Align = alLeft
            DataSource = dsCheqReqTrans
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = pmCheqreqTrans
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
                Title.Color = 8421631
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMOUNT'
                Title.Color = 8421631
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NALLOC'
                Title.Color = 8421631
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCHEQREQ'
                Title.Color = 8421631
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPERATOR'
                Title.Color = 8421631
                Width = 65
                Visible = True
              end>
          end
          object dbgReceiptAllocs: TDBGrid
            Left = 308
            Top = 1
            Width = 461
            Height = 87
            Align = alClient
            DataSource = dsReceiptAllocs
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NALLOC'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANK'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCHEQUE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APPROVAL'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRECEIPT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLEARED'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DCLEARDATE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CREATED'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACCT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NMATTER'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REFNO'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TYPE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCLIENT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NJOURNAL'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAYER'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TRUST'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BILLED'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILEID'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NTRANS'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NMEMO'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENT_NAME'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SYSTEM_DATE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MATTER_DESC'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OVERDRAWN'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISB_ONLY'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRIVATE'
                Title.Color = 8454016
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TAXCODE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUNDRYTYPE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISBTEXT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NINVOICE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UPCRED'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PMNT_TO_UPCRED'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANTD'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMOUNT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FEE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OUTLAY'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUNDRY'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SPEC_PURPOSE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TAX'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRIORBALANCE'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISB_CRDIT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANTD_CRDIT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FEES_CRDIT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TAX_CRDIT'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISB'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCHEQREQ'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RV_NALLOC'
                Title.Color = 8454016
                Width = 50
                Visible = True
              end>
          end
        end
      end
      object tsPayments: TTabSheet
        Caption = 'Payment Transactions against these Cheque Requests'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter3: TSplitter
          Left = 0
          Top = 76
          Width = 770
          Height = 7
          Cursor = crVSplit
          Align = alTop
          Beveled = True
        end
        object Label9: TLabel
          Left = 80
          Top = 30
          Width = 42
          Height = 13
          Caption = 'NALLOC'
        end
        object dbgPaymentAllocs: TDBGrid
          Left = 0
          Top = 0
          Width = 770
          Height = 76
          Align = alTop
          DataSource = dsPaymentAllocs
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'NALLOC'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANK'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCR'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCHEQUE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APPROVAL'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRECEIPT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CLEARED'
              Title.Alignment = taCenter
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DCLEARDATE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CREATED'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACCT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMATTER'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFNO'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TYPE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCLIENT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NJOURNAL'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAYER'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TRUST'
              Title.Alignment = taCenter
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'BILLED'
              Title.Alignment = taCenter
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILEID'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NTRANS'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMEMO'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENT_NAME'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SYSTEM_DATE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MATTER_DESC'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OVERDRAWN'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB_ONLY'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRIVATE'
              Title.Color = 8453888
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUNDRYTYPE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISBTEXT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NINVOICE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCRED'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PMNT_TO_UPCRED'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMOUNT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OUTLAY'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUNDRY'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SPEC_PURPOSE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAXCODE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAX'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRIORBALANCE'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB_CRDIT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD_CRDIT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEES_CRDIT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAX_CRDIT'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCHEQREQ'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RV_NALLOC'
              Title.Color = 8453888
              Width = 50
              Visible = True
            end>
        end
        object gbCheques: TGroupBox
          Left = 0
          Top = 83
          Width = 770
          Height = 106
          Align = alClient
          Caption = 'Cheques'
          TabOrder = 1
          object dbgCheque: TDBGrid
            Left = 2
            Top = 15
            Width = 766
            Height = 89
            Align = alClient
            DataSource = dsCheque
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'PRINTER'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NCHEQUE'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CREATED'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACCT'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TYPE'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAYEE'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHQNO'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APPROVAL'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REQBY'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RVBY'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REVERSED'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NTRANS'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BANKED'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TRUST'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUFCHQ'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRESENTED'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SYSTEM_DATE'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRINTED'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RECONDATE'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NNAME'
                Title.Color = 16744703
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMOUNT'
                Title.Color = 16744703
                Visible = True
              end>
          end
        end
      end
      object tsBills: TTabSheet
        Caption = 'Bill details for these Cheque Requests'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgBills: TDBGrid
          Left = 0
          Top = 0
          Width = 770
          Height = 189
          Align = alClient
          DataSource = dsBillDetails
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'NMEMO'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NTRANS'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GENERATED'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISPATCHED'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INTERIM'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMATTER'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEES_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUND_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LEGAL_AID_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM_DATE_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANK_ACCT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BILL_TO'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMAT_FILE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RV_TYPE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RV_NMEMO'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AUTHOR'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARTNER'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_LAST_RECPT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FULLY_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INV_NOTE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOWNER'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EXPPAYMENT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCLIENT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILEID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFNO'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BILLTEMPLATE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CREDITTYPE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NORECOVERY'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESCALATION'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCRED_FLAG'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEES'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUND'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRUST'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBTORS'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEES_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUND_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB_CRDIT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD_CRDIT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAX'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEES_CRDIT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAX_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAX_CRDIT'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEESTAX'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISBTAX'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUNDTAX'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEESTAX_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISBTAX_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUNDTAX_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTDTAX'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTDTAX_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCRED'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCRED_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCREDTAX'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCREDTAX_PAID'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISB_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTD_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEES_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCRED_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUND_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISBTAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTDTAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FESSTAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCREDTAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUNDTAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEESTAX_WOFF'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEESTAXFREE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISBTAXFREE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUNDTAXFREE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTDTAXFREE'
              Title.Color = 12615808
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPCREDTAXFREE'
              Title.Color = 12615808
              Visible = True
            end>
        end
      end
    end
  end
  object btnClose: TButton
    Left = 695
    Top = 525
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Close'
    TabOrder = 6
    OnClick = btnCloseClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 557
    Width = 774
    Height = 19
    Panels = <>
  end
  object rbShowAllForThisMatter: TRadioButton
    Left = 4
    Top = 513
    Width = 381
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 
      'Show all transactions related to these cheque requests (this mat' +
      'ter only)'
    TabOrder = 3
    OnClick = rbShowAllForThisMatterClick
  end
  object rbShowRelated: TRadioButton
    Left = 4
    Top = 534
    Width = 381
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 
      'Show only those transactions related to the selected Cheque Requ' +
      'est'
    TabOrder = 4
    OnClick = rbShowRelatedClick
  end
  object ActionToolBar: TActionToolBar
    Left = 0
    Top = 0
    Width = 774
    Height = 26
    ActionManager = ActionManager
    Caption = 'ActionToolBar'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object rbShowAllForAll: TRadioButton
    Left = 4
    Top = 492
    Width = 381
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 
      'Show all transactions related to these cheque requests (includes' +
      ' all matters)'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = rbShowAllForThisMatterClick
  end
  object gbLegend: TGroupBox
    Left = 390
    Top = 490
    Width = 301
    Height = 61
    Anchors = [akRight, akBottom]
    Caption = 'Legend - Colours indicate source Tables in the Database '
    TabOrder = 8
    object Shape1: TShape
      Left = 10
      Top = 37
      Width = 13
      Height = 13
      Brush.Color = 8454143
    end
    object Shape2: TShape
      Left = 95
      Top = 17
      Width = 13
      Height = 13
      Brush.Color = 8421631
    end
    object Shape3: TShape
      Left = 95
      Top = 37
      Width = 13
      Height = 13
      Brush.Color = 8453888
    end
    object Shape4: TShape
      Left = 220
      Top = 37
      Width = 13
      Height = 13
      Brush.Color = 16744703
    end
    object Shape5: TShape
      Left = 220
      Top = 17
      Width = 13
      Height = 13
      Brush.Color = 16777088
    end
    object Label10: TLabel
      Left = 30
      Top = 37
      Width = 53
      Height = 13
      Caption = 'CHEQREQ'
    end
    object Label11: TLabel
      Left = 115
      Top = 17
      Width = 96
      Height = 13
      Caption = 'CHEQREQ_TRANS'
    end
    object Label17: TLabel
      Left = 115
      Top = 37
      Width = 34
      Height = 13
      Caption = 'ALLOC'
    end
    object Label18: TLabel
      Left = 240
      Top = 37
      Width = 45
      Height = 13
      Caption = 'CHEQUE'
    end
    object Label19: TLabel
      Left = 240
      Top = 17
      Width = 46
      Height = 13
      Caption = 'RECEIPT'
    end
    object Shape6: TShape
      Left = 10
      Top = 17
      Width = 13
      Height = 13
      Brush.Color = clBlue
    end
    object Label20: TLabel
      Left = 30
      Top = 17
      Width = 45
      Height = 13
      Caption = 'MATTER'
    end
    object Shape7: TShape
      Left = 155
      Top = 37
      Width = 13
      Height = 13
      Brush.Color = 12615808
    end
    object Label12: TLabel
      Left = 175
      Top = 37
      Width = 41
      Height = 13
      Caption = 'NMEMO'
    end
  end
  object ImageList: TImageList
    Left = 475
    Top = 50
    Bitmap = {
      494C01010A000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000FF00000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000FF00000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084FFFF0084FFFF0084FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084FFFF0084FFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FF
      FF0084FFFF0084FFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FF
      000084FF000084FF000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000084FFFF0084FFFF0084FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FF
      FF0084FFFF0084FFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FF
      000084FF000084FF000000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FFFF0084FFFF0084FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FF
      FF0084FFFF0084FFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FF
      000084FF000084FF000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084FFFF0084FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000FF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000084FFFF0084FFFF0084FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000084FFFF0084FFFF0084FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF00000084FFFF0084FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FFFF
      0000FFFF0000FFFF0000FFFFFF000000000000000000000000008400FF008400
      FF008400FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000008400FF008400
      FF008400FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000008400FF008400
      FF008400FF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008400FF008400
      FF008400FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000008400FF008400
      FF008400FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000008400FF008400
      FF008400FF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF000000000000000000000000008400FF008400
      FF008400FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000008400FF008400
      FF008400FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000008400FF008400
      FF008400FF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000FF008484840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF008484840000000000000000000000000000000000FFFFFF000000
      00000000FF008484840000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF00848484000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF007B7B7B000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00848484000000000000000000000000000000FF000000
      FF00848484000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000FF000000FF000000FF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF007B7B7B00FFFFFF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF0084848400FFFFFF000000FF000000FF008484
      8400000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000FF007B7B7B00FFFF
      FF000000000000000000000000000000FF000000FF007B7B7B0000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000FF000000FF000000FF0084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000FF000000FF007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF007B7B
      7B0000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF0084848400FFFFFF000000FF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      FF007B7B7B0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0084848400FFFFFF00FFFFFF00000000000000FF000000
      FF00848484000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000FF007B7B7B000000000000000000000000000000FF000000FF000000
      FF000000FF0084848400FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF00848484000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF007B7B7B00000000000000FF000000FF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0084848400000000000000000000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FEFFFFF900000000FC7FE7FF00000000FABFC3F300000000FEBFC3E700000000
      FE3FE1C700000000FC3FF08F00000000F87FF81F00000000F8FFFC3F00000000
      FAFFF81F00000000FABFF09F00000000FC7FC1C700000000FEFF83E300000000
      FFFF8FF100000000FFFFFFFF00000000FF00800080008000FF00800080008000
      FF00C000C000C000FE00E000E000E000FE00F000F000F000FE00F800F800F800
      FF00FC00FC00FC00FF80FE00FE00FE000000FF00FF00FF000000FF80FF80FF80
      0000838083808380000083E083E083E0000083E083E083E0000083E083E083E0
      00008384838483840000FFFEFFFEFFFEFFFFFFFFFFFFFFFFFFFFC007C00FC00F
      07C1C007C009C00F07C1C007C00FC00F07C1C007C003C00F0101C007C007C00F
      0001C007C007C00F0201C007C00FC00F02018007C00FC00F8003C007C00FC00F
      C107C007C00FC00FC107C007C00FC00FE38FC007C007C01FE38FC0138023C03F
      E38FC0388071C07FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryMatterDetails: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select NMATTER, FILEID, TITLE, LONGDESCR, PARTNER, AUTHOR, OPERA' +
        'TOR, TYPE, BRANCH'
      'from matter'
      'where fileid = :fileid')
    AfterOpen = qryMatterDetailsAfterOpen
    BeforeClose = qryMatterDetailsBeforeClose
    Left = 195
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fileid'
      end>
  end
  object dsMatterDetails: TDataSource
    AutoEdit = False
    DataSet = qryMatterDetails
    Left = 195
    Top = 85
  end
  object qryCheqReqs: TUniQuery
    SQLUpdate.Strings = (
      'update cheqreq'
      'set converted = Upper(:CONVERTED),'
      'held = Upper(:HELD),'
      'anticipated = Upper(:ANTICIPATED),'
      'Payee = :PAYEE,'
      'descr = :DESCR,'
      'refno = :REFNO,'
      'bank = Upper(:BANK),'
      'trust = Upper(:TRUST),'
      'author = Upper(:AUTHOR),'
      'urgent = Upper(:URGENT),'
      'billed = Upper(:BILLED),'
      'nmemo = :NMEMO'
      'where ncheqreq = :OLD_NCHEQREQ')
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select'
      '  ncheqreq,'
      '  nmatter,'
      '  fileid,'
      '  converted,'
      '  ncheque,'
      '  held,'
      '  anticipated,'
      '  payee,'
      '  reqdate,'
      '  descr,'
      '  refno,'
      '  amount,'
      '  taxcode,'
      '  tax,'
      '  nvl(amount, 0) + nvl(tax, 0) as Total_Amount,'
      '  bank,'
      '  trust,'
      '  author,'
      '  urgent,'
      '  billed,'
      '  nmemo,'
      '  rev_ncheqreq'
      'from cheqreq'
      'where nmatter = :nmatter or'
      '      fileid = nvl(:fileid, fileid)')
    MasterSource = dsMatterDetails
    AfterOpen = qryCheqReqsAfterOpen
    BeforeClose = qryCheqReqsBeforeClose
    AfterPost = qryCheqReqsAfterPost
    BeforeScroll = qryCheqReqsBeforeScroll
    AfterScroll = qryCheqReqsAfterScroll
    Left = 220
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmatter'
      end
      item
        DataType = ftUnknown
        Name = 'fileid'
      end>
  end
  object dsCheqReqs: TDataSource
    DataSet = qryCheqReqs
    Left = 305
    Top = 170
  end
  object dsPaymentAllocs: TDataSource
    AutoEdit = False
    DataSet = qryPaymentAllocs
    Left = 445
    Top = 315
  end
  object qryPaymentAllocs: TUniQuery
    SQLUpdate.Strings = (
      'update alloc'
      'set '
      '  amount = :AMOUNT,'
      '  tax = :TAX'
      'where'
      'nalloc = :OLD_NALLOC')
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  ALLOC'
      'WHERE'
      '  NCHEQREQ IS NOT NULL')
    BeforeOpen = qryPaymentAllocsBeforeOpen
    AfterOpen = qryPaymentAllocsAfterOpen
    BeforeClose = qryPaymentAllocsBeforeClose
    Left = 445
    Top = 265
  end
  object dsCheqReqTrans: TDataSource
    DataSet = qryCheqReqTrans
    Left = 94
    Top = 330
  end
  object qryCheqReqTrans: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  *, ROWID'
      'FROM'
      '  CHEQREQ_TRANS '
      'WHERE'
      '  NCHEQREQ IN (SELECT'
      '                     NCHEQREQ'
      '                   FROM'
      '                     CHEQREQ'
      '                   WHERE'
      '                     NMATTER = :NMATTER OR'
      '                     FILEID = NVL(:FILEID, FILEID))')
    BeforeOpen = qryCheqReqTransBeforeOpen
    AfterOpen = qryCheqReqTransAfterOpen
    BeforeClose = qryCheqReqTransBeforeClose
    Left = 77
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMATTER'
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
      end>
  end
  object dsCheque: TDataSource
    AutoEdit = False
    DataSet = qryCheque
    Left = 300
    Top = 440
  end
  object qryCheque: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CHEQUE'
      'WHERE'
      '  NCHEQUE IN (SELECT'
      '                NCHEQUE'
      '              FROM'
      '                ALLOC'
      '              WHERE'
      '                NCHEQREQ IS NOT NULL)')
    BeforeOpen = qryChequeBeforeOpen
    Left = 300
    Top = 390
  end
  object dsReceipts: TDataSource
    AutoEdit = False
    DataSet = qryReceipts
    Left = 155
    Top = 440
  end
  object qryReceipts: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  RECEIPT'
      'WHERE'
      '  NRECEIPT IN (SELECT'
      '                 A.NRECEIPT'
      '               FROM'
      '                 CHEQREQ_TRANS CRT, ALLOC A'
      '               WHERE'
      '                 A.NALLOC = CRT.NALLOC)')
    BeforeOpen = qryReceiptsBeforeOpen
    Left = 155
    Top = 390
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = aFindMatter
            Caption = '&Find Matter'
            ImageIndex = 0
          end
          item
            Caption = '-'
          end
          item
            Action = aMarkCheqReqAsConverted
            Caption = '&Mark this Cheque Request as Converted'
            ImageIndex = 1
            ShowCaption = False
          end
          item
            Action = aMarkCheqReqAsUnconverted
            Caption = 'M&ark this Cheque Request as Un-converted'
            ImageIndex = 2
            ShowCaption = False
          end
          item
            Action = aMarkAsFromReversedBill
            Caption = 'Ma&rk this Cheque Request as belonging to a Reversed Bill'
            ImageIndex = 3
            ShowCaption = False
          end
          item
            Action = aAllocateCheqReqtoCheque
            Caption = 'All&ocate this Cheque Request to an Existing Cheque'
            ImageIndex = 4
            ShowCaption = False
          end
          item
            Action = aDeleteCheqreq
            Caption = 'Delete t&his Cheque Request'
            ImageIndex = 9
            ShowCaption = False
          end
          item
            Caption = '-'
          end
          item
            Action = aMoveTransToOtherCheqreq
            Caption = 'R&e-allocate this Cheqreq Transaction to another Cheque Request'
            ImageIndex = 5
            ShowCaption = False
          end
          item
            Action = aMoveTransToOtherAlloc
            Caption = 
              'Re-a&llocate this Cheqreq Transaction to another Allocation Reco' +
              'rd'
            ImageIndex = 6
            ShowCaption = False
          end
          item
            Action = aDisburseTransToUnreceiptedCheqReqs
            Caption = 'Re-alloca&te this Cheqreq Transaction to un-receipted Cheqreqs'
            ImageIndex = 7
            ShowCaption = False
          end
          item
            Action = aChangeAmountOfTrans
            Caption = '&Change the amount of this Cheque Request Transaction'
            ImageIndex = 8
            ShowCaption = False
          end
          item
            Action = aDeleteCheqreqTrans
            Caption = '&Delete this Cheqreq Transaction'
            ImageIndex = 9
            ShowCaption = False
          end
          item
            Caption = '-'
          end>
        ActionBar = ActionToolBar
      end>
    Images = ImageList
    Left = 475
    Top = 5
    StyleName = 'XP Style'
    object aFindMatter: TAction
      Caption = 'Find Matter'
      ImageIndex = 0
      OnExecute = aFindMatterExecute
    end
    object aMarkCheqReqAsConverted: TAction
      Caption = 'Mark this Cheque Request as Converted'
      Enabled = False
      Hint = 'Mark this Cheque Request as Converted'
      ImageIndex = 1
      OnExecute = aMarkCheqReqAsConvertedExecute
      OnUpdate = aMarkCheqReqAsConvertedUpdate
    end
    object aMarkCheqReqAsUnconverted: TAction
      Caption = 'Mark this Cheque Request as Un-converted'
      Enabled = False
      Hint = 'Mark this Cheque Request as Un-converted'
      ImageIndex = 2
      OnExecute = aMarkCheqReqAsUnconvertedExecute
      OnUpdate = aMarkCheqReqAsUnconvertedUpdate
    end
    object aMarkAsFromReversedBill: TAction
      Caption = 'Mark this Cheque Request as belonging to a Reversed Bill'
      Enabled = False
      Hint = 'Mark this Cheque Request as belonging to a Reversed Bill'
      ImageIndex = 3
      OnExecute = aMarkAsFromReversedBillExecute
      OnUpdate = aMarkAsFromReversedBillUpdate
    end
    object aAllocateCheqReqtoCheque: TAction
      Caption = 'Allocate this Cheque Request to an Existing Cheque'
      Enabled = False
      Hint = 'Allocate this Cheque Request to an Existing Cheque'
      ImageIndex = 4
      OnExecute = aAllocateCheqReqtoChequeExecute
      OnUpdate = aAllocateCheqReqtoChequeUpdate
    end
    object aDeleteCheqreq: TAction
      Caption = 'Delete this Cheque Request'
      Enabled = False
      Hint = 'Delete this Cheque Request'
      ImageIndex = 9
      OnExecute = aDeleteCheqreqExecute
      OnUpdate = aDeleteCheqreqUpdate
    end
    object aMoveTransToOtherCheqreq: TAction
      Caption = 'Re-allocate this Cheqreq Transaction to another Cheque Request'
      Enabled = False
      Hint = 'Re-allocate this Cheqreq Transaction to another Cheque Request'
      ImageIndex = 5
      OnExecute = aMoveTransToOtherCheqreqExecute
      OnUpdate = aMoveTransToOtherCheqreqUpdate
    end
    object aMoveTransToOtherAlloc: TAction
      Caption = 
        'Re-allocate this Cheqreq Transaction to another Allocation Recor' +
        'd'
      Enabled = False
      Hint = 
        'Re-allocate this Cheqreq Transaction to another Allocation Recor' +
        'd'
      ImageIndex = 6
      OnExecute = aMoveTransToOtherAllocExecute
      OnUpdate = aMoveTransToOtherAllocUpdate
    end
    object aDisburseTransToUnreceiptedCheqReqs: TAction
      Caption = 'Re-allocate this Cheqreq Transaction to un-receipted Cheqreqs'
      Enabled = False
      ImageIndex = 7
      OnExecute = aDisburseTransToUnreceiptedCheqReqsExecute
      OnUpdate = aDisburseTransToUnreceiptedCheqReqsUpdate
    end
    object aChangeAmountOfTrans: TAction
      Caption = 'Change the amount of this Cheque Request Transaction'
      Enabled = False
      Hint = 'Change the amount of this Cheque Request Transaction'
      ImageIndex = 8
      OnExecute = aChangeAmountOfTransExecute
      OnUpdate = aChangeAmountOfTransUpdate
    end
    object aDeleteCheqreqTrans: TAction
      Caption = 'Delete this Cheqreq Transaction'
      Enabled = False
      Hint = 'Delete this Cheqreq Transaction'
      ImageIndex = 9
      OnExecute = aDeleteCheqreqTransExecute
      OnUpdate = aDeleteCheqreqTransUpdate
    end
  end
  object pmCheqReqs: TPopupMenu
    Left = 395
    Top = 170
    object miMarkthisChequeRequestasConverted: TMenuItem
      Action = aMarkCheqReqAsConverted
    end
    object MarkthisChequeRequestasConverted1: TMenuItem
      Action = aMarkCheqReqAsUnconverted
    end
    object MarkthisCheqreqRequestasbelongingtoaReversedBill1: TMenuItem
      Action = aMarkAsFromReversedBill
    end
    object AllocatethisChequeRequesttoanExistingCheque1: TMenuItem
      Action = aAllocateCheqReqtoCheque
    end
    object DeletethisChequeRequest1: TMenuItem
      Action = aDeleteCheqreq
    end
  end
  object pmCheqreqTrans: TPopupMenu
    Left = 173
    Top = 211
    object ReallocatethisCheqreqTransactiontoanotherChequeRequest1: TMenuItem
      Action = aMoveTransToOtherCheqreq
    end
    object ReallocatethisCheqreqTransactiontoanotherAllocationRecord1: TMenuItem
      Action = aMoveTransToOtherAlloc
    end
    object ChangetheamountofthisChequeRequestTransaction1: TMenuItem
      Action = aChangeAmountOfTrans
    end
    object ReallocatethisCheqreqTransactiontounreceiptedCheqreqs1: TMenuItem
      Action = aDisburseTransToUnreceiptedCheqReqs
    end
    object DeletethisCheqreqTransaction1: TMenuItem
      Action = aDeleteCheqreqTrans
    end
  end
  object qryReceiptAllocs: TUniQuery
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  ALLOC'
      'WHERE'
      '  NALLOC IN (SELECT'
      '               NALLOC'
      '             FROM'
      '               CHEQREQ_TRANS'
      '             WHERE'
      '               NCHEQREQ IN (SELECT'
      '                              NCHEQREQ'
      '                            FROM'
      '                              CHEQREQ'
      '                            WHERE'
      '                              NMATTER = :NMATTER OR'
      '                              FILEID = NVL(:FILEID, FILEID)))')
    BeforeOpen = qryReceiptAllocsBeforeOpen
    AfterOpen = qryReceiptAllocsAfterOpen
    BeforeClose = qryReceiptAllocsBeforeClose
    Left = 345
    Top = 265
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMATTER'
      end
      item
        DataType = ftUnknown
        Name = 'FILEID'
      end>
  end
  object dsReceiptAllocs: TDataSource
    AutoEdit = False
    DataSet = qryReceiptAllocs
    Left = 345
    Top = 315
  end
  object qryBillDetails: TUniQuery
    SQLUpdate.Strings = (
      'update alloc'
      'set '
      '  amount = :AMOUNT,'
      '  tax = :TAX'
      'where'
      'nalloc = :OLD_NALLOC')
    DataTypeMap = <>
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  NMEMO')
    BeforeOpen = qryBillDetailsBeforeOpen
    Left = 645
    Top = 255
  end
  object dsBillDetails: TDataSource
    AutoEdit = False
    DataSet = qryBillDetails
    Left = 645
    Top = 305
  end
end
