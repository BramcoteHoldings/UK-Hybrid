object frmBulkBills: TfrmBulkBills
  Left = 229
  Top = 84
  Anchors = [akTop, akRight]
  Caption = 'Bulk Bill Creation...'
  ClientHeight = 673
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pagControl: TcxPageControl
    Left = 0
    Top = 36
    Width = 930
    Height = 601
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.ShowFrame = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    OnChange = pagControlChange
    ClientRectBottom = 600
    ClientRectLeft = 1
    ClientRectRight = 929
    ClientRectTop = 1
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      object cxLabel1: TcxLabel
        Left = 25
        Top = 252
        Caption = 'WIP To:'
      end
      object cxLabel2: TcxLabel
        Left = 9
        Top = 5
        Caption = 'Please Select  Filter'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
      end
      object cxGroupBox1: TcxGroupBox
        Left = 11
        Top = 33
        Caption = 'Matter'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 179
        Width = 477
        object lblPartner: TLabel
          Left = 14
          Top = 23
          Width = 38
          Height = 15
          Caption = 'Partner'
          Transparent = True
        end
        object lblController: TLabel
          Left = 14
          Top = 48
          Width = 53
          Height = 15
          Caption = 'Controller'
          Transparent = True
        end
        object lblAuthor: TLabel
          Left = 14
          Top = 73
          Width = 37
          Height = 15
          Caption = 'Author'
          Transparent = True
        end
        object lblOperator: TLabel
          Left = 14
          Top = 98
          Width = 47
          Height = 15
          Caption = 'Operator'
          Transparent = True
        end
        object lblDepartment: TLabel
          Left = 14
          Top = 123
          Width = 63
          Height = 15
          Caption = 'Department'
        end
        object lblClient: TLabel
          Left = 14
          Top = 148
          Width = 31
          Height = 15
          Caption = 'Client'
          FocusControl = cbAuthor
        end
        object cbPartner: TcxLookupComboBox
          Left = 124
          Top = 20
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPartner
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 236
        end
        object cbController: TcxLookupComboBox
          Left = 124
          Top = 45
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsController
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 236
        end
        object cbAuthor: TcxLookupComboBox
          Left = 124
          Top = 70
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsAuthor
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 236
        end
        object cbOperator: TcxLookupComboBox
          Left = 124
          Top = 95
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Width = 40
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsOperator
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 236
        end
        object cmbDepartment: TcxLookupComboBox
          Left = 124
          Top = 120
          Properties.ClearKey = 46
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDepartment
          Properties.MaxLength = 0
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 347
        end
        object btnClient: TcxButtonEdit
          Left = 124
          Top = 145
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.MaxLength = 0
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 347
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 11
        Top = 281
        Caption = 'Bill Value Total'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Transparent = True
        Height = 159
        Width = 274
        object Label10: TLabel
          Left = 14
          Top = 29
          Width = 36
          Height = 15
          Caption = 'Total >'
          Transparent = True
        end
        object neWIP: TcxCurrencyEdit
          Left = 114
          Top = 23
          AutoSize = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 22
          Width = 129
        end
        object chkWIP: TcxCheckBox
          Left = 13
          Top = 48
          AutoSize = False
          Caption = 'WIP'
          Properties.Alignment = taRightJustify
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = chkCreditorsClick
          Height = 23
          Width = 121
        end
        object chkDisb: TcxCheckBox
          Left = 13
          Top = 70
          AutoSize = False
          Caption = 'Disb'
          Properties.Alignment = taRightJustify
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnClick = chkCreditorsClick
          Height = 22
          Width = 121
        end
        object chkCreditors: TcxCheckBox
          Left = 13
          Top = 91
          AutoSize = False
          Caption = 'Creditors'
          Properties.Alignment = taRightJustify
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnClick = chkCreditorsClick
          Height = 23
          Width = 121
        end
        object chkAntdDisb: TcxCheckBox
          Left = 13
          Top = 111
          AutoSize = False
          Caption = 'Ant Disb'
          Properties.Alignment = taRightJustify
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnClick = chkCreditorsClick
          Height = 23
          Width = 121
        end
        object chkSundries: TcxCheckBox
          Left = 13
          Top = 132
          AutoSize = False
          Caption = 'Sundries'
          Properties.Alignment = taRightJustify
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          OnClick = chkCreditorsClick
          Height = 22
          Width = 121
        end
      end
      object dtpInterim: TDateTimePicker
        Left = 135
        Top = 250
        Width = 149
        Height = 23
        Date = 40913.672969155090000000
        Time = 40913.672969155090000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 1
      end
      object dtpWIPFrom: TDateTimePicker
        Left = 135
        Top = 220
        Width = 149
        Height = 23
        Date = 40913.672969155090000000
        Time = 40913.672969155090000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 2
        Visible = False
      end
      object cxLabel3: TcxLabel
        Left = 25
        Top = 221
        Caption = 'WIP From:'
        Visible = False
      end
      object cxGroupBox3: TcxGroupBox
        Left = 296
        Top = 281
        Caption = 'Matter WIP Credit Limit'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Transparent = True
        Height = 159
        Width = 274
        object Label1: TLabel
          Left = 14
          Top = 26
          Width = 44
          Height = 15
          Caption = 'Variance'
          Transparent = True
        end
        object neVariance: TcxCurrencyEdit
          Left = 114
          Top = 23
          AutoSize = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 22
          Width = 129
        end
      end
    end
    object tabGrid: TcxTabSheet
      Caption = 'Data Found'
      ImageIndex = 0
      object dbgrMatters: TcxGrid
        Left = 0
        Top = 0
        Width = 928
        Height = 599
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object vMatters1: TcxGridDBTableView
          OnDblClick = vMatters1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsMatters
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'NMATTER'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 20
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          OnColumnHeaderClick = vMatters1ColumnHeaderClick
          object vMatters1PARENT: TcxGridDBColumn
            DataBinding.FieldName = 'PARENT'
            Visible = False
          end
          object vMatters1TITLE: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'TITLE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 85
            Properties.ReadOnly = False
            Width = 103
          end
          object vMatters1FILEID: TcxGridDBColumn
            Caption = 'File'
            DataBinding.FieldName = 'FILEID'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Width = 98
          end
          object vMatters1SHORTDESCR: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'SHORTDESCR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 251
          end
          object vMatters1LONGDESCR: TcxGridDBColumn
            DataBinding.FieldName = 'LONGDESCR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 400
            Properties.ReadOnly = False
            Visible = False
            Width = 1169
          end
          object vMatters1NMATTER: TcxGridDBColumn
            DataBinding.FieldName = 'NMATTER'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Width = 42
          end
          object vMatters1PARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 3
            Properties.ReadOnly = False
            Width = 70
          end
          object vMatters1AUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 3
            Properties.ReadOnly = False
            Width = 60
          end
          object vMatters1TYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 5
            Properties.ReadOnly = False
            Width = 135
          end
          object vMatters1CLIENTID: TcxGridDBColumn
            Caption = 'Client ID'
            DataBinding.FieldName = 'CLIENTID'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 35
            Properties.ReadOnly = False
            Width = 68
          end
          object vMatters1SUBTYPE: TcxGridDBColumn
            Caption = 'Sub Type'
            DataBinding.FieldName = 'SUBTYPE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Visible = False
            Width = 52
          end
          object vMatters1JURISDICTION: TcxGridDBColumn
            DataBinding.FieldName = 'JURISDICTION'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Visible = False
            Width = 52
          end
          object vMatters1MATTERSTATUS2: TcxGridDBColumn
            DataBinding.FieldName = 'MATTERSTATUS2'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Visible = False
            Width = 160
          end
          object vMatters1WIP: TcxGridDBColumn
            DataBinding.FieldName = 'WIP'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taRightJustify
          end
        end
        object tvMatters: TcxGridDBBandedTableView
          OnDblClick = vMatters1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsMatters
          DataController.KeyFieldNames = 'NMATTER'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.BandMoving = False
          OptionsCustomize.NestedBands = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.BandHeaders = False
          Styles.OnGetContentStyle = tvMattersStylesGetContentStyle
          Bands = <
            item
              Options.Sizing = False
            end
            item
            end>
          object tvMattersSELECTED: TcxGridDBBandedColumn
            Tag = 1
            Caption = 'Select'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 45
            Options.Filtering = False
            Options.Sorting = False
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMattersAPPLYTRUST: TcxGridDBBandedColumn
            Tag = 2
            Caption = 'Apply Trust'
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            MinWidth = 65
            Options.Filtering = False
            Options.Sorting = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMattersNMEMO: TcxGridDBBandedColumn
            DataBinding.ValueType = 'Integer'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            VisibleForCustomization = False
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tvMattersCLIENT: TcxGridDBBandedColumn
            Caption = 'Client'
            DataBinding.FieldName = 'CLIENT'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 115
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tvMattersFILEID: TcxGridDBBandedColumn
            Caption = 'File'
            DataBinding.FieldName = 'FILEID'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 81
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tvMattersLONGDESCR: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'LONGDESCR'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 79
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tvMattersPARTNER: TcxGridDBBandedColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 90
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tvMattersAUTHOR: TcxGridDBBandedColumn
            Caption = 'Author'
            DataBinding.FieldName = 'AUTHOR'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 87
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tvMattersTYPE: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 140
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tvMattersCLIENTID: TcxGridDBBandedColumn
            Caption = 'Client ID'
            DataBinding.FieldName = 'CLIENTID'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 81
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tvMattersWIP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'WIP'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 81
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tvMattersNMATTER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NMATTER'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tvMattersTRUST: TcxGridDBBandedColumn
            Caption = 'Trust'
            DataBinding.FieldName = 'TRUST'
            Options.Editing = False
            Options.Focusing = False
            Options.Moving = False
            Width = 57
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tvMattersNCLIENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NCLIENT'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object lvMatters: TcxGridLevel
          GridView = tvMatters
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 637
    Width = 930
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      930
      36)
    object btnPrev: TBitBtn
      Left = 757
      Top = 5
      Width = 81
      Height = 27
      Anchors = [akTop, akRight]
      Caption = '<< Prev'
      Enabled = False
      TabOrder = 0
      OnClick = btnPrevClick
    end
    object btnNext: TBitBtn
      Left = 844
      Top = 5
      Width = 80
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Next >>'
      TabOrder = 1
      OnClick = btnNextClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 930
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      930
      36)
    object pbSelect: TBitBtn
      Left = 5
      Top = 3
      Width = 95
      Height = 25
      Caption = 'Select All'
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000FFFFF0FFFFFFFFF
        0FFFFF0FFF0FFFFF0FFFFF0FF000FFFF0FFFFF0F00000FFF0FFFFF0F00F000FF
        0FFFFF0F0FFF000F0FFFFF0FFFFFF00F0FFFFF0FFFFFFF0F0FFFFF0FFFFFFFFF
        0FFFFF00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      OnClick = pbSelectClick
    end
    object btnCreate: TBitBtn
      Left = 110
      Top = 3
      Width = 97
      Height = 25
      Caption = 'Create...'
      Enabled = False
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnCreateClick
    end
    object btnPrintBills: TBitBtn
      Left = 321
      Top = 3
      Width = 85
      Height = 25
      Caption = 'Print Bills'
      Enabled = False
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFF0091E200001212121212121212FFFFFF0091D500
        910009090909090912FFFFFFFF000000E29100090909090912FFFFFFFF1200FF
        DDE291000909090912FFFFFFFF00FFF6FFDDE2910009090912FFFFFF00FFF609
        F6FFDD9FD500090912FFFF00FFE2DDF609F6FFDDFF00090912FF0091DD00E28A
        F6DDDDFFFF00DDDD12FF008B910000918AE219D50019DDDD12FF000000E28B00
        918BD5008B19191912FFFF00FFFFE28B009100D51919191912FFFFFF00FFFFDD
        910019191919F7F712FFFFFFFF00FFFFDD8B00191919AED412FFFFFFFF1200FF
        FFE2001919198B12FFFFFFFFFF12120000001212121212FFFFFF}
      TabOrder = 2
      OnClick = btnPrintBillsClick
    end
    object cbPrintBills: TCheckBox
      Left = 408
      Top = 6
      Width = 387
      Height = 19
      Caption = 
        'Send directly to Printer (only works with Insight Bill Templates' +
        '.)'
      Enabled = False
      TabOrder = 3
    end
    object bnCancel: TBitBtn
      Left = 845
      Top = 3
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 4
      OnClick = bnCancelClick
    end
  end
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 581
    Top = 135
  end
  object qryMatters: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select tablevalue('#39'phonebook'#39','#39'nclient'#39',nclient,'#39'search'#39') as cli' +
        'ent,fileid,longdescr,max(partner) partner,max(author) author, ty' +
        'pe, clientid, '
      
        'GetBillablewipamount(MATTER.NMATTER, :dInterim) as wip, nmatter,' +
        ' 0 as nmemo, 0 as trust, nclient'
      'from matter'
      'where closed = 0 and entity = :P_Entity'
      'group by nmatter, fileid, longdescr, type, clientid, nclient')
    Left = 476
    Top = 93
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dInterim'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'P_Entity'
        Value = nil
      end>
  end
  object dsMatters: TUniDataSource
    DataSet = qryMatters
    Left = 646
    Top = 91
  end
  object qParaLegal: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISPARALEGA' +
        'L = '#39'Y'#39
      'ORDER BY CODE')
    Left = 615
    Top = 337
  end
  object dsParaLegal: TUniDataSource
    DataSet = qParaLegal
    Left = 666
    Top = 338
  end
  object qController: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISCONTROLL' +
        'ER = '#39'Y'#39
      'ORDER BY CODE')
    Left = 612
    Top = 397
    object qControllerCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object qControllerNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsController: TDataSource
    AutoEdit = False
    DataSet = qController
    Left = 667
    Top = 401
  end
  object qOperator: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND '
      'ISOPERATOR = '#39'Y'#39
      'ORDER BY CODE')
    Left = 614
    Top = 271
    object StringField3: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsOperator: TDataSource
    AutoEdit = False
    DataSet = qOperator
    Left = 671
    Top = 277
  end
  object qAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISAUTHOR =' +
        ' '#39'Y'#39
      'ORDER BY CODE')
    Left = 609
    Top = 449
    object StringField1: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsAuthor: TDataSource
    AutoEdit = False
    DataSet = qAuthor
    Left = 665
    Top = 450
  end
  object qPartner: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT CODE, NAME FROM EMPLOYEE WHERE ACTIVE ='#39'Y'#39' AND ISPARTNER ' +
        '= '#39'Y'#39
      'ORDER BY CODE')
    Left = 610
    Top = 223
    object qPartnerCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 3
    end
    object qPartnerNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsPartner: TDataSource
    AutoEdit = False
    DataSet = qPartner
    Left = 672
    Top = 232
  end
  object qryDepartment: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM empdept'
      'ORDER BY code')
    Left = 708
    Top = 153
  end
  object dsDepartment: TUniDataSource
    DataSet = qryDepartment
    Left = 758
    Top = 179
  end
  object qryInvoice: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT M.*, M.ROWID '
      'FROM NMEMO M '
      'WHERE M.NMEMO = -1')
    Left = 780
    Top = 88
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    Version = 0
    Left = 500
    Top = 264
    PixelsPerInch = 96
    object dxComponentPrinter1Link2: TdxGridReportLink
      Active = True
      Component = dbgrMatters
      DateFormat = 0
      PageNumberFormat = pnfNumeral
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
      ReportDocument.CreationDate = 43745.627862847220000000
      TimeFormat = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.BandHeaders = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 392
    Top = 38
    PixelsPerInch = 96
    object btnPrint: TdxBarButton
      Caption = 'Print Grid'
      Category = 0
      Hint = 'Print Grid'
      Visible = ivAlways
      OnClick = btnPrintClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 586
    Top = 66
    PixelsPerInch = 96
    object stynMemoColour: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object styDefault: TcxStyle
    end
  end
  object qryNew: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'UPDATE FEE SET NMEMO = 1 WHERE NMEMO = 0 AND BILLED = '#39'N'#39)
    Left = 655
    Top = 136
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnPrint'
      end>
    UseOwnFont = False
    Left = 377
    Top = 246
    PixelsPerInch = 96
  end
end
