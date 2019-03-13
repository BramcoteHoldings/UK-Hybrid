object frmBankRecAddition: TfrmBankRecAddition
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Addition'
  ClientHeight = 242
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 26
    Height = 13
    Caption = 'Bank '
  end
  object lblBankName: TLabel
    Left = 113
    Top = 38
    Width = 201
    Height = 13
    AutoSize = False
    ShowAccelChar = False
  end
  object Label2: TLabel
    Left = 8
    Top = 110
    Width = 36
    Height = 13
    Caption = 'Deposit'
  end
  object Label3: TLabel
    Left = 227
    Top = 110
    Width = 54
    Height = 13
    Caption = 'Withdrawal'
  end
  object Label4: TLabel
    Left = 8
    Top = 143
    Width = 36
    Height = 13
    Caption = 'Reason'
  end
  object Label5: TLabel
    Left = 8
    Top = 75
    Width = 23
    Height = 13
    Caption = 'Date'
  end
  object Label6: TLabel
    Left = 227
    Top = 75
    Width = 50
    Height = 13
    Caption = 'Reference'
  end
  object cbBank: TComboBox
    Left = 58
    Top = 35
    Width = 49
    Height = 21
    Style = csDropDownList
    Sorted = True
    TabOrder = 0
  end
  object memoReason: TcxMemo
    Left = 58
    Top = 143
    TabOrder = 5
    Height = 89
    Width = 358
  end
  object CurrEditDeposit: TcxCurrencyEdit
    Left = 58
    Top = 107
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    Properties.UseLeftAlignmentOnEditing = False
    Properties.ValidateOnEnter = False
    Properties.OnChange = CurrEditDepositPropertiesChange
    TabOrder = 3
    Width = 121
  end
  object CurrEditWithdrawal: TcxCurrencyEdit
    Left = 295
    Top = 107
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    Properties.UseLeftAlignmentOnEditing = False
    Properties.ValidateOnEnter = False
    Properties.OnChange = CurrEditWithdrawalPropertiesChange
    TabOrder = 4
    Width = 121
  end
  object edBanked: TcxDateEdit
    Left = 58
    Top = 72
    TabOrder = 1
    Width = 121
  end
  object edReference: TcxTextEdit
    Left = 295
    Top = 72
    TabOrder = 2
    Width = 121
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
    Left = 384
    Top = 143
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
      FloatLeft = 468
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'pbSaveClose'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'pbSaveNew'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnClose'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object pbSaveClose: TdxBarButton
      Caption = 'Save && Close'
      Category = 0
      Hint = 'Save & Close'
      Visible = ivAlways
      OnClick = pbSaveCloseClick
    end
    object pbSaveNew: TdxBarButton
      Tag = 1
      Caption = 'Save && New...'
      Category = 0
      Hint = 'Save & New'
      Visible = ivAlways
      OnClick = pbSaveCloseClick
    end
    object btnClose: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      OnClick = btnCloseClick
    end
  end
  object qryBankRec: TUniQuery
    UpdatingTable = 'BANKREC'
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT'
      '  BANK,'
      '  BANKED,'
      '  TYPE,'
      '  REFNO,'
      '  DESCR,'
      '  RECONDATE,'
      '  BANKSTATEMENT,'
      '  AMOUNT,'
      '  ROWID'
      'FROM'
      '  BANKREC'
      'WHERE'
      '  BANK = :BANK AND'
      '  RECONDATE IS NULL')
    Left = 365
    Top = 33
    ParamData = <
      item
        DataType = ftString
        Name = 'BANK'
        ParamType = ptInput
        Value = nil
      end>
  end
end
