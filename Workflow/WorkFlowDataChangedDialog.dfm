object fmWorkFlowDataChangedDialog: TfmWorkFlowDataChangedDialog
  Left = 861
  Top = 370
  BorderStyle = bsDialog
  Caption = 'Custom Data Changed'
  ClientHeight = 400
  ClientWidth = 500
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    500
    400)
  PixelsPerInch = 96
  TextHeight = 13
  object bnOk: TButton
    Left = 171
    Top = 366
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = bnOkClick
  end
  object bnCancel: TButton
    Left = 253
    Top = 366
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object vtTree: TVirtualStringTree
    Left = 10
    Top = 10
    Width = 480
    Height = 348
    Anchors = [akLeft, akTop, akRight, akBottom]
    CheckImageKind = ckLightTick
    DefaultNodeHeight = 20
    Header.AutoSizeIndex = 2
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Segoe UI'
    Header.Font.Style = []
    Header.Options = [hoAutoResize, hoVisible]
    Header.Style = hsPlates
    HintAnimation = hatNone
    TabOrder = 2
    TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoSpanColumns, toAutoTristateTracking, toAutoDeleteMovedNodes]
    TreeOptions.MiscOptions = [toCheckSupport, toFullRepaintOnResize, toInitOnSave, toReportMode, toToggleOnDblClick, toWheelPanning]
    TreeOptions.PaintOptions = [toHideFocusRect, toHideSelection, toUseBlendedImages]
    TreeOptions.SelectionOptions = [toDisableDrawSelection, toExtendedFocus, toFullRowSelect]
    OnCollapsing = vtTreeCollapsing
    OnGetText = vtTreeGetText
    OnPaintText = vtTreePaintText
    OnGetNodeDataSize = vtTreeGetNodeDataSize
    Columns = <
      item
        Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
        Position = 0
        Width = 200
        WideText = 'Source / Form / Field'
      end
      item
        Options = [coEnabled, coParentBidiMode, coParentColor, coResizable, coVisible]
        Position = 1
        Width = 100
        WideText = 'Old Value'
      end
      item
        Position = 2
        Width = 176
        WideText = 'New Value'
      end>
  end
end
