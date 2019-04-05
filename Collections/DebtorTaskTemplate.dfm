object frmDebtorTaskTemplate: TfrmDebtorTaskTemplate
  Left = 318
  Top = 140
  Caption = 'Collection Task Template'
  ClientHeight = 690
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pcMain: TcxPageControl
    Left = 0
    Top = 28
    Width = 1104
    Height = 662
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabTemplate
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.NativeStyle = True
    TabSlants.Kind = skCutCorner
    OnChange = pcMainChange
    ClientRectBottom = 658
    ClientRectLeft = 4
    ClientRectRight = 1100
    ClientRectTop = 26
    object tabTemplate: TcxTabSheet
      Caption = 'Template'
      ImageIndex = 0
      DesignSize = (
        1096
        632)
      object tvTemplates: TcxTreeView
        Left = 7
        Top = 22
        Width = 239
        Height = 590
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
        Left = 261
        Top = 13
        Width = 347
        Height = 408
        TabOrder = 1
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        LookAndFeel.NativeStyle = True
        ClientRectBottom = 404
        ClientRectLeft = 4
        ClientRectRight = 343
        ClientRectTop = 4
        object tabTemplateDetails: TcxTabSheet
          Caption = 'tabTemplateDetails'
          ImageIndex = 0
          object cxGroupBox4: TcxGroupBox
            Left = 5
            Top = 0
            Caption = 'Template'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 0
            DesignSize = (
              334
              387)
            Height = 387
            Width = 334
            object cxLabel1: TcxLabel
              Left = 7
              Top = 15
              Caption = 'Description'
              Transparent = True
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 76
              Top = 15
              DataBinding.DataField = 'DESCR'
              DataBinding.DataSource = dsdebtorWorkflowTemplate
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 247
            end
            object btnTemplateOK: TBitBtn
              Left = 7
              Top = 357
              Width = 70
              Height = 23
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
              Left = 82
              Top = 357
              Width = 69
              Height = 23
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
            Left = 3
            Top = 5
            Caption = 'Template Item'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Transparent = True
            DesignSize = (
              339
              397)
            Height = 397
            Width = 339
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 7
              Top = 175
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
            end
            object cxLabel7: TcxLabel
              Left = 7
              Top = 82
              Caption = 'Action*'
              Transparent = True
            end
            object dblcAction: TcxDBLookupComboBox
              Left = 83
              Top = 81
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
              Width = 247
            end
            object edElapsedDays: TcxDBTextEdit
              Left = 83
              Top = 59
              DataBinding.DataField = 'ELAPSE_DAYS'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 2
              Width = 61
            end
            object cxLabel8: TcxLabel
              Left = 7
              Top = 16
              Caption = 'Description*'
              Transparent = True
            end
            object dbeItemDest: TcxDBTextEdit
              Left = 83
              Top = 15
              DataBinding.DataField = 'DESCR'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Width = 247
            end
            object btnTemplateItemOk: TBitBtn
              Left = 7
              Top = 367
              Width = 70
              Height = 23
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
              Left = 82
              Top = 367
              Width = 69
              Height = 23
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
              Left = 7
              Top = 126
              Caption = 'Alert To'
              Transparent = True
            end
            object cxLabel10: TcxLabel
              Left = 7
              Top = 104
              Caption = 'Assign To'
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 7
              Top = 38
              Caption = 'Min Balance*'
              Transparent = True
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 83
              Top = 37
              DataBinding.DataField = 'MIN_BALANCE'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 80
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 83
              Top = 103
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
              Width = 247
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 83
              Top = 125
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
              Width = 247
            end
            object cmbElapsedMode: TcxDBComboBox
              Left = 7
              Top = 59
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
              Width = 56
            end
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 148
              Top = 59
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
            end
            object edElapsedMonths: TcxDBTextEdit
              Left = 83
              Top = 59
              DataBinding.DataField = 'ELAPSE_MONTHS'
              DataBinding.DataSource = dsdebtorWorkflowTemplateItem
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 16
              Width = 61
            end
            object cxLabel6: TcxLabel
              Left = 7
              Top = 148
              Caption = 'Alt Alert To'
              Transparent = True
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox
              Left = 83
              Top = 147
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
              Width = 247
            end
          end
        end
        object tabTemplateBlank: TcxTabSheet
          Caption = 'tabTemplateBlank'
          ImageIndex = 2
          object cxGroupBox5: TcxGroupBox
            Left = 6
            Top = 0
            Caption = 'Instructions'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Height = 387
            Width = 320
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'cxTabSheet1'
          ImageIndex = 3
        end
      end
    end
    object tabAction: TcxTabSheet
      Caption = 'Actions'
      ImageIndex = 1
      DesignSize = (
        1096
        632)
      object cxGroupBox1: TcxGroupBox
        Left = 261
        Top = 20
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Action'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        DesignSize = (
          828
          590)
        Height = 590
        Width = 828
        object cxLabel3: TcxLabel
          Left = 12
          Top = 23
          Caption = 'Description'
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object dbeActionDescription: TcxDBTextEdit
          Left = 81
          Top = 22
          DataBinding.DataField = 'DESCR'
          DataBinding.DataSource = dsAction
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 400
        end
        object cxLabel4: TcxLabel
          Left = 49
          Top = 71
          Caption = 'Type'
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object dbcbActionType: TcxDBComboBox
          Left = 81
          Top = 70
          DataBinding.DataField = 'TYPE'
          DataBinding.DataSource = dsAction
          Properties.Items.Strings = (
            'Email'
            'Document'
            'SMS'
            'Statement'
            'Phone Call'
            '')
          Properties.OnChange = cxDBComboBox1PropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 400
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 7
          Top = 537
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
        end
        object pcType: TcxPageControl
          Left = 7
          Top = 97
          Width = 815
          Height = 424
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 4
          Properties.ActivePage = tabDoc
          Properties.CustomButtons.Buttons = <>
          Properties.ShowFrame = True
          Properties.TabSlants.Kind = skCutCorner
          LookAndFeel.NativeStyle = True
          TabSlants.Kind = skCutCorner
          ClientRectBottom = 420
          ClientRectLeft = 4
          ClientRectRight = 811
          ClientRectTop = 26
          object tabDoc: TcxTabSheet
            Caption = 'tabDoc'
            ImageIndex = 0
            object cxLabel5: TcxLabel
              Left = 37
              Top = 23
              Caption = 'Path'
              Transparent = True
            end
            object dbeDocumentPath: TcxDBButtonEdit
              Left = 70
              Top = 22
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
              Width = 400
            end
            object cxLabel14: TcxLabel
              Left = 16
              Top = 53
              Caption = 'New File'
              Transparent = True
            end
            object cxedtGenDoc1: TcxDBTextEdit
              Left = 70
              Top = 52
              Hint = 'Right Click to display list of available values'
              DataBinding.DataField = 'GENERATED_DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 400
            end
          end
          object TabEmail: TcxTabSheet
            Caption = 'TabEmail'
            ImageIndex = 1
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 0
              Top = 186
              AutoSize = False
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
              Height = 23
              Width = 90
            end
            object cxGroupBox2: TcxGroupBox
              Left = 1
              Top = 0
              Caption = 'Email'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Height = 158
              Width = 479
              object cxDBMEmail: TcxDBMemo
                Left = 3
                Top = 15
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
                Height = 139
                Width = 466
              end
            end
            object cxLabel11: TcxLabel
              Left = 0
              Top = 163
              Caption = 'Subject '
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Transparent = True
            end
            object cxDBSubject: TcxDBTextEdit
              Left = 73
              Top = 163
              DataBinding.DataField = 'EMAIL_SUBJECT'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 397
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
              Top = 13
              Caption = 'Document Name'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
            end
            object btnImportBlob: TcxButton
              Left = 98
              Top = 37
              Width = 60
              Height = 23
              Caption = 'Import '
              LookAndFeel.Kind = lfStandard
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360800000000000036000000280000002000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                800000808000008080000080800000808000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00808000008080000080
                8000008080000080800000808000000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
                80000080800000808000008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF00808000008080000080
                8000008080000080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
                80000080800000808000008080007F7F7FFFFFFFFFFF00808000008080000080
                8000008080000080800000808000008080007F7F7FFF00808000008080000080
                8000008080000080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
                80000080800000808000008080007F7F7FFFFFFFFFFF00808000FFFFFFFFFFFF
                FFFF00808000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF00808000008080000080
                8000008080000080800000808000000000FFFFFFFFFF000000FF000000FFFFFF
                FFFF000000FF000000FF000000FFFFFFFFFF000000FF00808000008080000080
                800000808000FFFFFFFF008080007F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF0080
                80007F7F7FFF7F7F7FFF7F7F7FFF008080007F7F7FFF00808000008080000080
                8000000000FF0080800000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000008080000080
                80007F7F7FFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFF00808000FFFFFFFF0080
                8000FFFFFFFFFFFFFFFF00808000FFFFFFFF7F7F7FFF00808000008080000080
                80000000FFFF000000FF00808000000000FFFFFFFFFF000000FFBFBFBFFF0000
                00FF000000FFFFFFFFFF000000FFFFFFFFFF000000FF00808000008080000080
                80007F7F7FFF7F7F7FFFFFFFFFFF7F7F7FFFFFFFFFFF7F7F7FFF008080007F7F
                7FFF7F7F7FFF008080007F7F7FFF008080007F7F7FFF00808000008080000080
                80000000FFFF0000FFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00808000FFFFFFFFFFFF
                FFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF00808000FFFFFFFFFFFF
                FFFF00808000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF000000FF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFFFF000000FF000000FFFFFF
                FFFF000000FF000000FF000000FF000000FF000000FF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF7F7F7FFF7F7F7FFF0080
                80007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFF000000FFFFFFFFFFFFFFFFFF000000FF008080007F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF0080
                80007F7F7FFFFFFFFFFF008080007F7F7FFF00808000000000FF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFBFBFBFFFFFFF
                FFFF000000FFFFFFFFFF000000FF00808000008080007F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080
                80007F7F7FFFFFFFFFFF7F7F7FFF0080800000808000000000FF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFF000000FF000000FF0080800000808000008080007F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFF
                FFFF7F7F7FFF7F7F7FFF008080000080800000808000000000FF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000FF0000
                00FF000000FF008080000080800000808000008080007F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF0080800000808000008080000080800000808000008080000080
                80000000FFFF0000FFFF000000FF008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                80007F7F7FFF7F7F7FFF7F7F7FFF008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                80000000FFFF000000FF00808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                80007F7F7FFF7F7F7FFF00808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                8000000000FF0080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                80007F7F7FFF0080800000808000008080000080800000808000008080000080
                80000080800000808000008080000080800000808000}
              OptionsImage.NumGlyphs = 2
              TabOrder = 1
              OnClick = btnImportBlobClick
            end
            object btnExportBlob: TcxButton
              Left = 163
              Top = 37
              Width = 60
              Height = 23
              Caption = 'Export'
              Enabled = False
              LookAndFeel.Kind = lfStandard
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                424D360800000000000036000000280000002000000010000000010020000000
                000000000000C40E0000C40E0000000000000000000000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000000
                00FF008080000080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080007F7F
                7FFFFFFFFFFFFFFFFFFF00808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000000
                FFFF000000FF0080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080007F7F
                7FFF7F7F7FFFFFFFFFFFFFFFFFFF008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000000
                FFFF0000FFFF000000FF00808000008080000080800000808000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
                7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF00808000000000FF000000FF0000
                00FF000000FF000000FF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF000000FF00808000008080007F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF000000FF008080007F7F7FFFFFFFFFFF0080
                800000808000008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFF000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000FF7F7F7FFFFFFFFFFF0080
                8000FFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF000000FFFFFFFFFF0000
                00FF000000FFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF0000FFFF000000FF008080007F7F7FFFFFFFFFFF7F7F
                7FFF7F7F7FFF008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF00808000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000
                FFFF0000FFFF0000FFFF000000FF00808000008080007F7F7FFFFFFFFFFF0080
                8000FFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF0080800000808000000000FFFFFFFFFF0000
                00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
                FFFF0000FFFF000000FF0080800000808000008080007F7F7FFFFFFFFFFF7F7F
                7FFF7F7F7FFF00808000008080000080800000808000008080007F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF008080000080800000808000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
                FFFF000000FF008080000080800000808000008080007F7F7FFFFFFFFFFF0080
                8000FFFFFFFFFFFFFFFF00808000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F
                7FFF7F7F7FFF00808000008080000080800000808000000000FFFFFFFFFF0000
                00FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
                00FF00808000008080000080800000808000008080007F7F7FFFFFFFFFFF7F7F
                7FFF7F7F7FFF008080007F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
                7FFF0080800000808000008080000080800000808000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF008080000080
                800000808000008080000080800000808000008080007F7F7FFFFFFFFFFF0080
                8000FFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFF008080007F7F7FFF008080000080
                80000080800000808000008080000080800000808000000000FFFFFFFFFF0000
                00FFBFBFBFFFFFFFFFFF000000FFFFFFFFFF000000FF00808000008080000080
                800000808000008080000080800000808000008080007F7F7FFFFFFFFFFF7F7F
                7FFF7F7F7FFF008080007F7F7FFFFFFFFFFF7F7F7FFF00808000008080000080
                80000080800000808000008080000080800000808000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000000FF000000FF0080800000808000008080000080
                800000808000008080000080800000808000008080007F7F7FFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF0080800000808000008080000080
                80000080800000808000008080000080800000808000000000FF000000FF0000
                00FF000000FF000000FF000000FF008080000080800000808000008080000080
                800000808000008080000080800000808000008080007F7F7FFF7F7F7FFF7F7F
                7FFF7F7F7FFF7F7F7FFF7F7F7FFF008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                8000008080000080800000808000008080000080800000808000008080000080
                80000080800000808000008080000080800000808000}
              OptionsImage.NumGlyphs = 2
              TabOrder = 2
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 99
              Top = 12
              DataBinding.DataField = 'DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 371
            end
            object cxLabel15: TcxLabel
              Left = 41
              Top = 72
              Caption = 'New File'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Transparent = True
            end
            object cxedtGenDoc2: TcxDBTextEdit
              Left = 99
              Top = 71
              DataBinding.DataField = 'GENERATED_DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 5
              Width = 371
            end
          end
          object tabSMS: TcxTabSheet
            Caption = 'tabSMS'
            ImageIndex = 4
            DesignSize = (
              807
              394)
            object Label1: TLabel
              Left = 222
              Top = 189
              Width = 126
              Height = 15
              Caption = '(Limit is 160 Characters)'
            end
            object cxDBMemo1: TcxDBMemo
              Left = 3
              Top = 7
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
              Height = 356
              Width = 802
            end
            object cxDBCheckBox5: TcxDBCheckBox
              Left = 3
              Top = 367
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
            end
          end
          object tabStatement: TcxTabSheet
            Caption = 'tabStatement'
            ImageIndex = 5
            object cxLabel16: TcxLabel
              Left = 37
              Top = 23
              Caption = 'Path'
              Transparent = True
            end
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 70
              Top = 22
              DataBinding.DataField = 'DOCUMENT_PATH'
              DataBinding.DataSource = dsAction
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D360400000000000036000000280000001000000010000000010020000000
                    000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF0000
                    00FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBD
                    BDFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFF
                    FFFF000000FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FF
                    FFFFBDBDBDFF00FFFFFF000000FFFF00FF00FF00FF00FF00FF00000000FF00FF
                    FFFFFFFFFFFF000000FF00FFFFFFBDBDBDFF00FFFFFFBDBDBDFF00FFFFFFBDBD
                    BDFF00FFFFFFBDBDBDFF00FFFFFF000000FFFF00FF00FF00FF00000000FFFFFF
                    FFFF00FFFFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00000000FF00FF
                    FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
                    FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFF
                    FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF
                    FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF00FF
                    FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000FF0000
                    00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                    00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
                    7BFF000000FF000000FF000000FF000000FF7B7B7BFFFF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  Kind = bkGlyph
                  Stretchable = False
                end
                item
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D360400000000000036000000280000001000000010000000010020000000
                    000000000000C40E0000C40E00000000000000000000FFFFFF00000000FF0000
                    00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF00CC
                    CCFFFFFFFF00FFFFFF00868686FF868686FF868686FF868686FF868686FF8686
                    86FF868686FFFFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF00CC
                    CCFFFFFFFF00FFFFFF00000000FF393939FF000000FFFFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF00CC
                    CCFFFFFFFF00FFFFFF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
                    FFFFFF00FFFFFFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFFFFFFFF00FFFFFF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
                    FFFFFF00FFFFFFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF00CC
                    CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFFFFFFFF00FFFFFF00000000FF393939FF000000FF393939FFFFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF00CC
                    CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFFFFFFFF00868686FF868686FF868686FF868686FF868686FF868686FF8686
                    86FF868686FF868686FFFFFFFF00000000FFFFFFFF00FFFFFF00868686FF00CC
                    CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00868686FF66CC
                    FFFF00CCCCFF66CCFFFF00CCCCFF66CCFFFF00CCCCFF66CCFFFF00CCCCFF66CC
                    FFFF00CCCCFF66CCFFFF00CCCCFF000000FFFFFFFF00FFFFFF00868686FFFF99
                    00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
                    00FFFF9900FFFF9900FFFF9900FF000000FFFFFFFF00FFFFFF00868686FF8000
                    00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
                    00FF800000FF800000FF800000FF000000FFFFFFFF00}
                  Kind = bkGlyph
                end>
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
              ShowHint = True
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Width = 400
            end
            object cxLabel17: TcxLabel
              Left = 16
              Top = 54
              Caption = 'New File'
              Transparent = True
            end
            object cxedtGenDoc3: TcxDBTextEdit
              Left = 70
              Top = 52
              Hint = 'Right Click to display list of available values'
              DataBinding.DataField = 'GENERATED_DOCUMENT_NAME'
              DataBinding.DataSource = dsAction
              PopupMenu = dxFieldPopUp
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 400
            end
            object cxDBCheckBox6: TcxDBCheckBox
              Left = 1
              Top = 81
              AutoSize = False
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
              Height = 23
              Width = 117
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 1
              Top = 101
              AutoSize = False
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
              Height = 23
              Width = 117
            end
          end
        end
        object btnActionOk: TBitBtn
          Left = 7
          Top = 563
          Width = 69
          Height = 24
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
          Left = 82
          Top = 563
          Width = 69
          Height = 24
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
          Left = 7
          Top = 47
          Caption = 'Debtor Note'
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxDBDebtorNote: TcxDBTextEdit
          Left = 81
          Top = 46
          DataBinding.DataField = 'DEBTOR_NOTE'
          DataBinding.DataSource = dsAction
          PopupMenu = dxFieldPopUp
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 400
        end
      end
      object grdActions: TcxGrid
        Left = 7
        Top = 22
        Width = 239
        Height = 590
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
              end
              item
                ImageIndex = 8
                Value = 'Phone Call'
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
        Value = nil
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
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ntemplateitem'
        Value = nil
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
      'from '
      'debtorworkflowaction'
      'where '
      'naction = nvl(:naction,naction)')
    Options.DefaultValues = True
    SpecificOptions.Strings = (
      'Oracle.KeySequence=SQNC_NACTION'
      'Oracle.DeferredLobRead=True'
      'Oracle.SequenceMode=smInsert')
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
        Value = nil
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
      494C010109000D00180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      00000000000000000000000000000000000000000000000000000000000C2B1E
      19D136251FFF36251FFF35241EFF32221DFF32221DFF35241EFF36251FFF3625
      1FFF2B1E19D10000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D3726
      20FF46342DFF45322BFF423029FF867C78FF867C78FF423029FF45322BFF4634
      2DFF372620FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D3928
      21FF4A372FFF4A372FFF48362EFF47352DFF47352DFF48362EFF4A372FFF4A37
      2FFF392821FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D3B2A
      23FF926041FFA56B45FFA56B45FFA46B45FFA46B45FFA56B45FFA56B45FF9260
      41FF3B2A23FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D3E2B
      24FFA9714BFFDDAF77FFDDAF77FFDDAF77FFDDAF77FFDDAF77FFDDAF77FFA971
      4BFF3E2B24FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D402D
      26FFAD7752FFDFB57FFFDFB57FFFDFB57FFFDFB57FFFDFB57FFFDFB57FFFAD77
      52FF402D26FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D432F
      28FFB17E59FFE2BB87FFE2BB87FFE2BB87FFE2BB87FFE2BB87FFE2BB87FFB17E
      59FF432F28FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D4531
      2AFFB68560FFE5C292FFE7C597FFE7C699FFE7C698FFE6C496FFE5C292FFB685
      60FF45312AFF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D513D
      35FFC59D7DFFEDD3ADFFEDD3ADFFEDD3ADFFEDD3ADFFEDD3ADFFEDD3ADFFC59D
      7DFF513D35FF0000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000201010D6E5D
      57FFCCA98BFFF0D8B3FFF0D8B3FFF0D8B3FFF0D8B3FFF0D8B3FFF0D8B3FFCCA9
      8BFF6E5D57FF0201010D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030D705F
      59FFCFAD91FFF1DDB9FFF1DDB9FFF1DDB9FFF1DDB9FFF1DDB9FFF1DDB9FFCFAD
      91FF705F59FF0303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030D7260
      59FFD2B295FFF3E1BEFFF3E1BFFFF3E1BFFFF3E1BFFFF3E1BFFFF3E1BEFFD2B2
      95FF726059FF0303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030D7461
      5BFFCAAD94FFD5B699FFD5B79AFFD5B89BFFD5B89BFFD5B79AFFD5B699FFCAAD
      94FF74615BFF0303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000202020C7563
      5CFFAA9389FFAA9389FF8D7971FF6D5D57FF6D5D57FF8D7971FFAA9389FFAA93
      89FF75635CFF0202020C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202087664
      5DFFAE978DFFAD968CFFAD968CFFAD968CFFAD968CFFAD968CFFAD968CFFAE97
      8DFF76645DFF0202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000025E4F
      49C978655DFF78655DFF78655DFF78655DFF78655DFF78655DFF78655DFF7865
      5DFF5E4F4ACA0101010300000000000000000000000000000000000000000000
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
    PixelsPerInch = 96
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFEC
        CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFC0C0C0FFC0C0C0FFC0C0C0FF0066
        99FF006699FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFEC
        CCFFFFECCCFFFFECCCFF993333FFFFECCCFFFFECCCFFC0C0C0FFC0C0C0FF0099
        CCFF0099CCFF006699FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFF0FBFFFFF0FB
        FFFFF0FBFFFFF0FBFFFF993333FFFFECCCFFFFECCCFFFFECCCFFC0C0C0FFC0C0
        C0FF66CCFFFF009999FF006699FFFFFFFFFFFFFFFFFFC0C0C0FFF0FBFFFFF0FB
        FFFF993333FF993333FF993333FF993333FF993333FFFFECCCFFC0C0C0FFC0C0
        C0FF66CCFFFF66CCCCFF006699FFFFFFFFFFFFFFFFFFC0C0C0FFF0FBFFFFF0FB
        FFFFF0FBFFFFF0FBFFFF993333FFF0FBFFFFFFECCCFFFFECCCFFC0C0C0FFC0C0
        C0FF99CCFFFF66CCFFFF006699FFFFFFFFFFFFFFFFFF0099CCFFC0C0C0FFFFFF
        FFFFFFFFFFFFF0FBFFFF993333FFF0FBFFFFFFECCCFFFFECCCFFC0C0C0FF99FF
        FFFF99FFFFFF66CCCCFF66CCCCFF006699FFFFFFFFFF0099CCFFC0C0C0FFFFFF
        FFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFECCCFFFFECCCFFC0C0C0FF99FF
        FFFF99FFFFFF66CCFFFF99FFFFFF006699FFFFFFFFFF0099CCFF99CCFFFFC0C0
        C0FFC0C0C0FFF0FBFFFFF0FBFFFFF0FBFFFFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFF99CCFFFFFFFFFFFF006699FFFFFFFFFF0099CCFF99CCFFFF66CC
        CCFF0099CCFFC0C0C0FFC0C0C0FFC0C0C0FF0099CCFF0099CCFF0099CCFF0099
        CCFF0099CCFF0099CCFF0099CCFF006699FFFFFFFFFF0099CCFF99FFFFFF99FF
        FFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0099CCFF006699FFFFFFFFFFFFFFFFFF0099CCFFFFFFFFFF99FF
        FFFF99FFFFFF99FFFFFF99FFFFFFFFFFFFFF0099CCFF0099CCFF0099CCFF0099
        CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0099CCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0099
        CCFF0099CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = cxBtnAddClick
    end
    object cxBtnSubtract: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Enabled = False
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFEC
        CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFC0C0C0FFC0C0C0FFC0C0C0FF0066
        99FF006699FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFEC
        CCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFC0C0C0FFC0C0C0FF0099
        CCFF0099CCFF006699FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFF0FBFFFFF0FB
        FFFFF0FBFFFFF0FBFFFFFFECCCFFFFECCCFFFFECCCFFFFECCCFFC0C0C0FFC0C0
        C0FF66CCFFFF009999FF006699FFFFFFFFFFFFFFFFFFC0C0C0FFF0FBFFFFF0FB
        FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFECCCFFC0C0C0FFC0C0
        C0FF66CCFFFF66CCCCFF006699FFFFFFFFFFFFFFFFFFC0C0C0FFF0FBFFFFF0FB
        FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFECCCFFFFECCCFFC0C0C0FFC0C0
        C0FF99CCFFFF66CCFFFF006699FFFFFFFFFFFFFFFFFF0099CCFFC0C0C0FFFFFF
        FFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFECCCFFFFECCCFFC0C0C0FF99FF
        FFFF99FFFFFF66CCCCFF66CCCCFF006699FFFFFFFFFF0099CCFFC0C0C0FFFFFF
        FFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFECCCFFFFECCCFFC0C0C0FF99FF
        FFFF99FFFFFF66CCFFFF99FFFFFF006699FFFFFFFFFF0099CCFF99CCFFFFC0C0
        C0FFC0C0C0FFF0FBFFFFF0FBFFFFF0FBFFFFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFF99CCFFFFFFFFFFFF006699FFFFFFFFFF0099CCFF99CCFFFF66CC
        CCFF0099CCFFC0C0C0FFC0C0C0FFC0C0C0FF0099CCFF0099CCFF0099CCFF0099
        CCFF0099CCFF0099CCFF0099CCFF006699FFFFFFFFFF0099CCFF99FFFFFF99FF
        FFFF99FFFFFF99FFFFFF99FFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0099CCFF006699FFFFFFFFFFFFFFFFFF0099CCFFFFFFFFFF99FF
        FFFF99FFFFFF99FFFFFF99FFFFFFFFFFFFFF0099CCFF0099CCFF0099CCFF0099
        CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0099CCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0099
        CCFF0099CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
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
    PixelsPerInch = 96
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
        Value = nil
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
    PrinterSetup.Duplex = dpNone
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
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
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
    TextFileName = '($MyDocuments)\DebtorLetter.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 602
    Top = 352
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDebtorTemplate'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
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
