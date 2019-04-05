object frmOptionsUser: TfrmOptionsUser
  Left = 388
  Top = 219
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 706
  ClientWidth = 1283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 15
  object pagOptions: TcxPageControl
    Left = 0
    Top = 28
    Width = 1283
    Height = 678
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = tabMatterLabels
    Properties.CustomButtons.Buttons = <>
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    OnChange = pagOptionsChange
    OnPageChanging = pagOptionsPageChanging
    ClientRectBottom = 674
    ClientRectLeft = 4
    ClientRectRight = 1279
    ClientRectTop = 28
    object tabMatterLabels: TcxTabSheet
      Caption = 'Matter Labels'
      ImageIndex = 0
      object lblPrinter: TLabel
        Left = 8
        Top = 13
        Width = 121
        Height = 17
        Caption = 'Default Label Printer:'
        Transparent = True
      end
      object lbCopies: TLabel
        Left = 8
        Top = 69
        Width = 86
        Height = 17
        Caption = 'Matter Copies:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 172
        Top = 69
        Width = 89
        Height = 17
        Caption = 'Archive Copies:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 8
        Top = 196
        Width = 173
        Height = 17
        Caption = 'Matter Label Merge File path:'
        Transparent = True
      end
      object Label11: TLabel
        Left = 8
        Top = 247
        Width = 139
        Height = 17
        Caption = 'Matter Label File Name:'
        Transparent = True
      end
      object Label12: TLabel
        Left = 8
        Top = 294
        Width = 728
        Height = 17
        Caption = 
          '(If left blank, Insight uses MATTERLABEL . Otherwise syntax shou' +
          'ld be filename + aditional variable. eg. MATTERLABEL+FILEID)'
        Transparent = True
      end
      object scmbMatterLabel: TcxShellComboBox
        Left = 8
        Top = 217
        AutoSize = False
        Properties.HideSelection = False
        Properties.ShowFullPath = sfpAlways
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Height = 22
        Width = 349
      end
      object teMatterLabel: TcxTextEdit
        Left = 8
        Top = 267
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Text = 'MATTERLABEL'
        Width = 349
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 317
        Caption = 'Label File Template Name'
        Transparent = True
      end
      object teLabelFile: TcxTextEdit
        Left = 8
        Top = 338
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Text = 'LABEL.DOC'
        Width = 130
      end
      object cbCreateAutoPrint: TcxCheckBox
        Left = 8
        Top = 92
        Caption = 'auto print on matter creation'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cbDefaultSettings: TcxCheckBox
        Left = 8
        Top = 118
        Caption = 'use as &default settings'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cbCollateCopies: TcxCheckBox
        Left = 8
        Top = 143
        Caption = 'collate labels?'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cbMSWordLabel: TcxCheckBox
        Left = 8
        Top = 170
        Caption = 'MSWord Label'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        OnClick = cbMSWordLabelClick
      end
      object cbPrinter: TcxComboBox
        Left = 8
        Top = 35
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Text = 'cbPrinter'
        Width = 310
      end
      object seMatterCopies: TcxSpinEdit
        Left = 102
        Top = 66
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 42
      end
      object seArchiveCopies: TcxSpinEdit
        Left = 275
        Top = 66
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 42
      end
      object teLabelTemplate: TcxTextEdit
        Left = 172
        Top = 338
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Text = '7171'
        Width = 129
      end
      object cxLabel2: TcxLabel
        Left = 172
        Top = 317
        Caption = 'Label Template (eg 7171)'
        Transparent = True
      end
    end
    object tabArchiveLabels: TcxTabSheet
      Caption = 'Archive Label'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label16: TLabel
        Left = 8
        Top = 13
        Width = 121
        Height = 17
        Caption = 'Default Label Printer:'
        Transparent = True
      end
      object Label17: TLabel
        Left = 8
        Top = 69
        Width = 86
        Height = 17
        Caption = 'Matter Copies:'
        Transparent = True
      end
      object Label19: TLabel
        Left = 8
        Top = 102
        Width = 185
        Height = 17
        Caption = 'Matter Archive Label File Name:'
        Transparent = True
      end
      object cbArchivePrinter: TcxComboBox
        Left = 8
        Top = 35
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Text = 'cbArchivePrinter'
        Width = 310
      end
      object cxSpinEdit1: TcxSpinEdit
        Left = 102
        Top = 66
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 42
      end
      object teArchiveLabel: TcxTextEdit
        Left = 8
        Top = 122
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Text = 'ARCHIVELABEL'
        Width = 349
      end
    end
    object tabMatlocate: TcxTabSheet
      Caption = 'Matter Display'
      ImageIndex = 1
      DesignSize = (
        1275
        646)
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 133
        Height = 17
        Caption = 'Field names to display:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 307
        Height = 17
        Caption = '(If left blank, Insight displays Client ShortDescr FileID)'
        Transparent = True
      end
      object tbMatlocate: TcxTextEdit
        Left = 8
        Top = 28
        Anchors = [akLeft, akTop, akRight]
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 1261
      end
    end
    object tabDiary: TcxTabSheet
      Caption = 'Diary'
      ImageIndex = 3
      TabVisible = False
      DesignSize = (
        1275
        646)
      object Label8: TLabel
        Left = 556
        Top = 46
        Width = 166
        Height = 17
        Caption = 'minutes before appointment'
        Transparent = True
      end
      object rgDiaryAuthor: TcxRadioGroup
        Left = 9
        Top = 3
        Caption = 'Default Author'
        Properties.Columns = 3
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Caption = 'User'
          end
          item
            Caption = 'Author'
          end
          item
            Caption = 'Controller'
          end
          item
            Caption = 'Partner'
          end
          item
            Caption = 'Para Legal'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 74
        Width = 436
      end
      object chkDiaryEventPrintDescr: TcxCheckBox
        Left = 450
        Top = 14
        Caption = 'Default Print Event Description'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object chkDiaryNotify: TcxCheckBox
        Left = 450
        Top = 42
        Caption = 'Notify'
        Properties.Alignment = taRightJustify
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        OnClick = chkDiaryNotifyClick
      end
      object neDiaryNotify: TcxTextEdit
        Left = 518
        Top = 42
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 30
      end
      object gbDiaryWith: TcxGroupBox
        Left = 9
        Top = 88
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Default With'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 4
        DesignSize = (
          1263
          556)
        Height = 556
        Width = 1263
        object Label15: TLabel
          Left = 9
          Top = 44
          Width = 23
          Height = 17
          Caption = 'SQL'
          Transparent = True
        end
        object rbDiaryWithClient: TcxRadioButton
          Left = 10
          Top = 21
          Width = 64
          Height = 17
          Caption = 'Client'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbDiaryWithClientClick
          LookAndFeel.NativeStyle = True
        end
        object rbDiaryWithNone: TcxRadioButton
          Left = 118
          Top = 21
          Width = 69
          Height = 17
          Caption = 'None'
          TabOrder = 1
          OnClick = rbDiaryWithNoneClick
          LookAndFeel.NativeStyle = True
        end
        object rbDiaryWithOther: TcxRadioButton
          Left = 219
          Top = 21
          Width = 178
          Height = 17
          Caption = 'Other (please specify SQL)'
          TabOrder = 2
          OnClick = rbDiaryWithOtherClick
          LookAndFeel.NativeStyle = True
        end
        object mmoDiaryWithSQL: TcxMemo
          Left = 45
          Top = 44
          Anchors = [akLeft, akTop, akRight, akBottom]
          Style.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 3
          Height = 505
          Width = 1210
        end
      end
    end
    object tabGenLedger: TcxTabSheet
      Caption = 'General Ledger'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cbLedgerShowPrev: TcxCheckBox
        Left = 3
        Top = 17
        Caption = 'Show previous year'#39's budgets?'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
    end
    object tabPrecedents: TcxTabSheet
      Caption = 'Precedents'
      ImageIndex = 4
      TabVisible = False
      DesignSize = (
        1275
        646)
      object Label9: TLabel
        Left = 8
        Top = 12
        Width = 72
        Height = 17
        Caption = 'Date Format'
        Transparent = True
      end
      object pagPrecedents: TPageControl
        Left = 7
        Top = 35
        Width = 1265
        Height = 605
        ActivePage = tabPrecWord
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object tabPrecWordPerfect: TTabSheet
          Caption = 'tabPrecWordPerfect'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label5: TLabel
            Left = 8
            Top = 85
            Width = 252
            Height = 12
            Caption = 'Note: These settings affect the entire system so be careful.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -10
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 60
            Width = 56
            Height = 17
            Caption = 'Save Path'
          end
          object sbtnOpen: TSpeedButton
            Left = 292
            Top = 53
            Width = 24
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = sbtnOpenClick
          end
          object cbAppendFileID: TCheckBox
            Left = 8
            Top = 8
            Width = 225
            Height = 19
            Caption = 'Append File ID to precedent data file?'
            TabOrder = 0
          end
          object cbSepDataForContacts: TCheckBox
            Left = 8
            Top = 35
            Width = 246
            Height = 18
            Caption = 'Separate data file for each Matter Contact?'
            TabOrder = 1
          end
          object edtPath: TEdit
            Left = 69
            Top = 54
            Width = 219
            Height = 25
            TabOrder = 2
          end
        end
        object tabPrecWord: TTabSheet
          Caption = 'tabPrecWord'
          ImageIndex = 1
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label4: TLabel
            Left = 5
            Top = 2
            Width = 320
            Height = 44
            AutoSize = False
            Caption = 'Currently there are no options for Microsoft Word.'
            WordWrap = True
          end
        end
      end
      object edDateFormat: TEdit
        Left = 85
        Top = 8
        Width = 293
        Height = 25
        TabOrder = 1
      end
    end
    object tabDisplayNames: TcxTabSheet
      Caption = 'Display Names'
      ImageIndex = 5
      DesignSize = (
        1275
        646)
      object Label14: TLabel
        Left = 7
        Top = 12
        Width = 33
        Height = 17
        Caption = 'Form:'
        Transparent = True
      end
      object grdDisplayNames: TcxGrid
        Left = 9
        Top = 35
        Width = 1263
        Height = 602
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        ExplicitHeight = 599
        object tvDisplayNames: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDisplayNames
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 55
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          object tvDisplayNamesCLASS: TcxGridDBColumn
            Caption = 'Class'
            DataBinding.FieldName = 'CLASS'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'MATTER')
            Visible = False
            Options.Editing = False
            Width = 112
          end
          object tvDisplayNamesNAME: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'NAME'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownRows = 20
            Properties.Items.Strings = (
              'PARTNER'
              'CONTROLLER'
              'AUTHOR'
              'OPERATOR'
              'PARA LEGAL')
            Width = 193
          end
          object tvDisplayNamesVALUE: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'VALUE'
            Width = 172
          end
        end
        object grdDisplayNamesLevel1: TcxGridLevel
          GridView = tvDisplayNames
        end
      end
      object cmbClass: TcxComboBox
        Left = 46
        Top = 8
        Properties.Items.Strings = (
          'MATTER'
          'PHONEBOOK')
        Properties.OnChange = cmbClassPropertiesChange
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 170
      end
    end
    object tabReqFields: TcxTabSheet
      Caption = 'Required Fields'
      ImageIndex = 6
      DesignSize = (
        1275
        646)
      object Label13: TLabel
        Left = 17
        Top = 12
        Width = 70
        Height = 17
        Caption = 'Table Name'
        Transparent = True
      end
      object dbgReqFields: TcxGrid
        Left = 5
        Top = 39
        Width = 1267
        Height = 604
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvReqFields: TcxGridDBTableView
          PopupMenu = ReqPopup
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          OnEditing = tvReqFieldsEditing
          DataController.DataSource = dsReqFields
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 55
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          object tvReqFieldsFIELD_NAME: TcxGridDBColumn
            Caption = 'Field'
            DataBinding.FieldName = 'FIELD_NAME'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'FIELD_NAME'
            Properties.ListColumns = <
              item
                FieldName = 'FIELD_NAME'
              end
              item
                FieldName = 'DESCR'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsTabColumns
            Width = 222
          end
          object tvReqFieldsMESSAGE: TcxGridDBColumn
            Caption = 'Message'
            DataBinding.FieldName = 'MESSAGE'
            Width = 390
          end
          object tvReqFieldsCOLOUR: TcxGridDBColumn
            Caption = 'Colour'
            DataBinding.FieldName = 'FLD_COLOUR'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.ColorBoxWidth = 33
            Properties.ColorComboStyle = cxccsComboList
            Properties.CustomColors = <>
            Properties.DropDownRows = 20
            Properties.ImmediatePost = True
            Width = 153
          end
          object tvReqFieldsCAN_DELETE: TcxGridDBColumn
            DataBinding.FieldName = 'CAN_DELETE'
            Visible = False
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
        end
        object dbgReqFieldsLevel1: TcxGridLevel
          GridView = tvReqFields
        end
      end
      object cmbTable: TcxComboBox
        Left = 95
        Top = 8
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 20
        Properties.Items.Strings = (
          'CLIENT'
          'FEE'
          'FEETMP'
          'MATTER'
          'PHONEBOOK'
          'EMPLOYEE')
        Properties.OnCloseUp = cmbTablePropertiesCloseUp
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 219
      end
    end
    object tabOther: TcxTabSheet
      Caption = 'Other'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cbFileNote: TcxCheckBox
        Left = 20
        Top = 12
        Caption = 'Auto print File note on Fee creation'
        Properties.NullStyle = nssUnchecked
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cbUseUniqueBillNumber: TcxCheckBox
        Left = 20
        Top = 35
        Caption = 'Assign unique bill number as invoice reference on posting '
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
    end
    object tabHolidayCalendar: TcxTabSheet
      Caption = 'Holiday Calendar'
      ImageIndex = 8
      OnShow = tabHolidayCalendarShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxButton3: TcxButton
        Left = 20
        Top = 6
        Width = 79
        Height = 26
        Caption = 'Prev'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FFCC9966FF000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FFCC9966FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FFCC9966FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OptionsImage.Spacing = 3
        TabOrder = 0
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 845
        Top = 6
        Width = 80
        Height = 26
        Caption = 'Next'
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FF000000FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FF999999FF000000FF0000
          00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF999999FF000000FF000000FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF999999FF000000FF000000FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FF000000FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OptionsImage.Layout = blGlyphRight
        OptionsImage.Spacing = 3
        TabOrder = 1
        OnClick = cxButton4Click
      end
      object MonthBrowser: TJvTFMonths
        Left = 20
        Top = 35
        Width = 905
        Height = 586
        ScheduleManager = ScheduleManager
        Cells = <
          item
            Color = clBlack
            CellDate = 41421.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41422.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41423.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41424.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41425.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41426.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41428.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41429.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41430.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41431.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41432.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41433.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41435.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41436.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41437.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41438.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41439.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41440.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41442.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41443.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41444.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41445.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41446.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41447.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41449.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41450.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41451.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41452.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41453.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41454.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41456.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41457.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41458.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41459.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41460.000000000000000000
            CellPics = <>
            CanSelect = True
          end
          item
            Color = clBlack
            CellDate = 41461.000000000000000000
            CellPics = <>
            CanSelect = True
          end>
        GapSize = 1
        TitleAttr.Color = clNavy
        TitleAttr.Height = 25
        TitleAttr.TxtAttr.Font.Charset = DEFAULT_CHARSET
        TitleAttr.TxtAttr.Font.Color = clWhite
        TitleAttr.TxtAttr.Font.Height = -16
        TitleAttr.TxtAttr.Font.Name = 'Tahoma'
        TitleAttr.TxtAttr.Font.Style = [fsBold]
        TitleAttr.Title = 'June 2013'
        CellAttr.Font.Charset = DEFAULT_CHARSET
        CellAttr.Font.Color = clWindowText
        CellAttr.Font.Height = -11
        CellAttr.Font.Name = 'Tahoma'
        CellAttr.Font.Style = []
        CellAttr.TitleAttr.Color = clMoneyGreen
        CellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
        CellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
        CellAttr.TitleAttr.DayTxtAttr.Font.Height = -11
        CellAttr.TitleAttr.DayTxtAttr.Font.Name = 'Tahoma'
        CellAttr.TitleAttr.DayTxtAttr.Font.Style = []
        CellAttr.DrawBottomLine = True
        SelCellAttr.Font.Charset = DEFAULT_CHARSET
        SelCellAttr.Font.Color = clWindowText
        SelCellAttr.Font.Height = -11
        SelCellAttr.Font.Name = 'Tahoma'
        SelCellAttr.Font.Style = []
        SelCellAttr.TitleAttr.Color = clNavy
        SelCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
        SelCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWhite
        SelCellAttr.TitleAttr.DayTxtAttr.Font.Height = -11
        SelCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'Tahoma'
        SelCellAttr.TitleAttr.DayTxtAttr.Font.Style = []
        SelCellAttr.DrawBottomLine = False
        DateFormat = 'dd'
        TimeFormat = 't'
        ParentColor = True
        TabOrder = 2
        PopupMenu = pmHolCalendar
        Month = 6
        Year = 2013
        DisplayDate = 41428.000000000000000000
        DWNames.DWN_Sunday = 'S'
        DWNames.DWN_Monday = 'M'
        DWNames.DWN_Tuesday = 'T'
        DWNames.DWN_Wednesday = 'W'
        DWNames.DWN_Thursday = 'T'
        DWNames.DWN_Friday = 'Friday'
        DWNames.DWN_Saturday = 'S'
        DWTitleAttr.FrameAttr.Style = fs3DRaised
        DWTitleAttr.Height = 20
        DWTitleAttr.TxtAttr.Font.Charset = DEFAULT_CHARSET
        DWTitleAttr.TxtAttr.Font.Color = clWindowText
        DWTitleAttr.TxtAttr.Font.Height = -11
        DWTitleAttr.TxtAttr.Font.Name = 'Tahoma'
        DWTitleAttr.TxtAttr.Font.Style = []
        ExtraDayCellAttr.Color = clSilver
        ExtraDayCellAttr.Font.Charset = DEFAULT_CHARSET
        ExtraDayCellAttr.Font.Color = clWindowText
        ExtraDayCellAttr.Font.Height = -11
        ExtraDayCellAttr.Font.Name = 'Tahoma'
        ExtraDayCellAttr.Font.Style = [fsBold]
        ExtraDayCellAttr.TitleAttr.Color = clSilver
        ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
        ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
        ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Height = -11
        ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'Tahoma'
        ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Style = [fsBold]
        ExtraDayCellAttr.DrawBottomLine = True
        OffDayCellAttr.Color = clInfoBk
        OffDayCellAttr.Font.Charset = DEFAULT_CHARSET
        OffDayCellAttr.Font.Color = clWindowText
        OffDayCellAttr.Font.Height = -11
        OffDayCellAttr.Font.Name = 'Tahoma'
        OffDayCellAttr.Font.Style = []
        OffDayCellAttr.TitleAttr.Color = clInfoBk
        OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
        OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
        OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Height = -11
        OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'Tahoma'
        OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Style = [fsBold]
        OffDayCellAttr.DrawBottomLine = False
        SplitSatSun = True
        StartOfWeek = dowMonday
        ColCount = 6
        FirstDayOfMonthFormat = 'mmm d'
        DayFormat = 'd'
      end
    end
  end
  object odFile: TOpenDialog
    Left = 498
    Top = 194
  end
  object qryDisplayNames: TUniQuery
    UpdatingTable = 'DISPLAY_NAME'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT D.*,ROWID'
      'FROM DISPLAY_NAME D'
      'WHERE ACCT = :ENTITY'
      'AND CLASS = :CLASS')
    AfterInsert = qryDisplayNamesAfterInsert
    OnNewRecord = qryDisplayNamesNewRecord
    Left = 230
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ENTITY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CLASS'
        Value = nil
      end>
  end
  object dsDisplayNames: TUniDataSource
    DataSet = qryDisplayNames
    Left = 262
    Top = 183
  end
  object vtName: TVirtualTable
    FieldDefs = <
      item
        Name = 'CLASS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALUE'
        DataType = ftString
        Size = 20
      end>
    Left = 294
    Top = 183
    Data = {
      040002000500434C4153530100140000000000050056414C5545010014000000
      0000000000000000}
  end
  object dsName: TUniDataSource
    DataSet = vtName
    Left = 326
    Top = 183
  end
  object qryTaxType: TUniQuery
    KeyFields = 'TYPE'
    SQLInsert.Strings = (
      'INSERT INTO taxdefault'
      '  (CODE, TYPE)'
      'VALUES'
      '  (:CODE, :TYPE)')
    SQLDelete.Strings = (
      'DELETE FROM taxdefault'
      'WHERE'
      '  CODE = :CODE')
    SQLUpdate.Strings = (
      'UPDATE taxdefault'
      'SET'
      '  CODE = :CODE,'
      '  TYPE = :TYPE'
      'WHERE'
      '  CODE = :OLD_CODE')
    SQLLock.Strings = (
      'SELECT * FROM taxdefault'
      'WHERE'
      '  CODE = :CODE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  t.CODE = :CODE')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select t.*,rowid from taxdefault t')
    AutoCalcFields = False
    Left = 358
    Top = 183
  end
  object dsTaxType: TUniDataSource
    DataSet = qryTaxType
    Left = 390
    Top = 183
  end
  object qryReqFields: TUniQuery
    KeyFields = 'TABLE_NAME;FIELD_NAME'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT REQFIELD.*, REQFIELD.ROWID'
      'FROM REQFIELD'
      'WHERE TABLE_NAME = :TABLE_NAME')
    BeforePost = qryReqFieldsBeforePost
    BeforeDelete = qryReqFieldsBeforeDelete
    OnNewRecord = qryReqFieldsNewRecord
    Left = 422
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TABLE_NAME'
        Value = nil
      end>
  end
  object dsReqFields: TUniDataSource
    DataSet = qryReqFields
    Left = 454
    Top = 188
  end
  object ReqPopup: TPopupMenu
    Left = 474
    Top = 151
    object D1: TMenuItem
      Caption = 'Delete'
      OnClick = D1Click
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
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 751
    Top = 84
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
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
      FloatClientWidth = 90
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSave'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Save && Close'
      Category = 0
      Hint = 'Save & Close'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object btnSave: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = btnSaveClick
    end
  end
  object SmartQuery1: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 382
    Top = 259
  end
  object OraDataSource1: TUniDataSource
    Left = 465
    Top = 247
  end
  object qryTabColumns: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select field_name,descr, can_delete from REQFIELD_CONTROL where ' +
        'table_name = '#39'FEE'#39' order by field_name')
    Left = 488
    Top = 395
  end
  object dsTabColumns: TUniDataSource
    DataSet = qryTabColumns
    Left = 491
    Top = 465
  end
  object qryTime: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT '
      'DAY ,  PUBLICHOLIDAY , '
      '  MONTH, FINYEAR, CALDATE, ROWID '
      'FROM CALENDAR_HOLIDAYS'
      'where caldate >= :START_DT'
      'and'
      'caldate <= :END_DT '
      'ORDER BY FINYEAR,cast(TO_CHAR(caldate,'#39'MM'#39') AS INTEGER)')
    Left = 755
    Top = 226
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'START_DT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'END_DT'
        Value = nil
      end>
  end
  object qryInsertCalendar: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'INSERT INTO CALENDAR_HOLIDAYS'
      '  (DAY, PUBLICHOLIDAY, MONTH, FINYEAR, CALDATE)'
      'VALUES'
      '  (:DAY, :PUBLICHOLIDAY, :MONTH, :FINYEAR, :CALDATE)')
    Left = 602
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PUBLICHOLIDAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MONTH'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FINYEAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CALDATE'
        Value = nil
      end>
  end
  object pmHolCalendar: TPopupMenu
    OnPopup = pmHolCalendarPopup
    Left = 150
    Top = 495
    object MarkasHoliday1: TMenuItem
      Caption = 'Mark as Holiday...'
      OnClick = MarkasHoliday1Click
    end
  end
  object UpdateCalendar: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE CALENDAR_HOLIDAYS SET'
      '  PUBLICHOLIDAY = :PUBLICHOLIDAY'
      'WHERE'
      ' CALDATE = :CALDATE')
    Left = 764
    Top = 334
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PUBLICHOLIDAY'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CALDATE'
        Value = nil
      end>
  end
  object ScheduleManager: TJvTFScheduleManager
    StateImageMap.AlarmEnabled = -1
    StateImageMap.AlarmDisabled = -1
    StateImageMap.Shared = -1
    StateImageMap.Recurring = -1
    StateImageMap.Modified = -1
    Left = 847
    Top = 138
  end
end
