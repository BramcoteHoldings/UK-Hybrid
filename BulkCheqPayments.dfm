object frmBulkChequePosting: TfrmBulkChequePosting
  Left = 179
  Top = 157
  Width = 696
  Height = 480
  Caption = 'Bulk Cheque posting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 28
    Width = 688
    Height = 425
    Align = alClient
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsView.CellEndEllipsis = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowCustomizing = False
        AllowQuickCustomizing = False
        Caption = 'Main Menu'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 276
        FloatTop = 216
        FloatClientWidth = 47
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarButton1
            Visible = True
          end>
        Name = 'Main Menu'
        NotDocking = [dsNone]
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 300
    Top = 55
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarButton1: TdxBarButton
      Caption = 'Convert'
      Category = 0
      Hint = 'Convert'
      Visible = ivAlways
    end
  end
      object qryLedger: TUniQuery
      SQL.Strings = (
              
                'SELECT TYPE, REFNO, LONGDESC, REASON, AMOUNT, BILLED, UNIQUEID, ' +
                'TAXCODE, TAX, ROWID, WITHHOLD, SUNDRYTYPE'
              'FROM LGRALLOC'
              'WHERE 1=2')
      CachedUpdates = True
      AfterInsert = qryLedgerAfterInsert
      Left = 40
      Top = 232
    object qryLedgerTYPE: TStringField
      FieldName = 'TYPE'
    end
    object qryLedgerREFNO: TStringField
      FieldName = 'REFNO'
      Size = 12
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
    end
    object qryLedgerBILLED: TStringField
      FieldName = 'BILLED'
      Size = 1
    end
    object qryLedgerUNIQUEID: TFloatField
      FieldName = 'UNIQUEID'
    end
    object qryLedgerTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 8
    end
    object qryLedgerTAX: TFloatField
      FieldName = 'TAX'
    end
    object qryLedgerROWID: TStringField
      FieldName = 'ROWID'
      ReadOnly = True
      Size = 18
    end
    object qryLedgerWITHHOLD: TStringField
      FieldName = 'WITHHOLD'
      Size = 1
    end
    object qryLedgerSUNDRYTYPE: TStringField
      FieldName = 'SUNDRYTYPE'
      Size = 5
    end
    end
    object dsLedger: TUniDataSource
      DataSet = qryLedger
      Left = 40
      Top = 264
    end
end
