object frmSubBill: TfrmSubBill
  Left = 355
  Top = 231
  Caption = 'Sub Bill'
  ClientHeight = 434
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    537
    434)
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 19
    Top = 415
    Width = 56
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Allocated :'
  end
  object lblTotalPercent: TLabel
    Left = 71
    Top = 415
    Width = 14
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'XX'
  end
  object Label4: TLabel
    Left = 114
    Top = 415
    Width = 69
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Unallocated :'
  end
  object lblTotalPercentUn: TLabel
    Left = 182
    Top = 415
    Width = 14
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'XX'
  end
  object cxGridSubbills: TcxGrid
    Left = 5
    Top = 39
    Width = 523
    Height = 367
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGridSubbillsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubBills
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridSubbillsDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Debtor'
        DataBinding.FieldName = 'DEBTOR_NAME'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1DBColumn1PropertiesButtonClick
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 130
      end
      object cxGridSubbillsDBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'Percentage'
        DataBinding.FieldName = 'PERCENTAGE'
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 96
      end
      object cxGridSubbillsDBTableView1DBColumn3: TcxGridDBColumn
        Caption = 'Rounding'
        DataBinding.FieldName = 'ROUNDING'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 84
      end
      object cxGridSubbillsTOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TOTAL'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 82
      end
      object cxGridSubbillsTAX: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'TAX'
        Options.Editing = False
        Options.Filtering = False
      end
      object cxGridSubbillsOWING: TcxGridDBColumn
        Caption = 'Owing'
        DataBinding.FieldName = 'OWING'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 80
      end
    end
    object cxGridSubbillsLevel1: TcxGridLevel
      GridView = cxGridSubbillsDBTableView1
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
    UseSystemFont = False
    Left = 253
    Top = 27
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
      FloatLeft = 742
      FloatTop = 574
      FloatClientWidth = 227
      FloatClientHeight = 52
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone, dsBottom]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = '&OK'
      Category = 0
      Hint = 'OK'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Cancel'
      Category = 0
      Hint = 'Cancel'
      Visible = ivNever
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
    end
  end
  object qrySubBills: TUniQuery
    KeyFields = 'NMEMO;NSUBBILL'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'select nmemo,nsubbill,debtor_name,percentage,rounding,nbill_to,t' +
        'otal,tax,owing from subbills'
      'where nmemo = :nmemo')
    CachedUpdates = True
    Options.RequiredFields = False
    Options.StrictUpdate = False
    AfterPost = qrySubBillsAfterPost
    OnNewRecord = qrySubBillsNewRecord
    Left = 376
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmemo'
        Value = nil
      end>
  end
  object dsSubBills: TUniDataSource
    DataSet = qrySubBills
    Left = 434
    Top = 84
  end
end
