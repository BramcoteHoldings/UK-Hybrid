object frmReceiptDistribute: TfrmReceiptDistribute
  Left = 351
  Top = 405
  BorderStyle = bsDialog
  Caption = 'Receipt Distribution'
  ClientHeight = 246
  ClientWidth = 516
  Color = clBtnFace
  Constraints.MinHeight = 269
  Constraints.MinWidth = 512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    516
    246)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 23
    Width = 16
    Height = 15
    Caption = 'Bill'
  end
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 39
    Height = 15
    Caption = 'Receipt'
  end
  object Label3: TLabel
    Left = 8
    Top = 63
    Width = 29
    Height = 15
    Caption = 'Billed'
  end
  object Label4: TLabel
    Left = 8
    Top = 83
    Width = 47
    Height = 15
    Caption = 'Received'
  end
  object Label5: TLabel
    Left = 8
    Top = 107
    Width = 35
    Height = 15
    Caption = 'Owing'
  end
  object Label6: TLabel
    Left = 8
    Top = 130
    Width = 50
    Height = 15
    Caption = 'Allocated'
  end
  object Label7: TLabel
    Left = 8
    Top = 153
    Width = 41
    Height = 15
    Caption = 'Balance'
  end
  object Label8: TLabel
    Left = 106
    Top = 23
    Width = 59
    Height = 15
    Caption = 'Dispatched'
  end
  object Label9: TLabel
    Left = 8
    Top = 182
    Width = 26
    Height = 15
    Caption = 'Total'
  end
  object Label10: TLabel
    Left = 8
    Top = 204
    Width = 56
    Height = 15
    Caption = 'Receipting'
  end
  object Label11: TLabel
    Left = 8
    Top = 227
    Width = 63
    Height = 15
    Caption = 'Unallocated'
  end
  object Bevel1: TBevel
    Left = 11
    Top = 173
    Width = 488
    Height = 3
    Shape = bsBottomLine
  end
  object Label12: TLabel
    Left = 127
    Top = 38
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fees'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 164
    Top = 38
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'Disbursements'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 449
    Top = 38
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sundries'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 351
    Top = 38
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cheque Req'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 273
    Top = 38
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Creditors'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btnCancel: TcxButton
    Left = 425
    Top = 187
    Width = 72
    Height = 25
    Caption = '&Cancel'
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000FFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000000FFFF808080FF008080000080800000808000008080000080
      8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000FFFFFFFF00808000008080000080
      8000008080000080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
      80FF008080000080800000808000008080000080800000808000808080FFFFFF
      FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
      80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
      FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000000
      FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
      8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
      800000808000008080000080800000808000000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
      80FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
      80FF000080FF808080FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
      FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
      800000808000008080000080800000808000808080FF00808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000008080000080800000808000008080000000FFFF000080FF0000
      80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
      80FF808080FF0080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      800000808000008080000000FFFF000080FF0080800000808000008080000080
      8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
      8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000000FFFF0000
      80FF0000FFFF0080800000808000008080000080800000808000008080000080
      8000808080FF808080FF00808000008080000080800000808000008080008080
      80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FF808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 5
  end
  object btnOK: TcxButton
    Left = 425
    Top = 214
    Width = 72
    Height = 25
    Caption = '&OK'
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D560A00000000000036000000280000002400000012000000010020000000
      000000000000C40E0000C40E0000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000FFFFFFFF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000800000FF800000FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000800000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FF008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      8000008080000080800000808000800000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000800000FF0080
      00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
      00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
      00FF800000FF0080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
      FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
      800000808000008080000080800000FF00FF0080800000808000008080000080
      80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
      80000080800000808000008080000080800000808000808080FF008080000080
      8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000008080000080800000FF00FF0080
      00FF008000FF008000FF800000FF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
      00FF008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
      800000808000808080FFFFFFFFFF008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
      FFFF008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000FF00FF008000FF0080
      00FF008000FF800000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080008080
      80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000008080000080800000808000808080FFFFFFFFFF008080008080
      80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000008080000080800000FF
      00FF008000FF008000FF00808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000FF00FF00808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000808080FF0080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000808000}
    OptionsImage.NumGlyphs = 2
    TabOrder = 6
    OnClick = btnOKClick
  end
  object neFees: TcxCurrencyEdit
    Left = 86
    Top = 125
    BeepOnEnter = False
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '$,0.00;-$,0.00'
    Properties.OnChange = CalcTotals
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 65
  end
  object neDisb: TcxCurrencyEdit
    Left = 170
    Top = 125
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    Properties.OnChange = CalcTotals
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 66
  end
  object neUpCred: TcxCurrencyEdit
    Left = 256
    Top = 125
    EditValue = '0'
    Properties.Alignment.Horz = taRightJustify
    Properties.OnChange = CalcTotals
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 65
  end
  object neAntd: TcxCurrencyEdit
    Left = 343
    Top = 125
    EditValue = '0'
    Properties.Alignment.Horz = taRightJustify
    Properties.OnChange = CalcTotals
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 3
    Width = 66
  end
  object neSund: TcxCurrencyEdit
    Left = 431
    Top = 125
    EditValue = '0'
    Properties.Alignment.Horz = taRightJustify
    Properties.OnChange = CalcTotals
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 64
  end
  object lblRcptno: TcxLabel
    Left = 51
    Top = 3
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 16
    Width = 50
  end
  object lblBillRefno: TcxLabel
    Left = 51
    Top = 22
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmAxiom.LabelStyle
    Height = 17
    Width = 50
  end
  object lblDispatched: TcxLabel
    Left = 169
    Top = 22
    AutoSize = False
    ParentFont = False
    Style.LookAndFeel.NativeStyle = False
    Style.StyleController = dmAxiom.LabelStyle
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Height = 17
    Width = 90
  end
  object cxPageControl1: TcxPageControl
    Left = 6
    Top = 248
    Width = 496
    Height = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    Properties.ActivePage = tsCheqReqs
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.HotTrack = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    ExplicitHeight = 135
    ClientRectRight = 0
    ClientRectTop = 0
    object tsCheqReqs: TcxTabSheet
      Caption = 'Cheque Requisitions'
      ImageIndex = 0
      object grdCheqReqs: TcxGrid
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvCheqReqs: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsDist
          DataController.KeyFieldNames = 'NCHEQREQ'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsView.NavigatorOffset = 48
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 11
          Preview.LeftIndent = 19
          object tvCheqReqsREQDATE: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'REQDATE'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 48
          end
          object tvCheqReqsDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCR'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 167
          end
          object tvCheqReqsPAYEE: TcxGridDBColumn
            Caption = 'Payee'
            DataBinding.FieldName = 'PAYEE'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 79
          end
          object tvCheqReqsAMOUNT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMOUNT'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 72
          end
          object tvCheqReqsTAXCODE: TcxGridDBColumn
            Caption = 'Tax code'
            DataBinding.FieldName = 'TAXCODE'
            MinWidth = 19
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 56
          end
          object tvCheqReqsAllocate: TcxGridDBColumn
            Caption = 'Allocate'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 19
            Width = 53
          end
          object tvCheqReqsNCHEQREQ: TcxGridDBColumn
            DataBinding.FieldName = 'NCHEQREQ'
            Visible = False
            MinWidth = 19
            VisibleForCustomization = False
          end
        end
        object grdCheqReqsLevel1: TcxGridLevel
          GridView = tvCheqReqs
        end
      end
    end
  end
  object nlFeesBilled: TcxNumberLabel
    Left = 86
    Top = 61
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object nlDisbBilled: TcxNumberLabel
    Left = 172
    Top = 61
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 236
  end
  object nlUpCredBilled: TcxNumberLabel
    Left = 256
    Top = 61
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 320
  end
  object nlAntdBilled: TcxNumberLabel
    Left = 345
    Top = 61
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 409
  end
  object nlSundBilled: TcxNumberLabel
    Left = 430
    Top = 61
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 494
  end
  object nlFeesRec: TcxNumberLabel
    Left = 86
    Top = 81
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object nlDisbRec: TcxNumberLabel
    Left = 172
    Top = 81
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 236
  end
  object nlUpCredRec: TcxNumberLabel
    Left = 256
    Top = 81
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 320
  end
  object nlAntdRec: TcxNumberLabel
    Left = 344
    Top = 81
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 408
  end
  object nlSundRec: TcxNumberLabel
    Left = 430
    Top = 81
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 494
  end
  object nlFeesOwing: TcxNumberLabel
    Left = 86
    Top = 105
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object nlDisbOwing: TcxNumberLabel
    Left = 172
    Top = 105
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 236
  end
  object nlUpCredOwing: TcxNumberLabel
    Left = 255
    Top = 105
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 319
  end
  object nlAntdOwing: TcxNumberLabel
    Left = 345
    Top = 105
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 409
  end
  object nlSundOwing: TcxNumberLabel
    Left = 430
    Top = 105
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 494
  end
  object nlFeesBalance: TcxNumberLabel
    Left = 86
    Top = 151
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object nlDisbBalance: TcxNumberLabel
    Left = 172
    Top = 151
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 236
  end
  object nlUpCredBalance: TcxNumberLabel
    Left = 256
    Top = 151
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 320
  end
  object nlAntdBalance: TcxNumberLabel
    Left = 345
    Top = 151
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 409
  end
  object nlSundBalance: TcxNumberLabel
    Left = 430
    Top = 151
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 494
  end
  object nlTotal: TcxNumberLabel
    Left = 86
    Top = 180
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object nlReceipt: TcxNumberLabel
    Left = 86
    Top = 202
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object nlUnallocated: TcxNumberLabel
    Left = 86
    Top = 225
    AutoSize = False
    Caption = '$0.00'
    DecimalPlaces = 2
    DisplayFormat = dfCurrency
    FontAbove.Charset = DEFAULT_CHARSET
    FontAbove.Color = clBlue
    FontAbove.Height = -12
    FontAbove.Name = 'Segoe UI'
    FontAbove.Style = []
    FontBelow.Charset = DEFAULT_CHARSET
    FontBelow.Color = clBlue
    FontBelow.Height = -12
    FontBelow.Name = 'Segoe UI'
    FontBelow.Style = []
    FontBetween.Charset = DEFAULT_CHARSET
    FontBetween.Color = clBlue
    FontBetween.Height = -12
    FontBetween.Name = 'Segoe UI'
    FontBetween.Style = []
    NoZero = False
    Transparent = True
    Height = 17
    Width = 64
    AnchorX = 150
  end
  object lblBillCredit: TcxLabel
    Left = 218
    Top = 183
    AutoSize = False
    Caption = 
      'If you continue with this transaction, this bill will be in cred' +
      'it!'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Visible = False
    Height = 56
    Width = 169
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT REFNO, FEES, DISB, UPCRED, ANTD, SUND, FEES_PAID, DISB_PA' +
        'ID, UPCRED_PAID, ANTD_PAID,'
      
        '               SUND_PAID, TAX, TAX_PAID, DISPATCHED, FEESTAX, DI' +
        'SBTAX, UPCREDTAX,'
      
        '               ANTDTAX, SUNDTAX, FEESTAX_PAID, DISBTAX_PAID, UPC' +
        'REDTAX_PAID, ANTDTAX_PAID,'
      
        '               SUNDTAX_PAID,FEES_WOFF,FEESTAX_WOFF,DISB_WOFF,DIS' +
        'BTAX_WOFF,UPCRED_WOFF,UPCREDTAX_WOFF,'
      '               ANTD_WOFF,ANTDTAX_WOFF,SUND_WOFF,SUNDTAX_WOFF'
      'FROM NMEMO'
      'WHERE NMEMO = :NMEMO')
    Left = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end>
  end
  object qryDist: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select c.reqdate,c.descr,c.payee,((c.amount + c.tax)- nvl(paid.a' +
        'mount,0)) as amount,c.taxcode,c.ncheqreq,nmemo'
      ' from cheqreq c,'
      
        '(select nvl(sum(amount),0) as amount, ncheqreq from cheqreq_tran' +
        's group by ncheqreq) paid'
      'where c.ncheqreq =  paid.ncheqreq (+)'
      'and c.nmemo = :nmemo'
      'and ((c.amount + c.tax)- nvl(paid.amount,0)) > 0'
      'and c.trust <> '#39'T'#39)
    Active = True
    Left = 133
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsDist: TUniDataSource
    DataSet = qryDist
    Left = 177
    Top = 309
  end
  object qrySubBill: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT M.REFNO, S.FEES, S.DISB, S.UPCRED, S.ANTD, S.SUND, S.FEES' +
        '_PAID, S.DISB_PAID, S.UPCRED_PAID, S.ANTD_PAID,'
      
        '               S.SUND_PAID, S.TAX, S.TAX_PAID, M.DISPATCHED, S.F' +
        'EESTAX, S.DISBTAX, S.UPCREDTAX,'
      
        '               S.ANTDTAX, S.SUNDTAX, S.FEESTAX_PAID, S.DISBTAX_P' +
        'AID, S.UPCREDTAX_PAID, S.ANTDTAX_PAID,'
      
        '               S.SUNDTAX_PAID,S.FEES_WOFF,S.FEESTAX_WOFF,S.DISB_' +
        'WOFF,S.DISBTAX_WOFF,S.UPCRED_WOFF,S.UPCREDTAX_WOFF,'
      
        '               S.ANTD_WOFF,S.ANTDTAX_WOFF,S.SUND_WOFF,S.SUNDTAX_' +
        'WOFF'
      'FROM SUBBILLS S,NMEMO M'
      'WHERE S.NMEMO = M.NMEMO '
      'AND S.NMEMO = :NMEMO'
      'AND S.NSUBBILL_ID = :NSUBBILL')
    Left = 346
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NMEMO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NSUBBILL'
        Value = nil
      end>
  end
end
