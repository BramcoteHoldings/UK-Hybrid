object frmPhoneBookSearch: TfrmPhoneBookSearch
  Left = 104
  Top = 49
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Contact Selection'
  ClientHeight = 683
  ClientWidth = 1401
  Color = clBtnFace
  Constraints.MinHeight = 395
  Constraints.MinWidth = 664
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 663
    Width = 1401
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.EllipsisType = dxetTruncate
        Fixed = False
        Text = 'Contact entries found: 0'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object pSearch: TPanel
    Left = 0
    Top = 28
    Width = 200
    Height = 635
    Align = alLeft
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    DesignSize = (
      200
      635)
    object lSearch: TLabel
      Left = 2
      Top = 14
      Width = 57
      Height = 15
      Anchors = [akTop, akRight]
      Caption = '&Search Key'
      FocusControl = eSearch
    end
    object lGivenNames: TLabel
      Left = 2
      Top = 71
      Width = 70
      Height = 15
      Anchors = [akTop, akRight]
      Caption = '&Given Names'
      FocusControl = eGivenNames
    end
    object lLastName: TLabel
      Left = 2
      Top = 128
      Width = 56
      Height = 15
      Anchors = [akTop, akRight]
      Caption = '&Last Name'
      FocusControl = eLastName
    end
    object lCompany: TLabel
      Left = 2
      Top = 185
      Width = 95
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Name / &Company'
      FocusControl = eCompany
    end
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 200
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Search Criteria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 74
    end
    object Bevel1: TBevel
      Left = 0
      Top = 13
      Width = 200
      Height = 2
      Align = alTop
      Shape = bsBottomLine
    end
    object eSearch: TEdit
      Left = 66
      Top = 29
      Width = 130
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnChange = SearchControlChanged
      OnKeyDown = eSearchKeyDown
    end
    object cbSearch: TComboBox
      Left = 2
      Top = 29
      Width = 64
      Height = 23
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 0
      Text = 'Contains'
      OnChange = SearchControlChanged
      Items.Strings = (
        ''
        'Equals'
        'Contains'
        'Begins')
    end
    object cbGivenNames: TComboBox
      Left = 2
      Top = 86
      Width = 64
      Height = 23
      Style = csDropDownList
      TabOrder = 2
      OnChange = SearchControlChanged
      Items.Strings = (
        ''
        'Equals'
        'Contains'
        'Begins')
    end
    object eGivenNames: TEdit
      Left = 66
      Top = 86
      Width = 130
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 3
      OnChange = SearchControlChanged
    end
    object cbLastName: TComboBox
      Left = 2
      Top = 143
      Width = 64
      Height = 23
      Style = csDropDownList
      TabOrder = 4
      OnChange = SearchControlChanged
      Items.Strings = (
        ''
        'Equals'
        'Contains'
        'Begins')
    end
    object eLastName: TEdit
      Left = 66
      Top = 143
      Width = 130
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 5
      OnChange = SearchControlChanged
    end
    object cbCompany: TComboBox
      Left = 2
      Top = 200
      Width = 64
      Height = 23
      Style = csDropDownList
      TabOrder = 6
      OnChange = SearchControlChanged
      Items.Strings = (
        ''
        'Equals'
        'Contains'
        'Begins')
    end
    object eCompany: TEdit
      Left = 66
      Top = 200
      Width = 130
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 7
      OnChange = SearchControlChanged
    end
    object lbGroups: TCheckListBox
      Left = 0
      Top = 259
      Width = 197
      Height = 378
      OnClickCheck = lbGroupsClickCheck
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 15
      TabOrder = 9
    end
    object pAndOrGivenNames: TPanel
      Left = 2
      Top = 53
      Width = 100
      Height = 17
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 10
      object rbORGivenNames: TRadioButton
        Left = 0
        Top = 0
        Width = 44
        Height = 17
        Caption = 'OR'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = SearchControlChanged
      end
      object rbANDGivenNames: TRadioButton
        Left = 46
        Top = 0
        Width = 44
        Height = 17
        Caption = 'AND'
        TabOrder = 1
        OnClick = SearchControlChanged
      end
    end
    object pRadioGroups: TPanel
      Left = 2
      Top = 242
      Width = 196
      Height = 17
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 11
      object rbANYGroups: TRadioButton
        Left = 42
        Top = 0
        Width = 157
        Height = 17
        Caption = 'ANY of the checked groups'
        TabOrder = 1
        Visible = False
        OnClick = SearchControlChanged
      end
      object rbALLGroups: TRadioButton
        Left = 0
        Top = 0
        Width = 44
        Height = 17
        Caption = 'ALL'
        Checked = True
        TabOrder = 0
        TabStop = True
        Visible = False
        OnClick = SearchControlChanged
      end
    end
    object pAndOrFirstName: TPanel
      Left = 2
      Top = 109
      Width = 100
      Height = 17
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 12
      object rbORLastName: TRadioButton
        Left = 0
        Top = 0
        Width = 44
        Height = 17
        Caption = 'OR'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = SearchControlChanged
      end
      object rbANDLastName: TRadioButton
        Left = 46
        Top = 0
        Width = 44
        Height = 17
        Caption = 'AND'
        TabOrder = 1
        OnClick = SearchControlChanged
      end
    end
    object pAndOrCompany: TPanel
      Left = 2
      Top = 166
      Width = 100
      Height = 17
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 13
      object rbORCompany: TRadioButton
        Left = 0
        Top = 0
        Width = 44
        Height = 17
        Caption = 'OR'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = SearchControlChanged
      end
      object rbANDCompany: TRadioButton
        Left = 46
        Top = 0
        Width = 44
        Height = 17
        Caption = 'AND'
        TabOrder = 1
        OnClick = SearchControlChanged
      end
    end
    object ckANDGroups: TCheckBox
      Left = 2
      Top = 242
      Width = 139
      Height = 17
      Caption = 'AND is a member of...'
      TabOrder = 8
      OnClick = SearchControlChanged
    end
  end
  object pGridClient: TPanel
    Left = 200
    Top = 28
    Width = 1201
    Height = 635
    Align = alClient
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 2
    object pGridBottom: TPanel
      Left = 0
      Top = 601
      Width = 1201
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 0
      object pBottomClient: TPanel
        Left = 813
        Top = 0
        Width = 388
        Height = 34
        Align = alRight
        BevelOuter = bvNone
        Caption = '   '
        TabOrder = 1
        DesignSize = (
          388
          34)
        object btnOK: TBitBtn
          Left = 237
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&OK'
          Default = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 0
          OnClick = btnOKClick
        end
        object btnCancel: TBitBtn
          Left = 313
          Top = 5
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = '&Cancel'
          Kind = bkCancel
          NumGlyphs = 2
          TabOrder = 1
        end
        object bnAdvanced: TBitBtn
          Left = 76
          Top = 5
          Width = 85
          Height = 25
          Action = aShowAdvanced
          Anchors = [akTop, akRight]
          Caption = 'Advanced'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
            00FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
        end
        object bnMore: TBitBtn
          Left = 161
          Top = 5
          Width = 75
          Height = 25
          Action = aMore
          Anchors = [akTop, akRight]
          Caption = 'Filter'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FF00
            00FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
            00FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 3
        end
        object cbAutoQuery: TCheckBox
          Left = 2
          Top = 8
          Width = 81
          Height = 17
          Caption = 'Auto Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = cbAutoQueryClick
        end
        object bnExecute2: TBitBtn
          Left = 80
          Top = 6
          Width = 75
          Height = 25
          Action = aQueryNow
          Caption = 'Query'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00008000008000FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF00008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000800000
            8000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF00008000008000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF00008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000080000080
            00FF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF00008000FF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            0000FF00FF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF00FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 5
        end
      end
      object pSimpleSearch: TPanel
        Left = 0
        Top = 0
        Width = 813
        Height = 34
        Align = alClient
        BevelOuter = bvNone
        Caption = '    '
        TabOrder = 0
        object pSimpleSearchKey: TPanel
          Left = 176
          Top = 0
          Width = 637
          Height = 34
          Align = alClient
          BevelOuter = bvNone
          Caption = '  '
          TabOrder = 1
          DesignSize = (
            637
            34)
          object Label2: TLabel
            Left = 2
            Top = 9
            Width = 57
            Height = 15
            Caption = '&Search Key'
            FocusControl = eSearch
          end
          object eSearchBottom: TEdit
            Left = 138
            Top = 5
            Width = 494
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
            OnChange = SearchControlChanged
            OnKeyDown = eSearchKeyDown
          end
          object cbSearchBottom: TComboBox
            Left = 62
            Top = 5
            Width = 74
            Height = 23
            Style = csDropDownList
            ItemIndex = 2
            TabOrder = 0
            Text = 'Contains'
            OnChange = SearchControlChanged
            Items.Strings = (
              ''
              'Equals'
              'Contains'
              'Begins')
          end
        end
        object pSimpleParties: TPanel
          Left = 0
          Top = 0
          Width = 176
          Height = 34
          Align = alLeft
          BevelOuter = bvNone
          Caption = '   '
          TabOrder = 0
          DesignSize = (
            176
            34)
          object lSimplePartyType: TLabel
            Left = 2
            Top = 8
            Width = 55
            Height = 15
            Caption = 'Party Type'
          end
          object cbSimplePartyType: TComboBox
            Left = 59
            Top = 5
            Width = 115
            Height = 23
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            DropDownCount = 20
            TabOrder = 0
            OnChange = SearchControlChanged
          end
        end
      end
    end
    object pAdvancedSearch: TPanel
      Left = 0
      Top = 481
      Width = 1201
      Height = 120
      Align = alBottom
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object Bevel2: TBevel
        Left = 0
        Top = 13
        Width = 1201
        Height = 2
        Align = alTop
        Shape = bsBottomLine
        ExplicitWidth = 971
      end
      object lAdvancedSearch: TLabel
        Left = 0
        Top = 0
        Width = 1201
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Advanced Search'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 89
      end
      object Bevel4: TBevel
        Left = 0
        Top = 118
        Width = 1201
        Height = 2
        Align = alBottom
        Shape = bsBottomLine
        ExplicitWidth = 971
      end
      object pAdvancedButtons: TPanel
        Left = 1121
        Top = 15
        Width = 80
        Height = 103
        Align = alRight
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 1
        DesignSize = (
          80
          103)
        object bnAdd: TButton
          Left = 5
          Top = 11
          Width = 75
          Height = 25
          Action = aAdvancedAdd
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object bnRemove: TButton
          Left = 5
          Top = 39
          Width = 75
          Height = 25
          Action = aAdvancedRemove
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object bnExecute: TBitBtn
          Left = 5
          Top = 67
          Width = 75
          Height = 25
          Action = aQueryNow
          Anchors = [akTop, akRight]
          Caption = 'Query'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF00008000008000FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF00008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000800000
            8000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF00008000008000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF00008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000080000080
            00FF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF00008000FF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
            0000FF00FF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF0000FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
            FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF0000FF0000FF0000FF0000FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF00FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FF00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
        end
      end
      object pAdvancedStuff: TPanel
        Left = 0
        Top = 15
        Width = 1121
        Height = 103
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pAdvancedStuff'
        TabOrder = 0
        DesignSize = (
          1121
          103)
        object eValue: TEdit
          Left = 303
          Top = 3
          Width = 818
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
        end
        object cbOperator: TComboBox
          Left = 230
          Top = 3
          Width = 71
          Height = 23
          Style = csDropDownList
          TabOrder = 2
          OnClick = cbOperatorClick
          Items.Strings = (
            'Equals'
            'Contains'
            'Begins'
            'Not Equal'
            'Is Null'
            'Is Not Null')
        end
        object bAdvancedButtons: TPanel
          Left = 2
          Top = 5
          Width = 93
          Height = 17
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 0
          object rbORAdvanced: TRadioButton
            Left = 0
            Top = 0
            Width = 44
            Height = 17
            Caption = 'OR'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = SearchControlChanged
          end
          object rbANDAdvanced: TRadioButton
            Left = 46
            Top = 0
            Width = 44
            Height = 17
            Caption = 'AND'
            TabOrder = 1
            OnClick = SearchControlChanged
          end
        end
        object lbSearchItems: TListBox
          Left = 2
          Top = 29
          Width = 1119
          Height = 69
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 15
          TabOrder = 4
        end
        object cbField: TcxLookupComboBox
          Left = 98
          Top = 3
          Properties.DropDownAutoSize = True
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'COLUMN_NAME'
          Properties.ListColumns = <
            item
              FieldName = 'COLUMN_NAME'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsPhoneBookFields
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 1
          Width = 129
        end
      end
    end
    object pSearchResult: TPanel
      Left = 0
      Top = 0
      Width = 1201
      Height = 481
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pSearchResult'
      TabOrder = 2
      object Bevel3: TBevel
        Left = 0
        Top = 13
        Width = 1201
        Height = 2
        Align = alTop
        Shape = bsBottomLine
        ExplicitWidth = 971
      end
      object lSearchResults: TLabel
        Left = 0
        Top = 0
        Width = 1201
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Search Results'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 74
      end
      object sSearchChildren: TSplitter
        Left = 0
        Top = 359
        Width = 1201
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        AutoSnap = False
        MinSize = 50
        ResizeStyle = rsUpdate
        ExplicitTop = 268
        ExplicitWidth = 971
      end
      object pChildView: TPanel
        Left = 0
        Top = 363
        Width = 1201
        Height = 118
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pChildView'
        TabOrder = 0
        object lChildCaption: TLabel
          Left = 0
          Top = 2
          Width = 1201
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Children'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 44
        end
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 1201
          Height = 2
          Align = alTop
          Shape = bsBottomLine
          ExplicitWidth = 971
        end
        object Bevel6: TBevel
          Left = 0
          Top = 116
          Width = 1201
          Height = 2
          Align = alBottom
          Shape = bsBottomLine
          ExplicitWidth = 971
        end
        object Bevel7: TBevel
          Left = 0
          Top = 15
          Width = 1201
          Height = 2
          Align = alTop
          Shape = bsBottomLine
          ExplicitWidth = 971
        end
        object dbgChildren: TcxGrid
          Left = 0
          Top = 17
          Width = 1201
          Height = 99
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object tvChildren: TcxGridDBTableView
            OnDblClick = dbgrPhoneBookDblClick
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = tvChildrenCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsPhoneBookChildren
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 7
            FixedDataRows.SeparatorWidth = 7
            NewItemRow.SeparatorWidth = 7
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsView.CellEndEllipsis = True
            OptionsView.NavigatorOffset = 55
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.IndicatorWidth = 13
            Preview.LeftIndent = 22
            Preview.RightIndent = 6
            OnColumnHeaderClick = tvChildrenColumnHeaderClick
            object tvChildrenSEARCH: TcxGridDBColumn
              Caption = 'Search Key'
              DataBinding.FieldName = 'SEARCH'
              Width = 196
            end
            object tvChildrenNAME: TcxGridDBColumn
              Caption = 'Name / Company'
              DataBinding.FieldName = 'NAME'
              Width = 154
            end
            object tvChildrenSALUTATION: TcxGridDBColumn
              Caption = 'Salutation'
              DataBinding.FieldName = 'SALUTATION'
              Width = 72
            end
            object tvChildrenLASTNAME: TcxGridDBColumn
              Caption = 'Last Name'
              DataBinding.FieldName = 'LASTNAME'
              Width = 107
            end
            object tvChildrenGIVENNAMES: TcxGridDBColumn
              Caption = 'Given Names'
              DataBinding.FieldName = 'GIVENNAMES'
              Width = 117
            end
            object tvChildrenDEFAULTADDRESS: TcxGridDBColumn
              Caption = 'Default Address'
              DataBinding.FieldName = 'DEFAULTADDRESS'
              Width = 119
            end
          end
          object dbgChildrenLevel1: TcxGridLevel
            GridView = tvChildren
          end
        end
      end
      object dbgrPhoneBook: TcxGrid
        Left = 0
        Top = 15
        Width = 1201
        Height = 344
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object tvPhoneBook: TcxGridDBTableView
          OnDblClick = dbgrPhoneBookDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = tvPhoneBookCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsPhoneBook
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 7
          FixedDataRows.SeparatorWidth = 7
          NewItemRow.SeparatorWidth = 7
          OptionsBehavior.CellHints = True
          OptionsBehavior.DragScrolling = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NavigatorOffset = 55
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 13
          Preview.LeftIndent = 22
          Preview.RightIndent = 6
          OnColumnHeaderClick = tvPhoneBookColumnHeaderClick
          object tvPhoneBookSEARCH1: TcxGridDBColumn
            Caption = 'Search Key'
            DataBinding.FieldName = 'SEARCH'
            Width = 154
          end
          object tvPhoneBookNAME1: TcxGridDBColumn
            Caption = 'Name / Company'
            DataBinding.FieldName = 'NAME'
            Width = 179
          end
          object tvPhoneBookPARENT: TcxGridDBColumn
            Caption = 'Parent'
            DataBinding.FieldName = 'PARENT'
            Options.Editing = False
            Options.Focusing = False
            Styles.Content = cxStyle1
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            Width = 145
          end
          object tvPhoneBookCLIENTID: TcxGridDBColumn
            Caption = 'Client Code'
            DataBinding.FieldName = 'CLIENTID'
            MinWidth = 83
            Width = 83
          end
          object tvPhoneBookCREDITORID: TcxGridDBColumn
            Caption = 'Creditor Code'
            DataBinding.FieldName = 'CREDITORID'
          end
          object tvPhoneBookSALUTATION1: TcxGridDBColumn
            Caption = 'Salutation'
            DataBinding.FieldName = 'SALUTATION'
            MinWidth = 56
            Width = 56
          end
          object tvPhoneBookLASTNAME1: TcxGridDBColumn
            Caption = 'Last Name'
            DataBinding.FieldName = 'LASTNAME'
            Width = 127
          end
          object tvPhoneBookGIVENNAMES1: TcxGridDBColumn
            Caption = 'Given Names'
            DataBinding.FieldName = 'GIVENNAMES'
            Width = 125
          end
          object tvPhoneBookDEFAULTADDRESS1: TcxGridDBColumn
            Caption = 'Default Address'
            DataBinding.FieldName = 'DEFAULTADDRESS'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 130
          end
          object tvPhoneBookWORKPHONE: TcxGridDBColumn
            Caption = 'Work Phone'
            DataBinding.FieldName = 'WORKPHONE'
            Width = 67
          end
          object tvPhoneBookMOBILE: TcxGridDBColumn
            Caption = 'Mobile'
            DataBinding.FieldName = 'MOBILE'
          end
          object tvPhoneBookEMAIL: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL'
          end
          object tvPhoneBookOCCUPATION: TcxGridDBColumn
            Caption = 'Occupation'
            DataBinding.FieldName = 'OCCUPATION'
            MinWidth = 64
          end
          object tvPhoneBookRA_DESCR: TcxGridDBColumn
            Caption = 'Rel Action'
            DataBinding.FieldName = 'RA_DESCR'
            Visible = False
          end
          object tvPhoneBookRS_DESCR: TcxGridDBColumn
            Caption = 'Rel Status'
            DataBinding.FieldName = 'RS_DESCR'
            Visible = False
          end
          object tvPhoneBookRT_DESCR: TcxGridDBColumn
            Caption = 'Rel Type'
            DataBinding.FieldName = 'RT_DESCR'
            Visible = False
          end
          object tvPhoneBookSYSTEM1: TcxGridDBColumn
            Caption = 'PMS'
            DataBinding.FieldName = 'SYSTEM1'
            Visible = False
          end
          object tvPhoneBookSYSTEM2: TcxGridDBColumn
            Caption = 'DMS'
            DataBinding.FieldName = 'SYSTEM2'
            Visible = False
          end
          object tvPhoneBookFIRM_SIZE: TcxGridDBColumn
            Caption = 'Firm Size'
            DataBinding.FieldName = 'FIRM_SIZE'
            Visible = False
          end
          object tvPhoneBookSUBURB: TcxGridDBColumn
            Caption = 'Suburb'
            DataBinding.FieldName = 'SUBURB'
            Visible = False
          end
          object tvPhoneBookNNAME: TcxGridDBColumn
            DataBinding.FieldName = 'NNAME'
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
            Options.Sorting = False
            VisibleForCustomization = False
          end
          object tvPhoneBookACN: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'ACN'
          end
        end
        object dbgrPhoneBookLevel1: TcxGridLevel
          GridView = tvPhoneBook
        end
      end
    end
  end
  object qPhoneBook: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT c.nname, c.search, c.name, c.nclient, c.salutation, c.las' +
        'tname, c.givennames, c.address as defaultaddress, '
      
        'c.workphone, p.search as parent, c.nnamemaster, c.clientid, c.em' +
        'ail, c.occupation,'
      
        'p.system1, p.system2, '#39#39' ra_descr, '#39#39' rs_descr, '#39#39' rt_descr, p.f' +
        'irm_size, p.turnover, p.suburb, p.creditorid, p.ACN,'
      'c.mobile'
      'FROM PHONEBOOK c, phonebook p'
      'where p.nname(+) = c.nnamemaster'
      'ORDER BY c.SEARCH')
    AfterScroll = qPhoneBookAfterScroll
    Left = 614
    Top = 85
  end
  object dsPhoneBook: TUniDataSource
    AutoEdit = False
    DataSet = qPhoneBook
    Left = 688
    Top = 111
  end
  object qGroups: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PBGROUP ORDER BY CATEGORY')
    Left = 422
    Top = 134
  end
  object ImageList: TImageList
    Left = 492
    Top = 130
    Bitmap = {
      494C01010E001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00008060600080606000FF00FF00FF00FF008060600080606000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000A4A0A000A4A0A000806060008060600080606000F0FBFF00806060008060
      6000806060000000000000000000000000000000000000000000000000000099
      0000333B3300A5A5A50073737300666666006666660073737300CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080606000C0DC
      C000A4A0A000A4A0A000A4A0A000404040004040400080606000C0C0C000F0FB
      FF00C0C0C0008060600080606000806060000000000000000000000000000099
      000000600000337733000073000000990000007C0000004D0000333B33008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080606000C0DCC000C0C0
      C000A4A0A000A4A0A000A4A0A000404040000000000000000000000000000000
      000080808000C0C0C00080606000FF00FF000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000007C0000333B
      3300A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000C0C0C000A4A0
      A000C0DCC000C0C0C000C0C0C000C0C0C000A4A0A000A4A0A000406060000000
      0000000000000000000080606000808080000000000000000000000000000099
      0000009900000099000000990000109F100040B2400020A52000009900000073
      000040404000F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000C0C0C000A4A0A000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0
      C000A4A0A0004060600080808000808080000000000000000000000000000099
      00000099000000990000008F00003E3E3E00DFDFDF00000000009FD89F00109F
      100033593300B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080606000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00C0DCC000A4A0A000A4A0A000C0C0C000C0C0C000C0DCC000C0DC
      C000C0C0C000C0C0C000A4A0A000806060000000000000000000000000000099
      000000990000009900000099000000560000454545000000000000000000BFE5
      BF00006900007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008060600080606000F0FB
      FF00C0C0C00080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000C0C0C0008060600000000000B2B2B200000000000099
      0000009900000099000000990000009900000099000030303000000000000000
      000060BF6000666D660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      6000C0A060008060600080606000808080008060600080808000A4A0A000A4A0
      A000C0C0C000C0C0C000806060000000000000000000334A3300B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF2DF00A5C3A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600C0A06000C0A06000C0A060008080
      800080606000806060000000000000000000000000001078100040404000F2F2
      F20000000000000000003789370013631300114B110011431100113411002435
      2400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0A06000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A060000000
      0000000000000000000000000000000000000000000060BF6000004300005959
      5900E5E5E50000000000E5F4E500109F10000099000000990000009900001847
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      00000000000000000000000000000000000000000000BFE5BF0000990000004D
      0000404040008080800099999900105210000099000000990000009900001545
      1500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A0
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      000000000000000000000000000000000000000000000000000050B950000099
      000000860000004D000000560000008F00000099000000990000009900001444
      1400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000F0FB
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A06000000000000000
      0000000000000000000000000000000000000000000000000000EFF8EF0030AC
      3000009900000099000000990000009900000099000000990000009900001645
      1600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A06000C0A0
      6000C0A06000F0FBFF00F0CAA600F0CAA600C0A0600000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF8
      EF0060BF600000990000009900000099000030AC30007FCB7F00009900001947
      1900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0A06000C0A06000C0A060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008FD28F003D74
      3D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000FF000000FF
      000000FF00000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF00000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF00000000000000000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000000000FF000000FF0000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000084
      0000008400000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000084000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000008484000084
      840000FFFF0000000000FFFFFF00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848400008484000000000000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000FFFF00008484000084840000FF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF0000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000FFFF00008484000084840000FFFF000000
      0000FFFFFF0000FFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FF000000FF000000FF0000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400008484000000000000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000FFFF0000848400008484000000000000000000FFFF
      FF0000FFFF0000FFFF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF00000000FFFF00008484000084840000FFFF000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000000000000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      000000FFFF00008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FF
      FF0000FFFF0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000000000000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF000000FF000000FF000000FF00
      0000008484000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF00000000
      0000FFFF0000000000000000000000000000FF00000000000000000000000084
      84000084840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF00
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000008484
      00008484000084840000000000008484000000000000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000000000000084
      840000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000FFFF0000FFFF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000000000000848400000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000084848400C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C6000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      00007B7B7B007B7B7B007B7B7B0000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF0000000000000000000000FF000000FF000000
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFFFF00000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00F03FE7FF00000000E007E01F00000000
      C000E00F000000008000E007000000000000E003000000000000E04300000000
      0000E063000000008000A03300000000E0019FF300000000F0038C0F00000000
      F01F840F00000000E03F800F00000000E03FC00F00000000C03FC00F00000000
      C07FE00F00000000F8FFFFCF00000000DFFFFFFFFFFFFFFFC7FFFFFFFFFFF801
      C3FFFFFFFFFFF801C0FFFFFFFFFFF801C03FFFFFFFFF8003C01FFFFFFFFF800F
      C007E007FE7F8007C003F00FFC3FC003C003F81FF81FF003C007FC3FF00FE003
      C01FFE7FE007C007C07FFFFFFFFFC00FC1FFFFFFFFFFC03FC7FFFFFFFFFFE07F
      DFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F3FFBC007FE7F
      F83F07C18003FC3FF81F03030001FC3FF00700030001FE7FF00300030001FC3F
      E00300070000FC3FE00300070000FC3FC003000F8000FC1FC003000FC000F20F
      C0030007E001E107E0030003E007E187F8030003F007E007FC030003F003F00F
      FF830001F803F81FFFC30001FFFFFFFFFFE3FFE3EFFFFFFFFC41FC41CFFFF83F
      880088008007E00F000000000003CFC700000000800187E300000000CFF1A3F3
      00000000EFF131F900000000FFF138F9000000008FFF3C79000000008FF73E39
      000000008FF33F190000000080019F8B00010001C0008FC300010001E001C7E7
      000D000DFFF3E00FD553D553FFF7F83F00000000000000000000000000000000
      000000000000}
  end
  object tSearch: TTimer
    Enabled = False
    OnTimer = tSearchTimer
    Left = 332
    Top = 182
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = aNew
            Caption = '&New'
            ImageIndex = 0
          end
          item
            Action = aEdit
            Caption = '&Edit'
            ImageIndex = 1
          end
          item
            Caption = '-'
          end
          item
            Action = aShowHideChildren
            Caption = '&Show Children'
            ImageIndex = 11
          end
          item
            Caption = '-'
          end
          item
            Action = aRefresh
            Caption = '&Refresh'
            ImageIndex = 13
          end
          item
            Action = aClearAll
            Caption = '&Clear All'
            ImageIndex = 3
          end
          item
            Caption = '-'
          end
          item
            Action = aMerge
            Caption = '&Merge'
            ImageIndex = 4
          end
          item
            Action = aPrint
            Caption = '&Print'
            ImageIndex = 12
          end
          item
            Caption = '-'
          end
          item
            Action = aHelp
            Caption = '&Help'
            ImageIndex = 7
          end>
        Visible = False
      end>
    Images = ImageList
    Left = 583
    Top = 135
    StyleName = 'XP Style'
    object aNew: TAction
      Category = 'Standard'
      Caption = 'New'
      Hint = 'New|Create new phone book entry'
      ImageIndex = 0
      OnExecute = aNewExecute
      OnUpdate = aNewUpdate
    end
    object aEdit: TAction
      Category = 'Standard'
      Caption = 'Edit'
      Hint = 'Edit|Edit phone book entry'
      ImageIndex = 1
      OnExecute = aEditExecute
    end
    object aRefresh: TAction
      Category = 'Standard'
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 13
      OnExecute = aRefreshExecute
    end
    object aClearAll: TAction
      Category = 'Standard'
      Caption = 'Clear All'
      Hint = 'Clear All'
      ImageIndex = 3
      OnExecute = aClearAllExecute
    end
    object aMerge: TAction
      Category = 'Standard'
      Caption = 'Merge'
      Hint = 'Merge'
      ImageIndex = 4
      OnExecute = aMergeExecute
    end
    object aPrint: TAction
      Category = 'Standard'
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 12
      OnExecute = aPrintExecute
    end
    object aHelp: TAction
      Category = 'Standard'
      Caption = 'Help'
      Hint = 'Help'
      ImageIndex = 7
      OnExecute = aHelpExecute
      OnUpdate = aHelpUpdate
    end
    object aQueryNow: TAction
      Category = 'Standard'
      Caption = 'Query'
      Hint = 'Query|Query Now'
      ImageIndex = 8
      OnExecute = aQueryNowExecute
      OnUpdate = aQueryNowUpdate
    end
    object aAdvancedAdd: TAction
      Category = 'Advanced'
      Caption = 'Add'
      OnExecute = aAdvancedAddExecute
      OnUpdate = aAdvancedAddUpdate
    end
    object aAdvancedRemove: TAction
      Category = 'Advanced'
      Caption = 'Remove'
      OnExecute = aAdvancedRemoveExecute
      OnUpdate = aAdvancedRemoveUpdate
    end
    object aShowAdvanced: TAction
      Category = 'Advanced'
      Caption = 'Advanced'
      ImageIndex = 9
      OnExecute = aShowAdvancedExecute
      OnUpdate = aShowAdvancedUpdate
    end
    object aMore: TAction
      Category = 'Advanced'
      Caption = 'Filter'
      ImageIndex = 9
      OnExecute = aMoreExecute
      OnUpdate = aMoreUpdate
    end
    object aShowHideChildren: TAction
      Category = 'Standard'
      Caption = 'Show Children'
      Hint = 'Show or Hide Child Entries'
      ImageIndex = 11
      OnExecute = aShowHideChildrenExecute
      OnUpdate = aShowHideChildrenUpdate
    end
  end
  object qPhoneBookFields: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'select column_name, data_type '
      'from all_tab_columns '
      'where table_name = '#39'PHONEBOOK'#39
      'order by column_name')
    Left = 621
    Top = 202
    object qPhoneBookFieldsCOLUMN_NAME: TStringField
      FieldName = 'COLUMN_NAME'
      Required = True
      Size = 30
    end
    object qPhoneBookFieldsDATA_TYPE: TStringField
      FieldName = 'DATA_TYPE'
      Size = 106
    end
  end
  object qPhoneBookChildren: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      
        'SELECT nname, search, name, nclient, salutation, lastname, given' +
        'names, address as defaultaddress'
      'FROM PHONEBOOK'
      'WHERE NNAMEMASTER = :NNAMEMASTER'
      'ORDER BY SEARCH')
    AfterScroll = qPhoneBookChildrenAfterScroll
    Left = 419
    Top = 253
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NNAMEMASTER'
        Value = nil
      end>
  end
  object dsPhoneBookChildren: TUniDataSource
    AutoEdit = False
    DataSet = qPhoneBookChildren
    Left = 547
    Top = 262
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
    ImageOptions.DisabledImages = ImageList
    ImageOptions.Images = ImageList
    ImageOptions.LargeImages = ImageList
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 311
    Top = 77
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
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 292
      FloatTop = 269
      FloatClientWidth = 23
      FloatClientHeight = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCreatePhonebook'
        end
        item
          Visible = True
          ItemName = 'btnEditPhonebook'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnBulkEmail'
        end>
      NotDocking = [dsNone]
      OldName = 'Toolbar'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btnCreatePhonebook: TdxBarButton
      Action = aNew
      Category = 0
    end
    object btnEditPhonebook: TdxBarButton
      Action = aEdit
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = aShowHideChildren
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton4: TdxBarButton
      Action = aRefresh
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = aClearAll
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = aMerge
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = aPrint
      Category = 0
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btnBulkEmail: TdxBarButton
      Caption = 'Bulk Email'
      Category = 0
      Hint = 'Bulk Email'
      Visible = ivAlways
      OnClick = btnBulkEmailClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Print'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'btnPrintGrid'
        end
        item
          Visible = True
          ItemName = 'btnExp2Excel'
        end>
    end
    object btnPrintGrid: TdxBarButton
      Caption = 'Print Grid'
      Category = 0
      Hint = 'Print Grid'
      Visible = ivAlways
      OnClick = btnPrintGridClick
    end
    object btnExp2Excel: TdxBarButton
      Caption = 'Export to Excel'
      Category = 0
      Hint = 'Export to Excel'
      Visible = ivAlways
      OnClick = btnExp2ExcelClick
    end
    object cbIncludeArchived: TcxBarEditItem
      Caption = 'Include Closed '
      Category = 0
      Hint = 'Include Closed '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cxBarEditItem1PropertiesEditValueChanged
      InternalEditValue = False
    end
    object cbProspectiveClients: TcxBarEditItem
      Caption = 'Include Prospective'
      Category = 0
      Hint = 'Include Prospective Contacts'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
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
  object qPhonebookCount: TUniQuery
    Connection = dmAxiom.uniInsight
    Left = 267
    Top = 338
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 710
    Top = 3
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object dsPhoneBookFields: TUniDataSource
    DataSet = qPhoneBookFields
    Left = 729
    Top = 248
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 59
    Top = 447
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink1
    Version = 0
    Left = 823
    Top = 90
    PixelsPerInch = 96
    object ComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = dbgrPhoneBook
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
      ReportDocument.CreationDate = 43355.503669537040000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object qPhonebookRpt: TUniQuery
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT * FROM PHONEBOOK P')
    Active = True
    Left = 33
    Top = 355
  end
  object dsPhonebookRpt: TUniDataSource
    DataSet = qPhonebookRpt
    Left = 79
    Top = 358
  end
  object plPhonebookRpt: TppDBPipeline
    DataSource = dsPhonebookRpt
    UserName = 'plPhonebookRpt'
    Left = 125
    Top = 363
    object plPhonebookRptppField1: TppField
      FieldAlias = 'NNAME'
      FieldName = 'NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object plPhonebookRptppField2: TppField
      FieldAlias = 'NCLIENT'
      FieldName = 'NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 1
    end
    object plPhonebookRptppField3: TppField
      FieldAlias = 'SEARCH'
      FieldName = 'SEARCH'
      FieldLength = 85
      DisplayWidth = 85
      Position = 2
    end
    object plPhonebookRptppField4: TppField
      FieldAlias = 'TITLE'
      FieldName = 'TITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object plPhonebookRptppField5: TppField
      FieldAlias = 'GENDER'
      FieldName = 'GENDER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object plPhonebookRptppField6: TppField
      FieldAlias = 'SALUTATION'
      FieldName = 'SALUTATION'
      FieldLength = 40
      DisplayWidth = 40
      Position = 5
    end
    object plPhonebookRptppField7: TppField
      FieldAlias = 'ADDRESS'
      FieldName = 'ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 6
    end
    object plPhonebookRptppField8: TppField
      FieldAlias = 'SUBURB'
      FieldName = 'SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object plPhonebookRptppField9: TppField
      FieldAlias = 'STATE'
      FieldName = 'STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plPhonebookRptppField10: TppField
      FieldAlias = 'POSTCODE'
      FieldName = 'POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plPhonebookRptppField11: TppField
      FieldAlias = 'WORKPHONE'
      FieldName = 'WORKPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object plPhonebookRptppField12: TppField
      FieldAlias = 'HOMEPHONE'
      FieldName = 'HOMEPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object plPhonebookRptppField13: TppField
      FieldAlias = 'DX'
      FieldName = 'DX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plPhonebookRptppField14: TppField
      FieldAlias = 'DXLOC'
      FieldName = 'DXLOC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object plPhonebookRptppField15: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object plPhonebookRptppField16: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object plPhonebookRptppField17: TppField
      FieldAlias = 'SPARTY'
      FieldName = 'SPARTY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object plPhonebookRptppField18: TppField
      FieldAlias = 'SOLICITOR'
      FieldName = 'SOLICITOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object plPhonebookRptppField19: TppField
      FieldAlias = 'REAL_ESTATE'
      FieldName = 'REAL_ESTATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object plPhonebookRptppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALS'
      FieldName = 'REFERRALS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object plPhonebookRptppField21: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 20
    end
    object plPhonebookRptppField22: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 100
      DisplayWidth = 100
      Position = 21
    end
    object plPhonebookRptppField23: TppField
      FieldAlias = 'SHORTNAME'
      FieldName = 'SHORTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
    object plPhonebookRptppField24: TppField
      FieldAlias = 'LONGNAME'
      FieldName = 'LONGNAME'
      FieldLength = 150
      DisplayWidth = 150
      Position = 23
    end
    object plPhonebookRptppField25: TppField
      FieldAlias = 'MOD_DATE'
      FieldName = 'MOD_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object plPhonebookRptppField26: TppField
      FieldAlias = 'MOD_BY'
      FieldName = 'MOD_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object plPhonebookRptppField27: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object plPhonebookRptppField28: TppField
      FieldAlias = 'COUNTRY'
      FieldName = 'COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 27
    end
    object plPhonebookRptppField29: TppField
      FieldAlias = 'ACN'
      FieldName = 'ACN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 28
    end
    object plPhonebookRptppField30: TppField
      FieldAlias = 'OCCUPATION'
      FieldName = 'OCCUPATION'
      FieldLength = 250
      DisplayWidth = 250
      Position = 29
    end
    object plPhonebookRptppField31: TppField
      FieldAlias = 'DOB'
      FieldName = 'DOB'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 30
    end
    object plPhonebookRptppField32: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 31
    end
    object plPhonebookRptppField33: TppField
      FieldAlias = 'WWW'
      FieldName = 'WWW'
      FieldLength = 60
      DisplayWidth = 60
      Position = 32
    end
    object plPhonebookRptppField34: TppField
      FieldAlias = 'MOBILE'
      FieldName = 'MOBILE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 33
    end
    object plPhonebookRptppField35: TppField
      FieldAlias = 'NNAMEMASTER'
      FieldName = 'NNAMEMASTER'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 34
    end
    object plPhonebookRptppField36: TppField
      FieldAlias = 'POSTALADDRESS'
      FieldName = 'POSTALADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 35
    end
    object plPhonebookRptppField37: TppField
      FieldAlias = 'POSTALSUBURB'
      FieldName = 'POSTALSUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object plPhonebookRptppField38: TppField
      FieldAlias = 'POSTALSTATE'
      FieldName = 'POSTALSTATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object plPhonebookRptppField39: TppField
      FieldAlias = 'POSTALPOSTCODE'
      FieldName = 'POSTALPOSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object plPhonebookRptppField40: TppField
      FieldAlias = 'POSTALCOUNTRY'
      FieldName = 'POSTALCOUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 39
    end
    object plPhonebookRptppField41: TppField
      FieldAlias = 'WHICHADDRESS'
      FieldName = 'WHICHADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 40
    end
    object plPhonebookRptppField42: TppField
      FieldAlias = 'DEFAULT_REF'
      FieldName = 'DEFAULT_REF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object plPhonebookRptppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDISBS'
      FieldName = 'ANTDISBS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object plPhonebookRptppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANTDRS'
      FieldName = 'ANTDRS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object plPhonebookRptppField45: TppField
      FieldAlias = 'GIVENNAMES'
      FieldName = 'GIVENNAMES'
      FieldLength = 60
      DisplayWidth = 60
      Position = 44
    end
    object plPhonebookRptppField46: TppField
      FieldAlias = 'LASTNAME'
      FieldName = 'LASTNAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 45
    end
    object plPhonebookRptppField47: TppField
      FieldAlias = 'CREATED'
      FieldName = 'CREATED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 46
    end
    object plPhonebookRptppField48: TppField
      FieldAlias = 'MODIFIED'
      FieldName = 'MODIFIED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 47
    end
    object plPhonebookRptppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'INDUSTRYCODE'
      FieldName = 'INDUSTRYCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object plPhonebookRptppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERRALCODE'
      FieldName = 'REFERRALCODE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object plPhonebookRptppField51: TppField
      FieldAlias = 'REFERREDBY'
      FieldName = 'REFERREDBY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 50
    end
    object plPhonebookRptppField52: TppField
      FieldAlias = 'REFERRALMAINTAINER'
      FieldName = 'REFERRALMAINTAINER'
      FieldLength = 3
      DisplayWidth = 3
      Position = 51
    end
    object plPhonebookRptppField53: TppField
      FieldAlias = 'MODIFIED_BY'
      FieldName = 'MODIFIED_BY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 52
    end
    object plPhonebookRptppField54: TppField
      FieldAlias = 'CUST_ADDRESS'
      FieldName = 'CUST_ADDRESS'
      FieldLength = 120
      DisplayWidth = 120
      Position = 53
    end
    object plPhonebookRptppField55: TppField
      FieldAlias = 'CUST_SUBURB'
      FieldName = 'CUST_SUBURB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 54
    end
    object plPhonebookRptppField56: TppField
      FieldAlias = 'CUST_STATE'
      FieldName = 'CUST_STATE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 55
    end
    object plPhonebookRptppField57: TppField
      FieldAlias = 'CUST_POSTCODE'
      FieldName = 'CUST_POSTCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 56
    end
    object plPhonebookRptppField58: TppField
      FieldAlias = 'CUST_COUNTRY'
      FieldName = 'CUST_COUNTRY'
      FieldLength = 30
      DisplayWidth = 30
      Position = 57
    end
    object plPhonebookRptppField59: TppField
      FieldAlias = 'ABN'
      FieldName = 'ABN'
      FieldLength = 14
      DisplayWidth = 14
      Position = 58
    end
    object plPhonebookRptppField60: TppField
      FieldAlias = 'REFERREDBY_NNAME'
      FieldName = 'REFERREDBY_NNAME'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 59
    end
    object plPhonebookRptppField61: TppField
      FieldAlias = 'REFERREDBY_NCLIENT'
      FieldName = 'REFERREDBY_NCLIENT'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 60
    end
    object plPhonebookRptppField62: TppField
      FieldAlias = 'REFERREDBY_EMP'
      FieldName = 'REFERREDBY_EMP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 61
    end
    object plPhonebookRptppField63: TppField
      FieldAlias = 'LAST_STATEMENT_DATE'
      FieldName = 'LAST_STATEMENT_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 62
    end
    object plPhonebookRptppField64: TppField
      FieldAlias = 'REFERRALTYPE'
      FieldName = 'REFERRALTYPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
    object plPhonebookRptppField65: TppField
      FieldAlias = 'CLIENTID'
      FieldName = 'CLIENTID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 64
    end
    object plPhonebookRptppField66: TppField
      FieldAlias = 'ARCHIVED'
      FieldName = 'ARCHIVED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object plPhonebookRptppField67: TppField
      FieldAlias = 'ARCHIVED_BY'
      FieldName = 'ARCHIVED_BY'
      FieldLength = 10
      DisplayWidth = 10
      Position = 66
    end
    object plPhonebookRptppField68: TppField
      FieldAlias = 'ARCHIVED_WHEN'
      FieldName = 'ARCHIVED_WHEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 67
    end
    object plPhonebookRptppField69: TppField
      FieldAlias = 'DUMMY'
      FieldName = 'DUMMY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 68
    end
    object plPhonebookRptppField70: TppField
      FieldAlias = 'FULL_NAME_ADDRESS'
      FieldName = 'FULL_NAME_ADDRESS'
      FieldLength = 1500
      DisplayWidth = 1500
      Position = 69
    end
    object plPhonebookRptppField71: TppField
      FieldAlias = 'DUMMY1'
      FieldName = 'DUMMY1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 70
    end
    object plPhonebookRptppField72: TppField
      FieldAlias = 'CREATED_BY'
      FieldName = 'CREATED_BY'
      FieldLength = 20
      DisplayWidth = 20
      Position = 71
    end
    object plPhonebookRptppField73: TppField
      FieldAlias = 'EMAIL1'
      FieldName = 'EMAIL1'
      FieldLength = 80
      DisplayWidth = 80
      Position = 72
    end
    object plPhonebookRptppField74: TppField
      FieldAlias = 'EMAIL2'
      FieldName = 'EMAIL2'
      FieldLength = 80
      DisplayWidth = 80
      Position = 73
    end
    object plPhonebookRptppField75: TppField
      FieldAlias = 'WHICHEMAILADDRESS'
      FieldName = 'WHICHEMAILADDRESS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 74
    end
    object plPhonebookRptppField76: TppField
      FieldAlias = 'RELATIONSHIP_TYPE'
      FieldName = 'RELATIONSHIP_TYPE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 75
    end
    object plPhonebookRptppField77: TppField
      FieldAlias = 'RELATIONSHIP_STATUS'
      FieldName = 'RELATIONSHIP_STATUS'
      FieldLength = 5
      DisplayWidth = 5
      Position = 76
    end
    object plPhonebookRptppField78: TppField
      FieldAlias = 'RELATIONSHIP_ACTION'
      FieldName = 'RELATIONSHIP_ACTION'
      FieldLength = 5
      DisplayWidth = 5
      Position = 77
    end
    object plPhonebookRptppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'FIRM_SIZE'
      FieldName = 'FIRM_SIZE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 78
    end
    object plPhonebookRptppField80: TppField
      FieldAlias = 'SYSTEM1'
      FieldName = 'SYSTEM1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 79
    end
    object plPhonebookRptppField81: TppField
      FieldAlias = 'SYSTEM2'
      FieldName = 'SYSTEM2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 80
    end
    object plPhonebookRptppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'TURNOVER'
      FieldName = 'TURNOVER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object plPhonebookRptppField83: TppField
      FieldAlias = 'IMPORT_NOTE'
      FieldName = 'IMPORT_NOTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 82
    end
    object plPhonebookRptppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'DMS_KEY'
      FieldName = 'DMS_KEY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object plPhonebookRptppField85: TppField
      FieldAlias = 'CHARGE_INTEREST'
      FieldName = 'CHARGE_INTEREST'
      FieldLength = 1
      DisplayWidth = 1
      Position = 84
    end
    object plPhonebookRptppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'INT_RATE_TO_CHG'
      FieldName = 'INT_RATE_TO_CHG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 85
    end
    object plPhonebookRptppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTOR_TERMS'
      FieldName = 'DEBTOR_TERMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 86
    end
    object plPhonebookRptppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTOR_DISCOUNT'
      FieldName = 'DEBTOR_DISCOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 87
    end
    object plPhonebookRptppField89: TppField
      FieldAlias = 'INVITE_TO_EVENTS'
      FieldName = 'INVITE_TO_EVENTS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 88
    end
    object plPhonebookRptppField90: TppField
      FieldAlias = 'SEND_NEWSLETTER'
      FieldName = 'SEND_NEWSLETTER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 89
    end
    object plPhonebookRptppField91: TppField
      FieldAlias = 'SEND_MAIL'
      FieldName = 'SEND_MAIL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 90
    end
    object plPhonebookRptppField92: TppField
      FieldAlias = 'TAXNO'
      FieldName = 'TAXNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 91
    end
    object plPhonebookRptppField93: TppField
      FieldAlias = 'IS_CLIENT'
      FieldName = 'IS_CLIENT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 92
    end
    object plPhonebookRptppField94: TppField
      FieldAlias = 'IS_CREDITOR'
      FieldName = 'IS_CREDITOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 93
    end
    object plPhonebookRptppField95: TppField
      FieldAlias = 'NCREDITOR'
      FieldName = 'NCREDITOR'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 94
    end
    object plPhonebookRptppField96: TppField
      FieldAlias = 'CREDITORID'
      FieldName = 'CREDITORID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object plPhonebookRptppField97: TppField
      FieldAlias = 'DIRECTPHONE'
      FieldName = 'DIRECTPHONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 96
    end
    object plPhonebookRptppField98: TppField
      FieldAlias = 'PARTNER'
      FieldName = 'PARTNER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 97
    end
    object plPhonebookRptppField99: TppField
      FieldAlias = 'FULL_ADDRESS'
      FieldName = 'FULL_ADDRESS'
      FieldLength = 1500
      DisplayWidth = 1500
      Position = 98
    end
    object plPhonebookRptppField100: TppField
      FieldAlias = 'DX_FULL_ADDRESS'
      FieldName = 'DX_FULL_ADDRESS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 99
    end
    object plPhonebookRptppField101: TppField
      FieldAlias = 'SUBURB_ONLY_ADDRESS'
      FieldName = 'SUBURB_ONLY_ADDRESS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 100
    end
    object plPhonebookRptppField102: TppField
      FieldAlias = 'CLIENT_IMAGE'
      FieldName = 'CLIENT_IMAGE'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 101
      Searchable = False
      Sortable = False
    end
    object plPhonebookRptppField103: TppField
      FieldAlias = 'CLIENTTITLE'
      FieldName = 'CLIENTTITLE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 102
    end
    object plPhonebookRptppField104: TppField
      FieldAlias = 'CLIENTNAME'
      FieldName = 'CLIENTNAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 103
    end
    object plPhonebookRptppField105: TppField
      FieldAlias = 'DATE_OF_DEATH'
      FieldName = 'DATE_OF_DEATH'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 104
    end
    object plPhonebookRptppField106: TppField
      FieldAlias = 'CONTACT'
      FieldName = 'CONTACT'
      FieldLength = 60
      DisplayWidth = 60
      Position = 105
    end
    object plPhonebookRptppField107: TppField
      FieldAlias = 'CONTACT_NAME'
      FieldName = 'CONTACT_NAME'
      FieldLength = 400
      DisplayWidth = 400
      Position = 106
    end
    object plPhonebookRptppField108: TppField
      FieldAlias = 'ADDITIONAL_CONTACT_NAME'
      FieldName = 'ADDITIONAL_CONTACT_NAME'
      FieldLength = 400
      DisplayWidth = 400
      Position = 107
    end
    object plPhonebookRptppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBTORSTATUS'
      FieldName = 'DEBTORSTATUS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 108
    end
    object plPhonebookRptppField110: TppField
      FieldAlias = 'WHICHPHONE'
      FieldName = 'WHICHPHONE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 109
    end
    object plPhonebookRptppField111: TppField
      FieldAlias = 'CONTACT_MATTER'
      FieldName = 'CONTACT_MATTER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 110
    end
    object plPhonebookRptppField112: TppField
      FieldAlias = 'NRIC'
      FieldName = 'NRIC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 111
    end
    object plPhonebookRptppField113: TppField
      FieldAlias = 'SUPERCLIENT'
      FieldName = 'SUPERCLIENT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 112
    end
    object plPhonebookRptppField114: TppField
      FieldAlias = 'PROSPECTIVE'
      FieldName = 'PROSPECTIVE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 113
    end
    object plPhonebookRptppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'PHONEBOOK_STATUS_ID'
      FieldName = 'PHONEBOOK_STATUS_ID'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 114
    end
    object plPhonebookRptppField116: TppField
      FieldAlias = 'PRIMARY_CONTACT'
      FieldName = 'PRIMARY_CONTACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 115
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plPhonebookRpt
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
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 46
    Top = 413
    Version = '16.03'
    mmColumnWidth = 0
    DataPipelineName = 'plPhonebookRpt'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Anchors = [atLeft, atBottom]
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6350
        mmLeft = 0
        mmTop = 12700
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 178330
        mmTop = 14288
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Phone Book Search'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 14288
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Caption = 'BHL Insight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 6086
        mmLeft = 794
        mmTop = 1058
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 18785
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 44979
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Caption = 'NAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 1323
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'NAME'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3598
        mmLeft = 14023
        mmTop = 1323
        mmWidth = 98425
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Work:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 118269
        mmTop = 6615
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'WORKPHONE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3598
        mmLeft = 132027
        mmTop = 6615
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Home:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 117475
        mmTop = 1588
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'HOMEPHONE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3598
        mmLeft = 132027
        mmTop = 1588
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Caption = 'TITLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 3440
        mmTop = 6615
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'TITLE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3598
        mmLeft = 14023
        mmTop = 6615
        mmWidth = 75142
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Caption = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 124619
        mmTop = 11642
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'FAX'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3598
        mmLeft = 132027
        mmTop = 11642
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Street Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 18521
        mmWidth = 19843
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = 'Postal Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 18521
        mmWidth = 19843
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 5027
        mmTop = 23813
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'ADDRESS'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 23813
        mmWidth = 61119
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Suburb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 6879
        mmTop = 29104
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'SUBURB'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 29104
        mmWidth = 61119
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Postcode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 2646
        mmTop = 34396
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'POSTCODE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 34396
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Caption = 'State'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 10583
        mmTop = 39423
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'STATE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 39423
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 102659
        mmTop = 23813
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'POSTALADDRESS'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 23813
        mmWidth = 56092
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Suburb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 104511
        mmTop = 29104
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        DataField = 'POSTALSUBURB'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 29104
        mmWidth = 56092
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Postcode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 100277
        mmTop = 34396
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        DataField = 'POSTALPOSTCODE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 34396
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Caption = 'State'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 108215
        mmTop = 39423
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        DataField = 'POSTALSTATE'
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 39423
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3705
        mmLeft = 160073
        mmTop = 1058
        mmWidth = 30957
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = clSilver
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Color = clSilver
        DataPipeline = plPhonebookRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plPhonebookRpt'
        mmHeight = 3810
        mmLeft = 72231
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Caption = 'Total Number of Clients Printed: '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 1323
        mmWidth = 42598
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'NNAME'
      DataPipeline = plPhonebookRpt
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plPhonebookRpt'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape2: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape2'
          Brush.Color = clBlack
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Caption = 'Search:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3705
          mmLeft = 2117
          mmTop = 1058
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          DataField = 'SEARCH'
          DataPipeline = plPhonebookRpt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Segoe UI'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plPhonebookRpt'
          mmHeight = 3598
          mmLeft = 15346
          mmTop = 1058
          mmWidth = 129382
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
