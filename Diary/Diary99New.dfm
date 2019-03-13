inherited frmDairy99New: TfrmDairy99New
  Left = 219
  Top = 244
  Caption = 'frmDiary99New'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlButtons: TPanel
    inherited pnlThreeButtons: TPanel
      inherited btnOk: TcxButton
        LookAndFeel.NativeStyle = True
      end
      inherited btnCancel: TcxButton
        LookAndFeel.NativeStyle = True
      end
      inherited btnDelete: TcxButton
        LookAndFeel.NativeStyle = True
      end
    end
    inherited pnlRecurrence: TPanel
      inherited btnRecurrence: TcxButton
        LookAndFeel.NativeStyle = True
      end
    end
  end
  inherited pnlCaption: TPanel
    inherited teSubject: TcxTextEdit
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited teLocation: TcxTextEdit
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited icbLabel: TcxImageComboBox
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
  end
  inherited pnlTime: TPanel
    inherited deStart: TcxDateEdit
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited teStart: TcxTimeEdit
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited deEnd: TcxDateEdit
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited teEnd: TcxTimeEdit
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited cbAllDayEvent: TcxCheckBox
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
  end
  inherited pnlReminder: TPanel
    inherited cbReminder: TcxCheckBox
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited cbAdvanceTime: TcxComboBox
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    inherited icbShowTimeAs: TcxImageComboBox
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
  end
  inherited pnlMessage: TPanel
    inherited meMessage: TcxMemo
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
  end
  inherited pnlResource: TPanel
    inherited cbResources: TcxComboBox
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
  end
end
