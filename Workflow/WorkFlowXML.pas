
{*****************************************************************}
{                                                                 }
{                     Delphi XML Data Binding                     }
{                                                                 }
{         Generated on: 19/09/2002 12:13:52 PM                    }
{       Generated from: C:\development\xmltest\TestWorkflow.xml   }
{   Settings stored in: C:\development\xmltest\TestWorkflow.xdb   }
{                                                                 }
{*****************************************************************}
unit WorkFlowXML;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLAxiomationWorkFlowType = interface;
  IXMLDocumentType = interface;
  IXMLTableType = interface;
  IXMLColumnsType = interface;
  IXMLColumnType = interface;
  IXMLRowsType = interface;
  IXMLRowType = interface;
  IXMLDataType = interface;

{ IXMLAxiomationWorkFlowType }

  IXMLAxiomationWorkFlowType = interface(IXMLNodeCollection)
    ['{5BD5870B-00C2-4C22-A046-003FE9502D79}']
    { Property Accessors }
    function Get_Document(Index: Integer): IXMLDocumentType;
    { Methods & Properties }
    function Add: IXMLDocumentType;
    function Insert(const Index: Integer): IXMLDocumentType;
    property Document[Index: Integer]: IXMLDocumentType read Get_Document; default;
  end;

{ IXMLDocumentType }

  IXMLDocumentType = interface(IXMLNodeCollection)
    ['{B21332F4-8AA4-4866-B93A-E392EF023A08}']
    { Property Accessors }
    function Get_Name: WideString;
    function Get_Table(Index: Integer): IXMLTableType;
    procedure Set_Name(Value: WideString);
    { Methods & Properties }
    function Add: IXMLTableType;
    function Insert(const Index: Integer): IXMLTableType;
    property Name: WideString read Get_Name write Set_Name;
    property Table[Index: Integer]: IXMLTableType read Get_Table; default;
  end;

{ IXMLTableType }

  IXMLTableType = interface(IXMLNode)
    ['{81B778B9-1DC9-4664-ACD6-36CD6E622B1E}']
    { Property Accessors }
    function Get_Name: WideString;
    function Get_RowCount: Integer;
    function Get_Columns: IXMLColumnsType;
    function Get_Rows: IXMLRowsType;
    procedure Set_Name(Value: WideString);
    procedure Set_RowCount(Value: Integer);
    { Methods & Properties }
    property Name: WideString read Get_Name write Set_Name;
    property RowCount: Integer read Get_RowCount write Set_RowCount;
    property Columns: IXMLColumnsType read Get_Columns;
    property Rows: IXMLRowsType read Get_Rows;
  end;

{ IXMLColumnsType }

  IXMLColumnsType = interface(IXMLNodeCollection)
    ['{EAFC3C3E-7361-4313-99E4-4A024D630107}']
    { Property Accessors }
    function Get_Column(Index: Integer): IXMLColumnType;
    { Methods & Properties }
    function Add: IXMLColumnType;
    function Insert(const Index: Integer): IXMLColumnType;
    property Column[Index: Integer]: IXMLColumnType read Get_Column; default;
  end;

{ IXMLColumnType }

  IXMLColumnType = interface(IXMLNode)
    ['{18DDA77A-084D-4C60-9393-49A5481389D8}']
    { Property Accessors }
    function Get_FieldName: WideString;
    function Get_FieldType: WideString;
    procedure Set_FieldName(Value: WideString);
    procedure Set_FieldType(Value: WideString);
    { Methods & Properties }
    property FieldName: WideString read Get_FieldName write Set_FieldName;
    property FieldType: WideString read Get_FieldType write Set_FieldType;
  end;

{ IXMLRowsType }

  IXMLRowsType = interface(IXMLNodeCollection)
    ['{E4528B8C-90C1-4A7A-8A5D-4A7185557477}']
    { Property Accessors }
    function Get_Row(Index: Integer): IXMLRowType;
    { Methods & Properties }
    function Add: IXMLRowType;
    function Insert(const Index: Integer): IXMLRowType;
    property Row[Index: Integer]: IXMLRowType read Get_Row; default;
  end;

{ IXMLRowType }

  IXMLRowType = interface(IXMLNodeCollection)
    ['{D55A8314-D31F-418E-8474-74376C304BCC}']
    { Property Accessors }
    function Get_Data(Index: Integer): IXMLDataType;
    { Methods & Properties }
    function Add: IXMLDataType;
    function Insert(const Index: Integer): IXMLDataType;
    property Data[Index: Integer]: IXMLDataType read Get_Data; default;
  end;

{ IXMLDataType }

  IXMLDataType = interface(IXMLNode)
    ['{2FEB08AE-DC3C-4672-A79E-EE87B467C6B1}']
    { Property Accessors }
    function Get_FieldName: WideString;
    procedure Set_FieldName(Value: WideString);
    { Methods & Properties }
    property FieldName: WideString read Get_FieldName write Set_FieldName;
  end;

