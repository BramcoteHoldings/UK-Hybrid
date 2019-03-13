object frmDebtorTaskTemplate: TfrmDebtorTaskTemplate
  Left = 318
  Top = 140
  Caption = 'Collection Task Template'
  ClientHeight = 743
  ClientWidth = 1238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TcxPageControl
    Left = 0
    Top = 28
    Width = 1238
    Height = 715
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabTemplate
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    OnChange = pcMainChange
    ClientRectBottom = 714
    ClientRectLeft = 1
    ClientRectRight = 1237
    ClientRectTop = 20
    object tabTemplate: TcxTabSheet
      Caption = 'Template'
      ImageIndex = 0
      DesignSize = (
        1236
        694)
      object tvTemplates: TcxTreeView
        Left = 7
        Top = 24
        Width = 258
        Height = 648
        Anchors = [akLeft, akTop, akBottom]
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClick = tvTemplatesClick
        Images = treeImages
        OnExpanding = tvTemplatesExpanding
      end
      object pcTemplate: TcxPageControl
        Left = 281
        Top = 14
        Width = 363
        Height = 439
        TabOrder = 1
        Properties.ActivePage = tabTemplateItem
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 439
        ClientRectRight = 363
        ClientRectTop = 0
        object tabTemplateDetails: TcxTabSheet
          Caption = 'tabTemplateDetails'
          ImageIndex = 0
          object cxGroupBox4: TcxGroupBox
            Left = 5
            Top = 0
            Caption = 'Template'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            DesignSize = (
              345
              417)
            Height = 417
            Width = 345
            object cxLabel1: TcxLabel
              Left = 8
              Top = 16
              Caption = 'Description'
              Transparent = True
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 72
              Top = 16
              DataBinding.DataField = 'DESCR'
              DataBinding.DataSource = dsdebtorWorkflowTemplate
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 266
            end
            object btnTemplateOK: TBitBtn
              Left = 8
              Top = 384
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = 'OK'
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333377F3333333333000033334224333333333333
                337337F3333333330000333422224333333333333733337F3333333300003342
                222224333333333373333337F3333333000034222A22224333333337F337F333
                7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
                33333337F73337F337F33333000033A33333A222433333337333337F337F3333
                0000333333333A222433333333333337F337F33300003333333333A222433333
                333333337F337F33000033333333333A222433333333333337F337F300003333
                33333333A222433333333333337F337F00003333333333333A22433333333333
                3337F37F000033333333333333A223333333333333337F730000333333333333
                333A333333333333333337330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
              TabOrder = 2
              OnClick = btnTemplateOKClick
            end
            object btnTemplateCancel: TBitBtn
              Left = 88
              Top = 384
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = 'Cancel'
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
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
              TabOrder = 3
              OnClick = btnTemplateCancelClick
            end
          end
        end
        object tabTemplateItem: TcxTabSheet
          Caption = 'tabTemplateItem'
          ImageIndex = 1
          object cxGroupBox3: TcxGroupBox
            Left = 1
            Top = 7
            Caption = 'Template Item'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            DesignSize = (
              357
              428)
            Height = 428
            Width = 357
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 9
              Top = 192
              Caption = 'Confirmation Required'
              DataBinding.DataField = 'CONFIRMATION_REQUIRED'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueGrayed = 'null'
              Properties.ValueUnchecked = 'N'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 5
              Width = 129
            end
            object cxLabel7: TcxLabel
              Left = 8
              Top = 90
              Caption = 'Action'
              Transparent = True
            end
            object dblcAction: TcxDBLookupComboBox
              Left = 72
              Top = 88
              DataBinding.DataField = 'NACTION'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'NACTION'
              Properties.ListColumns = <
                item
                  FieldName = 'DESCR'
                end>
              Properties.ListSource = dsAction
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 266
            end
            object edElapsedDays: TcxDBTextEdit
              Left = 72
              Top = 64
              DataBinding.DataField = 'ELAPSE_DAYS'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 2
              Width = 65
            end
            object cxLabel8: TcxLabel
              Left = 8
              Top = 18
              Caption = 'Description'
              Transparent = True
            end
            object dbeItemDest: TcxDBTextEdit
              Left = 72
              Top = 16
              DataBinding.DataField = 'DESCR'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Width = 266
            end
            object btnTemplateItemOk: TBitBtn
              Left = 8
              Top = 395
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = 'OK'
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333377F3333333333000033334224333333333333
                337337F3333333330000333422224333333333333733337F3333333300003342
                222224333333333373333337F3333333000034222A22224333333337F337F333
                7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
                33333337F73337F337F33333000033A33333A222433333337333337F337F3333
                0000333333333A222433333333333337F337F33300003333333333A222433333
                333333337F337F33000033333333333A222433333333333337F337F300003333
                33333333A222433333333333337F337F00003333333333333A22433333333333
                3337F37F000033333333333333A223333333333333337F730000333333333333
                333A333333333333333337330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
              TabOrder = 6
              OnClick = btnTemplateItemOkClick
            end
            object btnTemplateItemCancel: TBitBtn
              Left = 88
              Top = 395
              Width = 75
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = 'Cancel'
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
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
              TabOrder = 8
              OnClick = btnTemplateItemCancelClick
            end
            object cxLabel9: TcxLabel
              Left = 8
              Top = 137
              Caption = 'Alert To'
              Transparent = True
            end
            object cxLabel10: TcxLabel
              Left = 8
              Top = 113
              Caption = 'Assign To'
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 8
              Top = 42
              Caption = 'Min Balance'
              Transparent = True
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 72
              Top = 40
              DataBinding.DataField = 'MIN_BALANCE'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 86
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 72
              Top = 111
              DataBinding.DataField = 'ASSIGN_TO_TYPE'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'CODE'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListSource = dsEmployee
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 12
              Width = 266
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 72
              Top = 135
              DataBinding.DataField = 'ALERT_TO_TYPE'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.DropDownAutoSize = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'CODE'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListSource = dsEmployee
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 13
              Width = 266
            end
            object cmbElapsedMode: TcxDBComboBox
              Left = 8
              Top = 64
              DataBinding.DataField = 'ELAPSE_MODE'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'Days'
                'Months')
              Properties.OnChange = cmbElapsedModePropertiesChange
              Properties.OnCloseUp = cxDBComboBox1PropertiesCloseUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 14
              Width = 60
            end
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 142
              Top = 63
              Caption = 'Use Dispatched Date'
              DataBinding.DataField = 'USEDISPATCHDATE'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 15
              Width = 139
            end
            object edElapsedMonths: TcxDBTextEdit
              Left = 72
              Top = 64
              DataBinding.DataField = 'ELAPSE_MONTHS'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 16
              Width = 65
            end
            object cxLabel6: TcxLabel
              Left = 8
              Top = 161
              Caption = 'Alt Alert To'
              Transparent = True
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox
              Left = 72
              Top = 159
              DataBinding.DataField = 'ALERT_TO_TYPE_ADD'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Properties.DropDownAutoSize = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'CODE'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListSource = dsEmployee
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 18
              Width = 266
            end
          end
        end
        object tabTemplateBlank: TcxTabSheet
          Caption = 'tabTemplateBlank'
          ImageIndex = 2
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGroupBox5: TcxGroupBox
            Left = 6
            Top = 0
            Caption = 'Instructions'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Height = 417
            Width = 345
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'cxTabSheet1'
          ImageIndex = 3
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
      end
    end
    object tabAction: TcxTabSheet
      Caption = 'Actions'
      ImageIndex = 1
      DesignSize = (
        1236
        694)
      object cxGroupBox1: TcxGroupBox
        Left = 281
        Top = 21
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Action'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        DesignSize = (
          947
          649)
        Height = 649
        Width = 947
        object cxLabel3: TcxLabel
          Left = 8
          Top = 24
          Caption = 'Description'
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object dbeActionDescription: TcxDBTextEdit
          Left = 72
          Top = 24
          DataBinding.DataField = 'DESCR'
          DataBinding.DataSource = dsAction
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 279
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 72
          Caption = 'Type'
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object dbcbActionType: TcxDBComboBox
          Left = 72
          Top = 72
          DataBinding.DataField = 'TYPE'
          DataBinding.DataSource = dsAction
          Properties.Items.Strings = (
            'Email'
            'Document'
            'SMS'
            'Statement'
            '')
          Properties.OnChange = cxDBComboBox1PropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 279
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 7
          Top = 592
          Anchors = [akLeft, akBottom]
          Caption = 'Email Alert'
          DataBinding.DataField = 'EMAIL_ALERT'
          DataBinding.DataSource = dsAction
          Properties.Alignment = taRightJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueGrayed = 'A'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 123
        end
        object pcType: TcxPageControl
          Left = 8
          Top = 104
          Width = 933
          Height = 470
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 4
          Properties.ActivePage = tabDoc
          Properties.CustomButtons.Buttons = <>
          Properties.ShowFrame = True
          Properties.Style = 9
          Properties.TabSlants.Kind = skCutCorner
          LookAndFeel.NativeStyle = True
          TabSlants.Kind = skCutCorner
          ClientRectBottom = 469
          ClientRectLeft = 1
          ClientRectRight = 932
          ClientRectTop = 20
          object tabDoc: TcxTabSheet
            Caption = 'tabDoc'
            ImageIndex = 0
            object cxLabel5: TcxLabel
              Left = 0
              Top = 28
              Caption = 'Path'
              Transparent = True
            end
            object dbeDocumentPath: TcxDBButtonEdit
              Left = 56
              Top = 24
              DataBinding.DataField = 'DOCUMENT_PATH'
              DataBinding.DataSource = dsAction
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
              ShowHint = True
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 277
            end
            object cxLabel14: TcxLabel
              Left = 0
              Top = 58
              Caption = 'New File'
              Transparent = True
            end
            object cxedtGenDoc1: TcxDBTextEdit
              Left = 56
              Top = 56
              Hint = 'Right Click to display list of available values'
              DataBinding.DataField = 'GENERATED_DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 277
            end
          end
          object TabEmail: TcxTabSheet
            Caption = 'TabEmail'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 0
              Top = 200
              Caption = 'Auto Email'
              DataBinding.DataField = 'AUTO_EMAIL'
              DataBinding.DataSource = dsAction
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueGrayed = 'A'
              Properties.ValueUnchecked = 'N'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 121
            end
            object cxGroupBox2: TcxGroupBox
              Left = 1
              Top = 0
              Caption = 'Email'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Height = 170
              Width = 368
              object cxDBMEmail: TcxDBMemo
                Left = 3
                Top = 16
                Align = alCustom
                DataBinding.DataField = 'EMAIL'
                DataBinding.DataSource = dsAction
                PopupMenu = dxFieldPopUp
                Properties.ScrollBars = ssBoth
                Properties.WordWrap = False
                Style.LookAndFeel.NativeStyle = True
                StyleDisabled.LookAndFeel.NativeStyle = True
                StyleFocused.LookAndFeel.NativeStyle = True
                StyleHot.LookAndFeel.NativeStyle = True
                TabOrder = 0
                Height = 150
                Width = 362
              end
            end
            object cxLabel11: TcxLabel
              Left = 0
              Top = 176
              Caption = 'Subject '
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxDBSubject: TcxDBTextEdit
              Left = 48
              Top = 176
              DataBinding.DataField = 'EMAIL_SUBJECT'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 288
            end
          end
          object tabTypeBlank: TcxTabSheet
            Caption = 'tabTypeBlank'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object tabDocumentBlob: TcxTabSheet
            Caption = 'tabDocumentBlob'
            ImageIndex = 3
            object cxLabel13: TcxLabel
              Left = 0
              Top = 15
              Caption = 'Document Name'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
            end
            object btnImportBlob: TcxButton
              Left = 88
              Top = 40
              Width = 65
              Height = 25
              Caption = 'Import '
              LookAndFeel.Kind = lfStandard
              OptionsImage.Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                3333777777777777333333399033333333333337773333333333333903333333
                3333333773333333333333303333333333333337333333333333}
              OptionsImage.NumGlyphs = 2
              TabOrder = 1
              OnClick = btnImportBlobClick
            end
            object btnExportBlob: TcxButton
              Left = 160
              Top = 40
              Width = 65
              Height = 25
              Caption = 'Export'
              Enabled = False
              LookAndFeel.Kind = lfStandard
              OptionsImage.Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
                333333333333337FF3333333333333903333333333333377FF33333333333399
                03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
                99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
                99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
                03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
                33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
                33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
                3333777777333333333333333333333333333333333333333333}
              OptionsImage.NumGlyphs = 2
              TabOrder = 2
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 86
              Top = 13
              DataBinding.DataField = 'DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 249
            end
            object cxLabel15: TcxLabel
              Left = 0
              Top = 83
              Caption = 'New File'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
            end
            object cxedtGenDoc2: TcxDBTextEdit
              Left = 55
              Top = 80
              DataBinding.DataField = 'GENERATED_DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 5
              Width = 280
            end
          end
          object tabSMS: TcxTabSheet
            Caption = 'tabSMS'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              931
              449)
            object Label1: TLabel
              Left = 239
              Top = 204
              Width = 112
              Height = 13
              Caption = '(Limit is 160 Characters)'
            end
            object cxDBMemo1: TcxDBMemo
              Left = 3
              Top = 8
              Align = alCustom
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'EMAIL'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Properties.MaxLength = 160
              Properties.ScrollBars = ssBoth
              Properties.WordWrap = False
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Height = 408
              Width = 925
            end
            object cxDBCheckBox5: TcxDBCheckBox
              Left = 3
              Top = 420
              Anchors = [akLeft, akBottom]
              Caption = 'Auto SMS'
              DataBinding.DataField = 'AUTO_EMAIL'
              DataBinding.DataSource = dsAction
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueGrayed = 'A'
              Properties.ValueUnchecked = 'N'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 121
            end
          end
          object tabStatement: TcxTabSheet
            Caption = 'tabStatement'
            ImageIndex = 5
            object cxLabel16: TcxLabel
              Left = -1
              Top = 29
              Caption = 'Path'
              Transparent = True
            end
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 55
              Top = 24
              DataBinding.DataField = 'DOCUMENT_PATH'
              DataBinding.DataSource = dsAction
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    00000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
                    FF00BDBDBD0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                    0000FFFFFF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
                    BD0000FFFF00BDBDBD0000FFFF0000000000FF00FF00FF00FF00FF00FF000000
                    000000FFFF00FFFFFF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
                    FF00BDBDBD0000FFFF00BDBDBD0000FFFF0000000000FF00FF00FF00FF000000
                    0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000FF00FF00FF00FF000000
                    000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
                    FF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
                    FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
                    000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF007B7B7B00000000000000000000000000000000007B7B7B00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  Kind = bkGlyph
                  Stretchable = False
                end
                item
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    0800000000000001000000000000000000000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A60033000000000033003300330033330000161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
                    00000033330000336600003399000033CC000033FF0000660000006633000066
                    6600006699000066CC000066FF00009900000099330000996600009999000099
                    CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
                    660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
                    FF00FF3300003333330033336600333399003333CC003333FF00336600003366
                    330033666600336699003366CC003366FF003399000033993300339966003399
                    99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
                    FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
                    6600660099006600CC006600FF00663300006633330066336600663399006633
                    CC006633FF00666600006666330066666600666699006666CC00669900006699
                    330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
                    CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
                    000099339900990099009900CC009900000099333300990066009933CC009900
                    FF00996600009966330099336600996699009966CC009933FF00999933009999
                    6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
                    CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
                    000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
                    9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
                    FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
                    3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
                    9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
                    6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
                    CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
                    0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
                    9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
                    A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
                    DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
                    000000000000000000FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFEC
                    ECECECECECECFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFF00
                    1500FFFFFFFFFFFF00FFFFEC7AFFFFFFFFFFFFFFFFFFFFFF00FFFFEC37FFFFFD
                    FDFDFDFDFDFDFFFF00FFFFEC7AFFFFFDFDFDFDFDFDFDFFFF00FFFFEC37FFFFFF
                    FFFFFFFFFFFFFFFF00FFFFEC7AFFFF00150015FFFFFFFFFF00FFFFEC37FFFFFF
                    FFFFFFFFFFFFFFFF00FFFFEC7AFFECECECECECECECECECFF00FFFFEC37FFFFFF
                    FFFFFFFFFFFFFFFF00FFFFEC7A377A377A377A377A377A3700FFFFECD3D3D3D3
                    D3D3D3D3D3D3D3D300FFFFEC04040404040404040404040400FF}
                  Kind = bkGlyph
                end>
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
              ShowHint = True
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 310
            end
            object cxLabel17: TcxLabel
              Left = -1
              Top = 58
              Caption = 'New File'
              Transparent = True
            end
            object cxedtGenDoc3: TcxDBTextEdit
              Left = 55
              Top = 56
              Hint = 'Right Click to display list of available values'
              DataBinding.DataField = 'GENERATED_DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 310
            end
            object cxDBCheckBox6: TcxDBCheckBox
              Left = 1
              Top = 87
              Caption = 'Create PDF'
              DataBinding.DataField = 'CREATE_PDF'
              DataBinding.DataSource = dsAction
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 4
              Width = 121
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 1
              Top = 109
              Caption = 'Email to client'
              DataBinding.DataField = 'EMAIL_TO_CLIENT'
              DataBinding.DataSource = dsAction
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Y'
              Properties.ValueUnchecked = 'N'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 5
              Width = 121
            end
          end
        end
        object btnActionOk: TBitBtn
          Left = 8
          Top = 616
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'OK'
          Enabled = False
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333377F3333333333000033334224333333333333
            337337F3333333330000333422224333333333333733337F3333333300003342
            222224333333333373333337F3333333000034222A22224333333337F337F333
            7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
            33333337F73337F337F33333000033A33333A222433333337333337F337F3333
            0000333333333A222433333333333337F337F33300003333333333A222433333
            333333337F337F33000033333333333A222433333333333337F337F300003333
            33333333A222433333333333337F337F00003333333333333A22433333333333
            3337F37F000033333333333333A223333333333333337F730000333333333333
            333A333333333333333337330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 6
          OnClick = btnActionOkClick
        end
        object btnActionCancel: TBitBtn
          Left = 88
          Top = 616
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Cancel'
          Enabled = False
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
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
          TabOrder = 8
          OnClick = btnActionCancelClick
        end
        object cxLabel12: TcxLabel
          Left = 8
          Top = 49
          Caption = 'Debtor Note'
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxDBDebtorNote: TcxDBTextEdit
          Left = 72
          Top = 48
          DataBinding.DataField = 'DEBTOR_NOTE'
          DataBinding.DataSource = dsAction
          PopupMenu = dxFieldPopUp
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 279
        end
      end
      object grdActions: TcxGrid
        Left = 7
        Top = 24
        Width = 258
        Height = 648
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 1
        object tvActions: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = tvActionsCellClick
          DataController.DataSource = dsActions
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object tvActionsTYPE: TcxGridDBColumn
            DataBinding.FieldName = 'TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = treeImages
            Properties.Items = <
              item
                ImageIndex = 5
                Value = 'Document'
              end
              item
                ImageIndex = 6
                Value = 'Email'
              end
              item
                ImageIndex = 7
                Value = 'SMS'
              end
              item
                ImageIndex = 3
                Value = 'Statement'
              end>
            Properties.ShowDescriptions = False
            Width = 29
          end
          object tvActionsDESCR: TcxGridDBColumn
            DataBinding.FieldName = 'DESCR'
            Width = 224
          end
          object tvActionsNACTION: TcxGridDBColumn
            DataBinding.FieldName = 'NACTION'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object grdActionsLevel1: TcxGridLevel
          GridView = tvActions
        end
      end
    end
  end
  object qrydebtorWorkflowTemplate: TUniQuery
    KeyFields = 'NTEMPLATE'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from debtorworkflowtemplate'
      'where ntemplate = nvl(:ntemplate,ntemplate)')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_NTEMPLATE')
    BeforeInsert = qrydebtorWorkflowTemplateBeforeEdit
    BeforeEdit = qrydebtorWorkflowTemplateBeforeEdit
    AfterPost = qrydebtorWorkflowTemplateAfterPost
    AfterCancel = qrydebtorWorkflowTemplateAfterPost
    Left = 729
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ntemplate'
      end>
  end
  object dsdebtorWorkflowTemplate: TUniDataSource
    DataSet = qrydebtorWorkflowTemplate
    Left = 731
    Top = 118
  end
  object qrydebtorWorkflowTemplateItem: TUniQuery
    KeyFields = 'NTEMPLATEITEM'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from debtorworkflowtemplateitem'
      'where ntemplate = nvl(:ntemplate,ntemplate)'
      'and ntemplateitem = nvl(:ntemplateitem,ntemplateitem)'
      'order by elapse_days')
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_NTEMPLATEITEM'
      'Oracle.DeferredLobRead=True')
    BeforeInsert = qrydebtorWorkflowTemplateItemBeforeInsert
    BeforeEdit = qrydebtorWorkflowTemplateItemBeforeInsert
    AfterPost = qrydebtorWorkflowTemplateItemAfterPost
    AfterCancel = qrydebtorWorkflowTemplateItemAfterPost
    OnNewRecord = qrydebtorWorkflowTemplateItemNewRecord
    Left = 845
    Top = 50
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ntemplate'
      end
      item
        DataType = ftUnknown
        Name = 'ntemplateitem'
      end>
  end
  object dsdebtorWorkflowTemplateItem: TUniDataSource
    DataSet = qrydebtorWorkflowTemplateItem
    Left = 835
    Top = 102
  end
  object qryAction: TUniQuery
    KeyFields = 'NACTION'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from debtorworkflowaction'
      'where naction = nvl(:naction,naction)')
    Options.DefaultValues = True
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_NACTION'
      'Oracle.DeferredLobRead=True')
    BeforeInsert = qryActionBeforeEdit
    BeforeEdit = qryActionBeforeEdit
    AfterPost = qryActionAfterPost
    AfterCancel = qryActionAfterPost
    OnNewRecord = qryActionNewRecord
    Left = 979
    Top = 54
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'naction'
      end>
  end
  object dsAction: TUniDataSource
    DataSet = qryAction
    Left = 933
    Top = 110
  end
  object treeImages: TImageList
    Left = 832
    Top = 158
    Bitmap = {
      494C010108000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077777700777777007777
      7700777777007777770077777700777777005555550055555500555555005555
      5500808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200222222008080800080808000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000BA4C1774B15122E0B153
      23EFB15223EDB15223EDB15223EDB15223EDB15223EDB15223EDB15223EDB152
      23EDB15323EFB15122E0BA4D197400000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600666666008686860096969600868686008686
      8600555555006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200A79A42002222220080808000808080008080800080808000808080000000
      000000000000000000000000000000000000BF531D74B55E31FFB75C2EFFB75C
      2EFFB5592AFFB45727FFB75C2EFFB75C2EFFB75C2EFFB75C2EFFB45728FFB458
      29FFB75C2EFFB75C2EFFB55E30FFBE541D74CC666600CC999900F0CAA600F0CA
      A600F0CAA600CC9999008686860099999900F0CAA6009999CC00D7D7D700A4A0
      A000A4A0A0005F5F5F0066666600000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      4200A79A42008080000022222200808080008080800080808000808080008080
      800080808000808080008080800000000000BA5E2DE0BB6233FFBA6233FFB95F
      2FFFC57850FFCE8E6CFFB75928FFBA6233FFBA6233FFB85B2AFFCA8661FFCA83
      5FFFB85D2EFFBA6233FFBB6233FFBA5E2DE0CC66660000000000FFECCC00FFEC
      CC00F0CAA600B2B2B200CCCC9900FFECCC00FFECCC00CCCCCC00FFECCC00F1F1
      F100D7D7D700CC9999004D4D4D00000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      0000000000000000000000000000000000002222220022222200222222002222
      2200A79A42008080000080800000222222008080800080808000808080008080
      800080808000808080008080800080808000C16433EFBF6837FFBF6836FFBD63
      30FFCE8B66FFFFFFFFFFC26C3CFFBB5E29FFBB5E2AFFBC602EFFFFFFFFFFDCAD
      93FFBC602CFFBF6836FFBF6837FFC16433EFCC99660000000000FFECCC00FFEC
      CC00CCCC9900B2B2B200FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CA
      A600F1F1F100A4A0A00077777700868686000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000066333300663333006633
      3300663333006633330066333300663333006633330066333300663333006633
      330066333300663333008080800000000000C86D39EDC86E3DFFC86D3DFFC86D
      3DFFC15B24FFFCF7F5FFEFD9CCFFDDA78BFFDEA88CFFECD0C1FFFFFFFFFFC25E
      28FFC86D3CFFC86D3DFFC86E3DFFC86D39EDCC99660000000000F0CAA600FFCC
      9900A4A0A000F0CAA600EAEAEA00FFFFCC00FFFFCC00A4A0A000CCCC9900FFCC
      9900FFECCC00C0C0C000A4A0A000868686000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00663333008080800000000000CF7341EDCC7542FFCC7542FFCC75
      42FFCA6E39FFDDA280FFFFFFFFFFF0D5C5FFEED3C2FFFFFFFFFFE3B49AFFC96C
      36FFCC7542FFCC7542FFCC7542FFCF7341EDCC99660000000000F1F1F100F1F1
      F100A4A0A000C0C0C00066CCFF00F8F8F800FFFFCC0086868600393939005F5F
      5F00FFECCC006666CC0099999900868686000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00663333008080800000000000D47B47EDD37B47FFD37B47FFD37B
      47FFD37A46FFCD6C32FFFFFFFFFFDD9D77FFDC9770FFFFFFFFFFCF7039FFD279
      45FFD37B47FFD37B47FFD37B47FFD47B47EDCC99660000000000F0CAA600F0CA
      A600A4A0A000CCCCCC000000000000000000F8F8F800FFFFCC00808080009966
      6600FFECCC00B2B2B20086868600868686000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00CC666600CC666600CC666600CC666600CC666600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00663333008080800000000000D9814CEDD6804AFFD7804BFFD780
      4BFFD7804BFFD4773FFFEBC2A8FFF9F1EAFFF9EDE5FFEDC9B3FFD3763DFFD780
      4BFFD7804BFFD7804BFFD6804AFFD9814CEDCC99660000000000F1F1F100F1F1
      F100CBCBCB00A4A0A000DDDDDD00000000000000000000000000FFFFCC007777
      7700CC9999008686860080808000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00663333008080800000000000DD8651EDDA834EFFDB844FFFDB84
      4FFFDB844FFFDA824CFFD97F47FFFFFFFFFFFFFFFFFFDA8049FFDA814CFFDB84
      4FFFDB844FFFDB844FFFDA834EFFDD8651EDCC99990000000000FFECCC00FFEC
      CC00FFECCC00A4A0A000CBCBCB00DDDDDD00F8F8F80066CCFF00EAEAEA00FFEC
      CC00999999008686860000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00CC666600CC666600CC666600CC666600CC666600FFFFFF00CC666600CC66
      6600FFFFFF00663333008080800000000000E08B55EDDD8751FFDD8851FFDD88
      51FFDD8851FFDD8851FFDB8249FFE7AA85FFE7AA83FFDB8149FFDD8851FFDD88
      51FFDD8851FFDD8851FFDD8751FFE08B55EDCC99990000000000F1F1F100F1F1
      F100F1F1F100F1F1F100A4A0A000A4A0A000D7D7D700CBCBCB00A4A0A000B2B2
      B200868686000000000000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC666600CC66
      6600FFFFFF00663333002222220000000000E48F5AEDE18B55FFE28C56FFE28C
      56FFE28C56FFE28C56FFE28C56FFE0874FFFE0874FFFE28C56FFE28C56FFE28C
      56FFE28C56FFE28C56FFE18B55FFE48F5AEDCC99990000000000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00CBCBCB00A4A0A000A4A0A000A4A0A0007777
      7700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00663333008080000022222200E6935EEDE48E58FFE58F59FFE58F
      59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F59FFE58F
      59FFE58F59FFE58F59FFE48E58FFE6935EEDCC99990000000000000000000000
      000000000000F8F8F800F8F8F800F1F1F100FFECCC00F0CAA600FFCC99008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF000000000000000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC6666008080000080800000E99762EFE8915BFFE8925CFFE892
      5CFFE8925CFFE8925CFFE8925CFFE8925CFFE8925CFFE8925CFFE8925CFFE892
      5CFFE8925CFFE8925CFFE8915BFFE99662EFCC99990000000000000000000000
      00000000000000000000F8F8F800F8F8F800FFECCC00CC993300CC9933000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A79A42008080
      000080800000808000008080000000000000EB9B66E0E9945CFFEA955EFFEA95
      5EFFEA955EFFEA955EFFEA955EFFEA955EFFEA955EFFEA955EFFEA955EFFEA95
      5EFFEA955EFFEA955EFFE9945CFFEB9B67E0CC999900EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00E3E3E300E3E3E300E3E3E300E3E3E300CC993300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A79A
      420080800000808000000000000000000000FAAF7F74EB935AFFEC955EFFEC96
      5EFFEC965EFFEC965EFFEC965EFFEC965EFFEC965EFFEC965EFFEC965EFFEC96
      5EFFEC965EFFEC965EFFEB935AFFF8AD7C74CC999900CC999900CC999900CC99
      9900CC999900CC999900CC999900CC999900CC99990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A79A420000000000000000000000000000000000FBB18274EEA06DE0EE9E
      6BEFEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E6BEDEE9E
      6BEDEE9E6BEFEE9F6DE0F9B08174000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D00000000000000
      0000000000000000000000000000000000000000000066333300663333006633
      330066333300663333006633330066333300663333006633330066333300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D006633000066333300663333004D4D4D004D4D4D004D4D
      4D004D4D4D0000000000000000000000000000000000F8F8F800DDDDDD00D7D7
      D700D7D7D700CCCCCC00CCCCCC00C0C0C000CCCC9900CCCC990066333300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004D4D4D00CC66000099330000CC996600CC66330099330000663300006633
      3300555555004D4D4D004D4D4D000000000000000000FFFFFF00CCCC9900CCCC
      9900CC9999000000000066333300663333006633330066333300663333006633
      3300663333006633330066333300663333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00CC660000CC660000CC663300DDDDDD00D7D7D700F0CAA600F0CAA600CC99
      6600CC333300993333004D4D4D000000000000000000FFFFFF00FFFFFF00F8F8
      F800F1F1F10000000000F8F8F800DDDDDD00D7D7D700D7D7D700CCCCCC00CCCC
      CC00C0C0C000CCCC9900CCCC9900663333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      00000000000000000000000000000000000000000000000000004D4D4D00CC66
      0000CC660000CC660000CC663300EAEAEA00FFCCCC00F0CAA600F0CAA600CCCC
      9900CC999900CC9999004D4D4D0000000000B2B2B200FFFFFF00CCCCCC00CBCB
      CB00C0C0C00000000000FFFFFF00CCCC9900CCCC9900CC999900FFECCC00CC99
      6600CC996600CC996600CCCC99006633330000000000000000000000000000FF
      FF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000008000000000
      0000000000000000000000000000000000000000000000000000CC663300FF99
      0000CC990000CC660000CC663300EAEAEA00DDDDDD00A4A0A000A4A0A000CC99
      9900CC999900CC9999004D4D4D0000000000CC999900FFFFFF00000000006633
      33006633330000000000FFFFFF00FFFFFF00F8F8F800F1F1F100F1F1F100FFEC
      CC00FFECCC00FFECCC00C0C0C000663333000000000000000000FFFFFF000000
      000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
      BD0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000CC663300FF99
      0000FF990000CC66000066333300F1F1F100EAEAEA009999CC00B2B2B2006666
      9900F0CAA600CC9999004D4D4D0000000000CCCC9900FFFFFF0000000000F8F8
      F800DDDDDD00B2B2B200FFFFFF00CCCCCC00CBCBCB00C0C0C000F8F8F800CC99
      9900CC999900CC999900CCCCCC0066333300000000000000000000FFFF00FFFF
      FF000000000000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000CC663300FF99
      0000FF990000CC66000033000000F8F8F800EAEAEA00DDDDDD00FFCCCC00F0CA
      A600F0CAA600CC9999004D4D4D0000000000CCCC9900FFFFFF0000000000FFFF
      FF00CCCC9900CC999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      F800F1F1F100F1F1F100D7D7D700663333000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000000000000800000000000000000
      0000000000000000000000000000000000000000000000000000CC663300FF99
      0000FF990000CC660000CC996600F0CAA600CC996600F0CAA600F0CAA600CCCC
      9900F0CAA600C0C0C0004D4D4D0000000000FF999900FF99990000000000FFFF
      FF00FFFFFF00CCCC9900FFFFFF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00CC99
      9900CC999900CC999900DDDDDD0066333300000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF663300FF99
      0000FF990000FFCC660000000000FFECCC00FFCCCC00F0CAA600CC9966009933
      330066330000996633004D4D4D0000000000FF999900F0CAA600B2B2B200FFFF
      FF00CCCCCC00CCCC9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8F800663333000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF993300FF99
      0000FF990000FF990000F1F1F100F1F1F100FFECCC00CC999900CC999900CC99
      9900CC996600663333000000000000000000FF999900FF999900CC999900FFFF
      FF00FFFFFF00FF999900FF999900FF996600FF996600CC996600CC996600CC99
      6600CC993300CC663300CC663300CC663300000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000008000000000000000000000008000000000
      0000000000000000000000000000000000000000000000000000FF993300FF99
      3300FF990000FF990000F0CAA600F0CAA600CC996600CC999900CC999900CC99
      9900CC996600993333000000000000000000FFFFFF00FFFFFF00CCCC9900FFFF
      FF00CCCCCC00FF999900F0CAA600FFCC9900FFCC9900FFCC9900FF999900FF99
      6600FF996600FF996600FF996600CC66330000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000FF996600FF99
      3300FF993300FF990000FFECCC00EAEAEA0099CCCC006699990033669900F0CA
      A600CC996600993333000000000000000000FFFFFF00FFFFFF00CCCC9900FFFF
      FF00FFFFFF00FF999900FF999900FF999900FF996600CC996600CC996600CC99
      6600CC996600CC663300CC663300CC66330000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF996600FFCC
      3300FF993300FF990000FFECCC00EAEAEA00DDDDDD00FFCCCC00F0CAA600F0CA
      A600CC999900993333000000000000000000FFFFFF00FFFFFF00FF999900FF99
      9900FF996600FF996600CC996600CC996600CC996600CC993300CC663300CC66
      3300CC663300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF996600FFCC
      6600FFCC3300FF993300F0CAA600FFECCC00FFECCC00F0CAA600F0CAA600F0CA
      A600CC996600CC6633000000000000000000FFFFFF00FFFFFF00FF999900F0CA
      A600FFCC9900FFCC9900FFCC9900FF999900FF996600FF996600FF996600FF99
      6600CC663300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC999900CC99CC00CCCCCC00CC99CC00CC999900CC996600CC99
      6600CC996600000000000000000000000000FFFFFF00FFFFFF00FF999900FF99
      9900FF999900FF996600CC996600CC996600CC996600CC996600CC663300CC66
      3300CC663300FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008007FFFFE0FF80010003FC7FE01F0000
      0001F83FE00100004001F81F000000004000F007800100004000F00380010000
      4000E003800100004300E0038001000041C1C003800100004003C00380010000
      4007C00380010000400FE00380000000780FF803800000007C1FFC03FFC10000
      003FFF83FFE30000007FFFC3FFF78001FFFFFE7FFC3F8000FFFFFE7FF8078000
      FFFFF81FF0018400FFFFF00FE0018400C00FF24FC00104008007F20FC0012400
      8003FE0FC00120008001FC0FC00120008001F81FC0012000800FF03FC2010000
      800FF04FC0030000801FF24FC0030000C0FFF00FC0030000C0FFF81FC0030000
      FFFFFE7FC0030000FFFFFE7FC007000000000000000000000000000000000000
      000000000000}
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Popup')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmAxiom.ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 996
    Top = 115
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 83
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBtnAdd'
        end
        item
          Visible = True
          ItemName = 'cxBtnSubtract'
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
    object cxBtnAdd: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Add'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFF0707
        07FFFFFFFFFFFFFFFFFFFFFF07070707070707FFFFFFFFFFFFFFFF0719191919
        190707072A2AFFFFFFFFFF07191919861919070731312AFFFFFF07F6F6F6F686
        19191907077A302AFFFF07F6F686868686861907077A792AFFFF07F6F6F6F686
        F6191907079A7A2AFFFF3107FFFFF686F6191907A0A079792AFF3107FFFFF6F6
        F6191907A0A07AA02AFF319A0707F6F6F60707FFFFFF9AFF2AFF319A79310707
        07313131313131312AFF31A0A0A0A0A0A0FFFFFFFFFF312AFFFF31FFA0A0A0A0
        FF313131313131FFFFFFFF31FFFFFFFF31FFFFFFFFFFFFFFFFFFFFFF31313131
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = cxBtnAddClick
    end
    object cxBtnSubtract: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A60033000000000033003300330033330000161616001C1C1C00222222002929
        2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
        CC00C6D6EF00D6E7E70090A9AD0000FF330000006600000099000000CC000033
        00000033330000336600003399000033CC000033FF0000660000006633000066
        6600006699000066CC000066FF00009900000099330000996600009999000099
        CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
        660000FF990000FFCC0033FF0000FF00330033006600330099003300CC003300
        FF00FF3300003333330033336600333399003333CC003333FF00336600003366
        330033666600336699003366CC003366FF003399000033993300339966003399
        99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
        FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
        6600660099006600CC006600FF00663300006633330066336600663399006633
        CC006633FF00666600006666330066666600666699006666CC00669900006699
        330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
        CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
        000099339900990099009900CC009900000099333300990066009933CC009900
        FF00996600009966330099336600996699009966CC009933FF00999933009999
        6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
        CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
        000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
        9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
        FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
        3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
        9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
        6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFF0707
        07FFFFFFFFFFFFFFFFFFFFFF07070707070707FFFFFFFFFFFFFFFF0719191919
        190707072A2AFFFFFFFFFF07191919191919070731312AFFFFFF07F6F6F6F619
        19191907077A302AFFFF07F6F6FCFCFCFCFC1907077A792AFFFF07F6F6F6F6F6
        F6191907079A7A2AFFFF3107FFFFF6F6F6191907A0A079792AFF3107FFFFF6F6
        F6191907A0A07AA02AFF319A0707F6F6F60707FFFFFF9AFF2AFF319A79310707
        07313131313131312AFF31A0A0A0A0A0A0FFFFFFFFFF312AFFFF31FFA0A0A0A0
        FF313131313131FFFFFFFF31FFFFFFFF31FFFFFFFFFFFFFFFFFFFFFF31313131
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = cxBtnSubtractClick
    end
    object dxliFields: TdxBarListItem
      Caption = 'Select Field'
      Category = 1
      Visible = ivAlways
      OnClick = dxliFieldsClick
      ShowNumbers = False
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'dxBarButton2')
    end
    object dxBarGroup2: TdxBarGroup
      Items = (
        'cxBtnAdd')
    end
  end
  object dlFile: TOpenDialog
    Filter = '*.dot'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Title = 'Select document template'
    Left = 905
    Top = 158
  end
  object dxFieldPopUp: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 832
    Top = 219
  end
  object qryEmployee: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select 1,'#39'(Matter) Author'#39' as name,'#39'MA-AUTH'#39' as code'
      'from dual '
      'union all'
      'select 1,'#39'(Matter) Partner'#39' as name,'#39'MA-PART'#39' as code'
      'from dual '
      'union all'
      'select 1,'#39'(Matter) Operator'#39' as name,'#39'MA-OPER'#39' as code'
      'from dual '
      'union all'
      'select 1,'#39'(Matter) Controller'#39' as name,'#39'MA-CONT'#39' as code'
      'from dual '
      'union all'
      'select 2,name,code from employee'
      'where active = '#39'Y'#39
      'order by 1,2')
    Left = 956
    Top = 162
  end
  object dsEmployee: TUniDataSource
    DataSet = qryEmployee
    Left = 960
    Top = 220
  end
  object qryActions: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from debtorworkflowaction'
      'where naction = nvl(:naction,naction)')
    Options.DefaultValues = True
    SpecificOptions.Strings = (
      'Oracle.DeferredLobRead=True')
    BeforeInsert = qryActionBeforeEdit
    BeforeEdit = qryActionBeforeEdit
    AfterPost = qryActionAfterPost
    AfterCancel = qryActionAfterPost
    OnNewRecord = qryActionNewRecord
    Left = 1059
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'naction'
      end>
  end
  object dsActions: TUniDataSource
    DataSet = qryActions
    Left = 1069
    Top = 121
  end
  object tbTables: TUniTable
    TableName = 'RB_TABLE'
    Connection = dmAxiom.uniInsight
    Left = 328
    Top = 451
  end
  object tbFields: TUniTable
    TableName = 'RB_FIELD'
    Connection = dmAxiom.uniInsight
    Left = 331
    Top = 494
  end
  object tbJoins: TUniTable
    TableName = 'RB_JOIN'
    Connection = dmAxiom.uniInsight
    Left = 331
    Top = 539
  end
  object dsJoins: TUniDataSource
    DataSet = tbJoins
    Left = 377
    Top = 548
  end
  object dsTables: TUniDataSource
    DataSet = tbTables
    Left = 379
    Top = 450
  end
  object dsFields: TUniDataSource
    DataSet = tbFields
    Left = 374
    Top = 498
  end
  object plJoins: TppDBPipeline
    DataSource = dsJoins
    UserName = 'plJoins'
    Left = 419
    Top = 554
    object plJoinsppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plJoinsppField2: TppField
      FieldAlias = 'TABLE_NAME1'
      FieldName = 'TABLE_NAME1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plJoinsppField3: TppField
      FieldAlias = 'TABLE_NAME2'
      FieldName = 'TABLE_NAME2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plJoinsppField4: TppField
      FieldAlias = 'JOIN_TYPE'
      FieldName = 'JOIN_TYPE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object plJoinsppField5: TppField
      FieldAlias = 'FIELD_NAMES1'
      FieldName = 'FIELD_NAMES1'
      FieldLength = 255
      DisplayWidth = 255
      Position = 4
    end
    object plJoinsppField6: TppField
      FieldAlias = 'OPERATORS'
      FieldName = 'OPERATORS'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object plJoinsppField7: TppField
      FieldAlias = 'FIELD_NAMES2'
      FieldName = 'FIELD_NAMES2'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
  end
  object plFields: TppDBPipeline
    DataSource = dsFields
    UserName = 'plFields'
    Left = 425
    Top = 509
  end
  object plTables: TppDBPipeline
    DataSource = dsTables
    UserName = 'plTables'
    Left = 430
    Top = 449
  end
  object DataDictionary: TppDataDictionary
    AllowManualJoins = True
    AutoJoin = True
    BuilderSettings.DatabaseName = 'uniInsight'
    BuilderSettings.SessionType = 'ODACSession'
    FieldFieldNames.AutoSearch = 'AUTOSEARCH'
    FieldFieldNames.DataType = 'DATATYPE'
    FieldFieldNames.FieldName = 'FIELD_NAME'
    FieldFieldNames.FieldAlias = 'FIELD_ALIAS'
    FieldFieldNames.Mandatory = 'MANDATORY'
    FieldFieldNames.Searchable = 'SEARCHABLE'
    FieldFieldNames.Selectable = 'SELECTABLE'
    FieldFieldNames.Sortable = 'SORTABLE'
    FieldFieldNames.TableName = 'TABLE_NAME'
    FieldPipeline = plFields
    JoinFieldNames.TableName1 = 'TABLE_NAME1'
    JoinFieldNames.TableName2 = 'TABLE_NAME2'
    JoinFieldNames.JoinType = 'JOIN_TYPE'
    JoinFieldNames.FieldNames1 = 'FIELD_NAMES1'
    JoinFieldNames.FieldNames2 = 'FIELD_NAMES2'
    JoinFieldNames.Operators = 'OPERATORS'
    JoinPipeline = plJoins
    TableFieldNames.TableName = 'TABLE_NAME'
    TableFieldNames.TableAlias = 'TABLE_ALIAS'
    TablePipeline = plTables
    UserName = 'DataDictionary'
    Left = 495
    Top = 478
  end
  object ppDesigner: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Bill Template'
    DataSettings.SessionType = 'ODACSession'
    DataSettings.AllowEditSQL = True
    DataSettings.DatabaseType = dtOracle
    DataSettings.DataDictionary = DataDictionary
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL1
    DataSettings.UseDataDictionary = True
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
    Position = poScreenCenter
    Report = DebtorReport
    IniStorageType = 'Registry'
    IniStorageName = 'RBuilder'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 536
    Top = 372
  end
  object DebtorReport: TppReport
    AutoStop = False
    DataPipeline = plDebtorTemplate
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
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
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Segoe UI'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\DebtorLetter.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 602
    Top = 352
    Version = '14.08'
    mmColumnWidth = 0
    DataPipelineName = 'plDebtorTemplate'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plDebtorTemplate: TppDBPipeline
    DataSource = dsAction
    RefreshAfterPost = True
    UserName = 'plDebtorTemplate'
    Left = 535
    Top = 319
  end
end
