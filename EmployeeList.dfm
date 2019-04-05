object frmEmployeeList: TfrmEmployeeList
  Left = 78
  Top = 49
  Caption = 'Employee Listing'
  ClientHeight = 695
  ClientWidth = 1295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pagEmployeeListing: TcxPageControl
    Left = 0
    Top = 28
    Width = 1295
    Height = 667
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabFilter
    Properties.CustomButtons.Buttons = <>
    OnChange = pagEmployeeListingChange
    ClientRectBottom = 663
    ClientRectLeft = 4
    ClientRectRight = 1291
    ClientRectTop = 26
    object tabEmployeeList: TcxTabSheet
      Caption = 'Employee List'
      ImageIndex = 0
      object grdEmployees: TcxGrid
        Left = 0
        Top = 0
        Width = 1287
        Height = 637
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvEmployees: TcxGridDBTableView
          PopupMenu = dxBarPopupMenu1
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvEmployeesCellDblClick
          DataController.DataSource = dsEmployeeList
          DataController.KeyFieldNames = 'CODE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODE'
              Column = tvEmployeesNAME
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = tvEmployeesNAME
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.Header = dmAxiom.UnreadStyle
          object tvEmployeesACTIVE: TcxGridDBColumn
            Caption = 'Active'
            DataBinding.FieldName = 'ACTIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 43
          end
          object tvEmployeesCODE: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CODE'
            Options.Editing = False
            Options.Focusing = False
            Width = 38
          end
          object tvEmployeesNAME: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'NAME'
            Options.Editing = False
            Styles.Content = dmAxiom.UnreadStyle
            Width = 152
          end
          object tvEmployeesISFEEEARNER: TcxGridDBColumn
            Caption = 'Fee Earner'
            DataBinding.FieldName = 'ISFEEEARNER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 58
          end
          object tvEmployeesPAYROLL_NUMBER: TcxGridDBColumn
            Caption = 'Payroll Number'
            DataBinding.FieldName = 'PAYROLL_NUMBER'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesISTIME_RECORDER: TcxGridDBColumn
            Caption = 'Time Record'
            DataBinding.FieldName = 'ISTIME_RECORDER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'Y'
            Properties.DisplayUnchecked = 'N'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 56
          end
          object tvEmployeesPHONE: TcxGridDBColumn
            Caption = 'Phone'
            DataBinding.FieldName = 'PHONE'
            Options.Editing = False
            Options.Focusing = False
            Width = 95
          end
          object tvEmployeesTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            Options.Editing = False
            Options.Focusing = False
            Width = 40
          end
          object tvEmployeesACCESSLEVEL: TcxGridDBColumn
            Caption = 'Reporting Access Level'
            DataBinding.FieldName = 'ACCESSLEVEL'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesDEPT: TcxGridDBColumn
            Caption = 'Department'
            DataBinding.FieldName = 'DEPT'
            Options.Editing = False
            Options.Focusing = False
            Width = 74
          end
          object tvEmployeesISPARTNER: TcxGridDBColumn
            Caption = 'Partner'
            DataBinding.FieldName = 'ISPARTNER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 49
          end
          object tvEmployeesISAUTHOR: TcxGridDBColumn
            Caption = 'Author'
            DataBinding.FieldName = 'ISAUTHOR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 45
          end
          object tvEmployeesISCONTROLLER: TcxGridDBColumn
            Caption = 'Controller'
            DataBinding.FieldName = 'ISCONTROLLER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 70
          end
          object tvEmployeesISOPERATOR: TcxGridDBColumn
            Caption = 'Operator'
            DataBinding.FieldName = 'ISOPERATOR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 59
          end
          object tvEmployeesISPARALEGAL: TcxGridDBColumn
            Caption = 'Paralegal'
            DataBinding.FieldName = 'ISPARALEGAL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 64
          end
          object tvEmployeesBIRTHDATE: TcxGridDBColumn
            Caption = 'Birth Date'
            DataBinding.FieldName = 'BIRTHDATE'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesDEFAULT_ENTITY: TcxGridDBColumn
            Caption = 'Default Entity'
            DataBinding.FieldName = 'ENTITY_NAME'
            Options.Editing = False
            Options.Focusing = False
            Width = 121
          end
          object tvEmployeesBRANCH: TcxGridDBColumn
            Caption = 'Branch'
            DataBinding.FieldName = 'BRANCH'
            Options.Editing = False
            Options.Focusing = False
            Width = 47
          end
          object tvEmployeesRATE: TcxGridDBColumn
            Caption = 'Rate'
            DataBinding.FieldName = 'RATE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesCOST_PER_HOUR: TcxGridDBColumn
            Caption = 'Hourly Cost'
            DataBinding.FieldName = 'COST_PER_HOUR'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesEMAIL: TcxGridDBColumn
            Caption = 'eMail'
            DataBinding.FieldName = 'EMAIL'
            Options.Editing = False
            Options.Focusing = False
            Width = 173
          end
          object tvEmployeesSEX: TcxGridDBColumn
            Caption = 'Gender'
            DataBinding.FieldName = 'SEX'
            Options.Editing = False
            Options.Focusing = False
            Width = 48
          end
          object tvEmployeesSIGNATORY: TcxGridDBColumn
            Caption = 'Signatory'
            DataBinding.FieldName = 'SIGNATORY'
            Options.Editing = False
            Options.Focusing = False
            Width = 129
          end
          object tvEmployeesUSER_NAME: TcxGridDBColumn
            Caption = 'Login Name'
            DataBinding.FieldName = 'USER_NAME'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesEMP_LEVEL: TcxGridDBColumn
            Caption = 'Employee Level'
            DataBinding.FieldName = 'EMP_LEVEL'
          end
          object tvEmployeesPOSITION: TcxGridDBColumn
            Caption = 'Position'
            DataBinding.FieldName = 'POSITION'
            Options.Editing = False
            Options.Focusing = False
            Width = 112
          end
          object tvEmployeesIMAGE: TcxGridDBColumn
            Caption = 'Image'
            DataBinding.FieldName = 'IMAGE'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Options.Editing = False
            Options.Focusing = False
            Width = 228
          end
          object tvEmployeesSTART_DATE: TcxGridDBColumn
            Caption = 'Date Joined'
            DataBinding.FieldName = 'START_DATE'
            Options.Editing = False
            Options.Focusing = False
            Width = 82
          end
          object tvEmployeesEND_DATE: TcxGridDBColumn
            Caption = 'Date Finished'
            DataBinding.FieldName = 'END_DATE'
            Options.Editing = False
            Options.Focusing = False
            Width = 89
          end
          object tvEmployeesFEE_ENQUIRY_ACCESS: TcxGridDBColumn
            Caption = 'Fee Enquiry Acces'
            DataBinding.FieldName = 'FEE_ENQUIRY_ACCESS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Focusing = False
            Width = 55
          end
          object tvEmployeesALLOW_TRUST_OD: TcxGridDBColumn
            Caption = 'Allow Trust O/D'
            DataBinding.FieldName = 'ALLOW_TRUST_OD'
            Options.Editing = False
            Options.Focusing = False
            Width = 48
          end
          object tvEmployeesDAILY_TARGET_CHARGE_UNITS: TcxGridDBColumn
            Caption = 'Target Charge Units - Daily'
            DataBinding.FieldName = 'DAILY_TARGET_CHARGE_UNITS'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesTARGET_DAILY_OH_UNITS: TcxGridDBColumn
            Caption = 'Target OH Units - Daily'
            DataBinding.FieldName = 'TARGET_DAILY_OH_UNITS'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesTARGET_DAILY_NONBILLABLE_UNITS: TcxGridDBColumn
            Caption = 'Target Non Billable Units - Daily'
            DataBinding.FieldName = 'TARGET_DAILY_NONBILLABLE_UNITS'
            Options.Editing = False
            Options.Focusing = False
          end
          object tvEmployeesNFEE_AUTHORITY: TcxGridDBColumn
            Caption = 'Fee Authority'
            DataBinding.FieldName = 'NFEE_AUTHORITY'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'NFEE_AUTHORITY'
            Properties.ListColumns = <
              item
                FieldName = 'DESCR'
              end>
            Properties.ListSource = dsFeeAuthority
            Options.Editing = False
            Options.Focusing = False
          end
        end
        object cvEmployees: TcxGridDBCardView
          PopupMenu = dxBarPopupMenu1
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvEmployeesCellDblClick
          DataController.DataSource = dsEmployeeList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellEndEllipsis = True
          OptionsView.CardIndent = 7
          OptionsView.CardWidth = 340
          OptionsView.CellAutoHeight = True
          OptionsView.RowCaptionAutoHeight = True
          OptionsView.RowCaptionEndEllipsis = True
          Styles.Background = cxStyle4
          Styles.Content = cxStyle4
          Styles.CaptionRow = cxStyle1
          Styles.CardBorder = cxStyle5
          Styles.RowCaption = cxStyle1
          object cvEmployeesACTIVE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ACTIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Position.BeginsLayer = True
          end
          object cvEmployeesCODE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
            Styles.Content = cxStyle3
          end
          object cvEmployeesNAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISFEEEARNER: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISFEEEARNER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISTIME_RECORDER: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISTIME_RECORDER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesPHONE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PHONE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesTYPE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TYPE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesACCESSLEVEL: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ACCESSLEVEL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesFEE_CHART: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FEE_CHART'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesFEEWOFF_CHART: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FEEWOFF_CHART'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesDISBWOFF_CHART: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DISBWOFF_CHART'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesDEPT: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DEPT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISAUTHOR: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISAUTHOR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISPARTNER: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISPARTNER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISCONTROLLER: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISCONTROLLER'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISOPERATOR: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISOPERATOR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesISPARALEGAL: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ISPARALEGAL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesBIRTHDATE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BIRTHDATE'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesBRANCH: TcxGridDBCardViewRow
            DataBinding.FieldName = 'BRANCH'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesDEFAULT_ENTITY: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DEFAULT_ENTITY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesRATE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'RATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesCOST_PER_HOUR: TcxGridDBCardViewRow
            DataBinding.FieldName = 'COST_PER_HOUR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesEMAIL: TcxGridDBCardViewRow
            DataBinding.FieldName = 'EMAIL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesSEX: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SEX'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesSIGNATORY: TcxGridDBCardViewRow
            DataBinding.FieldName = 'SIGNATORY'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesUSER_NAME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'USER_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesPOSITION: TcxGridDBCardViewRow
            DataBinding.FieldName = 'POSITION'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesSTART_DATE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'START_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesEND_DATE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'END_DATE'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesFEE_ENQUIRY_ACCESS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FEE_ENQUIRY_ACCESS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesALLOW_TRUST_OD: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ALLOW_TRUST_OD'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesTARGET_DAILY_CHARGE_UNITS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TARGET_DAILY_CHARGE_UNITS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesTARGET_DAILY_OH_UNITS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TARGET_DAILY_OH_UNITS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesTARGET_DAILY_NONBILLABLE_UNITS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TARGET_DAILY_NONBILLABLE_UNITS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesDAILY_TARGET_CHARGE_UNITS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DAILY_TARGET_CHARGE_UNITS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Position.BeginsLayer = True
          end
          object cvEmployeesIMAGE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'IMAGE'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TdxSmartImage'
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.ShowCaption = False
            Position.BeginsLayer = True
          end
        end
        object lvEmployees: TcxGridLevel
          GridView = tvEmployees
        end
      end
    end
    object tabFilter: TcxTabSheet
      Caption = 'Filter'
      ImageIndex = 1
      object cmbEntity: TcxLookupComboBox
        Left = 108
        Top = 29
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsEntity
        TabOrder = 0
        Width = 255
      end
      object cxLabel2: TcxLabel
        Left = 17
        Top = 57
        Caption = 'Branch'
        Transparent = True
      end
      object cmbBranch: TcxLookupComboBox
        Left = 108
        Top = 56
        Properties.KeyFieldNames = 'ENTITY'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsBranch
        TabOrder = 2
        Width = 255
      end
      object cxLabel3: TcxLabel
        Left = 17
        Top = 85
        Caption = 'Type'
        Transparent = True
      end
      object cmbEmpType: TcxLookupComboBox
        Left = 108
        Top = 84
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsEmpType
        TabOrder = 4
        Width = 255
      end
      object cxLabel4: TcxLabel
        Left = 17
        Top = 112
        Caption = 'Department'
        Transparent = True
      end
      object cmbEmpDept: TcxLookupComboBox
        Left = 108
        Top = 111
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsEmpDept
        TabOrder = 6
        Width = 255
      end
      object cxLabel1: TcxLabel
        Left = 17
        Top = 30
        Caption = 'Entity'
        Transparent = True
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'popupmenu'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = ilstToolbar
    LookAndFeel.Kind = lfOffice11
    PopupMenuLinks = <>
    Style = bmsXP
    UseSystemFont = False
    Left = 407
    Top = 61
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
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnReport'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'cxBarEditItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone]
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Export to Excel'
      Category = 0
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Unlock User'
      Category = 0
      Hint = 'Unlock User'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Reset Password'
      Category = 0
      Hint = 'Reset Password'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton5Click
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Close'
      Category = 1
      Hint = 'Close'
      Visible = ivAlways
      ImageIndex = 24
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object btnReport: TdxBarButton
      Action = actListing
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object btnEdit: TdxBarButton
      Action = actEditUser
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object btnAdd: TdxBarButton
      Caption = 'Create User'
      Category = 1
      Hint = 'Create New Insight User'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btnAddClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Active Only'
      Category = 1
      Hint = 'Active Only'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = actRefresh
      Category = 1
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'ViewDisplay'
      Category = 1
      Hint = 'ViewDisplay'
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Action = actActive
      Category = 1
      OnChange = cxBarEditItem2Change
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = True
    end
    object cxBarEditItem3: TcxBarEditItem
      Action = actDisplayMode
      Category = 1
      OnCurChange = cxBarEditItem3CurChange
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
    object dxBarButton6: TdxBarButton
      Action = actExportToExcel
      Category = 1
      PaintStyle = psCaptionGlyph
    end
  end
  object qryEmployeeList: TUniQuery
    UpdatingTable = 'employee'
    KeyFields = 'code'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select e.*, et.name as entity_name, e.rowid  '
      'from employee e'
      'left outer join entity et on e.entity = et.code'
      'where 1=1')
    Left = 180
    Top = 161
  end
  object dsEmployeeList: TUniDataSource
    DataSet = qryEmployeeList
    Left = 177
    Top = 215
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter (8.5 x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
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
    PDFSettings.Title = 'Employee Listing'
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
    Left = 726
    Top = 126
    Version = '19.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        Shape = stRoundRect
        mmHeight = 10583
        mmLeft = 0
        mmTop = 2646
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Employee List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 18
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7408
        mmLeft = 75142
        mmTop = 4233
        mmWidth = 49477
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 16404
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Color = clSilver
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 50536
        mmLeft = 0
        mmTop = 529
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
      end
      object ppDBImage1: TppDBImage
        DesignLayer = ppDesignLayer1
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        DataField = 'IMAGE'
        DataPipeline = ppDBPipeline1
        GraphicType = 'JPEG'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 47625
        mmLeft = 141552
        mmTop = 1588
        mmWidth = 53975
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 5027
        mmTop = 8467
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NAME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 8467
        mmWidth = 106892
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Code:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 5027
        mmTop = 3440
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 3440
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Dept:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 5027
        mmTop = 13494
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'DEPT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 13494
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Active:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 5027
        mmTop = 18521
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ACTIVE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 18521
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Start Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 23548
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'START_DATE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 23548
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'End Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 5027
        mmTop = 28575
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'END_DATE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 28575
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Partner:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 5027
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Author:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 29633
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Conroller:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 54240
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Operator:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 79111
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox1: TmyDBCheckBox
        DesignLayer = ppDesignLayer1
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'N'
        BooleanTrue = 'Y'
        DataPipeline = ppDBPipeline1
        DataField = 'ISPARTNER'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 22490
        mmTop = 32808
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox2: TmyDBCheckBox
        DesignLayer = ppDesignLayer1
        UserName = 'DBCheckBox2'
        CheckBoxColor = clWindowText
        BooleanFalse = 'N'
        BooleanTrue = 'Y'
        DataPipeline = ppDBPipeline1
        DataField = 'ISAUTHOR'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 47625
        mmTop = 32808
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox3: TmyDBCheckBox
        DesignLayer = ppDesignLayer1
        UserName = 'DBCheckBox3'
        CheckBoxColor = clWindowText
        BooleanFalse = 'N'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'ISCONTROLLER'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 72231
        mmTop = 32808
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox4: TmyDBCheckBox
        DesignLayer = ppDesignLayer1
        UserName = 'DBCheckBox4'
        CheckBoxColor = clWindowText
        BooleanFalse = 'N'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'ISOPERATOR'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 97102
        mmTop = 32808
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 529
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 3440
        mmTop = 1588
        mmWidth = 44450
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 180446
        mmTop = 1588
        mmWidth = 12700
        BandType = 8
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsEmployeeListPrint
    UserName = 'DBPipeline1'
    Left = 619
    Top = 77
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 519
    Top = 232
    PixelsPerInch = 96
  end
  object ilstToolbar: TImageList
    Left = 895
    Top = 92
    Bitmap = {
      494C010121002500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000B2B2B200B2B2B200A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399330033663300969696000000
      000000000000000000000000000000000000F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F8F8F8000000000000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003366330099CC9900C0DCC0000000
      0000000000000000000000000000F0FBFF00F0FBFF0099CC9900006633000066
      3300F1F1F1000000000000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0C0C000969696000000
      000099CC990066CC990066CC660066CC66006699660000663300006633006699
      66006699660099CC990000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0DCC000336633000000
      000000000000C0DCC00066CC660066CC66003366330000663300669966006699
      6600669966006699660000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0DCC000336633000000
      00000000000000000000E3E3E300339966000066330033663300C0DCC0000000
      0000F0FBFF00F0FBFF0000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0DCC000336633000000
      00000000000000000000C0DCC00000663300006633006699660066CC660099CC
      9900F8F8F8000000000000000000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033663300C0DCC000336633000000
      000000000000F1F1F100006633000066330090A9AD00EAEAEA0066CC660066CC
      660099CC9900F1F1F10000000000B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033993300D7D7D700669966000000
      00000000000033996600339933006699660000000000000000000000000066CC
      660066CC660099CC990000000000B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033993300D7D7D70099CC99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033993300C0DCC00099CC99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006699660099CC9900EAEAEA0099CC
      990099CC990099CC990099CC990099CC990099CC990099CC990099CC990099CC
      9900F1F1F1003399330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033993300C0DCC000F1F1
      F100C0DCC00099CC990099CC990099CC990099CC990099CC990099CC990099CC
      9900F1F1F1003399330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399330099CC
      9900DDDDDD00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F1006699330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000066CC
      6600339933003399330033993300339933003399330033993300339933003399
      3300339933006699330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000666666006666
      6600666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000FF000000000000000000000000000000FF00000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B00000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060006666660066666600666666003399
      CC00666699005555550077777700666666000000000000000000000000000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      00000000FF00000000000000FF00000000000000FF00000000000000FF000000
      00000000FF00000000000000FF0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF00CC66330099663300993333003399
      CC003399FF006666990066333300777777006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000FF000000000000000000000000000000
      FF000000000000000000000000000000FF000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B00000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      000000000000000000008060600080808000CC663300CC663300CC6633009966
      33006699CC003399FF00666699005F5F5F006666660066666600666666006666
      6600666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A000406060008080800080808000CC663300FF663300FF666600FF66
      6600996633006699CC003399FF0066669900663333005F5F5F00996666009966
      6600666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B00000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A0008060600000000000CC663300FF666600FF66
      6600CC996600996666006699990099999900CC999900F0CAA600FFFFCC00FFFF
      CC00F0CAA6005555550066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C000806060000000000000000000CC6633005555
      550033336600333366004D4D4D00CC999900FFECCC00FFFFCC00FFFFCC00F8F8
      F80000000000FFECCC004D4D4D00666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C00080606000000000000000000042424200161616000000
      3300003399000033990055555500F0CAA600FFECCC00FFECCC00FFFFCC00F8F8
      F800F8F8F800F8F8F80080808000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      8000806060008060600000000000000000004D4D4D001C1C1C001C1C1C003333
      CC003333CC000033990066666600FFECCC00F0CAA600FFECCC00FFFFCC00F1F1
      F100F1F1F100FFFFCC00CC999900666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00000000007B7B7B0000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000001C1C1C0022222200003366003366
      CC003366CC003366CC0066666600FFECCC00FFECCC00FFECCC00FFECCC00FFFF
      CC00FFFFCC00FFFFCC0099996600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000002222220029292900333333003399
      FF003399FF003399FF0033669900CC99990000000000F1F1F100F0CAA600FFEC
      CC00FFECCC00FFECCC004D4D4D00666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000004242420039393900393939000033
      99003399FF003399FF003399FF0033336600F0CAA600F1F1F100FFECCC00FFEC
      CC00FFECCC006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      00000000000000000000000000000000000066666600393939004D4D4D006666
      6600666666000033660033336600000033006666660066666600CC9999009696
      9600555555006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      000000000000000000000000000000000000000000004D4D4D00555555008686
      8600999999009999990055555500777777000000000055555500555555005555
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666006666
      6600666666005555550066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600B2B2B200929292008D8D8D009B9B9B00C7C7C700F9F9
      F9000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000007070
      7000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0091919F002B2B6B0005056300000065000000600000004F0016163D006262
      6200D4D4D400000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      0000333B3300A5A5A50073737300666666006666660073737300CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800042424200996633000000
      0000000000000000000000000000000000000000000000000000F4F4F4006060
      90000000840000008E0000008E0000008F0000008C0000008800000081000101
      540034343C00C2C2C2000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD000000FF000000FF000000FF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      000000600000337733000073000000990000007C0000004D0000333B33008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5F003939390099663300CC99
      66000000000000000000000000000000000000000000FDFDFD005A5A9A000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      88000000620036363E00D6D6D60000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000007C0000333B
      3300A5A5A5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006666330099663300CC66
      3300CC996600000000000000000000000000000000008F8FB7000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C00010152007171710000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000109F100040B2400020A52000009900000073
      000040404000F2F2F20000000000000000006666660066666600666666006666
      660066666600666666006666660066666600000000000000000099663300CC66
      3300CC996600CC9966000000000000000000DDDDEF002828AB000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287002E2E450000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      00000099000000990000008F00003E3E3E00DFDFDF00000000009FD89F00109F
      100033593300B2B2B20000000000000000006666660039393900393939003366
      330066663300666633006666330099663300CC99660000000000000000006666
      3300CC663300CC99660000000000000000009797E5000606B0000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00012135D0000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000099
      000000990000009900000099000000560000454545000000000000000000BFE5
      BF00006900007373730000000000000000006666660039393900666633009966
      3300CC663300CC996600CC999900CC9999000000000000000000000000000000
      000099663300CC996600CC996600000000005859D0000808BB000707C8000505
      D1000000C8005353B600F2F2ED00FFFFFF00FFFFFC007575C9000000BE000101
      C3000303B8000303AC000F0F6E0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000B2B2B200000000000099
      0000009900000099000000990000009900000099000030303000000000000000
      000060BF6000666D66000000000000000000666666003939390099663300CC66
      3300CC9966007777770000000000000000000000000000000000000000000000
      000042424200CC993300CC996600000000004B4BD2000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED00FFFFFF00FFFFFD005858DB000000CA000303
      CB000606C5000606B8001111780000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBD
      BD000000000000000000000000000000000000000000334A3300B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF00A5C3A5000000000000000000666666003939390099663300CC99
      3300CC996600CC99660077777700000000000000000000000000000000000000
      00004D4D4D00CC663300CC996600000000007272E6001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000001078100040404000F2F2
      F20000000000000000003789370013631300114B110011431100113411002435
      2400000000000000000000000000000000006666660039393900CC663300CC99
      3300CC993300CC663300CC663300777777000000000000000000000000007777
      770042424200CC663300CC99660000000000BBBBF7002525E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA004F4F850000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000060BF6000004300005959
      5900E5E5E50000000000E5F4E500109F10000099000000990000009900001847
      1800000000000000000000000000000000006666660039393900CC9966000000
      0000CC663300CC663300CC663300996633009966330077777700666666004D4D
      4D0066663300CC996600CC99660000000000F3F3FD005E5EF1003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100B6B6B90000000000000000000000000000000000BDBD
      BD00000000000000000000000000FFFF000000000000FFFF000000000000BDBD
      BD000000000000000000000000000000000000000000BFE5BF0000990000004D
      0000404040008080800099999900105210000099000000990000009900001545
      1500000000000000000000000000000000006666660033663300CC9999000000
      000000000000CC663300CC663300CC663300CC66330099663300666633006666
      3300CC663300CC996600000000000000000000000000D6D6FC003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9007E7EA7000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000000000000000000050B950000099
      000000860000004D000000560000008F00000099000000990000009900001444
      1400000000000000000000000000000000006666660066663300F0CAA6000000
      0000000000000000000000000000CC663300CC663300CC663300CC663300CC99
      6600CC9966000000000000000000000000000000000000000000C2C2FC004848
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003030
      FB007C7CB400FEFEFE000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000EFF8EF0030AC
      3000009900000099000000990000009900000099000000990000009900001645
      16000000000000000000000000000000000000000000CC999900F0CAA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      FE006D6DFC006868FE008787FF009292FF007676FF005353FF005151F200A6A6
      CD0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0000000000000000000000000000000000000000000000000000000000EFF8
      EF0060BF600000990000009900000099000030AC30007FCB7F00009900001947
      1900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2FE00BDBEFD008889FC007F7FFE007F7FFC00AAAAFD00E1E1F8000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F003D74
      3D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C600000000000000000000000000DADA
      DA001C1C1C000000000010101000FFFFFF00FFFFFF0008080800000000001C1C
      1C00DADADA000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF008484840084848400C9C9C9002B2B2B0099999900FFFF
      FF00D5D5D500171717000000000033333300434343000202020017171700D5D5
      D500FFFFFF00999999002C2C2C00C9C9C9000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000003E3E3E000D0D0D00262626003232
      32003B3B3B0008080800BCBCBC00C4C4C400B9B9B90006060600070707003B3B
      3B00323232002F2F2F000E0E0E003E3E3E00FFFFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FF000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF008400000000000000000000000000000000000000A1A1A100D0D0D000CDCD
      CD00CCCCCC0019191900EDEDED00FFFFFF00FAFAFA000101010015151500CCCC
      CC00CDCDCD00D1D1D100A1A1A10000000000FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF0000000000FF000000FF000000FF000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000021212100E2E2E200FFFF
      FF00FFFFFF001F1F1F00E1E1E100FFFFFF00EFEFEF00000000001A1A1A00FFFF
      FF00FFFFFF00E2E2E2002121210000000000FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF000000FF00
      0000848484000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000E4E4E4003C3C3C0012121200D9D9
      D900FFFFFF001F1F1F00E1E1E100FFFFFF00EFEFEF000000000019191900FFFF
      FF00D9D9D900121212003C3C3C00E4E4E400FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000848484008484
      84000000FF000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000000000000000000000000000FFFFFF0046464600000000001313
      1300DADADA0026262600E1E1E100FFFFFF00EFEFEF000000000020202000DCDC
      DC00131313000000000046464600FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000848484000000FF000000
      FF000000FF000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000FFFFFF0043434300C1C1C1002C2C
      2C000D0D0D0005050500E9E9E900FFFFFF00EFEFEF0007070700020202000D0D
      0D002C2C2C00C1C1C10043434300FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF000000848484000000
      FF000000FF000000FF000000FF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000084000000000000000000000000000000FFFFFF0043434300D2D2D2003636
      36000F0F0F0004040400E9E9E900FFFFFF00EFEFEF0007070700030303000F0F
      0F0036363600D2D2D20043434300FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FF000000FF000000FF0000008484
      84000000FF008484840084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000FFFFFF0043434300CDCDCD003434
      3400D9D9D90028282800E2E2E200FFFFFF00EFEFEF000707070025252500D9D9
      D90034343400CDCDCD0043434300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000FF000000FF000000FF000000FF0000008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000FFFFFF0043434300CDCDCD003434
      3400E2E2E2002A2A2A00E2E2E200FFFFFF00EFEFEF000707070027272700E2E2
      E20034343400CDCDCD0043434300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400FF000000FF000000FF000000FF000000FF000000FF0000008484
      84000000FF0084848400FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003B3B3B00D4D4D4003434
      3400DEDEDE0020202000EAEAEA00FFFFFF00EFEFEF00070707001D1D1D00DEDE
      DE0034343400D4D4D4003B3B3B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FF000000FF000000FF000000FF000000848484000000
      FF000000FF000000FF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0062626200A9A9A9004949
      4900E5E5E5004B4B4B00C3C3C300FCFCFC00EFEFEF000B0B0B0049494900E5E5
      E50049494900A9A9A90062626200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484008484840084848400848484000000FF000000
      FF000000FF000000FF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0051515100DCDC
      DC00FFFFFF00FFFFFF000B0B0B00F9F9F900FAFAFA0013131300FFFFFF00FFFF
      FF00DCDCDC0051515100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000FF000000FF000000FF000000
      FF000000FF000000FF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE0057575700B3B3B300B3B3B30057575700FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000FF000000FF000000
      FF000000FF0084848400FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000D0D0D000D0D0D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000084000000
      84000000FF000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000008400000084000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000840000008400000000000000000000008400000084000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000840000008400000084000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084000000FF000000FF000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000FF0000000000000000000000FF0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      84000000FF00000000000000000000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000084000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B7B00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000000084000000FF000000FF
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000FF0000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000FFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000000000000008400848484008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000084840000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000084840000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000007B7B7B000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400000084008484
      8400848484000000840000008400848484008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000084840000FFFF0000FFFF00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400000084008484
      8400848484000000840000008400848484008484840000008400000084008484
      8400848484000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B0000FFFF000000
      0000000000000084840000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000084848400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      8400000084000000840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00008484000084840000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF00000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00E000000000000000DFFE000000000000
      1F060000000000001E0600000000000010020000000000001802000000000000
      1C120000000000001C06000000000000180200000000000018E2000000000000
      1FFE0000000000001FFE00000000000000030000000000008003000000000000
      C003000000000000E003000000000000FFFFFC1FF03FC7FFFFFFF007E00781FF
      BBBBE003C00000FF5555C0018000007FEEEEC001000000073C81C00100000003
      3C9CC00100008001009CC0018000C008999CE003E0018000999CFFC7F0030000
      C38CF1C7F01F0000C391F1C7E03F0080E79FF1C7E03F0001E79FF007C03F0003
      FF9FF80FC07F808FFFFFFC1FF8FFC1FFF80FC007E7FFFFFFE007C007E01FFF1F
      C003C007E00FFF0F8001C007E007FF878001C007E00300C30001C007E0430063
      0001C007E06300F10001C007A03303F10001C0079FF301F10001C0078C0F00E1
      0001C007840F10010001C007800F18038003C007C00F1E07C003C007C00F9FFF
      E00FC007E00FFFFFF01FC007FFCFFFFFFFFF0000E4278040FFFF000002008040
      FFFF000000006180FFFFE00780011200F3E7E00780412100F1C7E00700404080
      F88FE00720444080FC1FE00700004080FE3FE00700002100FC1FE00700001E00
      F88FE00700000000F1C7FFFF00000000F3E7F81F00000000FFFFF81F00000000
      FFFFF81F00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFE7E7FC7FFFFFF1FF
      E1E7FC7FFFFFE0FFE067E00FE007C47FE007E00FE007CE3FE067E00FE007FF1F
      E1E7FC7FFFFFFF8FE7E7FC7FFFFFFFC7FFFFFC7FFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF9FE7FFFFFFFFFFFF8FC7FFFFFFFFFFFF8787E7E7FF9FF9FF
      C30FE787FE1FF87FE01FE607F81FF81FF03FE007F01FF80FF87FE607F81FF81F
      F03FE787FE1FF87FE01FE7E7FF9FF9FFC30FFFFFFFFFFFFF8787FFFFFFFFFFFF
      8FC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FE7FF007FFFF
      8003FC3FE003F9FF0001FC3FC001F0FF0001FE7FC001F0FF0001FC3FC001E07F
      0000FC3FC001C07F0000FC3FC001843F8000FC1FE0031E3FC000F20FF1C7FE1F
      E001E107F1C7FF1FE007E187F1C7FF8FF007E007F007FFC7F003F00FF80FFFE3
      F803F81FFC1FFFF8FFFFFFFFFFFFFFFFBF7FFF7FFEFFFEFDBE7FFE7FFE7FFE7D
      BC7FFC7FFE3FFE3DB87FF87FFE1FFE1DB07FF07FFE0FFE0DA07FE07FFE07FE05
      807FC07FFE03FE01A07FE07FFE07FE05B07FF07FFE0FFE0DB87FF87FFE1FFE1D
      BC7FFC7FFE3FFE3DBE7FFE7FFE7FFE7DBF7FFF7FFEFFFEFDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFF8FFFF0000E007FFF8FFFF0000
      E007FFE0FFF90000F00FFFE0E7FFC000FC3FFF81C3F38000F81FFF03C3E70000
      F00FFF07E1C70000F00F840FF08F0000F00F001FF81F8000F81F003FFC3F8000
      FC3F007FF81F8000FFFF003FF09F8000FFFF003FC1C78000FFFF803F83E38000
      FFFFC03F8FF1C000FFFFE07FFFFFE00000000000000000000000000000000000
      000000000000}
  end
  object qryFeeAuthority: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * from fee_authority')
    Left = 300
    Top = 165
  end
  object dsFeeAuthority: TUniDataSource
    DataSet = qryFeeAuthority
    Left = 296
    Top = 222
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 871
    Top = 254
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = 16776176
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
  end
  object qryEmployeeListPrint: TUniQuery
    UpdatingTable = 'employee'
    KeyFields = 'code'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select e.*, et.name, e.rowid  '
      'from entity et, employee e'
      'where e.entity = et.code'
      'order by e.code')
    Left = 540
    Top = 158
  end
  object dsEmployeeListPrint: TUniDataSource
    DataSet = qryEmployeeListPrint
    Left = 532
    Top = 80
  end
  object ActionManager1: TActionManager
    Images = ilstToolbar
    Left = 1267
    Top = 194
    StyleName = 'Platform Default'
    object actDisplayMode: TAction
      Caption = 'Display as Grid or Card'
      OnUpdate = actDisplayModeUpdate
    end
    object actListing: TAction
      Caption = 'Listing'
      ImageIndex = 30
      OnExecute = actListingExecute
      OnUpdate = actDisplayModeUpdate
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 26
      OnExecute = actRefreshExecute
      OnUpdate = actDisplayModeUpdate
    end
    object actActive: TAction
      Caption = 'Active Only'
      OnUpdate = actDisplayModeUpdate
    end
    object actEditUser: TAction
      Caption = 'Edit User'
      ImageIndex = 31
      OnExecute = actEditUserExecute
      OnUpdate = actEditUserUpdate
    end
    object actExportToExcel: TAction
      Caption = 'Export to Excel'
      ImageIndex = 32
      OnExecute = actExportToExcelExecute
      OnUpdate = actDisplayModeUpdate
    end
  end
  object qryBranch: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from branch'
      'order by descr')
    Left = 505
    Top = 362
  end
  object dsBranch: TUniDataSource
    DataSet = qryBranch
    Left = 606
    Top = 368
  end
  object qryEmpType: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM EMPTYPE ORDER BY CODE')
    Left = 518
    Top = 432
  end
  object dsEmpType: TUniDataSource
    DataSet = qryEmpType
    Left = 619
    Top = 438
  end
  object qryEmpDept: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT CODE, DESCR FROM EMPDEPT ORDER BY CODE')
    Left = 516
    Top = 496
  end
  object dsEmpDept: TUniDataSource
    DataSet = qryEmpDept
    Left = 617
    Top = 502
  end
  object qryEntity: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select * '
      'from entity'
      'where '
      'active = '#39'Y'#39
      'order by name')
    Left = 518
    Top = 600
  end
  object dsEntity: TUniDataSource
    DataSet = qryEntity
    Left = 619
    Top = 606
  end
  object OpenDialog: TFileOpenDialog
    DefaultExtension = 'xslx'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Excel'
        FileMask = '*.xlsx'
      end>
    Options = [fdoOverWritePrompt]
    Title = 'Employee List Excel Export'
    Left = 57
    Top = 367
  end
end