{ Forward Decls }

  TXMLAxiomationWorkFlowType = class;
  TXMLDocumentType = class;
  TXMLTableType = class;
  TXMLColumnsType = class;
  TXMLColumnType = class;
  TXMLRowsType = class;
  TXMLRowType = class;
  TXMLDataType = class;

{ TXMLAxiomationWorkFlowType }

  TXMLAxiomationWorkFlowType = class(TXMLNodeCollection, IXMLAxiomationWorkFlowType)
  protected
    { IXMLAxiomationWorkFlowType }
    function Get_Document(Index: Integer): IXMLDocumentType;
    function Add: IXMLDocumentType;
    function Insert(const Index: Integer): IXMLDocumentType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDocumentType }

  TXMLDocumentType = class(TXMLNodeCollection, IXMLDocumentType)
  protected
    { IXMLDocumentType }
    function Get_Name: WideString;
    function Get_Table(Index: Integer): IXMLTableType;
    procedure Set_Name(Value: WideString);
    function Add: IXMLTableType;
    function Insert(const Index: Integer): IXMLTableType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTableType }

  TXMLTableType = class(TXMLNode, IXMLTableType)
  protected
    { IXMLTableType }
    function Get_Name: WideString;
    function Get_RowCount: Integer;
    function Get_Columns: IXMLColumnsType;
    function Get_Rows: IXMLRowsType;
    procedure Set_Name(Value: WideString);
    procedure Set_RowCount(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLColumnsType }

  TXMLColumnsType = class(TXMLNodeCollection, IXMLColumnsType)
  protected
    { IXMLColumnsType }
    function Get_Column(Index: Integer): IXMLColumnType;
    function Add: IXMLColumnType;
    function Insert(const Index: Integer): IXMLColumnType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLColumnType }

  TXMLColumnType = class(TXMLNode, IXMLColumnType)
  protected
    { IXMLColumnType }
    function Get_FieldName: WideString;
    function Get_FieldType: WideString;
    procedure Set_FieldName(Value: WideString);
    procedure Set_FieldType(Value: WideString);
  end;

{ TXMLRowsType }

  TXMLRowsType = class(TXMLNodeCollection, IXMLRowsType)
  protected
    { IXMLRowsType }
    function Get_Row(Index: Integer): IXMLRowType;
    function Add: IXMLRowType;
    function Insert(const Index: Integer): IXMLRowType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRowType }

  TXMLRowType = class(TXMLNodeCollection, IXMLRowType)
  protected
    { IXMLRowType }
    function Get_Data(Index: Integer): IXMLDataType;
    function Add: IXMLDataType;
    function Insert(const Index: Integer): IXMLDataType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDataType }

  TXMLDataType = class(TXMLNode, IXMLDataType)
  protected
    { IXMLDataType }
    function Get_FieldName: WideString;
    procedure Set_FieldName(Value: WideString);
  end;

{ Global Functions }

function GetAxiomationWorkFlow(Doc: IXMLDocument): IXMLAxiomationWorkFlowType;
function LoadAxiomationWorkFlow(const FileName: WideString): IXMLAxiomationWorkFlowType;
function NewAxiomationWorkFlow: IXMLAxiomationWorkFlowType;

implementation

{ Global Functions }

function GetAxiomationWorkFlow(Doc: IXMLDocument): IXMLAxiomationWorkFlowType;
begin
  Result := Doc.GetDocBinding('AxiomationWorkFlow', TXMLAxiomationWorkFlowType) as IXMLAxiomationWorkFlowType;
end;
function LoadAxiomationWorkFlow(const FileName: WideString): IXMLAxiomationWorkFlowType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('AxiomationWorkFlow', TXMLAxiomationWorkFlowType) as IXMLAxiomationWorkFlowType;
end;

function NewAxiomationWorkFlow: IXMLAxiomationWorkFlowType;
begin
  Result := NewXMLDocument.GetDocBinding('AxiomationWorkFlow', TXMLAxiomationWorkFlowType) as IXMLAxiomationWorkFlowType;
end;

{ TXMLAxiomationWorkFlowType }

procedure TXMLAxiomationWorkFlowType.AfterConstruction;
begin
  RegisterChildNode('Document', TXMLDocumentType);
  ItemTag := 'Document';
  ItemInterface := IXMLDocumentType;
  inherited;
end;

function TXMLAxiomationWorkFlowType.Get_Document(Index: Integer): IXMLDocumentType;
begin
  Result := List[Index] as IXMLDocumentType;
end;

function TXMLAxiomationWorkFlowType.Add: IXMLDocumentType;
begin
  Result := AddItem(-1) as IXMLDocumentType;
end;

function TXMLAxiomationWorkFlowType.Insert(const Index: Integer): IXMLDocumentType;
begin
  Result := AddItem(Index) as IXMLDocumentType;
