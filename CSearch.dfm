object frmClientSearch: TfrmClientSearch
  Left = 201
  Top = 104
  Caption = 'Client Selection'
  ClientHeight = 732
  ClientWidth = 1125
  Color = clBtnFace
  Constraints.MinHeight = 515
  Constraints.MinWidth = 644
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sbarStatus: TStatusBar
    Left = 0
    Top = 707
    Width = 1125
    Height = 25
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'Client'
        Width = 90
      end
      item
        Text = 'Filter'
        Width = 200
      end>
  end
  object pageSearch: TcxPageControl
    Left = 0
    Top = 28
    Width = 1125
    Height = 679
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabFilters
    Properties.CustomButtons.Buttons = <>
    Properties.ShowFrame = True
    Properties.TabSlants.Kind = skCutCorner
    OnChange = pageSearchChange
    ClientRectBottom = 675
    ClientRectLeft = 4
    ClientRectRight = 1121
    ClientRectTop = 26
    object tabGrid: TcxTabSheet
      Caption = 'Clients'
      ImageIndex = 0
      OnShow = tabGridShow
      object dbgrClients: TcxGrid
        Left = 0
        Top = 0
        Width = 1117
        Height = 618
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object tvdbgrClients: TcxGridDBTableView
          OnDblClick = tvdbgrClientsDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = tvdbgrClientsCustomDrawCell
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.GridModeBufferCount = 50
          DataController.DataSource = dsClients
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 55
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          Styles.ContentEven = cxAltColumn
          Styles.Selection = cxSelection
          OnColumnHeaderClick = tvdbgrClientsColumnHeaderClick
          object tvdbgrClientsSEARCH: TcxGridDBColumn
            Caption = 'Client'
            DataBinding.FieldName = 'SEARCH'
            Styles.Header = cxStyle1
            Width = 255
          end
          object tvdbgrClientsADDRESS: TcxGridDBColumn
            Caption = 'Address'
            DataBinding.FieldName = 'ADDRESS'
            Width = 300
          end
          object tvdbgrClientsCONTACT_NAME: TcxGridDBColumn
            Caption = 'Contact'
            DataBinding.FieldName = 'CONTACT_NAME'
            Width = 121
          end
          object tvdbgrClientsCLIENTID: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CLIENTID'
            Width = 122
          end
          object tvdbgrClientsPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'PARTNER'
            Styles.Header = cxStyle4
            Width = 129
          end
          object tvdbgrClientsGenderDesc: TcxGridDBColumn
            Caption = 'Client Type'
            DataBinding.FieldName = 'GenderDesc'
            Styles.Header = cxStyle5
            Width = 176
          end
          object tvdbgrClientsROW_COLOUR: TcxGridDBColumn
            DataBinding.FieldName = 'ROW_COLOUR'
            Visible = False
            VisibleForCustomization = False
          end
          object tvdbgrClientsEMAIL: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL'
          end
        end
        object dbgrClientsLevel1: TcxGridLevel
          GridView = tvdbgrClients
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 618
        Width = 1117
        Height = 31
        Align = alBottom
        TabOrder = 1
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 956
          Height = 29
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            956
            29)
          object Label5: TLabel
            Left = 773
            Top = 6
            Width = 28
            Height = 15
            Anchors = [akRight, akBottom]
            Caption = 'Co&de'
            FocusControl = tbCode
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 4
            Caption = 'Client Name'
            Transparent = True
          end
          object cmbFilter: TcxComboBox
            Left = 83
            Top = 2
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              ''
              'Contains'
              'Begins'
              'Equals')
            Properties.OnChange = cmbFilterPropertiesChange
            Properties.OnCloseUp = cmbFilterPropertiesCloseUp
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Text = 'Contains'
            Width = 114
          end
          object tbClientSearch: TcxTextEdit
            Left = 199
            Top = 2
            Anchors = [akLeft, akTop, akRight]
            Properties.OnChange = tbClientSearchPropertiesChange
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyDown = tbClientSearchKeyDown
            Width = 568
          end
          object tbCode: TEdit
            Left = 809
            Top = 2
            Width = 57
            Height = 23
            Anchors = [akRight, akBottom]
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = tbCodeChange
            OnKeyDown = tbCodeKeyDown
          end
        end
        object Panel3: TPanel
          Left = 957
          Top = 1
          Width = 159
          Height = 29
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            159
            29)
          object btnOK: TBitBtn
            Left = 5
            Top = 2
            Width = 73
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = '&OK'
            Kind = bkOK
            NumGlyphs = 2
            TabOrder = 0
            OnClick = btnOKClick
          end
          object btnCancel: TBitBtn
            Left = 83
            Top = 2
            Width = 73
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = '&Cancel'
            Kind = bkCancel
            NumGlyphs = 2
            TabOrder = 1
          end
        end
      end
    end
    object tabFilters: TcxTabSheet
      Caption = 'Filters'
      ImageIndex = 1
      DesignSize = (
        1117
        649)
      object btnClearAll: TBitBtn
        Left = 1026
        Top = 618
        Width = 85
        Height = 25
        Hint = 'Clear filter and refresh data'
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = 'Clear &All'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF000000FF000000
          FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
          FF000000FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF000000
          FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        OnClick = btnClearAllClick
      end
      object gbGroups: TGroupBox
        Left = 10
        Top = 307
        Width = 1104
        Height = 339
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Client Groups'
        TabOrder = 4
        DesignSize = (
          1104
          339)
        object btnGroupsRefresh: TBitBtn
          Left = 999
          Top = 22
          Width = 97
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Refresh List'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF007070708FB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00009900FF333B33CCA5A5A55A7373738C66666699666666997373
            738CCCCCCC33FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00009900FF006000FF337733CC007300FF009900FF007C00FF004D
            00FF333B33CC8080807FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF007C00FF333B33CCA5A5A55AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00009900FF009900FF009900FF009900FF109F10EF40B240BF20A5
            20DF009900FF007300FF404040BFF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00009900FF009900FF009900FF008F00FF3E3E3EC1DFDFDF20FFFF
            FF009FD89F60109F10EF335933CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00009900FF009900FF009900FF009900FF005600FF454545BAFFFF
            FF00FFFFFF00BFE5BF40006900FF7373738CFFFFFF00FFFFFF00FFFFFF00B2B2
            B24DFFFFFF00009900FF009900FF009900FF009900FF009900FF009900FF3030
            30CFFFFFFF00FFFFFF0060BF609F666D6699FFFFFF00FFFFFF00FFFFFF00334A
            33CCB2B2B24DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00DFF2DF20A5C3A55AFFFFFF00FFFFFF00FFFFFF001078
            10EF404040BFF2F2F20DFFFFFF00FFFFFF00378937C8136313EC114B11EE1143
            11EE113411EE243524DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BF
            609F004300FF595959A6E5E5E51AFFFFFF00E5F4E51A109F10EF009900FF0099
            00FF009900FF184718E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFE5
            BF40009900FF004D00FF404040BF8080807F99999966105210EF009900FF0099
            00FF009900FF154515EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0050B950AF009900FF008600FF004D00FF005600FF008F00FF009900FF0099
            00FF009900FF144414EBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00EFF8EF1030AC30CF009900FF009900FF009900FF009900FF009900FF0099
            00FF009900FF164516E9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00EFF8EF1060BF609F009900FF009900FF009900FF30AC30CF7FCB
            7F80009900FF194719E6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF008FD28F703D743DC2FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 0
          OnClick = btnGroupsRefreshClick
        end
        object clbGroups: TcxCheckListBox
          Left = 6
          Top = 64
          Width = 1090
          Height = 263
          Anchors = [akLeft, akTop, akRight, akBottom]
          Columns = 2
          EditValueFormat = cvfStatesString
          Items = <>
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnClick = clbGroupsClick
        end
        object rgGroupSelect: TcxRadioGroup
          Left = 6
          Top = 22
          Caption = 'Select entries which appear in'
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'All Categories'
            end
            item
              Caption = 'Any Category'
            end>
          ItemIndex = 0
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Transparent = True
          OnClick = rgGroupSelectClick
          Height = 36
          Width = 213
        end
      end
      object fraIncludes: TGroupBox
        Left = 8
        Top = 0
        Width = 345
        Height = 135
        ParentCustomHint = False
        Caption = 'Select'
        TabOrder = 1
        object Label4: TLabel
          Left = 5
          Top = 61
          Width = 66
          Height = 15
          Caption = 'Client Name'
        end
        object Label2: TLabel
          Left = 5
          Top = 85
          Width = 42
          Height = 15
          Caption = 'Contact'
        end
        object Label6: TLabel
          Left = 5
          Top = 109
          Width = 28
          Height = 15
          Caption = 'Code'
        end
        object Label10: TLabel
          Left = 5
          Top = 17
          Width = 71
          Height = 15
          Caption = 'where criteria'
        end
        object Label7: TLabel
          Left = 5
          Top = 37
          Width = 57
          Height = 15
          Caption = 'Search Key'
        end
        object rbContaining: TRadioButton
          Tag = 1
          Left = 134
          Top = 15
          Width = 67
          Height = 17
          Caption = 'Contains'
          TabOrder = 1
          OnClick = rbStartingClick
        end
        object rbStarting: TRadioButton
          Tag = 2
          Left = 202
          Top = 15
          Width = 77
          Height = 17
          Caption = 'Starts with'
          TabOrder = 2
          OnClick = rbStartingClick
        end
        object edClientCode: TcxTextEdit
          Left = 97
          Top = 106
          Properties.OnChange = edClientCodeChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 76
        end
        object edContact: TcxTextEdit
          Left = 97
          Top = 82
          Properties.OnChange = edContactChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 198
        end
        object edName: TcxTextEdit
          Left = 97
          Top = 58
          Properties.OnChange = edNameChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 198
        end
        object edSearch: TcxTextEdit
          Left = 97
          Top = 34
          Properties.OnChange = edSearchChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 198
        end
        object rbEquals: TRadioButton
          Tag = 3
          Left = 281
          Top = 15
          Width = 54
          Height = 17
          Caption = 'Equals'
          TabOrder = 3
          OnClick = rbStartingClick
        end
        object rbNone: TRadioButton
          Left = 85
          Top = 15
          Width = 48
          Height = 17
          Caption = 'None'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbStartingClick
        end
      end
      object fraEqual: TGroupBox
        Left = 357
        Top = 0
        Width = 297
        Height = 135
        Caption = 'Client Related Fields'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 17
          Width = 38
          Height = 15
          Caption = 'Partner'
        end
        object Label3: TLabel
          Left = 8
          Top = 41
          Width = 59
          Height = 15
          Caption = 'Client Type'
        end
        object lblPacketID: TLabel
          Left = 8
          Top = 102
          Width = 103
          Height = 30
          AutoSize = False
          Caption = 'Packet Description/ Notes'
          WordWrap = True
        end
        object Label8: TLabel
          Left = 8
          Top = 85
          Width = 49
          Height = 15
          Caption = 'Packet ID'
        end
        object cmbClientPartner: TcxLookupComboBox
          Left = 112
          Top = 14
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              Width = 60
              FieldName = 'NAME'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsClientPartner
          Properties.OnChange = cmbPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 179
        end
        object cmbClientGender: TcxLookupComboBox
          Left = 112
          Top = 38
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 60
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsClientGender
          Properties.OnChange = cmbPropertiesChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 179
        end
        object chkPacketDeed: TcxCheckBox
          Left = 5
          Top = 61
          Caption = 'Show all Clients with Packets'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Transparent = True
          OnClick = chkPacketDeedClick
        end
        object edPacketID: TcxTextEdit
          Left = 112
          Top = 106
          Properties.OnChange = edPacketIDChange
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnEnter = edPacketIDEnter
          Width = 179
        end
        object edPacket: TcxTextEdit
          Left = 112
          Top = 82
          Properties.OnChange = edPacketChange
          TabOrder = 3
          OnEnter = edPacketEnter
          Width = 179
        end
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 138
        Width = 646
        Height = 167
        Caption = 'Matter Related Fields'
        TabOrder = 3
        object lblPartner: TLabel
          Left = 8
          Top = 18
          Width = 38
          Height = 15
          Caption = 'Partner'
        end
        object lblAuthor: TLabel
          Left = 8
          Top = 68
          Width = 37
          Height = 15
          Caption = 'Author'
        end
        object Label12: TLabel
          Left = 327
          Top = 18
          Width = 25
          Height = 15
          Caption = 'Type'
        end
        object Label24: TLabel
          Left = 327
          Top = 68
          Width = 37
          Height = 15
          Caption = 'Branch'
        end
        object lblController: TLabel
          Left = 8
          Top = 43
          Width = 53
          Height = 15
          Caption = 'Controller'
        end
        object Label13: TLabel
          Left = 327
          Top = 143
          Width = 53
          Height = 15
          Caption = 'WorkFlow'
        end
        object lblOperator: TLabel
          Left = 8
          Top = 93
          Width = 47
          Height = 15
          Caption = 'Operator'
        end
        object Label14: TLabel
          Left = 327
          Top = 93
          Width = 60
          Height = 15
          Caption = 'Jurisdiction'
        end
        object Label15: TLabel
          Left = 327
          Top = 118
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label16: TLabel
          Left = 327
          Top = 43
          Width = 43
          Height = 15
          Caption = 'Subtype'
        end
        object lblParaLegal: TLabel
          Left = 9
          Top = 118
          Width = 54
          Height = 15
          Caption = 'Para Legal'
        end
        object cmbPartner: TcxLookupComboBox
          Left = 123
          Top = 15
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              Width = 70
              FieldName = 'NAME'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsPartner
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 189
        end
        object cmbController: TcxLookupComboBox
          Left = 123
          Top = 40
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              Width = 60
              FieldName = 'NAME'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsController
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 189
        end
        object cmbAuthor: TcxLookupComboBox
          Left = 123
          Top = 65
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              Width = 60
              FieldName = 'NAME'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsAuthor
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 189
        end
        object cmbOperator: TcxLookupComboBox
          Left = 123
          Top = 90
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Name'
              Width = 60
              FieldName = 'NAME'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsOperator
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 189
        end
        object cmbWorkFlow: TcxLookupComboBox
          Left = 398
          Top = 140
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 70
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsWorkFlow
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 222
        end
        object cmbType: TcxLookupComboBox
          Left = 398
          Top = 15
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 100
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsType
          Properties.OnChange = cmbTypePropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 222
        end
        object cmbSubtype: TcxLookupComboBox
          Left = 398
          Top = 40
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 100
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsSubtype
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 222
        end
        object cmbBranch: TcxLookupComboBox
          Left = 398
          Top = 65
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 100
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsBranch
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 222
        end
        object cmbJurisdiction: TcxLookupComboBox
          Left = 398
          Top = 90
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 100
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsJurisdiction
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 222
        end
        object cmbStatus: TcxLookupComboBox
          Left = 398
          Top = 115
          ParentShowHint = False
          Properties.DropDownRows = 10
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              Width = 100
              FieldName = 'DESCR'
            end
            item
              Caption = 'Code'
              Width = 20
              FieldName = 'CODE'
            end>
          Properties.ListSource = dsStatus
          Properties.OnChange = cmbPropertiesChange
          ShowHint = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 222
        end
        object cmbParaLegal: TcxLookupComboBox
          Left = 123
          Top = 115
          Properties.ListColumns = <>
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 189
        end
      end
    end
  end
  object qryClientList: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT DISTINCT phonebook.search, phonebook.contact_name, phoneb' +
        'ook.partner,'
      
        '                phonebook.clientid, phonebook.gender, phonebook.' +
        'nclient,'
      '                   phonebook.address'
      '                || '#39' '#39
      '                || phonebook.suburb'
      '                || '#39' '#39
      '                || phonebook.state AS address,'
      '                getgender (phonebook.gender) AS genderdesc,'
      '                row_colour,'
      '                email'
      '           FROM debtorstatus, phonebook'
      '          WHERE phonebook.search > '#39' '#39
      
        '            AND phonebook.debtorstatus = debtorstatus.debtorstat' +
        'us(+)'
      '            AND phonebook.archived = '#39'N'#39
      '       ORDER BY phonebook.search ASC')
    Left = 276
    Top = 91
  end
  object dsClients: TUniDataSource
    AutoEdit = False
    DataSet = qryClientList
    Left = 582
    Top = 79
  end
  object qryClientGroup: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM CLIENTGROUP ORDER BY CATEGORY')
    Left = 672
    Top = 176
  end
  object ilstToolbar: TImageList
    Left = 513
    Top = 32
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000333B3300A5A5A50073737300666666006666660073737300CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      000000600000337733000073000000990000007C0000004D0000333B33008080
      800000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000007C0000333B
      3300A5A5A5000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF0000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000109F100040B2400020A52000009900000073
      000040404000F2F2F200000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      00000000000000000000806060008080800000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      00000099000000990000008F00003E3E3E00DFDFDF00000000009FD89F00109F
      100033593300B2B2B200000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      000000990000009900000099000000560000454545000000000000000000BFE5
      BF000069000073737300000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A0008060600000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200000000000099
      0000009900000099000000990000009900000099000030303000000000000000
      000060BF6000666D66000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      00000000000000000000000000000000000000000000334A3300B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF00A5C3A50000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C0008060600000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      000000000000000000000000000000000000000000001078100040404000F2F2
      F20000000000000000003789370013631300114B110011431100113411002435
      2400000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000060BF6000004300005959
      5900E5E5E50000000000E5F4E500109F10000099000000990000009900001847
      1800000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      84000000000000000000000000000000000000000000BFE5BF0000990000004D
      0000404040008080800099999900105210000099000000990000009900001545
      150000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000050B950000099
      000000860000004D000000560000008F00000099000000990000009900001444
      140000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000EFF8EF0030AC
      3000009900000099000000990000009900000099000000990000009900001645
      1600000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF0060BF600000990000009900000099000030AC30007FCB7F00009900001947
      1900000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F003D74
      3D00000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
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
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF00000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFE7FFF03FC007FE7FE01FE007
      8003FC3FE00FC0000001FC3FE00780000001FE7FE00300000001FC3FE0430000
      0000FC3FE06300000000FC3FA03380008000FC1F9FF3E001C000F20F8C0FF003
      E001E107840FF01FE007E187800FE03FF007E007C00FE03FF003F00FC00FC03F
      F803F81FE00FC07FFFFFFFFFFFCFF8FFEFFFFFFFFFFFFFFFCFFFF83FFC7F3FFB
      8007E00FF83F07C10003CFC7F81F0303800187E3F0070003CFF1A3F3F0030003
      EFF131F9E0030007FFF138F9E00300078FFF3C79C003000F8FF73E39C003000F
      8FF33F19C003000780019F8BE0030003C0008FC3F8030003E001C7E7FC030003
      FFF3E00FFF830001FFF7F83FFFC3000100000000000000000000000000000000
      000000000000}
  end
  object qryClientReport: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PHONEBOOK')
    Left = 995
    Top = 397
  end
  object tmrSearch: TTimer
    Enabled = False
    OnTimer = tmrSearchTimer
    Left = 245
    Top = 24
  end
  object qryPartner: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, name'
      'FROM employee'
      'WHERE active ='#39'Y'#39
      'AND ispartner = '#39'Y'#39
      'ORDER BY name')
    Left = 453
    Top = 372
  end
  object qryController: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME'
      'FROM EMPLOYEE'
      'WHERE ACTIVE ='#39'Y'#39
      'AND ISCONTROLLER = '#39'Y'#39
      'ORDER BY name')
    Left = 544
    Top = 520
  end
  object qryAuthor: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME'
      'FROM EMPLOYEE'
      'WHERE ACTIVE ='#39'Y'#39
      'AND ISAUTHOR = '#39'Y'#39
      'ORDER BY name')
    Left = 323
    Top = 522
  end
  object qryOperator: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, NAME'
      'FROM EMPLOYEE'
      'WHERE ACTIVE ='#39'Y'#39
      'AND ISOPERATOR = '#39'Y'#39
      'ORDER BY name')
    Left = 523
    Top = 545
  end
  object qryWorkFlow: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM workflowtype'
      'ORDER BY descr')
    Left = 671
    Top = 473
  end
  object qryType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM mattertype'
      'ORDER BY DESCR')
    Left = 638
    Top = 528
  end
  object qrySubtype: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 672
    Top = 568
  end
  object qryBranch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR'
      'FROM BRANCH'
      'where entity = :entity'
      'ORDER BY DESCR')
    Left = 647
    Top = 545
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entity'
        Value = nil
      end>
  end
  object qryJurisdiction: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM jurisdiction'
      'WHERE descr <> '#39'xxx'#39
      'ORDER BY descr')
    Left = 788
    Top = 431
  end
  object qryStatus: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM matterstatus'
      'ORDER BY descr')
    Left = 792
    Top = 528
  end
  object dsOperator: TUniDataSource
    DataSet = qryOperator
    Left = 593
    Top = 540
  end
  object dsAuthor: TUniDataSource
    DataSet = qryAuthor
    Left = 359
    Top = 517
  end
  object dsType: TUniDataSource
    DataSet = qryType
    Left = 736
    Top = 528
  end
  object dsSubtype: TUniDataSource
    DataSet = qrySubtype
    Left = 736
    Top = 584
  end
  object dsWorkFlow: TUniDataSource
    DataSet = qryWorkFlow
    Left = 736
    Top = 472
  end
  object dsBranch: TUniDataSource
    DataSet = qryBranch
    Left = 784
    Top = 616
  end
  object dsJurisdiction: TUniDataSource
    DataSet = qryJurisdiction
    Left = 848
    Top = 472
  end
  object dsStatus: TUniDataSource
    DataSet = qryStatus
    Left = 848
    Top = 528
  end
  object dsController: TUniDataSource
    DataSet = qryController
    Left = 600
    Top = 520
  end
  object dsPartner: TUniDataSource
    DataSet = qryPartner
    Left = 591
    Top = 370
  end
  object dsClientPartner: TUniDataSource
    DataSet = qryPartner
    Left = 840
    Top = 80
  end
  object dsClientGender: TUniDataSource
    DataSet = qryClientGender
    Left = 760
    Top = 80
  end
  object qryClientGender: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT code, descr'
      'FROM gender'
      'ORDER BY descr')
    Left = 672
    Top = 80
  end
  object qryClientCount: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 464
    Top = 561
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 668
    Top = 5
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clWindowText
    end
    object cxAltColumn: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxSelection: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
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
    ImageOptions.Images = ilstToolbar
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 573
    Top = 7
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 340
      FloatTop = 263
      FloatClientWidth = 23
      FloatClientHeight = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnClearAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tbtnMerge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbIncludeArchived'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbProspectiveClients'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cbProspectiveOnly'
        end>
      NotDocking = [dsNone]
      OldName = 'toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object tbtnRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh data using current filter'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = tbtnRefreshClick
    end
    object tbtnClearAll: TdxBarButton
      Caption = 'Clear Filter'
      Category = 0
      Hint = 'Clear filter and refresh data'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = tbtnClearAllClick
    end
    object tbtnMerge: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'Create a merge file'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = tbtnMergeClick
    end
    object tbtnPrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = tbtnPrintClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Print'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtnPrint'
        end
        item
          Visible = True
          ItemName = 'btnExp2Excel'
        end
        item
          Visible = True
          ItemName = 'btnPrintGrid'
        end>
    end
    object btnExp2Excel: TdxBarButton
      Caption = 'Export to Excel'
      Category = 0
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = btnExp2ExcelClick
    end
    object btnPrintGrid: TdxBarButton
      Caption = 'Print Grid'
      Category = 0
      Hint = 'Print Grid'
      Visible = ivAlways
      OnClick = btnPrintGridClick
    end
    object cbIncludeArchived: TcxBarEditItem
      Caption = 'Include closed '
      Category = 0
      Hint = 'Include closed '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      OnClick = cxBarEditItem1Click
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object cbProspectiveClients: TcxBarEditItem
      Caption = 'Include Prospective'
      Category = 0
      Hint = 'Include Prospective Clients'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cbProspectiveClientsPropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbProspectiveOnly: TcxBarEditItem
      Caption = 'Prospective Only'
      Category = 0
      Hint = 'Prospective Only'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = cbProspectiveOnlyPropertiesEditValueChanged
      InternalEditValue = False
    end
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink1
    Version = 0
    Left = 824
    Top = 209
    PixelsPerInch = 96
    object ComponentPrinterLink1: TdxGridReportLink
      Component = dbgrClients
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40935.455865081020000000
      ShrinkToPageWidth = True
      TimeFormat = 0
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 59
    Top = 447
  end
  object dsClientReport: TUniDataSource
    DataSet = qryClientReport
    Left = 1033
    Top = 348
  end
  object plClientReport: TppDBPipeline
    DataSource = dsClientReport
    UserName = 'plClientReport'
    Left = 1002
    Top = 273
    object plClientReportppField1: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
    end
    object plClientReportppField2: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plClientReportppField3: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object plClientReportppField4: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object plClientReportppField5: TppField
      FieldAlias = 'GENDER'
      FieldName = 'GENDER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object plClientReportppField6: TppField
      FieldAlias = 'SALUTATION'
      FieldName = 'SALUTATION'
      FieldLength = 40
      DisplayWidth = 40
      Position = 5
    end
    object plClientReportppField7: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 6
    end
    object plClientReportppField8: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object plClientReportppField9: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plClientReportppField10: TppField
      FieldAlias = 'POSTCODE'
      FieldName = 'POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plClientReportppField11: TppField
      FieldAlias = 'WORKPHONE'
      FieldName = 'WORKPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object plClientReportppField12: TppField
      FieldAlias = 'HOMEPHONE'
      FieldName = 'HOMEPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object plClientReportppField13: TppField
      FieldAlias = 'DX'
      FieldName = 'DX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plClientReportppField14: TppField
      FieldAlias = 'DXLOC'
      FieldName = 'DXLOC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object plClientReportppField15: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object plClientReportppField16: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object plClientReportppField17: TppField
      FieldAlias = 'SPARTY'
      FieldName = 'SPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object plClientReportppField18: TppField
      FieldAlias = 'SOLICITOR'
      FieldName = 'SOLICITOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object plClientReportppField19: TppField
      FieldAlias = 'REAL_ESTATE'
      FieldName = 'REAL_ESTATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object plClientReportppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALS'
      FieldName = 'REFERRALS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object plClientReportppField21: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 20
    end
    object plClientReportppField22: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 21
    end
    object plClientReportppField23: TppField
      FieldAlias = 'SHORTNAME'
      FieldName = 'SHORTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
    object plClientReportppField24: TppField
      FieldAlias = 'LONGNAME'
      FieldName = 'LONGNAME'
      FieldLength = 150
      DisplayWidth = 150
      Position = 23
    end
    object plClientReportppField25: TppField
      FieldAlias = 'MOD_DATE'
      FieldName = 'MOD_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object plClientReportppField26: TppField
      FieldAlias = 'MOD_BY'
      FieldName = 'MOD_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object plClientReportppField27: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 26
    end
    object plClientReportppField28: TppField
      FieldAlias = 'COUNTRY'
      FieldName = 'COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 27
    end
    object plClientReportppField29: TppField
      FieldAlias = 'ACN'
      FieldName = 'ACN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 28
    end
    object plClientReportppField30: TppField
      FieldAlias = 'OCCUPATION'
      FieldName = 'OCCUPATION'
      FieldLength = 250
      DisplayWidth = 250
      Position = 29
    end
    object plClientReportppField31: TppField
      FieldAlias = 'DOB'
      FieldName = 'DOB'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 30
    end
    object plClientReportppField32: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 31
    end
    object plClientReportppField33: TppField
      FieldAlias = 'WWW'
      FieldName = 'WWW'
      FieldLength = 60
      DisplayWidth = 60
      Position = 32
    end
    object plClientReportppField34: TppField
      FieldAlias = 'MOBILE'
      FieldName = 'MOBILE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 33
    end
    object plClientReportppField35: TppField
      FieldAlias = 'NNAMEMASTER'
      FieldName = 'NNAMEMASTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 34
    end
    object plClientReportppField36: TppField
      FieldAlias = 'POSTALADDRESS'
      FieldName = 'POSTALADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 35
    end
    object plClientReportppField37: TppField
      FieldAlias = 'POSTALSUBURB'
      FieldName = 'POSTALSUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object plClientReportppField38: TppField
      FieldAlias = 'POSTALSTATE'
      FieldName = 'POSTALSTATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object plClientReportppField39: TppField
      FieldAlias = 'POSTALPOSTCODE'
      FieldName = 'POSTALPOSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object plClientReportppField40: TppField
      FieldAlias = 'POSTALCOUNTRY'
      FieldName = 'POSTALCOUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 39
    end
    object plClientReportppField41: TppField
      FieldAlias = 'WHICHADDRESS'
      FieldName = 'WHICHADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 40
    end
    object plClientReportppField42: TppField
      FieldAlias = 'DEFAULT_REF'
      FieldName = 'DEFAULT_REF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object plClientReportppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDISBS'
      FieldName = 'ANTDISBS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object plClientReportppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDRS'
      FieldName = 'ANTDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object plClientReportppField45: TppField
      FieldAlias = 'GIVENNAMES'
      FieldName = 'GIVENNAMES'
      FieldLength = 60
      DisplayWidth = 60
      Position = 44
    end
    object plClientReportppField46: TppField
      FieldAlias = 'LASTNAME'
      FieldName = 'LASTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 45
    end
    object plClientReportppField47: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 46
    end
    object plClientReportppField48: TppField
      FieldAlias = 'MODIFIED'
      FieldName = 'MODIFIED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 47
    end
    object plClientReportppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSTRYCODE'
      FieldName = 'INDUSTRYCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object plClientReportppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALCODE'
      FieldName = 'REFERRALCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object plClientReportppField51: TppField
      FieldAlias = 'REFERREDBY'
      FieldName = 'REFERREDBY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 50
    end
    object plClientReportppField52: TppField
      FieldAlias = 'REFERRALMAINTAINER'
      FieldName = 'REFERRALMAINTAINER'
      FieldLength = 3
      DisplayWidth = 3
      Position = 51
    end
    object plClientReportppField53: TppField
      FieldAlias = 'MODIFIED_BY'
      FieldName = 'MODIFIED_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object plClientReportppField54: TppField
      FieldAlias = 'CUST_ADDRESS'
      FieldName = 'CUST_ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 53
    end
    object plClientReportppField55: TppField
      FieldAlias = 'CUST_SUBURB'
      FieldName = 'CUST_SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 54
    end
    object plClientReportppField56: TppField
      FieldAlias = 'CUST_STATE'
      FieldName = 'CUST_STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 55
    end
    object plClientReportppField57: TppField
      FieldAlias = 'CUST_POSTCODE'
      FieldName = 'CUST_POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 56
    end
    object plClientReportppField58: TppField
      FieldAlias = 'CUST_COUNTRY'
      FieldName = 'CUST_COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 57
    end
    object plClientReportppField59: TppField
      FieldAlias = 'ABN'
      FieldName = 'ABN'
      FieldLength = 14
      DisplayWidth = 14
      Position = 58
    end
    object plClientReportppField60: TppField
      FieldAlias = 'REFERREDBY_NNAME'
      FieldName = 'REFERREDBY_NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 59
    end
    object plClientReportppField61: TppField
      FieldAlias = 'REFERREDBY_NCLIENT'
      FieldName = 'REFERREDBY_NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 60
    end
    object plClientReportppField62: TppField
      FieldAlias = 'REFERREDBY_EMP'
      FieldName = 'REFERREDBY_EMP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 61
    end
    object plClientReportppField63: TppField
      FieldAlias = 'LAST_STATEMENT_DATE'
      FieldName = 'LAST_STATEMENT_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 62
    end
    object plClientReportppField64: TppField
      FieldAlias = 'REFERRALTYPE'
      FieldName = 'REFERRALTYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
    object plClientReportppField65: TppField
      FieldAlias = 'CLIENTID'
      FieldName = 'CLIENTID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 64
    end
    object plClientReportppField66: TppField
      FieldAlias = 'ARCHIVED'
      FieldName = 'ARCHIVED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object plClientReportppField67: TppField
      FieldAlias = 'ARCHIVED_BY'
      FieldName = 'ARCHIVED_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 66
    end
    object plClientReportppField68: TppField
      FieldAlias = 'ARCHIVED_WHEN'
      FieldName = 'ARCHIVED_WHEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 67
    end
    object plClientReportppField69: TppField
      FieldAlias = 'DUMMY'
      FieldName = 'DUMMY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 68
    end
    object plClientReportppField70: TppField
      FieldAlias = 'FULL_NAME_ADDRESS'
      FieldName = 'FULL_NAME_ADDRESS'
      FieldLength = 1500
      DisplayWidth = 1500
      Position = 69
    end
    object plClientReportppField71: TppField
      FieldAlias = 'DUMMY1'
      FieldName = 'DUMMY1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 70
    end
    object plClientReportppField72: TppField
      FieldAlias = 'EMAIL1'
      FieldName = 'EMAIL1'
      FieldLength = 80
      DisplayWidth = 80
      Position = 71
    end
    object plClientReportppField73: TppField
      FieldAlias = 'EMAIL2'
      FieldName = 'EMAIL2'
      FieldLength = 80
      DisplayWidth = 80
      Position = 72
    end
    object plClientReportppField74: TppField
      FieldAlias = 'WHICHEMAILADDRESS'
      FieldName = 'WHICHEMAILADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object plClientReportppField75: TppField
      FieldAlias = 'CREATED_BY'
      FieldName = 'CREATED_BY'
      FieldLength = 20
      DisplayWidth = 20
      Position = 74
    end
    object plClientReportppField76: TppField
      FieldAlias = 'RELATIONSHIP_TYPE'
      FieldName = 'RELATIONSHIP_TYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 75
    end
    object plClientReportppField77: TppField
      FieldAlias = 'RELATIONSHIP_STATUS'
      FieldName = 'RELATIONSHIP_STATUS'
      FieldLength = 5
      DisplayWidth = 5
      Position = 76
    end
    object plClientReportppField78: TppField
      FieldAlias = 'RELATIONSHIP_ACTION'
      FieldName = 'RELATIONSHIP_ACTION'
      FieldLength = 5
      DisplayWidth = 5
      Position = 77
    end
    object plClientReportppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'FIRM_SIZE'
      FieldName = 'FIRM_SIZE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 78
    end
    object plClientReportppField80: TppField
      FieldAlias = 'SYSTEM1'
      FieldName = 'SYSTEM1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 79
    end
    object plClientReportppField81: TppField
      FieldAlias = 'SYSTEM2'
      FieldName = 'SYSTEM2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 80
    end
    object plClientReportppField82: TppField
      FieldAlias = 'IMPORTED'
      FieldName = 'IMPORTED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 81
    end
    object plClientReportppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'TURNOVER'
      FieldName = 'TURNOVER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 82
    end
    object plClientReportppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'DMS_KEY'
      FieldName = 'DMS_KEY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object plClientReportppField85: TppField
      FieldAlias = 'CHARGE_INTEREST'
      FieldName = 'CHARGE_INTEREST'
      FieldLength = 1
      DisplayWidth = 1
      Position = 84
    end
    object plClientReportppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'INT_RATE_TO_CHG'
      FieldName = 'INT_RATE_TO_CHG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 85
    end
    object plClientReportppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTOR_TERMS'
      FieldName = 'DEBTOR_TERMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 86
    end
    object plClientReportppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTOR_DISCOUNT'
      FieldName = 'DEBTOR_DISCOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 87
    end
    object plClientReportppField89: TppField
      FieldAlias = 'INVITE_TO_EVENTS'
      FieldName = 'INVITE_TO_EVENTS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 88
    end
    object plClientReportppField90: TppField
      FieldAlias = 'SEND_NEWSLETTER'
      FieldName = 'SEND_NEWSLETTER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 89
    end
    object plClientReportppField91: TppField
      FieldAlias = 'SEND_MAIL'
      FieldName = 'SEND_MAIL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 90
    end
    object plClientReportppField92: TppField
      FieldAlias = 'TAXNO'
      FieldName = 'TAXNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 91
    end
    object plClientReportppField93: TppField
      FieldAlias = 'IS_CLIENT'
      FieldName = 'IS_CLIENT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 92
    end
    object plClientReportppField94: TppField
      FieldAlias = 'IS_CREDITOR'
      FieldName = 'IS_CREDITOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 93
    end
    object plClientReportppField95: TppField
      FieldAlias = 'NCREDITOR'
      FieldName = 'NCREDITOR'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 94
    end
    object plClientReportppField96: TppField
      FieldAlias = 'CREDITORID'
      FieldName = 'CREDITORID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object plClientReportppField97: TppField
      FieldAlias = 'DIRECTPHONE'
      FieldName = 'DIRECTPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 96
    end
    object plClientReportppField98: TppField
      FieldAlias = 'IMPORT_NOTE'
      FieldName = 'IMPORT_NOTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 97
    end
    object plClientReportppField99: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 98
    end
    object plClientReportppField100: TppField
      FieldAlias = 'FULL_ADDRESS'
      FieldName = 'FULL_ADDRESS'
      FieldLength = 1500
      DisplayWidth = 1500
      Position = 99
    end
    object plClientReportppField101: TppField
      FieldAlias = 'DX_FULL_ADDRESS'
      FieldName = 'DX_FULL_ADDRESS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 100
    end
    object plClientReportppField102: TppField
      FieldAlias = 'SUBURB_ONLY_ADDRESS'
      FieldName = 'SUBURB_ONLY_ADDRESS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 101
    end
    object plClientReportppField103: TppField
      FieldAlias = 'CLIENT_IMAGE'
      FieldName = 'CLIENT_IMAGE'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 102
      Searchable = False
      Sortable = False
    end
    object plClientReportppField104: TppField
      FieldAlias = 'CLIENTTITLE'
      FieldName = 'CLIENTTITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 103
    end
    object plClientReportppField105: TppField
      FieldAlias = 'CLIENTNAME'
      FieldName = 'CLIENTNAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 104
    end
    object plClientReportppField106: TppField
      FieldAlias = 'DATE_OF_DEATH'
      FieldName = 'DATE_OF_DEATH'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 105
    end
    object plClientReportppField107: TppField
      FieldAlias = 'CONTACT'
      FieldName = 'CONTACT'
      FieldLength = 60
      DisplayWidth = 60
      Position = 106
    end
    object plClientReportppField108: TppField
      FieldAlias = 'CONTACT_NAME'
      FieldName = 'CONTACT_NAME'
      FieldLength = 400
      DisplayWidth = 400
      Position = 107
    end
    object plClientReportppField109: TppField
      FieldAlias = 'ADDITIONAL_CONTACT_NAME'
      FieldName = 'ADDITIONAL_CONTACT_NAME'
      FieldLength = 400
      DisplayWidth = 400
      Position = 108
    end
    object plClientReportppField110: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTORSTATUS'
      FieldName = 'DEBTORSTATUS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 109
    end
  end
  object rptClient: TppReport
    AutoStop = False
    DataPipeline = plClientReport
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
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 209900
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rptClientBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1063
    Top = 272
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'plClientReport'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 529
        mmWidth = 35983
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
        mmHeight = 3969
        mmLeft = 183886
        mmTop = 529
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Client Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 85265
        mmTop = 6085
        mmWidth = 26585
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 28840
        mmWidth = 197200
        BandType = 0
        LayerName = Foreground
      end
      object lblEntity: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblEntity'
        Border.mmPadding = 0
        Caption = 'lblEntity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 90263
        mmTop = 1588
        mmWidth = 16595
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Search'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 275
        mmTop = 16669
        mmWidth = 10626
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 4149
        mmTop = 21167
        mmWidth = 8678
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 3810
        mmTop = 25400
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 64601
        mmTop = 16669
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Suburb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 128694
        mmTop = 16669
        mmWidth = 11134
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'State'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 133975
        mmTop = 21167
        mmWidth = 7789
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Postcode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 133636
        mmTop = 25665
        mmWidth = 14351
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Phone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 186288
        mmTop = 16669
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 190511
        mmTop = 21167
        mmWidth = 5503
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'e-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 186902
        mmTop = 25665
        mmWidth = 9059
        BandType = 0
        LayerName = Foreground
      end
      object lblSelection: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblSelection'
        Border.mmPadding = 0
        Caption = 'lblSelection'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 90021
        mmTop = 11377
        mmWidth = 17865
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'SEARCH'
        DataPipeline = plClientReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 3768
        mmLeft = 529
        mmTop = 1058
        mmWidth = 61383
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ADDRESS'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 4233
        mmLeft = 65088
        mmTop = 529
        mmWidth = 62442
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'SUBURB'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 794
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'WORKPHONE'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 3768
        mmLeft = 173832
        mmTop = 1058
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'FAX'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 3768
        mmLeft = 176742
        mmTop = 5821
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 5821
        mmWidth = 65881
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'TITLE'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 11377
        mmWidth = 85725
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'STATE'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 4233
        mmLeft = 134409
        mmTop = 5821
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'POSTCODE'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 11377
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'EMAIL'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClientReport'
        mmHeight = 3768
        mmLeft = 162454
        mmTop = 11642
        mmWidth = 33602
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 16933
        mmWidth = 197200
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'SEARCH'
        DataPipeline = plClientReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plClientReport'
        mmHeight = 3704
        mmLeft = 61648
        mmTop = 265
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Total Number of Clients Printed:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 22490
        mmTop = 265
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground
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
end
