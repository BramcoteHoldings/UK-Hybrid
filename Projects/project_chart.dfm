object frmProjectChart: TfrmProjectChart
  Left = 0
  Top = 0
  Caption = 'Project Chart'
  ClientHeight = 679
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 106
  TextHeight = 14
  object dxDbOrgChart1: TdxDbOrgChart
    Left = 0
    Top = 0
    Width = 1094
    Height = 638
    DataSource = dsProjectScaleLinks
    KeyFieldName = 'ID'
    ParentFieldName = 'PARENT_ID'
    TextFieldName = 'DESCR'
    OrderFieldName = 'SEQ_ORDER'
    DefaultNodeWidth = 80
    DefaultNodeHeight = 45
    Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag, ocRect3D, ocAnimate]
    EditMode = [emWrap, emGrow]
    OnCreateNode = dxDbOrgChart1CreateNode
    Align = alClient
    Color = clDefault
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 1110
    ExplicitHeight = 744
  end
  object Panel1: TPanel
    Left = 0
    Top = 638
    Width = 1094
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 744
    ExplicitWidth = 1110
    object cxButton1: TcxButton
      Left = 1005
      Top = 6
      Width = 83
      Height = 28
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmAxiom.ilstToolbar
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 906
      Top = 6
      Width = 83
      Height = 28
      Caption = 'Save'
      ModalResult = 1
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmAxiom.ilstToolbar
      TabOrder = 1
    end
  end
  object dsProjectScaleLinks: TUniDataSource
    DataSet = qryProjectScaleLinks
    Left = 578
    Top = 180
  end
  object qryProjectScaleLinks: TUniQuery
    UpdatingTable = 'proj_templ_scalecost_link'
    KeyFields = 'id'
    SQLInsert.Strings = (
      'INSERT INTO PROJ_TEMPL_SCALECOST_LINK'
      
        '  (NPROJECTTEMPL, NSCALECOST, SEQ_ORDER, EMPLOYEE_TYPE, DAYS, ID' +
        ', PARENT_ID, PARENT)'
      'VALUES'
      
        '  (:NPROJECTTEMPL, :NSCALECOST, :SEQ_ORDER, :EMPLOYEE_TYPE, :DAY' +
        'S, :ID, :PARENT_ID, :PARENT)')
    SQLDelete.Strings = (
      'DELETE FROM PROJ_TEMPL_SCALECOST_LINK'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE PROJ_TEMPL_SCALECOST_LINK'
      'SET'
      
        '  NPROJECTTEMPL = :NPROJECTTEMPL, NSCALECOST = :NSCALECOST, SEQ_' +
        'ORDER = :SEQ_ORDER, EMPLOYEE_TYPE = :EMPLOYEE_TYPE, DAYS = :DAYS' +
        ', ID = :ID, PARENT_ID = :PARENT_ID, PARENT = :PARENT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      
        'SELECT NPROJECTTEMPL, NSCALECOST, SEQ_ORDER, EMPLOYEE_TYPE, DAYS' +
        ', ID, PARENT_ID, PARENT FROM PROJ_TEMPL_SCALECOST_LINK'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT NPROJECTTEMPL, NSCALECOST, SEQ_ORDER, EMPLOYEE_TYPE, DAYS' +
        ', ID, PARENT_ID, PARENT FROM PROJ_TEMPL_SCALECOST_LINK'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM PROJ_TEMPL_SCALECOST_LINK'
      ''
      ')')
    Connection = dmAxiom.uniInsight
    SQL.Strings = (
      'SELECT   s.code, s.descr, pts.nprojecttempl, pts.nscalecost, '
      
        '         pts.seq_order, pts.employee_type, pts.days, pts.id, pts' +
        '.parent_id, pts.parent,'
      '         pts.type, pts.colour'
      '    FROM proj_templ_scalecost_link pts, scalecost s'
      
        '   WHERE pts.nscalecost = s.nscalecost AND pts.nprojecttempl = :' +
        'p_val'
      'ORDER BY pts.seq_order')
    Left = 591
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_val'
        Value = 54
      end>
  end
end
