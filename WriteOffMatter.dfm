object frmWriteOffsMatterDisbs: TfrmWriteOffsMatterDisbs
  Left = 304
  Top = 63
  Caption = 'Matter Write Offs'
  ClientHeight = 561
  ClientWidth = 627
  Color = clBtnFace
  Constraints.MinWidth = 627
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
    627
    561)
  PixelsPerInch = 106
  TextHeight = 15
  object Label2: TLabel
    Left = 9
    Top = 283
    Width = 24
    Height = 15
    Caption = 'Date'
  end
  object Label3: TLabel
    Left = 9
    Top = 312
    Width = 37
    Height = 15
    Caption = 'Author'
  end
  object Label4: TLabel
    Left = 9
    Top = 338
    Width = 38
    Height = 15
    Caption = 'Reason'
  end
  object Label5: TLabel
    Left = 340
    Top = 309
    Width = 63
    Height = 15
    Caption = 'Department'
  end
  object Label6: TLabel
    Left = 9
    Top = 136
    Width = 23
    Height = 15
    Caption = 'Fees'
  end
  object Label7: TLabel
    Left = 9
    Top = 165
    Width = 78
    Height = 15
    Caption = 'Disbursements'
  end
  object Label9: TLabel
    Left = 9
    Top = 246
    Width = 45
    Height = 15
    Caption = 'Sundries'
  end
  object lblCheqReq: TLabel
    Left = 9
    Top = 220
    Width = 64
    Height = 15
    Cursor = crHandPoint
    Hint = 'Make Cheque Req payable once bill is written off.'
    Caption = 'Cheque Req'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 140
    Top = 113
    Width = 45
    Height = 15
    Alignment = taRightJustify
    Caption = 'Amount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 248
    Top = 113
    Width = 19
    Height = 15
    Alignment = taRightJustify
    Caption = 'Tax'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 9
    Top = 193
    Width = 89
    Height = 15
    Caption = 'Unpaid Creditors'
  end
  object Label16: TLabel
    Left = 333
    Top = 113
    Width = 32
    Height = 15
    Alignment = taRightJustify
    Caption = 'Totals'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 43
    Width = 35
    Height = 15
    Caption = 'Matter'
  end
  object Label13: TLabel
    Left = 408
    Top = 111
    Width = 77
    Height = 15
    Alignment = taRightJustify
    Caption = 'W/O CR Chart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 529
    Top = 111
    Width = 79
    Height = 15
    Alignment = taRightJustify
    Caption = 'W/O DR Chart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblClient: TcxLabel
    Left = 66
    Top = 67
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Height = 20
    Width = 541
  end
  object lblMatterDesc: TcxLabel
    Left = 66
    Top = 88
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.ShowAccelChar = False
    Height = 19
    Width = 541
  end
  object btnMatterFind: TcxButtonEdit
    Left = 66
    Top = 36
    Properties.Buttons = <
      item
        Default = True
        Glyph.SourceDPI = 96
        Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          0000000000004D1000004D1000000000000000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFF
          FFFF000000FF000000FF000000FFC0C0C000000000FF000000FFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C0000000
          00FFFFFFFFFF000000FF000000FF000000FFC0C0C000000000FFFFFFFFFF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
          00FF000000FF000000FF000000FF000000FFC0C0C000000000FF000000FF0000
          00FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FFFFFFFFFF000000FFC0C0C000C0C0C000C0C0C000000000FFFFFF
          FFFF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000000000FF0000
          00FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        Kind = bkGlyph
      end>
    Properties.CharCase = ecUpperCase
    Properties.OnButtonClick = btnMatterFindPropertiesButtonClick
    Properties.OnValidate = btnMatterFindPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 114
  end
  object pagLedgers: TcxPageControl
    Left = 13
    Top = 382
    Width = 596
    Height = 172
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    Properties.ActivePage = tsFees
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmAxiom.ilstToolbar
    Properties.ShowFrame = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 171
    ClientRectLeft = 1
    ClientRectRight = 595
    ClientRectTop = 28
    object tsFees: TcxTabSheet
      Caption = 'Fees'
      ImageIndex = 19
      ExplicitWidth = 677
      ExplicitHeight = 246
      object grdFees: TcxGrid
        Left = 0
        Top = 0
        Width = 594
        Height = 143
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 677
        ExplicitHeight = 246
        object tvFees: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFees
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 58
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 14
          OptionsView.BandHeaderEndEllipsis = True
          OptionsView.BandHeaders = False
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          Bands = <
            item
              Options.HoldOwnColumnsOnly = True
            end
            item
            end>
          object tvFeesCREATED: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvFeesAUTHOR: TcxGridDBBandedColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvFeesDESCR: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 192
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvFeesAMOUNT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvFeesTAX: TcxGridDBBandedColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvFeesTAXCODE: TcxGridDBBandedColumn
            Caption = 'Taxcode'
            DataBinding.FieldName = 'TAXCODE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvFeesDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Write Off'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 23
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdFeesLevel1: TcxGridLevel
          GridView = tvFees
        end
      end
    end
    object tsDisbursements: TcxTabSheet
      Caption = 'Disbursements'
      ImageIndex = 23
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdDisbs: TcxGrid
        Left = 0
        Top = 0
        Width = 593
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvDisbs: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDisb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 58
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.IndicatorWidth = 14
          OptionsView.BandHeaders = False
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          Bands = <
            item
            end
            item
            end>
          object tvDisbsCREATED: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvDisbsREFNO: TcxGridDBBandedColumn
            Caption = 'Reference'
            DataBinding.FieldName = 'REFNO'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvDisbsDESCR: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 255
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvDisbsPAYER: TcxGridDBBandedColumn
            Caption = 'Payer'
            DataBinding.FieldName = 'PAYER'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvDisbsAMOUNT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvDisbsTAX: TcxGridDBBandedColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 42
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvDisbsTAXCODE: TcxGridDBBandedColumn
            Caption = 'Taxcode'
            DataBinding.FieldName = 'TAXCODE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvDisbsDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Write Off'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 23
            Width = 37
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdDisbsLevel1: TcxGridLevel
          GridView = tvDisbs
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'UnPaid Creditors'
      ImageIndex = 21
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdUnpaidCred: TcxGrid
        Left = 0
        Top = 0
        Width = 593
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvUnpaidCred: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUpCred
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 58
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.IndicatorWidth = 14
          OptionsView.BandHeaders = False
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          Bands = <
            item
            end
            item
            end>
          object tvUnpaidCredCREATED: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 24
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvUnpaidCredREFNO: TcxGridDBBandedColumn
            Caption = 'Reference'
            DataBinding.FieldName = 'REFNO'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvUnpaidCredDESCR: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 207
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvUnpaidCredPAYER: TcxGridDBBandedColumn
            Caption = 'Payer'
            DataBinding.FieldName = 'PAYER'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 108
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvUnpaidCredAMOUNT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvUnpaidCredTAX: TcxGridDBBandedColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvUnpaidCredTAXCODE: TcxGridDBBandedColumn
            Caption = 'Taxcode'
            DataBinding.FieldName = 'TAXCODE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvUnpaidCredDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Write Off'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 23
            Width = 32
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdUnpaidCredLevel1: TcxGridLevel
          GridView = tvUnpaidCred
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Cheq Reqs'
      ImageIndex = 22
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdCheqReqs: TcxGrid
        Left = 0
        Top = 0
        Width = 593
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvCheqReqs: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsAntd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 58
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.IndicatorWidth = 14
          OptionsView.BandHeaders = False
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          Bands = <
            item
            end
            item
            end>
          object tvCheqReqsREQDATE: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'REQDATE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvCheqReqsBANK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 25
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvCheqReqsDESCR: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 270
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvCheqReqsPAYEE: TcxGridDBBandedColumn
            Caption = 'Payee'
            DataBinding.FieldName = 'PAYEE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 186
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvCheqReqsAMOUNT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvCheqReqsTAX: TcxGridDBBandedColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvCheqReqsTAXCODE: TcxGridDBBandedColumn
            Caption = 'Taxcode'
            DataBinding.FieldName = 'TAXCODE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvCheqReqsDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Write Off'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 23
            Width = 45
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdCheqReqsLevel1: TcxGridLevel
          GridView = tvCheqReqs
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Sundries'
      ImageIndex = 20
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdSundries: TcxGrid
        Left = 0
        Top = 0
        Width = 593
        Height = 246
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvSundries: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSund
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsCustomize.ColumnFiltering = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 58
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.IndicatorWidth = 14
          OptionsView.BandHeaders = False
          Preview.LeftIndent = 23
          Preview.RightIndent = 6
          Bands = <
            item
            end
            item
            end>
          object tvSundriesCREATED: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'CREATED'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvSundriesDESCR: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 354
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvSundriesAMOUNT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvSundriesTAX: TcxGridDBBandedColumn
            Caption = 'Tax'
            DataBinding.FieldName = 'TAX'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvSundriesTAXCODE: TcxGridDBBandedColumn
            Caption = 'Taxcode'
            DataBinding.FieldName = 'TAXCODE'
            MinWidth = 23
            Options.Editing = False
            Options.Focusing = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvSundriesDBBandedColumn1: TcxGridDBBandedColumn
            Caption = 'Write Off'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 23
            Width = 55
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdSundriesLevel1: TcxGridLevel
          GridView = tvSundries
        end
      end
    end
  end
  object cmbAuthor: TcxLookupComboBox
    Left = 112
    Top = 308
    Properties.DropDownAutoSize = True
    Properties.DropDownRows = 20
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end
      item
        FieldName = 'CODE'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsEmployees
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 219
  end
  object dtpCreated: TEnforceCustomDateEdit
    Left = 112
    Top = 278
    EditValue = 43136.5306061111d
    Properties.Alignment.Horz = taRightJustify
    Properties.InputKind = ikRegExpr
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    DataSet = dmAxiom.qryEntity
    AllowForwardDating = True
    Field = 'LOCKDATE'
    Width = 104
  end
  object cmbDept: TcxLookupComboBox
    Left = 412
    Top = 308
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'DESCR'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsDept
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 197
  end
  object mmoDesc: TcxRichEdit
    Left = 112
    Top = 338
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 11
    Height = 36
    Width = 497
  end
  object lblCreditors: TcxLabel
    Left = 112
    Top = 190
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 20
    Width = 75
    AnchorX = 187
  end
  object lblWIP: TcxLabel
    Left = 112
    Top = 134
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 187
  end
  object lblSundries: TcxLabel
    Left = 112
    Top = 246
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 187
  end
  object lblDisbursements: TcxLabel
    Left = 112
    Top = 163
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 187
  end
  object lblAnticipated: TcxLabel
    Left = 112
    Top = 218
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 20
    Width = 75
    AnchorX = 187
  end
  object lblWIPTax: TcxLabel
    Left = 195
    Top = 134
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 270
  end
  object lblDisbursementsTax: TcxLabel
    Left = 195
    Top = 163
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 270
  end
  object lblCreditorsTax: TcxLabel
    Left = 195
    Top = 190
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 20
    Width = 75
    AnchorX = 270
  end
  object lblAnticipatedTax: TcxLabel
    Left = 195
    Top = 218
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 20
    Width = 75
    AnchorX = 270
  end
  object lblSundriesTax: TcxLabel
    Left = 195
    Top = 246
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 270
  end
  object lblWIPTotal: TcxLabel
    Left = 290
    Top = 134
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 365
  end
  object lblDisbursementsTotal: TcxLabel
    Left = 290
    Top = 163
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 365
  end
  object lblCreditorsTotal: TcxLabel
    Left = 290
    Top = 190
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 20
    Width = 75
    AnchorX = 365
  end
  object lblAnticipatedTotal: TcxLabel
    Left = 290
    Top = 218
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 20
    Width = 75
    AnchorX = 365
  end
  object lblSundriesTotal: TcxLabel
    Left = 290
    Top = 246
    AutoSize = False
    Caption = '0.00'
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 75
    AnchorX = 365
  end
  object edFeeWOCR: TcxTextEdit
    Left = 376
    Top = 132
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 23
    Width = 112
  end
  object edDisbWOCR: TcxTextEdit
    Left = 376
    Top = 160
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 24
    Width = 112
  end
  object edUpCredWOCR: TcxTextEdit
    Left = 376
    Top = 188
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 25
    Width = 112
  end
  object edAntdWOCR: TcxTextEdit
    Left = 376
    Top = 216
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 26
    Width = 112
  end
  object edSundWOCR: TcxTextEdit
    Left = 376
    Top = 243
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 27
    Width = 112
  end
  object edFeeWODR: TcxTextEdit
    Left = 496
    Top = 132
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 28
    Width = 112
  end
  object edDisbWODR: TcxTextEdit
    Left = 496
    Top = 160
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 29
    Width = 112
  end
  object edUpCredWODR: TcxTextEdit
    Left = 496
    Top = 188
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 30
    Width = 112
  end
  object edAntdWODR: TcxTextEdit
    Left = 496
    Top = 216
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 31
    Width = 112
  end
  object edSundWODR: TcxTextEdit
    Left = 496
    Top = 243
    Properties.Alignment.Horz = taRightJustify
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 36
    Width = 112
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 374
    Top = 24
    PixelsPerInch = 106
    DockControlHeights = (
      0
      0
      30
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 72
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOk'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Write Off'
      Category = 0
      Hint = 'Write Off'
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object btnOk: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btnOkClick
    end
  end
  object qryMatter: TUniQuery
    LocalUpdate = True
    SQL.Strings = (
      'SELECT'
      ' getDebtorsAmount(:P_File) as CAL_DEBTORS,'
      ' Getwipamount(:P_File) as CAL_UNBILL_FEES,'
      ' getSundriesAmount(:P_File) as CAL_UNBILL_SUND,'
      ' getUnbillDisbAmount(:P_File) as CAL_UNBILL_DISB,'
      ' getUbilledCheqReqAmount(:P_File) as CAL_UNBILL_ANTD,'
      ' getTrustBalAmount(:P_File) as CAL_TRUST_BAL,'
      ' getUnbillCredAmount(:P_File) as CAL_CREDITORS,'
      ' getUnbillCredTax(:P_File) as CAL_CREDITORS_TAX,'
      ' getUnbillDisbTax(:P_File) as CAL_DISB_TAX,'
      ' Getwiptax(:P_File) as CAL_FEES_TAX,'
      ' getSundriesTax(:P_File) as CAL_SUND_TAX,'
      ' getUnbilledCheqReqTax(:P_File) as CAL_ANTD_TAX,'
      ' M.*'
      'FROM '
      ' MATTER M, (SELECT CODE,DESCR FROM BRANCH) BRAN'
      'WHERE M.FILEID = :P_File '
      ' AND M.BRANCH = BRAN.CODE (+)')
    Left = 464
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_File'
        Value = nil
      end>
  end
  object dsMatter: TUniDataSource
    DataSet = qryMatter
    Left = 531
    Top = 34
  end
  object qryEmployees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from employee')
    Left = 568
    Top = 250
  end
  object dsEmployees: TUniDataSource
    DataSet = qryEmployees
    Left = 604
    Top = 252
  end
  object qryFees: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT FEE.CREATED, DECODE(FEE.PRIVATE,'#39'Y'#39','#39'(P) '#39','#39#39') || FEE.DES' +
        'CR as DESCR, FEE.AMOUNT, FEE.AUTHOR, FEE.NFEE, FEE.TAXCODE,'
      ' tax,'
      'FEE.PRIVATE'
      'FROM FEE,TAXRATE R '
      'WHERE NMATTER = :P_Matter'
      'AND FEE.TAXCODE = R.TAXCODE (+)'
      'AND fee.billed = '#39'N'#39
      'AND BILLTYPE = '#39'Billable'#39
      'ORDER BY NFEE, CREATED')
    Active = True
    Left = 558
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object dsFees: TUniDataSource
    DataSet = qryFees
    Left = 597
    Top = 99
  end
  object qryDisb: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.CREATED, ALLOC.ACCT, ALLOC.REFNO, ALLOC.DESCR, ALLO' +
        'C.APPROVAL, (ALLOC.AMOUNT*-1) as AMOUNT, ALLOC.NALLOC, ALLOC.PAY' +
        'ER,ALLOC.TAXCODE,'
      '(alloc.tax*-1) as tax'
      'FROM ALLOC,TAXRATE R '
      'WHERE NMATTER = :P_Matter'
      
        'AND (nvl(NRECEIPT,0) = 0 OR (nvl(NRECEIPT,0) > 0 AND TYPE = '#39'DR'#39 +
        '))'
      'AND NINVOICE IS NULL'
      'AND ALLOC.TAXCODE = R.TAXCODE (+)'
      'AND BILLED = '#39'N'#39
      'ORDER BY CREATED')
    Active = True
    Left = 555
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object dsDisb: TUniDataSource
    DataSet = qryDisb
    Left = 595
    Top = 138
  end
  object qryDept: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from empdept')
    Active = True
    Left = 572
    Top = 286
  end
  object dsDept: TUniDataSource
    DataSet = qryDept
    Left = 611
    Top = 286
  end
  object qryUpCred: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CREATED, ACCT, REFNO, DESCR, APPROVAL, AMOUNT, NALLOC, TA' +
        'XCODE,TAX, PAYER'
      'FROM ALLOC WHERE NMATTER = :P_Matter'
      'AND BILLED = '#39'N'#39
      'AND NINVOICE IS NOT NULL'
      'ORDER BY CREATED')
    Active = True
    Left = 554
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object dsUpCred: TUniDataSource
    DataSet = qryUpCred
    Left = 602
    Top = 62
  end
  object qrySund: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CREATED, TYPE, DESCR, AMOUNT, NSUNDRY, TAXCODE,TAX'
      'FROM SUNDRY '
      'WHERE NMATTER = :P_Matter '
      'AND BILLED = '#39'N'#39
      'ORDER BY CREATED')
    Active = True
    Left = 560
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Matter'
        Value = nil
      end>
  end
  object dsSund: TUniDataSource
    DataSet = qrySund
    Left = 591
    Top = 204
  end
  object qryAntd: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT REQDATE, BANK, AUTHOR, DESCR, TAXCODE, AMOUNT, NCHEQREQ, ' +
        'PAYEE,TAX '
      'FROM CHEQREQ '
      'WHERE FILEID = :P_FileID'
      'AND BILLED = '#39'Y'#39
      'ORDER BY REQDATE')
    Active = True
    Left = 561
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_FileID'
        Value = nil
      end>
  end
  object dsAntd: TUniDataSource
    DataSet = qryAntd
    Left = 597
    Top = 171
  end
end