end;


{ TXMLDocumentType }

procedure TXMLDocumentType.AfterConstruction;
begin
  RegisterChildNode('Table', TXMLTableType);
  ItemTag := 'Table';
  ItemInterface := IXMLTableType;
  inherited;
end;

function TXMLDocumentType.Get_Name: WideString;
begin
  Result := AttributeNodes['Name'].Text;
end;

procedure TXMLDocumentType.Set_Name(Value: WideString);
begin
  SetAttribute('Name', Value);
end;

function TXMLDocumentType.Get_Table(Index: Integer): IXMLTableType;
begin
  Result := List[Index] as IXMLTableType;
end;

function TXMLDocumentType.Add: IXMLTableType;
begin
  Result := AddItem(-1) as IXMLTableType;
end;

function TXMLDocumentType.Insert(const Index: Integer): IXMLTableType;
begin
  Result := AddItem(Index) as IXMLTableType;
end;


{ TXMLTableType }

procedure TXMLTableType.AfterConstruction;
begin
  RegisterChildNode('Columns', TXMLColumnsType);
  RegisterChildNode('Rows', TXMLRowsType);
  inherited;
end;

function TXMLTableType.Get_Name: WideString;
begin
  Result := AttributeNodes['Name'].Text;
end;

procedure TXMLTableType.Set_Name(Value: WideString);
begin
  SetAttribute('Name', Value);
end;

function TXMLTableType.Get_RowCount: Integer;
begin
  Result := AttributeNodes['RowCount'].NodeValue;
end;

procedure TXMLTableType.Set_RowCount(Value: Integer);
begin
  SetAttribute('RowCount', Value);
end;

function TXMLTableType.Get_Columns: IXMLColumnsType;
begin
  Result := ChildNodes['Columns'] as IXMLColumnsType;
end;

function TXMLTableType.Get_Rows: IXMLRowsType;
begin
  Result := ChildNodes['Rows'] as IXMLRowsType;
end;

{ TXMLColumnsType }

procedure TXMLColumnsType.AfterConstruction;
begin
  RegisterChildNode('Column', TXMLColumnType);
  ItemTag := 'Column';
  ItemInterface := IXMLColumnType;
  inherited;
end;

function TXMLColumnsType.Get_Column(Index: Integer): IXMLColumnType;
begin
  Result := List[Index] as IXMLColumnType;
end;

function TXMLColumnsType.Add: IXMLColumnType;
begin
  Result := AddItem(-1) as IXMLColumnType;
end;

function TXMLColumnsType.Insert(const Index: Integer): IXMLColumnType;
begin
  Result := AddItem(Index) as IXMLColumnType;
end;


{ TXMLColumnType }

function TXMLColumnType.Get_FieldName: WideString;
begin
  Result := AttributeNodes['FieldName'].Text;
end;

procedure TXMLColumnType.Set_FieldName(Value: WideString);
begin
  SetAttribute('FieldName', Value);
end;

function TXMLColumnType.Get_FieldType: WideString;
begin
  Result := AttributeNodes['FieldType'].Text;
end;

procedure TXMLColumnType.Set_FieldType(Value: WideString);
begin
  SetAttribute('FieldType', Value);
end;

{ TXMLRowsType }

procedure TXMLRowsType.AfterConstruction;
begin
  RegisterChildNode('Row', TXMLRowType);
  ItemTag := 'Row';
  ItemInterface := IXMLRowType;
  inherited;
end;

function TXMLRowsType.Get_Row(Index: Integer): IXMLRowType;
begin
  Result := List[Index] as IXMLRowType;
end;

function TXMLRowsType.Add: IXMLRowType;
begin
  Result := AddItem(-1) as IXMLRowType;
end;

function TXMLRowsType.Insert(const Index: Integer): IXMLRowType;
begin
  Result := AddItem(Index) as IXMLRowType;
end;


{ TXMLRowType }

procedure TXMLRowType.AfterConstruction;
begin
  RegisterChildNode('Data', TXMLDataType);
  ItemTag := 'Data';
  ItemInterface := IXMLDataType;
  inherited;
end;

function TXMLRowType.Get_Data(Index: Integer): IXMLDataType;
begin
  Result := List[Index] as IXMLDataType;
end;

function TXMLRowType.Add: IXMLDataType;
begin
  Result := AddItem(-1) as IXMLDataType;
end;

function TXMLRowType.Insert(const Index: Integer): IXMLDataType;
begin
  Result := AddItem(Index) as IXMLDataType;
end;


{ TXMLDataType }

function TXMLDataType.Get_FieldName: WideString;
begin
  Result := AttributeNodes['FieldName'].Text;
end;

procedure TXMLDataType.Set_FieldName(Value: WideString);
begin
  SetAttribute('FieldName', Value);
end;

end.

