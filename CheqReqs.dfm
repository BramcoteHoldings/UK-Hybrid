object frmCheqReqs: TfrmCheqReqs
  Left = 512
  Top = 223
  Caption = 'Cheque Requests'
  ClientHeight = 666
  ClientWidth = 1212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sbarInfo: TdxStatusBar
    Left = 0
    Top = 646
    Width = 1212
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarStateIndicatorPanelStyle'
        PanelStyle.Indicators = <
          item
          end
          item
          end>
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container2
        Width = 200
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ExplicitWidth = 1054
    object dxStatusBar1Container2: TdxStatusBarContainerControl
      Left = 996
      Top = 4
      Width = 198
      Height = 14
      object progBarProcess: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        Properties.BarStyle = cxbsLEDs
        Properties.PeakValue = 50.000000000000000000
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Visible = False
        Width = 198
      end
    end
  end
  object pagCashbook: TcxPageControl
    Left = 0
    Top = 28
    Width = 1212
    Height = 618
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ilstToolbar
    OnChange = pagCashbookChange
    ExplicitWidth = 1054
    ClientRectBottom = 614
    ClientRectLeft = 4
    ClientRectRight = 1208
    ClientRectTop = 26
    object tabCashbook: TcxTabSheet
      Caption = 'Cheque Requisitions'
      ImageIndex = 0
      ExplicitWidth = 1046
      object Splitter1: TSplitter
        Left = 0
        Top = 249
        Width = 1204
        Height = 7
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        ExplicitWidth = 897
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1204
        Height = 249
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 0
        ExplicitWidth = 1046
        object dbgrCheqReq: TcxGrid
          Left = 1
          Top = 1
          Width = 1202
          Height = 247
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          ExplicitWidth = 1044
          object tvCheqReq: TcxGridDBTableView
            PopupMenu = popGrid
            OnDblClick = mnuFileOpenClick
            OnKeyDown = tvCheqReqKeyDown
            Navigator.Buttons.CustomButtons = <>
            OnCanSelectRecord = tvCheqReqCanSelectRecord
            OnFocusedRecordChanged = tvCheqReqFocusedRecordChanged
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = dsCheqReq
            DataController.KeyFieldNames = 'NCHEQREQ'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = 'Total for Cheque = $,0.00;-$,0.00'
                Kind = skSum
                FieldName = 'TOTAL'
                Column = tvCheqReqPAYABLE
              end>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soNullIgnore, soSelectedRecords]
            DataController.OnGroupingChanged = tvCheqReqDataControllerGroupingChanged
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Deleting = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 55
            OptionsView.ColumnAutoWidth = True
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 13
            Preview.LeftIndent = 22
            Preview.RightIndent = 6
            Styles.OnGetContentStyle = tvCheqReqStylesGetContentStyle
            Styles.Group = cxStyleGroupHeader
            object tvCheqReqNCHEQREQ: TcxGridDBColumn
              Caption = 'CheqReq No'
              DataBinding.FieldName = 'NCHEQREQ'
              MinWidth = 45
              Options.Editing = False
              Options.Focusing = False
              Width = 45
            end
            object tvCheqReqSELECTED: TcxGridDBColumn
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = tvCheqReqSELECTEDPropertiesEditValueChanged
              Visible = False
              Options.Filtering = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              VisibleForCustomization = False
              Width = 20
            end
            object tvCheqReqHold: TcxGridDBColumn
              DataBinding.FieldName = 'Hold'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 58
            end
            object tvCheqReqPAYEE: TcxGridDBColumn
              Caption = 'Payee'
              DataBinding.FieldName = 'PAYEE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Width = 141
            end
            object tvCheqReqNNAME: TcxGridDBColumn
              Caption = 'Payee Code'
              DataBinding.FieldName = 'NNAME'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 83
            end
            object tvCheqReqREQDATE: TcxGridDBColumn
              Caption = 'Required'
              DataBinding.FieldName = 'REQDATE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 65
            end
            object tvCheqReqDESCR: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 186
            end
            object tvCheqReqCREFNO: TcxGridDBColumn
              Caption = 'Reference'
              DataBinding.FieldName = 'CREFNO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 85
            end
            object tvCheqReqTotal: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 72
            end
            object tvCheqReqBANK: TcxGridDBColumn
              Caption = 'Bank'
              DataBinding.FieldName = 'BANK'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 64
            end
            object tvCheqReqAUTHOR: TcxGridDBColumn
              Caption = 'ReqBy'
              DataBinding.FieldName = 'AUTHOR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 38
            end
            object tvCheqReqURGENT: TcxGridDBColumn
              Caption = 'Urgent'
              DataBinding.FieldName = 'URGENT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 40
            end
            object tvCheqReqPAYABLE: TcxGridDBColumn
              DataBinding.FieldName = 'PAYABLE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 55
            end
            object tvCheqReqHELD: TcxGridDBColumn
              DataBinding.FieldName = 'HELD'
              Visible = False
              MinWidth = 64
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.FilteringMRUItemsList = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
            end
            object tvCheqReqFORCEPAY: TcxGridDBColumn
              Caption = 'ForcePay'
              DataBinding.FieldName = 'FORCEPAY'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Options.Editing = False
              Options.Focusing = False
              Options.Grouping = False
              Width = 50
            end
            object tvCheqReqTAX: TcxGridDBColumn
              DataBinding.FieldName = 'TAX'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object tvCheqReqNINVOICE: TcxGridDBColumn
              DataBinding.FieldName = 'NINVOICE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
              VisibleForCustomization = False
            end
            object tvCheqReqCAN_PAY: TcxGridDBColumn
              Caption = 'Can pay'
              DataBinding.FieldName = 'CAN_PAY'
              Options.Editing = False
              Options.Focusing = False
              Width = 48
            end
            object tvCheqReqTPAY: TcxGridDBColumn
              Caption = 'Trust Pay'
              DataBinding.FieldName = 'TPAY'
              Width = 88
            end
            object tvCheqReqCONVERTED: TcxGridDBColumn
              DataBinding.FieldName = 'CONVERTED'
              Visible = False
              VisibleForCustomization = False
            end
            object tvCheqReqNMEMO: TcxGridDBColumn
              DataBinding.FieldName = 'NMEMO'
              Visible = False
              VisibleForCustomization = False
            end
            object tvCheqReqREV_NCHEQREQ: TcxGridDBColumn
              DataBinding.FieldName = 'REV_NCHEQREQ'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object dbgrCheqReqLevel1: TcxGridLevel
            GridView = tvCheqReq
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 256
        Width = 1204
        Height = 332
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        ExplicitWidth = 1046
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1202
          Height = 330
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          ExplicitWidth = 1044
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsData
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 55
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 13
            Preview.LeftIndent = 22
            Preview.RightIndent = 6
            object cxGrid1DBTableView1TYPE: TcxGridDBColumn
              Caption = 'Type'
              DataBinding.FieldName = 'TYPE'
              Width = 165
            end
            object cxGrid1DBTableView1CREATED: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'CREATED'
              Width = 163
            end
            object cxGrid1DBTableView1REFNO: TcxGridDBColumn
              Caption = 'Refno'
              DataBinding.FieldName = 'REFNO'
              Width = 242
            end
            object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$,0.00;($,0.00)'
              Width = 119
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 16
      ExplicitWidth = 1046
      DesignSize = (
        1204
        588)
      object Label1: TLabel
        Left = 8
        Top = 57
        Width = 40
        Height = 15
        Caption = 'Date To'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 159
        Width = 35
        Height = 15
        Caption = 'Matter'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 185
        Width = 78
        Height = 15
        Caption = 'Payee includes'
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 211
        Width = 107
        Height = 15
        Caption = 'Description includes'
        Transparent = True
      end
      object Label5: TLabel
        Left = 8
        Top = 263
        Width = 96
        Height = 15
        Caption = 'Amount less than '
        Transparent = True
      end
      object Label8: TLabel
        Left = 8
        Top = 107
        Width = 71
        Height = 15
        Caption = 'Requested By'
        Transparent = True
      end
      object lblAmountFrom: TLabel
        Left = 8
        Top = 237
        Width = 105
        Height = 15
        Caption = 'Amount more than '
        Transparent = True
      end
      object lblBank: TLabel
        Left = 8
        Top = 9
        Width = 26
        Height = 15
        Caption = 'Bank'
        Transparent = True
      end
      object lblDateFrom: TLabel
        Left = 8
        Top = 33
        Width = 55
        Height = 15
        Caption = 'Date From'
        Transparent = True
      end
      object lblShowOnly: TLabel
        Left = 8
        Top = 85
        Width = 55
        Height = 15
        Caption = 'Show only'
        Transparent = True
      end
      object Memo: TLabel
        Left = 8
        Top = 133
        Width = 35
        Height = 15
        Caption = 'Memo'
        Transparent = True
      end
      object Label6: TLabel
        Left = 247
        Top = 133
        Width = 70
        Height = 15
        Caption = 'CheqReq No:'
        Transparent = True
      end
      object btnClearAll: TcxButton
        Left = 1101
        Top = 557
        Width = 100
        Height = 28
        Anchors = [akRight, akBottom]
        Caption = 'Clear All'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360800000000000036000000280000002000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF008080000080800000808000008080000080800000808000008080000080
          800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000FFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFF
          FFFFFFFFFFFFFFFFFFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000080
          80007F7F7FFF7F7F7FFF7F7F7FFF0080800000808000008080007F7F7FFF7F7F
          7FFF7F7F7FFFFFFFFFFFFFFFFFFF008080000080800000808000008080000000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080007F7F
          7FFF7F7F7FFFFFFFFFFFFFFFFFFF008080000080800000808000008080000080
          80007F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF00808000008080000000FFFF0000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0080800000808000008080007F7F7FFF7F7F
          7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF0080800000808000008080000080
          8000008080007F7F7FFF7F7F7FFFFFFFFFFF00808000008080000000FFFF0080
          80000000FFFF0000FFFF0000FFFF008080000080800000808000008080000080
          8000008080000000FFFF0000FFFF0080800000808000008080007F7F7FFFFFFF
          FFFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF00808000008080000080
          800000808000008080007F7F7FFFFFFFFFFFFFFFFFFF0000FFFF0000FFFF0080
          8000008080000000FFFF0000FFFF0000FFFF0080800000808000008080000080
          800000808000008080000000FFFF0000FFFF008080007F7F7FFF7F7F7FFFFFFF
          FFFF008080007F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF008080000080
          800000808000008080007F7F7FFF7F7F7FFFFFFFFFFF0000FFFF0000FFFF0080
          800000808000008080000000FFFF0000FFFF0000FFFF00808000008080000080
          800000808000008080000000FFFF0000FFFF008080007F7F7FFF7F7F7FFFFFFF
          FFFF00808000008080007F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF0080
          800000808000008080007F7F7FFF7F7F7FFFFFFFFFFF0000FFFF0000FFFF0080
          80000080800000808000008080000000FFFF0000FFFF0000FFFF008080000080
          800000808000008080000000FFFF0000FFFF008080007F7F7FFF7F7F7FFFFFFF
          FFFF0080800000808000008080007F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFF
          FFFF00808000008080007F7F7FFF7F7F7FFFFFFFFFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000000FFFF0000FFFF0000FFFF0080
          800000808000008080000000FFFF0000FFFF008080007F7F7FFF7F7F7FFFFFFF
          FFFF008080000080800000808000008080007F7F7FFF7F7F7FFF7F7F7FFFFFFF
          FFFFFFFFFFFF008080007F7F7FFF7F7F7FFFFFFFFFFF0000FFFF0000FFFF0080
          800000808000008080000080800000808000008080000000FFFF0000FFFF0000
          FFFF00808000008080000000FFFF0000FFFF008080007F7F7FFF7F7F7FFFFFFF
          FFFFFFFFFFFF008080000080800000808000008080007F7F7FFF7F7F7FFF7F7F
          7FFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF00808000008080000000FFFF0000
          FFFF0080800000808000008080000080800000808000008080000000FFFF0000
          FFFF0000FFFF008080000000FFFF0080800000808000008080007F7F7FFF0080
          8000FFFFFFFFFFFFFFFF008080000080800000808000008080007F7F7FFF7F7F
          7FFF7F7F7FFFFFFFFFFF7F7F7FFFFFFFFFFF00808000008080000000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF0000FFFF0080800000808000008080007F7F7FFF7F7F
          7FFF00808000FFFFFFFFFFFFFFFF008080000080800000808000008080007F7F
          7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080800000808000008080000000
          FFFF0000FFFF0000FFFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF00808000008080000080800000808000008080007F7F
          7FFF7F7F7FFF00808000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7F7F7FFF7F7F7FFF00808000008080000080800000808000008080000080
          80000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0080800000808000008080000080800000808000008080000080
          80007F7F7FFF7F7F7FFF7F7F7FFF0080800000808000008080007F7F7FFF7F7F
          7FFF7F7F7FFF0080800000808000008080000080800000808000008080000080
          800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF0080
          80000080800000808000008080000080800000808000}
        OptionsImage.NumGlyphs = 2
        TabOrder = 0
        OnClick = btnClearAllClick
        ExplicitLeft = 943
      end
      object btnTrust: TButton
        Left = 310
        Top = 208
        Width = 154
        Height = 25
        Caption = 'Trust to Office Transfer'
        TabOrder = 1
        OnClick = btnTrustClick
      end
      object cbAuthor: TComboBox
        Left = 144
        Top = 104
        Width = 57
        Height = 23
        TabOrder = 2
        OnChange = cbAuthorClick
        OnClick = cbAuthorClick
      end
      object cbBank: TComboBox
        Left = 144
        Top = 3
        Width = 57
        Height = 23
        TabOrder = 3
        OnChange = cbBankClick
        OnClick = cbBankClick
      end
      object cbBilledUnconverted: TcxCheckBox
        Left = 604
        Top = 79
        Caption = 'Billed and UnConverted'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cbConverted: TcxCheckBox
        Left = 456
        Top = 79
        Caption = 'Converted to Cheque'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cbExcludeTrust: TcxCheckBox
        Left = 5
        Top = 335
        Hint = 
          #8220'Optionally exclude pending Trust to Office transfers where unpa' +
          'id creditor or anticipated transaction(s) exist on the bill'
        AutoSize = False
        Caption = 'Exclude if billed unpaid 3rd party'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 25
        Width = 224
      end
      object cbIncludeNegative: TcxCheckBox
        Left = 252
        Top = 335
        AutoSize = False
        Caption = 'Include negative amounts'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 25
        Width = 203
      end
      object cbIncludeTrust: TcxCheckBox
        Left = 5
        Top = 357
        Hint = 
          'Optionally include pending Trust to Office transfers where unpai' +
          'd creditor or anticipated transaction(s) exist on the bill'
        AutoSize = False
        Caption = 'Include if billed unpaid 3rd party'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Height = 25
        Width = 224
      end
      object cbToBeBilled: TcxCheckBox
        Left = 763
        Top = 79
        Caption = 'To be Billed'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cbTrustCreditorPayments: TcxCheckBox
        Left = 252
        Top = 357
        Hint = 
          'Optionally include pending Trust to Office transfers where unpai' +
          'd creditor or anticipated transaction(s) exist on the bill'
        AutoSize = False
        Caption = 'Only Trust Creditor Payments'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Height = 25
        Width = 203
      end
      object chkDateFrom: TCheckBox
        Left = 144
        Top = 33
        Width = 17
        Height = 17
        TabOrder = 11
        OnClick = chkDateFromClick
      end
      object chkDateTo: TCheckBox
        Left = 144
        Top = 57
        Width = 17
        Height = 17
        TabOrder = 12
        OnClick = chkDateToClick
      end
      object chkHeld: TcxCheckBox
        Left = 212
        Top = 79
        Caption = 'Held'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 13
      end
      object chkOwing: TcxCheckBox
        Left = 252
        Top = 313
        AutoSize = False
        Caption = 'Only show amounts Payable'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 14
        Height = 25
        Width = 203
      end
      object chkProcessable: TcxCheckBox
        Left = 277
        Top = 79
        Caption = 'Processable'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 15
      end
      object chkRev: TcxCheckBox
        Left = 252
        Top = 293
        AutoSize = False
        Caption = 'Include Reversed Items'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 16
        Height = 25
        Width = 203
      end
      object chkUnpresented: TcxCheckBox
        Left = 5
        Top = 313
        AutoSize = False
        Caption = 'Select unpresented cheques'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 17
        Height = 25
        Width = 224
      end
      object chkUnprinted: TcxCheckBox
        Left = 5
        Top = 293
        AutoSize = False
        Caption = 'Select unprinted cheques'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 18
        Height = 25
        Width = 224
      end
      object chkUrgent: TcxCheckBox
        Left = 380
        Top = 79
        Caption = 'Urgent'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 19
      end
      object chkWaiting: TcxCheckBox
        Left = 140
        Top = 79
        Caption = 'Waiting'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 20
      end
      object DateChangeButton1: TDateChangeButton
        Left = 264
        Top = 29
        Width = 80
        Height = 25
        Caption = 'Today'
        TabOrder = 21
        TabStop = False
        ChangeType = ctToday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton2: TDateChangeButton
        Left = 264
        Top = 55
        Width = 80
        Height = 25
        Caption = 'Yesterday'
        TabOrder = 22
        TabStop = False
        ChangeType = ctYesterday
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton3: TDateChangeButton
        Left = 352
        Top = 29
        Width = 80
        Height = 25
        Caption = 'This Week'
        TabOrder = 23
        TabStop = False
        ChangeType = ctThisWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton4: TDateChangeButton
        Left = 352
        Top = 55
        Width = 80
        Height = 25
        Caption = 'Last Week'
        TabOrder = 24
        TabStop = False
        ChangeType = ctLastWeek
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton5: TDateChangeButton
        Left = 440
        Top = 29
        Width = 80
        Height = 25
        Caption = 'This Month'
        TabOrder = 25
        TabStop = False
        ChangeType = ctThisMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton6: TDateChangeButton
        Left = 440
        Top = 55
        Width = 80
        Height = 25
        Caption = 'Last Month'
        TabOrder = 26
        TabStop = False
        ChangeType = ctLastMonth
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton7: TDateChangeButton
        Left = 528
        Top = 29
        Width = 80
        Height = 25
        Caption = 'Year To Date'
        TabOrder = 27
        TabStop = False
        ChangeType = ctYearToDate
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object DateChangeButton8: TDateChangeButton
        Left = 528
        Top = 55
        Width = 80
        Height = 25
        Caption = 'Last Year'
        TabOrder = 28
        TabStop = False
        ChangeType = ctLastYear
        DateFrom = dtpDateFrom
        DateTo = dtpDateTo
        CheckBoxFrom = chkDateFrom
        CheckBoxTo = chkDateTo
      end
      object dtpDateFrom: TDateTimePicker
        Left = 161
        Top = 29
        Width = 95
        Height = 23
        Date = 38169.466950925890000000
        Time = 38169.466950925890000000
        Checked = False
        Enabled = False
        TabOrder = 29
      end
      object dtpDateTo: TDateTimePicker
        Left = 161
        Top = 55
        Width = 95
        Height = 23
        Date = 38199.847006782400000000
        Time = 38199.847006782400000000
        Checked = False
        TabOrder = 30
      end
      object lblAuthorName: TcxLabel
        Left = 205
        Top = 105
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object lblBankName: TcxLabel
        Left = 213
        Top = 6
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object tbAmountFrom: TEdit
        Left = 144
        Top = 234
        Width = 158
        Height = 23
        TabOrder = 33
      end
      object tbAmountTo: TEdit
        Left = 144
        Top = 260
        Width = 158
        Height = 23
        TabOrder = 34
      end
      object tbDesc: TEdit
        Left = 144
        Top = 208
        Width = 158
        Height = 23
        TabOrder = 35
      end
      object tbFileID: TEdit
        Left = 144
        Top = 156
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 36
      end
      object tbmemo: TEdit
        Left = 144
        Top = 130
        Width = 81
        Height = 23
        TabOrder = 37
      end
      object tbPayee: TEdit
        Left = 144
        Top = 182
        Width = 158
        Height = 23
        TabOrder = 38
      end
      object teCheqReqNo: TEdit
        Left = 330
        Top = 130
        Width = 81
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 39
      end
      object chkShowReversed: TcxCheckBox
        Left = 854
        Top = 79
        Caption = 'Reversed'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 40
      end
    end
  end
  object dsCheqReq: TUniDataSource
    AutoEdit = False
    DataSet = qryCheqReq
    Left = 592
    Top = 4
  end
  object qryCheqReq: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHEQREQ'
      
        '  (NCHEQREQ, FILEID, LEDGER, PAYEE, DESCR, AUTHOR, REQDATE, BANK' +
        ', HELD, GROUPABLE, ANTICIPATED, BILLED, NOTE, NMEMO, INVOICEDATE' +
        ', CONVERTED, TRUST, PRIVATE, TAXCODE, SUNDRYTYPE, INVOICESUPPLIE' +
        'D, NMATTER, REFNO, URGENT, BILLNO, AMOUNT, TAX, NCHEQUE, REV_NCH' +
        'EQREQ, NNAME, CHEQUE_GROUP_ID)'
      'VALUES'
      
        '  (:NCHEQREQ, :FILEID, :LEDGER, :PAYEE, :DESCR, :AUTHOR, :REQDAT' +
        'E, :BANK, :HELD, :GROUPABLE, :ANTICIPATED, :BILLED, :NOTE, :NMEM' +
        'O, :INVOICEDATE, :CONVERTED, :TRUST, :PRIVATE, :TAXCODE, :SUNDRY' +
        'TYPE, :INVOICESUPPLIED, :NMATTER, :REFNO, :URGENT, :BILLNO, :AMO' +
        'UNT, :TAX, :NCHEQUE, :REV_NCHEQREQ, :NNAME, :CHEQUE_GROUP_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHEQREQ'
      'WHERE'
      '  NCHEQREQ = :NCHEQREQ')
    SQLUpdate.Strings = (
      'UPDATE CHEQREQ'
      'SET'
      '  NCHEQREQ = :NCHEQREQ,'
      '  FILEID = :FILEID,'
      '  LEDGER = :LEDGER,'
      '  PAYEE = :PAYEE,'
      '  DESCR = :DESCR,'
      '  AUTHOR = :AUTHOR,'
      '  REQDATE = :REQDATE,'
      '  BANK = :BANK,'
      '  HELD = :HELD,'
      '  GROUPABLE = :GROUPABLE,'
      '  ANTICIPATED = :ANTICIPATED,'
      '  BILLED = :BILLED,'
      '  NOTE = :NOTE,'
      '  NMEMO = :NMEMO,'
      '  INVOICEDATE = :INVOICEDATE,'
      '  CONVERTED = :CONVERTED,'
      '  TRUST = :TRUST,'
      '  PRIVATE = :PRIVATE,'
      '  TAXCODE = :TAXCODE,'
      '  SUNDRYTYPE = :SUNDRYTYPE,'
      '  INVOICESUPPLIED = :INVOICESUPPLIED,'
      '  NMATTER = :NMATTER,'
      '  REFNO = :REFNO,'
      '  URGENT = :URGENT,'
      '  BILLNO = :BILLNO,'
      '  AMOUNT = :AMOUNT,'
      '  TAX = :TAX,'
      '  NCHEQUE = :NCHEQUE,'
      '  REV_NCHEQREQ = :REV_NCHEQREQ,'
      '  NNAME = :NNAME,'
      '  CHEQUE_GROUP_ID = :CHEQUE_GROUP_ID'
      'WHERE'
      '  NCHEQREQ = :OLD_NCHEQREQ')
    SQLLock.Strings = (
      'SELECT * FROM CHEQREQ'
      'WHERE'
      '  NCHEQREQ = :NCHEQREQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  C.NCHEQREQ = :NCHEQREQ')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT C.NMEMO,C.TAXCODE,C.TRUST, C.FILEID,C.TAX,C.BILLED,C.ANTI' +
        'CIPATED,C.NMATTER,C.AMOUNT,C.NCHEQREQ,C.HELD,C.NOTE,C.PAYEE,C.RE' +
        'QDATE,'
      
        'c.DESCR,C.BANK,c.AUTHOR,c.URGENT,decode(C.HELD,'#39'Y'#39','#39'Held'#39','#39'W'#39','#39'W' +
        'aiting'#39',null) as HOLD,decode(C.FILEID,NULL,C.LEDGER,C.FILEID) as' +
        ' cREFNO, '
      
        'C.CONVERTED, C.INVOICESUPPLIED, C.REFNO, C.BILLNO, C.NCHEQUE,C.R' +
        'EV_NCHEQREQ, forcepay, C.GROUPABLE, C.LEDGER, C.INVOICEDATE, C.P' +
        'RIVATE,'
      
        'C.SUNDRYTYPE, nvl(C.AMOUNT,0) + nvl(C.TAX,0) as TOTAL, nvl(tr.am' +
        'ount-get_tax(tr.amount,c.TAXCODE),0) as rec, '
      
        'get_tax(tr.amount,c.TAXCODE) as rec_tax ,nvl(cheq.amount,0) as p' +
        'aid, nvl(cheq.tax,0) as paid_tax, '
      
        'nvl(tr.amount,0) - (nvl(cheq.amount,0)+nvl(cheq.tax,0)) as payab' +
        'le ,'
      
        'nname, reqdate, c.FILEID, C.CHEQUE_GROUP_ID, C.AUTHORISED, C.AUT' +
        'HORISED_BY, C.NINVOICE'
      ', CANP.CAN_PAY'
      
        ', case when ((nvl(C.AMOUNT,0) + nvl(C.TAX,0)) > at.t_amount) and' +
        ' c.TRUST = '#39'T'#39' then '#39'N'#39' else '#39'Y'#39' END as TPAY'
      ', C.ROWID'
      'FROM CHEQREQ C '
      
        'left outer join (SELECT /*+ INDEX(alloc.ncheqreq)*/ SUM(AMOUNT)*' +
        '-1 as AMOUNT,SUM(TAX)*-1 AS TAX,NCHEQREQ FROM ALLOC WHERE NCHEQR' +
        'EQ IS NOT NULL GROUP BY NCHEQREQ) CHEQ on c.ncheqreq = cheq.nche' +
        'qreq'
      
        'left outer join (select ncheqreq, case when (n.total - (nvl(n.fe' +
        'es_paid,0) + nvl(n.disb_paid,0) + nvl(n.antd_paid,0) + nvl(n.sun' +
        'd_paid,0) + nvl(n.upcred_paid,0) + nvl(n.tax_paid,0))) < c.amoun' +
        't and c.TRUST = '#39'T'#39' then '#39'N'#39' else '#39'Y'#39' end as CAN_PAY from cheqre' +
        'q c left outer join nmemo n on c.nmemo = n.nmemo) CANP on c.NCHE' +
        'QREQ = CANP.NCHEQREQ'
      
        'left outer join (select ab.nmatter, SUM(ab.AMOUNT) as T_AMOUNT f' +
        'rom ALLOC ab where ab.TRUST = '#39'T'#39' group by ab.nmatter) at on c.n' +
        'matter = at.nmatter  '
      
        'left outer join (select sum(amount) as amount,ncheqreq from cheq' +
        'req_trans group by ncheqreq) tr on c.ncheqreq = tr.ncheqreq'
      'left outer join TAXRATE rr on c.TAXCODE = rr.TAXCODE'
      'where  '
      
        'TRUNC(C.REQDATE) >= :P_DateFrom and TRUNC(C.REQDATE) <= :P_DateT' +
        'o   '
      'AND C.CONVERTED = '#39'N'#39' AND C.AMOUNT > 0 '
      'AND C.REV_NCHEQREQ IS NULL'
      ''
      ''
      
        '/*SELECT C.*, c.refno as crefno, C.ROWID FROM CHEQREQ C WHERE C.' +
        'REQDATE <= :P_DateTo'
      ' ORDER BY C.PAYEE, C.GROUPABLE, C.REQDATE*/')
    CachedUpdates = True
    AfterOpen = qryCheqReqAfterOpen
    BeforeClose = qryCheqReqBeforeClose
    BeforeScroll = qryCheqReqBeforeScroll
    AfterScroll = qryCheqReqAfterScroll
    Left = 536
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object qryUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 504
    Top = 65532
  end
  object qryBill: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 664
    Top = 16
  end
  object procBillCreate: TUniStoredProc
    StoredProcName = 'BILL_CREATE'
    Left = 632
    Top = 19
  end
  object qryDetails: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select '#39'RECEIPT'#39' as type,r.rcptno as refno,t.amount,a.created '
      'from cheqreq_trans t, alloc a, receipt r'
      'where t.NALLOC = a.NALLOC (+)'
      'and a.nreceipt = r.nreceipt(+)'
      'and t.ncheqreq = :ncheqreq'
      'union all'
      
        'select '#39'CHEQUE'#39' as type,c.chqno as refno,a.amount + a.tax as amo' +
        'unt,a.created'
      'from alloc a, cheque c'
      'where a.ncheque = c.ncheque (+)'
      'and a.ncheqreq = :ncheqreq')
    MasterSource = dsCheqReq
    Left = 412
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncheqreq'
        Value = nil
      end>
  end
  object dsData: TUniDataSource
    DataSet = qryDetails
    Left = 325
    Top = 22
  end
  object pmCheqreqs: TPopupMenu
    OnPopup = pmCheqreqsPopup
    Left = 729
    Top = 29
    object miViewCheqreqHistoryforMatter: TMenuItem
      Caption = 'View Cheqreq History for Matter ...'
      OnClick = miViewCheqreqHistoryforMatterClick
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'File'
      'Default'
      'Help'
      'Menus'
      'pmReports')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 261
    Top = 65533
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 40
      FloatClientHeight = 38
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFile'
        end
        item
          Visible = True
          ItemName = 'mnuHelp'
        end>
      OldName = 'Main Menu'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 312
      FloatTop = 367
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFileNewCheque'
        end
        item
          Visible = True
          ItemName = 'mnuFileOpen'
        end
        item
          Visible = True
          ItemName = 'bbtnHold'
        end
        item
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbtnRev'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileConvertReq'
        end
        item
          Visible = True
          ItemName = 'mnuFileConvertAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCreditNote'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object mnuFileNewCheque: TdxBarButton
      Caption = '&New Cheque Requisition'
      Category = 0
      Hint = 'Create a New Payment Entry (Cheque)'
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 116
      OnClick = mnuFileNewChequeClick
    end
    object mnuFileOpen: TdxBarButton
      Action = actCheqReqEdit
      Category = 0
      Enabled = False
      Hint = 'Edit a Payment Entry (Cheque)'
    end
    object mnuFileDelete: TdxBarButton
      Caption = '&Delete'
      Category = 0
      Hint = 'Delete Cheque Requisition'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = mnuFileDeleteClick
    end
    object mnuFileConvertReq: TdxBarButton
      Action = actConvert
      Category = 0
      Enabled = False
    end
    object mnuFileConvertAll: TdxBarButton
      Action = actConvertAll
      Category = 0
      Enabled = False
    end
    object mnuFilePrint: TdxBarButton
      Action = actPrint
      Category = 0
      Enabled = False
      ButtonStyle = bsDropDown
      DropDownMenu = pmReports
    end
    object mnuFileExit: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close current Screen'
      Visible = ivAlways
      ImageIndex = 14
      PaintStyle = psCaptionGlyph
      ShortCut = 16499
      OnClick = mnuFileExitClick
    end
    object bbtnHold: TdxBarButton
      Action = actHold
      Category = 1
      Enabled = False
    end
    object bbtnGroup: TdxBarButton
      Caption = 'Groupable'
      Category = 1
      Hint = 'Groupable'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = bbtnGroupClick
    end
    object btnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 1
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      ImageIndex = 15
      OnClick = btnRefreshClick
    end
    object bbtnRev: TdxBarButton
      Action = actReverse
      Category = 1
    end
    object btnCreditNote: TdxBarButton
      Action = actCreditNote
      Category = 1
      Enabled = False
      Hint = 'Create Credit Note'
    end
    object mnuHelpHelp: TdxBarButton
      Caption = '&Help '
      Category = 2
      Visible = ivAlways
      ImageIndex = 10
      ShortCut = 112
    end
    object mnuFile: TdxBarSubItem
      Caption = '&File'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFileNewCheque'
        end
        item
          Visible = True
          ItemName = 'mnuFileOpen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCreditNote'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileConvertReq'
        end
        item
          Visible = True
          ItemName = 'mnuFileConvertAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFilePrint'
        end
        item
          Visible = True
          ItemName = 'mnuFileReprint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuFileExit'
        end>
    end
    object mnuHelp: TdxBarSubItem
      Caption = '&Help'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuHelpHelp'
        end>
    end
    object miReportChequeRequests: TdxBarButton
      Caption = 'Cheque Requests'
      Category = 4
      Visible = ivAlways
      OnClick = miReportChequeRequestsClick
    end
    object miReportEffectofRequests: TdxBarButton
      Caption = 'Effect of Requests'
      Category = 4
      Visible = ivAlways
      OnClick = miReportEffectofRequestsClick
    end
    object mnuFileReprint: TdxBarButton
      Caption = '&Reprint this request'
      Category = 4
      Hint = 
        'Prints only one cheque - the highlighted one, but only if it has' +
        ' not previously been printed.'
      Visible = ivAlways
      OnClick = mnuFileReprintClick
    end
    object btnPrintGrid: TdxBarButton
      Caption = 'Print Grid'
      Category = 4
      Hint = 'Print Grid'
      Visible = ivAlways
      OnClick = btnPrintGridClick
    end
  end
  object pmReports: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'miReportChequeRequests'
      end
      item
        Visible = True
        ItemName = 'miReportEffectofRequests'
      end
      item
        Visible = True
        ItemName = 'mnuFileReprint'
      end
      item
        Visible = True
        ItemName = 'btnPrintGrid'
      end>
    UseOwnFont = False
    Left = 552
    Top = 53
    PixelsPerInch = 96
  end
  object ilstToolbar: TImageList
    Left = 472
    Top = 20
    Bitmap = {
      494C010111001500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C05824FFB6511EFFB94F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8804BFFEA824EFFB74E1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E67E49FFF4B595FFBC4F19FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E57D49FFF4B595FFBA4F1AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8804BFFFBD8C6FFF4B595FFED8E5EFFB84F
      1AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD9687FF634935FF634935FF6349
      35FF634935FF634935FFE9834FFFFBD8C6FFF4B595FFF5A57DFFED9264FFEC8C
      5BFFB84E1AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAA697FFF6F4F3FFDFDDDBFFD9D2
      CBFFD9CAC0FFEC8652FFFBD8C6FFF5BC9FFFF3AE8BFFF5A57DFFEF976BFFED90
      61FFEC8A59FFB64E1AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEA899FFFEFEFEFFFEFEFEFFD7C1
      B4FFEC8C5AFFFAD8C8FFF7C9B1FFF3AE8BFFF4B392FFF5A57DFFEF9B71FFEE95
      67FFED9061FFEC8957FFB74E1AFFFEFAF70A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0AB9CFFFEFEFEFFFEFEFEFFEE92
      62FFFAD2BDFFFBD4C0FFFBD4C0FFFAD0BBFFF8C8AFFFF7C0A5FFF5B596FFF2AB
      87FFF0A17AFFEF996FFFEE9367FFB64E1BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3AE9EFFFEFEFEFFFEFEFEFFEE96
      67FFEE9466FFED9465FFEC9161FFEB8E5FFFE48857FFDC7B49FFD6733FFFCD66
      31FFC25722FFBD521CFFBC511CFFBB4F1AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6B0A1FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFDFAF8FFFCF5F0FFFBEEE6FF4C66F8FF1932F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9B2A4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFFCF4F0FF6A80F8FF5064F2FF6349
      35FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAB5A5FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFAF8FFCDC6DFFFC5BED9FF694F
      3DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB6A7FFCCB6A7FFCAB5A6FFC9B3
      A4FFC6B0A2FFC4AF9FFFC1AC9DFFBFAA9BFFBCA798FFBAA596FFB8A394FFAB96
      87FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E619B2B2B24D9292926D8D8D8D729B9B9B64C7C7C738F9F9
      F906000000000000000000000000000000000000000000000000000000007070
      708FB2B2B24D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FCFC
      FC0391919F6E2B2B6BD4050563FA000065FF000060FF00004FFF16163DE96262
      629DD4D4D42B0000000000000000000000000000000000000000000000000099
      00FF333B33CCA5A5A55A7373738C66666699666666997373738CCCCCCC330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000F4F4F40B6060
      909F000084FF00008EFF00008EFF00008FFF00008CFF000088FF000081FF0101
      54FF34343CCBC2C2C23D00000000000000000000000000000000000000000099
      00FF006000FF337733CC007300FF009900FF007C00FF004D00FF333B33CC8080
      807F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000FDFDFD025A5A9AA50000
      96FF000097FF00009BFF00009FFF0000A0FF00009DFF000097FF00008FFF0000
      88FF000062FF36363EC9D6D6D629000000000000000000000000000000000099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF007C00FF333B
      33CCA5A5A55A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000008F8FB7700101A3FF0808
      9EFF9999D4FF6868D0FF0000ACFF0000AEFF0000A9FF4848B8FFB7B7E3FF2727
      A5FF00008CFF010152FF7171718E000000000000000000000000000000000099
      00FF009900FF009900FF009900FF109F10EF40B240BF20A520DF009900FF0073
      00FF404040BFF2F2F20D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008400000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000DDDDEF222828ABD90000ABFF2828
      A3FFDEDED2FFFEFEFFFF6464D4FF0000B3FF4646C0FFE7E7ECFFFFFFF7FF5E5E
      B7FF00009AFF020287FF2E2E45D1000000000000000000000000000000000099
      00FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20000000009FD89F60109F
      10EF335933CCB2B2B24D00000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00008400000084848400000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000009797E5690606B0FD0303B9FF0000
      C2FF4C4CA7FFE6E6D9FFFCFCFFFF9E9EE6FFE8E9F4FFFFFFF1FF7575B9FF0606
      B1FF0101ABFF0202A0FF12135DED000000000000000000000000000000000099
      00FF009900FF009900FF009900FF005600FF454545BA0000000000000000BFE5
      BF40006900FF7373738C00000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD00BDBDBD00BDBDBD00000000005859D0AB0808BBFF0707C8FF0505
      D1FF0000C8FF5353B6FFF2F2EDFFFFFFFFFFFFFFFCFF7575C9FF0000BEFF0101
      C3FF0303B8FF0303ACFF0F0F6EF20000000000000000B2B2B24D000000000099
      00FF009900FF009900FF009900FF009900FF009900FF303030CF000000000000
      000060BF609F666D669900000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000BDBDBD00BDBDBD00000000004B4BD2BC0C0CC9FF0D0DD8FF0B0B
      DCFF0000D6FF3C3DCEFFEEEFEDFFFFFFFFFFFFFFFDFF5858DBFF0000CAFF0303
      CBFF0606C5FF0606B8FF111178F10000000000000000334A33CCB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF20A5C3A55A00000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000BDBDBD00000000007272E6931414D8FF1717EAFF0B0B
      F1FF4343DBFFE4E4EAFFFDFDF5FFBABAD4FFEAEAE8FFFEFEFFFF6363E5FF0303
      D7FF0A0ACFFF0A0AC3FF21217FE20000000000000000107810EF404040BFF2F2
      F20D0000000000000000378937C8136313EC114B11EE114311EE113411EE2435
      24DB000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBF7452525E5F22222FBFF3F3F
      E9FFDCDCE5FFFDFDEEFF7373C5FF0303D7FF5151B0FFE3E3D6FFFFFFFEFF6161
      E5FF0808DBFF0F0FCAFF4F4F85B2000000000000000060BF609F004300FF5959
      59A6E5E5E51A00000000E5F4E51A109F10EF009900FF009900FF009900FF1847
      18E7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084848400000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000F3F3FD0C5E5EF1AF3232FFFF5252
      EDFFB3B3C2FF7777CAFF0000EAFF0000ECFF0000E8FF5252B4FFADADB0FF4D4D
      E1FF1818EDFF1818B1F5B6B6B9490000000000000000BFE5BF40009900FF004D
      00FF404040BF8080807F99999966105210EF009900FF009900FF009900FF1545
      15EA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000D6D6FC293E3EFBE75353
      FFFF6868EFFF5757F9FF3838FFFF2525FDFF2929FFFF3838FCFF4242EBFF3232
      FFFF1F1FE9FF7E7EA7840000000000000000000000000000000050B950AF0099
      00FF008600FF004D00FF005600FF008F00FF009900FF009900FF009900FF1444
      14EB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2FC404848
      FDE66E6EFFFF9191FFFF9393FFFF8484FFFF7676FFFF6767FFFF5151FFFF3030
      FBFD7C7CB488FEFEFE0100000000000000000000000000000000EFF8EF1030AC
      30CF009900FF009900FF009900FF009900FF009900FF009900FF009900FF1645
      16E9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF000000FF000000FF00FFFFFF0000000000000000000000000000000000DCDC
      FE246D6DFCB16868FEF68787FFFF9292FFFF7676FFFF5353FFFF5151F2D2A6A6
      CD5C00000000000000000000000000000000000000000000000000000000EFF8
      EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB7F80009900FF1947
      19E6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE0DBDBEFD488889FC947F7FFEBC7F7FFCA3AAAAFD5DE1E1F81E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F703D74
      3DC2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF007B7B7B00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000FF000000FF000000FF007B7B7B000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      FF000000FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF007B7B7B0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000FFFFFF000000FF000000
      FF007B7B7B00FFFFFF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF007B7B7B00FFFF
      FF0000000000FFFFFF00000000000000FF000000FF007B7B7B0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00000000000000FF000000FF000000FF007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000FF000000FF007B7B7B00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000FF000000FF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      84000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF00000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF007B7B7B0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000FF000000FF000000FF007B7B7B00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF007B7B7B000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF007B7B7B00FFFFFF000000FF000000FF000000FF007B7B7B00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000FFFF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000FF007B7B7B00FFFF
      FF000000000000000000000000000000FF000000FF007B7B7B0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007B7B7B0000FFFF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000FF000000FF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000FF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FF000000FF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000084000000840000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C60000FF000000FF000000FF000000FF0000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000840000008400000084000000840000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000C6C6C60000FF000000FF000000FF000000FF0000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000840000008400000084000000840000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF0000FF000000FF0000FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084000000840000FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FF00FF000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000FF0000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000848400008484000084840000848400C6C6C6000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000084840000848400FFFFFF00C6C6C6000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00000000000000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000840000008400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000FF000000FF00FFFFFF00C6C6C6000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C60000008400000084000000840000008400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000FF000000FF00C6C6C6000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C60000008400000084000000840000008400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000FF000000FF00C6C6C6000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000840000008400FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF000000FF000000FF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FF1F000000000000
      FF1F000000000000FF1F000000000000FF1F000000000000FE0F000000000000
      0007000000000000000300000000000000000000000000000000000000000000
      0000000000000000000F000000000000000F000000000000000F000000000000
      000F000000000000FFFF000000000000FFFF8000F80FE7FFFFFF0000E007E01F
      FFFF0000C003E00FFFFF00008001E007FFFF00008001E003FFE700000001E043
      C1F300000001E063C3FB00000001A033C7FB800000019FF3CBFBC00000018C0F
      DCF3C0000001840FFF07C0000001800FFFFFC0008003C00FFFFFC000C003C00F
      FFFFC000E00FE00FFFFFE001F01FFFCFFC00FFFFFFFFEFFFF000C007FE7FCFFF
      C0008003FC3F800700000001FC3F000300000001FE7F800100000001FC3FCFF1
      00000000FC3FEFF100000000FC3FFFF100008000FC1F8FFF0000C000F20F8FF7
      0001E001E1078FF30003E007E18780010007F007E007C0000013F003F00FE001
      0078F803F81FFFF301FFFFFFFFFFFFF7FFFFF01FFFFFFFFFF83FF83FFFFFC007
      E7CFFC7FFFF9C007DFF7FEFFE7FFC007B01BFFFFC3F3C007B83BFFFFC3E7C007
      7C7DFFFFE1C7C0077E8DFFFFF08FC0074105FFFFF81F80074105FFE3FC3FC007
      410507C1F81FC007818B07C1F09FC00781FB07C1C1C7C007DFF707E383E3C013
      E7CF07FF8FF1C038F83FFFFFFFFFFFFFFF00FF00FC3FFC3FFF00FF00F81FF81F
      FF00FF00E007E007FE00FE00C003C003FE00FE0080018001FE00FE0000000000
      FF00FF00E007E007FF80FF80C003C00300000000800180010000000000000000
      00000000E007E00700000000C003C00300000000800180010000000000000000
      00000000F00FF00F00000000F81FF81F00000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    Images = ilstToolbar
    Left = 789
    Top = 22
    StyleName = 'XP Style'
    object actCreditNote: TAction
      Category = 'Credit'
      Caption = 'Credit Note'
      ImageIndex = 13
      OnExecute = actCreditNoteExecute
      OnUpdate = actCreditNoteUpdate
    end
    object actReverse: TAction
      Category = 'Credit'
      Caption = 'Reverse'
      Enabled = False
      ImageIndex = 12
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
    end
    object actConvert: TAction
      Caption = 'Convert'
      Hint = 'Convert Cheque Requisition'
      ImageIndex = 7
      OnExecute = mnuFileConvertReqClick
      OnUpdate = actConvertUpdate
    end
    object actConvertAll: TAction
      Caption = 'Convert All'
      Hint = 'Convert All Cheque Requisitions'
      ImageIndex = 8
      OnExecute = mnuFileConvertAllClick
      OnUpdate = actConvertAllUpdate
    end
    object actCheqReqEdit: TAction
      Caption = 'Edit Cheque Requisition'
      ImageIndex = 1
      OnExecute = mnuFileOpenClick
      OnUpdate = actConvertUpdate
    end
    object actHold: TAction
      Caption = 'Hold'
      Hint = 'Hold'
      ImageIndex = 2
      OnExecute = bbtnHoldClick
      OnUpdate = actConvertUpdate
    end
    object actPrint: TAction
      Caption = '&Print All Requests'
      ImageIndex = 9
      OnExecute = actPrintExecute
      OnUpdate = actPrintUpdate
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 79
    Top = 58
    PixelsPerInch = 96
    object cxStyleR: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleN: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object cxStyleY: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clFuchsia
    end
    object cxStyleD: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindowText
    end
    object cxStyleGroupHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyleB: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
  end
  object qryCheqreqUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE CHEQREQ SET '
      '  CONVERTED = '#39'Y'#39', '
      '  BILLED = '#39'Y'#39', '
      '  NCHEQUE =  :NCHEQUE '
      'WHERE '
      '  NCHEQREQ IN :NCHEQREQLIST')
    Left = 328
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQREQLIST'
        Value = nil
      end>
  end
  object qryLedger: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT TYPE, REFNO, LONGDESC, REASON, AMOUNT, BILLED, UNIQUEID, ' +
        'TAXCODE, TAX, ROWID, WITHHOLD, SUNDRYTYPE, CHEQUE_GROUP_ID,'
      
        'PAYEE, BANK, NCHEQUE, NNAME, CREATED, FILEID, NCHEQREQ_LIST, PRO' +
        'CESS'
      'FROM LGRALLOC'
      'WHERE 1=2')
    CachedUpdates = True
    Left = 520
    Top = 395
  end
  object dsLedger: TUniDataSource
    DataSet = qryLedger
    Left = 496
    Top = 384
  end
  object qryCheque: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT C.*, C.ROWID FROM CHEQUE C WHERE C.NCHEQUE = :P_Ncheque')
    CachedUpdates = True
    Left = 137
    Top = 178
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Ncheque'
        Value = nil
      end>
  end
  object qryBank: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      ' NAME, CASH_AT_BANK, LASTCHQ, CHEQUE, TRUST,'
      ' CL_BALANCE, BALANCE, ROWID'
      'FROM'
      ' BANK'
      'WHERE ACCT = :P_Code'
      'AND ENTITY = :P_Entity')
    Left = 71
    Top = 482
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_Code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object qryBankBalance: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT B.*, B.ROWID FROM BANK B')
    Left = 174
    Top = 469
  end
  object qryAllocs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT ALLOC.FILEID, DESCR, AMOUNT, ACCT, ALLOC.NMATTER, NRECEIP' +
        'T, '
      
        '              NJOURNAL, NMEMO, CREATED, NCLIENT, PAYER, REFNO, T' +
        'RUST, '
      
        '              TYPE, BILLED, CLEARED, NALLOC, NCHEQUE, SYSTEM_DAT' +
        'E, '
      
        '              CLIENT_NAME, MATTER_DESC, OVERDRAWN, SPEC_PURPOSE,' +
        ' TAX, '
      
        '              TAXCODE, SUNDRYTYPE, PRIORBALANCE, NCHEQREQ, BANK,' +
        ' ROWID '
      'FROM ALLOC '
      'WHERE 1 = 2')
    CachedUpdates = True
    Left = 27
    Top = 454
  end
  object qryTmp: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM BANK')
    Left = 245
    Top = 181
  end
  object qryTransItem: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT naccount, chart, descr, ninvoice, refno, amount'
      'FROM transitem'
      'WHERE ninvoice = :p_ninvoice'
      'and ncheque is null')
    Left = 523
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_ninvoice'
        Value = nil
      end>
  end
  object qryInvoiceCRAmount: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT legal_cr_amount, trade_cr_amount'
      'FROM invoice'
      'WHERE ninvoice = :p_ninvoice')
    Left = 207
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_ninvoice'
        Value = nil
      end>
  end
  object qryInvoiceUpdate: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE INVOICE SET'
      '  OWING = OWING - :Amount,'
      '  LAST_PAYMENT = :Last_Payment,'
      '  NCHEQUE = :NCHEQUE'
      'WHERE NINVOICE = :NINVOICE'
      ' ')
    Left = 262
    Top = 485
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Amount'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Last_Payment'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NCHEQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NINVOICE'
        Value = nil
      end>
  end
  object qryCheqReqBal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nvl(T.AMOUNT,0) - nvl(A.AMOUNT,0) as AMOUNT,nvl(T.TAX,0) ' +
        '- nvl(A.TAX,0) as TAX '
      
        'FROM (SELECT SUM(AMOUNT*-1) as AMOUNT,SUM(TAX*-1) as TAX FROM AL' +
        'LOC WHERE NCHEQREQ = :NCHEQREQ) A, '
      
        '(SELECT sum(T.AMOUNT - get_tax(T.AMOUNT,c.taxcode)) as AMOUNT ,s' +
        'um(get_tax(T.AMOUNT,c.taxcode)) as TAX '
      
        'FROM CHEQREQ_TRANS T,CHEQREQ C WHERE C.NCHEQREQ = T.NCHEQREQ AND' +
        ' C.NCHEQREQ = :NCHEQREQ ) T')
    Left = 300
    Top = 265
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NCHEQREQ'
        Value = nil
      end>
  end
  object qryCheqReqsSelected: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 500
    Top = 200
  end
  object popGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'mnuFileNewCheque'
      end
      item
        Visible = True
        ItemName = 'bbtnHold'
      end
      item
        Visible = True
        ItemName = 'mnuFileConvertReq'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'mnuFileConvertAll'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbtnRev'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'mnuFilePrint'
      end>
    UseOwnFont = False
    Left = 273
    Top = 46
    PixelsPerInch = 96
  end
  object qryPrinter: TUniQuery
    UpdatingTable = 'PRINTER'
    KeyFields = 'CODE'
    SQLInsert.Strings = (
      'INSERT INTO PRINTER'
      
        '  (CODE, BANK_ACCT, BRANCH_CODE, PATH, TRAY, TYPE, NUM_FROM, NUM' +
        '_TO, NUM_LAST, TEMPLATE)'
      'VALUES'
      
        '  (:CODE, :BANK_ACCT, :BRANCH_CODE, :PATH, :TRAY, :TYPE, :NUM_FR' +
        'OM, :NUM_TO, :NUM_LAST, :TEMPLATE)')
    SQLDelete.Strings = (
      'DELETE FROM PRINTER'
      'WHERE'
      '  CODE = :CODE')
    SQLUpdate.Strings = (
      'UPDATE PRINTER'
      'SET'
      '  CODE = :CODE,'
      '  BANK_ACCT = :BANK_ACCT,'
      '  BRANCH_CODE = :BRANCH_CODE,'
      '  PATH = :PATH,'
      '  TRAY = :TRAY,'
      '  TYPE = :TYPE,'
      '  NUM_FROM = :NUM_FROM,'
      '  NUM_TO = :NUM_TO,'
      '  NUM_LAST = :NUM_LAST,'
      '  TEMPLATE = :TEMPLATE'
      'WHERE'
      '  CODE = :OLD_CODE')
    SQLLock.Strings = (
      'SELECT * FROM PRINTER'
      'WHERE'
      '  CODE = :CODE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT PRINTER.* FROM PRINTER'
      'WHERE CODE = :CODE')
    CachedUpdates = True
    Left = 523
    Top = 286
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
        Value = nil
      end>
  end
  object rpCheqReqs: TppReport
    AutoStop = False
    DataPipeline = plCheqReqs
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\dbw\Documents\cheqreqrpt.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010001001010000001000800680500001600000028000000100000002000
      0000010008000000000000000000000000000000000000000000000000000000
      0000CE991A00CF9B1F00D5A73900D5A83C00D6A93F00DAB15000DBB45700DFBC
      6900E4C78100E5C98500C4C4C400E8CF9400EAD49F00F6ECD400F6ECD500F7EF
      DB00F8F1DF00F5F5F500FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001213
      130E0101010101091303010101010013130E0101010101091303010101010013
      130E0101010101091303010101010013130E0101010101091303010101010013
      130E0101010101091303010101010013131106060606060D1308060606060013
      13131313131313131313131313130013131004040404040C1307040404040013
      130E0101010101091303010101010013130E0101010101091303010101010013
      130E0101010101091303010101010013130E0101010101091303010101010013
      130F02020202020A130502020202001313131313131313131313131313130013
      13131313131313131313131313130000000000000000000000000000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\CheqReqs.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 823
    Top = 252
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plCheqReqs'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 13758
        mmTop = 1058
        mmWidth = 37888
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 185473
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 0
        mmTop = 7938
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cheque Requests'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 0
        mmTop = 15610
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 28310
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Matter/Ledger'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 20638
        mmTop = 24342
        mmWidth = 19812
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 20638
        mmTop = 28575
        mmWidth = 9059
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Bank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 24342
        mmWidth = 7281
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Payee'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 54504
        mmTop = 24342
        mmWidth = 9017
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 54504
        mmTop = 28575
        mmWidth = 16002
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Req By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 101599
        mmTop = 24342
        mmWidth = 10414
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 132567
        mmTop = 24342
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 156104
        mmTop = 24342
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 178330
        mmTop = 24342
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Billed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 188913
        mmTop = 24342
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 32544
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 22490
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'CheqReq No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4073
        mmLeft = 719
        mmTop = 24442
        mmWidth = 17972
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Chq #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 42863
        mmTop = 28310
        mmWidth = 8466
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'Tx Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 112977
        mmTop = 24342
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.BorderPositions = [bpTop]
      Border.Visible = True
      Border.mmPadding = 265
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'REQDATE'
        DataPipeline = plCheqReqs
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 794
        mmTop = 5569
        mmWidth = 18019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 20638
        mmTop = 529
        mmWidth = 21464
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'HOLD'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 20638
        mmTop = 5556
        mmWidth = 21464
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'BANK'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 42863
        mmTop = 529
        mmWidth = 7684
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PAYEE'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 54504
        mmTop = 529
        mmWidth = 46639
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'AUTHOR'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 102129
        mmTop = 529
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'TAXCODE'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4233
        mmLeft = 112977
        mmTop = 529
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plCheqReqs
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4234
        mmLeft = 125413
        mmTop = 529
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'TOTAL'
        DataPipeline = plCheqReqs
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 265
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = plCheqReqs
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4233
        mmLeft = 144466
        mmTop = 529
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'NCHEQREQ'
        DataPipeline = plCheqReqs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4792
        mmLeft = 719
        mmTop = 239
        mmWidth = 17972
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'CHQNO'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 3969
        mmLeft = 42863
        mmTop = 5556
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'BILLED'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4498
        mmLeft = 188913
        mmTop = 265
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'BILLNO'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4498
        mmLeft = 185473
        mmTop = 5292
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'DESCR'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4498
        mmLeft = 54504
        mmTop = 5556
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 529
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Totals'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 9260
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        LookAhead = True
        ResetType = veReportStart
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 120650
        mmTop = 2117
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable3'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        LookAhead = True
        ResetType = veReportStart
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 144463
        mmTop = 2381
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable4: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable4'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        LookAhead = True
        ResetType = veReportStart
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3968
        mmLeft = 162190
        mmTop = 2117
        mmWidth = 21960
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4022
        mmLeft = 23813
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'TAX'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4022
        mmLeft = 23548
        mmTop = 6615
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'REC'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4022
        mmLeft = 44979
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'REC_TAX'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4022
        mmLeft = 44715
        mmTop = 7144
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'TOTAL'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4022
        mmLeft = 68263
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'PAID_TAX'
        DataPipeline = plCheqReqs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plCheqReqs'
        mmHeight = 4022
        mmLeft = 67469
        mmTop = 7884
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable6: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable6'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 6879
        mmWidth = 13759
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraVarProgram'
        raProgram.ChildType = 17
        raProgram.ProgramName = 'Variables'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variables;'#13#10'var'#13#10'  AmtTotal : Currency;'#13#10'  AmtTotalTax' +
          ' : Currency;'#13#10'  RecTotal: Currency;'#13#10'  RectotalTax : Currency;'#13#10 +
          '  PaidTotal : Currency;'#13#10'  PaidTotalTax : Currency;'#13#10'  Payable :' +
          ' Currency;'#13#10'  PayableTax : Currency;'#13#10#13#10'begin'#13#10#13#10'end;'#13#10
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' :=   DBCalc1.Value;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          27
          2)
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText9OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText9OnPrint;'#13#10'begin'#13#10'   AmtTotal :=  AmtTotal + plC' +
          'heqReqs['#39'AMOUNT'#39'];'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText9'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText13OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText13OnPrint;'#13#10'begin'#13#10'   AmtTotalTax := AmtTotalTax' +
          ' +  plCheqReqs['#39'TAX'#39'];'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText13'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
      object raProgramInfo7: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable3OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable3OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'    Val' +
          'ue :=   DBCalc2.Value;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable3'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          29
          2)
      end
      object raProgramInfo10: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText11OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText11OnPrint;'#13#10'begin'#13#10'   PaidTotal := PaidTotal + p' +
          'lCheqReqs['#39'PAID'#39'];'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText11'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
      object raProgramInfo13: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'ReportBeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure ReportBeforePrint;'#13#10'begin'#13#10'   AmtTotal := 0;'#13#10'  AmtTot' +
          'alTax := 0;'#13#10'  RecTotal:= 0;'#13#10'  RectotalTax := 0;'#13#10'  PaidTotal :' +
          '= 0;'#13#10'  PaidTotalTax := 0;'#13#10'  Payable :=0;'#13#10'  PayableTax := 0;'#13#10 +
          'end;'#13#10
        raProgram.ComponentName = 'Report'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 1
      end
      object raProgramInfo14: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable4OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable4OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'    Val' +
          'ue :=   DBCalc5.Value;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable4'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          29
          2)
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plCheqReqs: TppDBPipeline
    DataSource = dsCheqReqRpt
    UserName = 'plCheqReqs'
    Left = 762
    Top = 249
    object plCheqReqsppField1: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plCheqReqsppField2: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object plCheqReqsppField3: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object plCheqReqsppField4: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plCheqReqsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plCheqReqsppField6: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object plCheqReqsppField7: TppField
      FieldAlias = 'ANTICIPATED'
      FieldName = 'ANTICIPATED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plCheqReqsppField8: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object plCheqReqsppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plCheqReqsppField10: TppField
      FieldAlias = 'NCHEQREQ'
      FieldName = 'NCHEQREQ'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 9
    end
    object plCheqReqsppField11: TppField
      FieldAlias = 'HELD'
      FieldName = 'HELD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object plCheqReqsppField12: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 400
      DisplayWidth = 400
      Position = 11
    end
    object plCheqReqsppField13: TppField
      FieldAlias = 'PAYEE'
      FieldName = 'PAYEE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object plCheqReqsppField14: TppField
      FieldAlias = 'REQDATE'
      FieldName = 'REQDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object plCheqReqsppField15: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 14
    end
    object plCheqReqsppField16: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 3
      DisplayWidth = 3
      Position = 15
    end
    object plCheqReqsppField17: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object plCheqReqsppField18: TppField
      FieldAlias = 'URGENT'
      FieldName = 'URGENT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object plCheqReqsppField19: TppField
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 7
      DisplayWidth = 7
      Position = 18
    end
    object plCheqReqsppField20: TppField
      FieldAlias = 'CREFNO'
      FieldName = 'CREFNO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 19
    end
    object plCheqReqsppField21: TppField
      FieldAlias = 'CONVERTED'
      FieldName = 'CONVERTED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object plCheqReqsppField22: TppField
      FieldAlias = 'INVOICESUPPLIED'
      FieldName = 'INVOICESUPPLIED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object plCheqReqsppField23: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 22
    end
    object plCheqReqsppField24: TppField
      FieldAlias = 'BILLNO'
      FieldName = 'BILLNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 23
    end
    object plCheqReqsppField25: TppField
      FieldAlias = 'NCHEQUE'
      FieldName = 'NCHEQUE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plCheqReqsppField26: TppField
      FieldAlias = 'REV_NCHEQREQ'
      FieldName = 'REV_NCHEQREQ'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 25
    end
    object plCheqReqsppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORCEPAY'
      FieldName = 'FORCEPAY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object plCheqReqsppField28: TppField
      FieldAlias = 'GROUPABLE'
      FieldName = 'GROUPABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object plCheqReqsppField29: TppField
      FieldAlias = 'LEDGER'
      FieldName = 'LEDGER'
      FieldLength = 40
      DisplayWidth = 40
      Position = 28
    end
    object plCheqReqsppField30: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object plCheqReqsppField31: TppField
      FieldAlias = 'PRIVATE'
      FieldName = 'PRIVATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object plCheqReqsppField32: TppField
      FieldAlias = 'SUNDRYTYPE'
      FieldName = 'SUNDRYTYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 31
    end
    object plCheqReqsppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object plCheqReqsppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC'
      FieldName = 'REC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object plCheqReqsppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TAX'
      FieldName = 'REC_TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object plCheqReqsppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAID'
      FieldName = 'PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object plCheqReqsppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAID_TAX'
      FieldName = 'PAID_TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object plCheqReqsppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAYABLE'
      FieldName = 'PAYABLE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object plCheqReqsppField39: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 38
    end
    object plCheqReqsppField40: TppField
      FieldAlias = 'REQDATE_1'
      FieldName = 'REQDATE_1'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 39
    end
    object plCheqReqsppField41: TppField
      FieldAlias = 'FILEID_1'
      FieldName = 'FILEID_1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object plCheqReqsppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE_GROUP_ID'
      FieldName = 'CHEQUE_GROUP_ID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object plCheqReqsppField43: TppField
      FieldAlias = 'AUTHORISED'
      FieldName = 'AUTHORISED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 42
    end
    object plCheqReqsppField44: TppField
      FieldAlias = 'AUTHORISED_BY'
      FieldName = 'AUTHORISED_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object plCheqReqsppField45: TppField
      FieldAlias = 'NINVOICE'
      FieldName = 'NINVOICE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 44
    end
    object plCheqReqsppField46: TppField
      FieldAlias = 'CHQNO'
      FieldName = 'CHQNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 45
    end
    object plCheqReqsppField47: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 46
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 1
    Left = 875
    Top = 26
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42242.791361724540000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.AutoWidth = True
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Caption = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object dsCheqReqRpt: TUniDataSource
    DataSet = qryCheqReqRpt
    Left = 692
    Top = 233
  end
  object qryCheqReqRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT C.NMEMO,C.TAXCODE,C.TRUST, C.FILEID,C.TAX,C.BILLED,C.ANTI' +
        'CIPATED,C.NMATTER,C.AMOUNT,C.NCHEQREQ,C.HELD,C.NOTE,C.PAYEE,C.RE' +
        'QDATE,'
      
        'c.DESCR,C.BANK,c.AUTHOR,c.URGENT,decode(C.HELD,'#39'Y'#39','#39'Held'#39','#39'W'#39','#39'W' +
        'aiting'#39',null) as HOLD,decode(C.FILEID,NULL,C.LEDGER,C.FILEID) as' +
        ' cREFNO, '
      
        'C.CONVERTED, C.INVOICESUPPLIED, C.REFNO, C.BILLNO, C.NCHEQUE,C.R' +
        'EV_NCHEQREQ, forcepay, C.GROUPABLE, C.LEDGER, C.INVOICEDATE, C.P' +
        'RIVATE,'
      
        'C.SUNDRYTYPE, nvl(C.AMOUNT,0) + nvl(C.TAX,0) as TOTAL, nvl(tr.am' +
        'ount-get_tax(tr.amount,c.TAXCODE),0) as rec, '
      
        'get_tax(tr.amount,c.TAXCODE) as rec_tax ,nvl(cheq.amount,0) as p' +
        'aid, nvl(cheq.tax,0) as paid_tax, '
      
        'nvl(tr.amount,0) - (nvl(cheq.amount,0)+nvl(cheq.tax,0)) as payab' +
        'le ,nname, reqdate, c.FILEID, C.CHEQUE_GROUP_ID, C.AUTHORISED, C' +
        '.AUTHORISED_BY, C.NINVOICE, chq.chqno, C.ROWID'
      'FROM CHEQREQ C ,'
      
        '(SELECT /*+ INDEX(alloc.ncheqreq)*/ SUM(AMOUNT)*-1 as AMOUNT,SUM' +
        '(TAX)*-1 AS TAX,NCHEQREQ FROM ALLOC WHERE NCHEQREQ IS NOT NULL G' +
        'ROUP BY NCHEQREQ) CHEQ ,'
      '(SELECT NCHEQUE, CHQNO FROM CHEQUE) chq,'
      
        '(select sum(amount) as amount,ncheqreq from cheqreq_trans group ' +
        'by ncheqreq) tr ,TAXRATE rr where c.ncheqreq = cheq.ncheqreq (+)' +
        ' and C.NCHEQUE = chq.NCHEQUE (+) and '
      
        'c.ncheqreq = tr.ncheqreq (+) and c.TAXCODE = rr.TAXCODE (+) and ' +
        'C.REQDATE >= :P_DateFrom and C.REQDATE <= :P_DateTo  AND C.AMOUN' +
        'T > 0 AND C.CONVERTED = '#39'N'#39'  '
      'AND C.REV_NCHEQREQ IS NULL')
    Left = 629
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = Null
      end>
  end
  object qryCheqReqsEffect: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT C.NMEMO,C.TAXCODE,C.TRUST, C.FILEID,C.TAX,C.BILLED,C.ANTI' +
        'CIPATED,C.NMATTER,C.AMOUNT,C.NCHEQREQ,C.HELD,C.NOTE,C.PAYEE,C.RE' +
        'QDATE,'
      
        'c.DESCR,C.BANK,c.AUTHOR,c.URGENT,decode(C.HELD,'#39'Y'#39','#39'Held'#39','#39'W'#39','#39'W' +
        'aiting'#39',null) as HOLD,decode(C.FILEID,NULL,C.LEDGER,C.FILEID) as' +
        ' cREFNO, '
      
        'C.CONVERTED, C.INVOICESUPPLIED, C.REFNO, C.BILLNO, C.NCHEQUE,C.R' +
        'EV_NCHEQREQ, forcepay, C.GROUPABLE, C.LEDGER, C.INVOICEDATE, C.P' +
        'RIVATE,'
      
        'C.SUNDRYTYPE, nvl(C.AMOUNT,0) + nvl(C.TAX,0) as TOTAL, nvl(tr.am' +
        'ount-get_tax(tr.amount,c.TAXCODE),0) as rec, '
      
        'get_tax(tr.amount,c.TAXCODE) as rec_tax ,nvl(cheq.amount,0) as p' +
        'aid, nvl(cheq.tax,0) as paid_tax, '
      
        'nvl(tr.amount,0) - (nvl(cheq.amount,0)+nvl(cheq.tax,0)) as payab' +
        'le ,nname, reqdate, c.FILEID, C.CHEQUE_GROUP_ID, C.AUTHORISED, C' +
        '.AUTHORISED_BY, C.NINVOICE, C.ROWID'
      'FROM CHEQREQ C ,'
      
        '(SELECT /*+ INDEX(alloc.ncheqreq)*/ SUM(AMOUNT)*-1 as AMOUNT,SUM' +
        '(TAX)*-1 AS TAX,NCHEQREQ FROM ALLOC WHERE NCHEQREQ IS NOT NULL G' +
        'ROUP BY NCHEQREQ) CHEQ ,'
      
        '(select sum(amount) as amount,ncheqreq from cheqreq_trans group ' +
        'by ncheqreq) tr ,TAXRATE rr where c.ncheqreq = cheq.ncheqreq (+)' +
        ' and '
      
        'c.ncheqreq = tr.ncheqreq (+) and c.TAXCODE = rr.TAXCODE (+) and ' +
        'C.REQDATE >= :P_DateFrom and C.REQDATE <= :P_DateTo  AND C.AMOUN' +
        'T > 0 AND C.CONVERTED = '#39'N'#39'  '
      'AND C.REV_NCHEQREQ IS NULL')
    Filtered = True
    Filter = 'Trust = '#39'T'#39
    Left = 665
    Top = 311
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_DateFrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_DateTo'
        Value = nil
      end>
  end
  object dsCheqReqsEffect: TUniDataSource
    DataSet = qryCheqReqsEffect
    Left = 717
    Top = 312
  end
  object plCheqReqsEffect: TppDBPipeline
    DataSource = dsCheqReqsEffect
    UserName = 'plCheqReqsEffect'
    Left = 766
    Top = 311
    object plCheqReqsEffectppField1: TppField
      FieldAlias = 'NMEMO'
      FieldName = 'NMEMO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
    end
    object plCheqReqsEffectppField2: TppField
      FieldAlias = 'TAXCODE'
      FieldName = 'TAXCODE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object plCheqReqsEffectppField3: TppField
      FieldAlias = 'TRUST'
      FieldName = 'TRUST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object plCheqReqsEffectppField4: TppField
      FieldAlias = 'FILEID'
      FieldName = 'FILEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plCheqReqsEffectppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plCheqReqsEffectppField6: TppField
      FieldAlias = 'BILLED'
      FieldName = 'BILLED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object plCheqReqsEffectppField7: TppField
      FieldAlias = 'ANTICIPATED'
      FieldName = 'ANTICIPATED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object plCheqReqsEffectppField8: TppField
      FieldAlias = 'NMATTER'
      FieldName = 'NMATTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object plCheqReqsEffectppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plCheqReqsEffectppField10: TppField
      FieldAlias = 'NCHEQREQ'
      FieldName = 'NCHEQREQ'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 9
    end
    object plCheqReqsEffectppField11: TppField
      FieldAlias = 'HELD'
      FieldName = 'HELD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object plCheqReqsEffectppField12: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 400
      DisplayWidth = 400
      Position = 11
    end
    object plCheqReqsEffectppField13: TppField
      FieldAlias = 'PAYEE'
      FieldName = 'PAYEE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object plCheqReqsEffectppField14: TppField
      FieldAlias = 'REQDATE'
      FieldName = 'REQDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object plCheqReqsEffectppField15: TppField
      FieldAlias = 'DESCR'
      FieldName = 'DESCR'
      FieldLength = 120
      DisplayWidth = 120
      Position = 14
    end
    object plCheqReqsEffectppField16: TppField
      FieldAlias = 'BANK'
      FieldName = 'BANK'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object plCheqReqsEffectppField17: TppField
      FieldAlias = 'AUTHOR'
      FieldName = 'AUTHOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object plCheqReqsEffectppField18: TppField
      FieldAlias = 'URGENT'
      FieldName = 'URGENT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object plCheqReqsEffectppField19: TppField
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 7
      DisplayWidth = 7
      Position = 18
    end
    object plCheqReqsEffectppField20: TppField
      FieldAlias = 'CREFNO'
      FieldName = 'CREFNO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 19
    end
    object plCheqReqsEffectppField21: TppField
      FieldAlias = 'CONVERTED'
      FieldName = 'CONVERTED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object plCheqReqsEffectppField22: TppField
      FieldAlias = 'INVOICESUPPLIED'
      FieldName = 'INVOICESUPPLIED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object plCheqReqsEffectppField23: TppField
      FieldAlias = 'REFNO'
      FieldName = 'REFNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 22
    end
    object plCheqReqsEffectppField24: TppField
      FieldAlias = 'BILLNO'
      FieldName = 'BILLNO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 23
    end
    object plCheqReqsEffectppField25: TppField
      FieldAlias = 'NCHEQUE'
      FieldName = 'NCHEQUE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 24
    end
    object plCheqReqsEffectppField26: TppField
      FieldAlias = 'REV_NCHEQREQ'
      FieldName = 'REV_NCHEQREQ'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 25
    end
    object plCheqReqsEffectppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORCEPAY'
      FieldName = 'FORCEPAY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object plCheqReqsEffectppField28: TppField
      FieldAlias = 'GROUPABLE'
      FieldName = 'GROUPABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object plCheqReqsEffectppField29: TppField
      FieldAlias = 'LEDGER'
      FieldName = 'LEDGER'
      FieldLength = 40
      DisplayWidth = 40
      Position = 28
    end
    object plCheqReqsEffectppField30: TppField
      FieldAlias = 'INVOICEDATE'
      FieldName = 'INVOICEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object plCheqReqsEffectppField31: TppField
      FieldAlias = 'PRIVATE'
      FieldName = 'PRIVATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object plCheqReqsEffectppField32: TppField
      FieldAlias = 'SUNDRYTYPE'
      FieldName = 'SUNDRYTYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 31
    end
    object plCheqReqsEffectppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object plCheqReqsEffectppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC'
      FieldName = 'REC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object plCheqReqsEffectppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TAX'
      FieldName = 'REC_TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object plCheqReqsEffectppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAID'
      FieldName = 'PAID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object plCheqReqsEffectppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAID_TAX'
      FieldName = 'PAID_TAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object plCheqReqsEffectppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAYABLE'
      FieldName = 'PAYABLE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object plCheqReqsEffectppField39: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 38
    end
    object plCheqReqsEffectppField40: TppField
      FieldAlias = 'REQDATE_1'
      FieldName = 'REQDATE_1'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 39
    end
    object plCheqReqsEffectppField41: TppField
      FieldAlias = 'FILEID_1'
      FieldName = 'FILEID_1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object plCheqReqsEffectppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE_GROUP_ID'
      FieldName = 'CHEQUE_GROUP_ID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object plCheqReqsEffectppField43: TppField
      FieldAlias = 'AUTHORISED'
      FieldName = 'AUTHORISED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 42
    end
    object plCheqReqsEffectppField44: TppField
      FieldAlias = 'AUTHORISED_BY'
      FieldName = 'AUTHORISED_BY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 43
    end
    object plCheqReqsEffectppField45: TppField
      FieldAlias = 'NINVOICE'
      FieldName = 'NINVOICE'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 44
    end
    object plCheqReqsEffectppField46: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 18
      DisplayWidth = 18
      Position = 45
    end
  end
  object rptCheqReqsEffect: TppReport
    AutoStop = False
    DataPipeline = plCheqReqsEffect
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010001001010000001000800680500001600000028000000100000002000
      0000010008000000000000000000000000000000000000000000000000000000
      0000CE991A00CF9B1F00D5A73900D5A83C00D6A93F00DAB15000DBB45700DFBC
      6900E4C78100E5C98500C4C4C400E8CF9400EAD49F00F6ECD400F6ECD500F7EF
      DB00F8F1DF00F5F5F500FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001213
      130E0101010101091303010101010013130E0101010101091303010101010013
      130E0101010101091303010101010013130E0101010101091303010101010013
      130E0101010101091303010101010013131106060606060D1308060606060013
      13131313131313131313131313130013131004040404040C1307040404040013
      130E0101010101091303010101010013130E0101010101091303010101010013
      130E0101010101091303010101010013130E0101010101091303010101010013
      130F02020202020A130502020202001313131313131313131313131313130013
      13131313131313131313131313130000000000000000000000000000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\CheqReqs.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 847
    Top = 312
    Version = '20.0'
    mmColumnWidth = 0
    DataPipelineName = 'plCheqReqsEffect'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 13758
        mmTop = 1058
        mmWidth = 37888
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Printed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 185473
        mmTop = 1058
        mmWidth = 11091
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4487
        mmLeft = 92869
        mmTop = 1058
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Effects of Requests for Trust Cheques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 22
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 9102
        mmLeft = 0
        mmTop = 11377
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Ref'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 794
        mmTop = 26988
        mmWidth = 4953
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Payee'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 26988
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 26988
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 145786
        mmTop = 26988
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Pre Trust'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 26988
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Post Trust'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 26988
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 30427
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FILEID'
        DataPipeline = plCheqReqsEffect
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqsEffect'
        mmHeight = 3598
        mmLeft = 794
        mmTop = 529
        mmWidth = 18522
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PAYEE'
        DataPipeline = plCheqReqsEffect
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCheqReqsEffect'
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 529
        mmWidth = 51065
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'DESCR'
        DataPipeline = plCheqReqsEffect
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCheqReqsEffect'
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 794
        mmWidth = 63236
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plCheqReqsEffect
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqsEffect'
        mmHeight = 3704
        mmLeft = 138113
        mmTop = 529
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable8: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        OnCalc = ppVariable8Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 180182
        mmTop = 529
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable9: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable9'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        OnCalc = ppVariable9Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 163513
        mmTop = 529
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 529
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Total of Amounts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 1852
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'AMOUNT'
        DataPipeline = plCheqReqsEffect
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCheqReqsEffect'
        mmHeight = 3598
        mmLeft = 139700
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'No of Matters that will be overdrawn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 7144
        mmWidth = 53975
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = 'Total of Amount Matters will be overdrawn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 12435
        mmWidth = 63235
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = 'Authorised By: ________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5842
        mmLeft = 85196
        mmTop = 29633
        mmWidth = 102532
        BandType = 7
        LayerName = Foreground1
      end
      object ppVariable10: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable10'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        OnCalc = ppVariable10Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 178594
        mmTop = 7144
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground1
      end
      object ppVariable11: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable11'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        OnCalc = ppVariable11Calc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 180965
        mmTop = 12435
        mmWidth = 15621
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo16: TraProgramInfo
        raClassName = 'TraVarProgram'
        raProgram.ChildType = 17
        raProgram.ProgramName = 'Variables'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variables;'#13#10'var'#13#10'  AmtTotal : Currency;'#13#10'  AmtTotalTax' +
          ' : Currency;'#13#10'  RecTotal: Currency;'#13#10'  RectotalTax : Currency;'#13#10 +
          '  PaidTotal : Currency;'#13#10'  PaidTotalTax : Currency;'#13#10'  Payable :' +
          ' Currency;'#13#10'  PayableTax : Currency;'#13#10#13#10'begin'#13#10#13#10'end;'#13#10
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qryBillNotPaid: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select case when n.owing < c.amount then 0 else 1 end as CAN_PAY' +
        ' from nmemo n inner join cheqreq c on n.nmemo = c.nmemo where c.' +
        'ncheqreq = :ncheqreq;')
    Left = 652
    Top = 386
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncheqreq'
        Value = nil
      end>
  end
  object qryTrustReqs: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select m.ACCT,  nvl(cd.cd_amount,0) as d_amount, nvl(c.c_amount,' +
        '0) as c_amount  , SUM(a.AMOUNT) AS T_AMOUNT'
      'from alloc a '
      'inner join matter m on a.nmatter = m.nmatter'
      'left outer join ('
      
        '                select ca.ncheqreq, ca.nmatter, ca.converted, ca' +
        '.bank, sum(ca.amount) as c_amount '
      '                        from cheqreq ca '
      
        '                        where ca.CONVERTED = '#39'N'#39' group by ca.nch' +
        'eqreq, ca.nmatter, ca.converted, ca.bank'
      
        '                ) c on a.nmatter = c.nmatter and m.ACCT = c.bank' +
        ' and c.ncheqreq = :ncheqreq'
      'left outer join ('
      
        '                select cb.nmatter, cb.converted, cb.bank, sum(cb' +
        '.amount) as cd_amount '
      '                from cheqreq cb '
      
        '                where cb.CONVERTED = '#39'Y'#39' group by cb.nmatter, cb' +
        '.converted, cb.bank'
      
        '                ) cd on a.nmatter = cd.nmatter and  m.ACCT = cd.' +
        'bank'
      
        'where a.nmatter = :nmatter and m.ACCT = a.bank group by m.ACCT,n' +
        'vl(cd.cd_amount,0) , nvl(c.c_amount,0)')
    Left = 420
    Top = 166
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncheqreq'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nmatter'
        Value = nil
      end>
  end
end
