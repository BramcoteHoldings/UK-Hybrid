object frmInvoiceDebit: TfrmInvoiceDebit
  Left = 293
  Top = 270
  Caption = 'Creditor Invoice Credit Note'
  ClientHeight = 463
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    848
    463)
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 26
    Top = 40
    Width = 88
    Height = 15
    Alignment = taRightJustify
    Caption = 'Credit Note &Date'
  end
  object Label8: TLabel
    Left = 254
    Top = 62
    Width = 38
    Height = 15
    Caption = '&Reason'
    FocusControl = tbDesc
  end
  object Label4: TLabel
    Left = 6
    Top = 62
    Width = 108
    Height = 15
    Alignment = taRightJustify
    Caption = 'Credit Note &Number'
    FocusControl = tbRefno
  end
  object Label5: TLabel
    Left = 250
    Top = 40
    Width = 43
    Height = 15
    Caption = 'Creditor'
  end
  object lblAmountMsg: TLabel
    Left = 710
    Top = 441
    Width = 27
    Height = 15
    Anchors = [akRight, akBottom]
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 606
    ExplicitTop = 388
  end
  object lblTotal: TLabel
    Left = 831
    Top = 442
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 727
    ExplicitTop = 389
  end
  object lblTax: TLabel
    Left = 831
    Top = 424
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 727
    ExplicitTop = 371
  end
  object lblBalance: TLabel
    Left = 742
    Top = 423
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 638
    ExplicitTop = 370
  end
  object Label11: TLabel
    Left = 70
    Top = 87
    Width = 44
    Height = 15
    Alignment = taRightJustify
    Caption = '&Amount'
    FocusControl = neAmount
  end
  object lblUnallocatedMsg: TLabel
    Left = 549
    Top = 441
    Width = 66
    Height = 15
    Anchors = [akRight, akBottom]
    Caption = 'Unallocated'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = 445
    ExplicitTop = 388
  end
  object lblUnallocated: TLabel
    Left = 703
    Top = 441
    Width = 3
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = 599
    ExplicitTop = 388
  end
  object tbRefno: TEdit
    Left = 119
    Top = 61
    Width = 98
    Height = 23
    TabOrder = 1
  end
  object tbDesc: TEdit
    Left = 306
    Top = 60
    Width = 239
    Height = 23
    TabOrder = 2
    OnExit = tbDescExit
    OnKeyPress = tbDescKeyPress
  end
  object neAmount: TNumberEdit
    Left = 119
    Top = 85
    Width = 75
    Height = 23
    Alignment = taLeftJustify
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
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
    NoZero = True
    TabOrder = 3
    OnExit = neAmountExit
  end
  object dtpDate: TEnforceCustomDateEdit
    Left = 119
    Top = 37
    EditValue = 43644.896005162d
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    DataSet = dmAxiom.qryEntity
    Field = 'LOCKDATE'
    Width = 98
  end
  object lblCreditor: TcxLabel
    Left = 306
    Top = 38
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object grdLedger: TcxGrid
    Left = 6
    Top = 114
    Width = 834
    Height = 297
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 9
    object tvLedger: TcxGridDBTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object tvLedgerTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Matter'
          'Ledger')
        Properties.OnChange = tvLedgerTYPEPropertiesChange
        Width = 72
      end
      object tvLedgerREFNO: TcxGridDBColumn
        Caption = 'Reference'
        DataBinding.FieldName = 'REFNO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvLedgerREFNOPropertiesButtonClick
        Width = 79
      end
      object tvLedgerLONGDESC: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'LONGDESC'
        Options.Editing = False
        Options.Focusing = False
        Width = 192
      end
      object tvLedgerREASON: TcxGridDBColumn
        Caption = 'Rwason'
        DataBinding.FieldName = 'REASON'
        Width = 225
      end
      object tvLedgerTAXCODE: TcxGridDBColumn
        Caption = 'Tax rate'
        DataBinding.FieldName = 'TAXCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'CODE'
          end
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dmAxiom.dsTaxList
        Width = 53
      end
      object tvLedgerAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 70
      end
      object tvLedgerTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 37
      end
    end
    object grdLedgerLevel1: TcxGridLevel
      GridView = tvLedger
    end
  end
  object dsAllocs: TUniDataSource
    DataSet = qryAllocs
    Left = 104
    Top = 240
  end
  object dsAccount: TUniDataSource
    DataSet = qryAccount
    Left = 72
    Top = 240
  end
  object qryAccount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT I.*, I.ROWID FROM INVOICE I WHERE I.NCHEQUE = -1')
    CachedUpdates = True
    Left = 72
    Top = 208
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT A.*, A.ROWID FROM ALLOC A WHERE A.NALLOC = -1')
    CachedUpdates = True
    Left = 104
    Top = 208
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT TYPE, REFNO, LONGDESC, REASON, AMOUNT, TAXCODE, TAX, ROWI' +
        'D, WITHHOLD'
      'FROM LGRALLOC '
      'WHERE REFNO = '#39#39)
    CachedUpdates = True
    AfterInsert = qryLedgerAfterInsert
    AfterPost = qryLedgerAfterPost
    AfterDelete = qryLedgerAfterDelete
    Left = 40
    Top = 208
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 40
    end
    object qryLedgerLONGDESC: TStringField
      FieldName = 'LONGDESC'
      Size = 120
    end
    object qryLedgerREASON: TStringField
      FieldName = 'REASON'
      Size = 400
    end
    object qryLedgerAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnChange = qryLedgerAMOUNTChange
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      OnChange = qryLedgerTAXCODEChange
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 40
    Top = 240
  end
  object popGrid: TPopupMenu
    Left = 8
    Top = 240
    object popRemove: TMenuItem
      Caption = '&Remove'
      Default = True
      OnClick = popRemoveClick
    end
    object popEdit: TMenuItem
      Caption = '&Edit'
      OnClick = popEditClick
    end
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    AfterDelete = qryLedgerAfterDelete
    Left = 136
    Top = 208
  end
  object qryUpdateInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'update'
      'invoice'
      'set '
      'LEGAL_CR_AMOUNT = :LEGAL_CR_AMOUNT,'
      'TRADE_CR_AMOUNT = :TRADE_CR_AMOUNT'
      'where'
      'ninvoice = :ninvoice'
      '')
    Left = 179
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LEGAL_CR_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TRADE_CR_AMOUNT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ninvoice'
        Value = nil
      end>
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
    ImageOptions.Images = dmAxiom.ilstToolbar
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 681
    Top = 51
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 835
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOk'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnOk: TdxBarButton
      Caption = 'Create Credit Note'
      Category = 0
      Hint = 'Create Credit Note'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnOKClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
  end
end
