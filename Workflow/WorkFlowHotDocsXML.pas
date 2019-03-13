 {********************************************}
{                                            }
{          Delphi XML Data Binding           }
{                                            }
{         Generated on: 14/07/2003 11:40:38 AM }
{       Generated from: D:\tmp\test.xml      }
{   Settings stored in: D:\tmp\test.xdb      }
{                                            }
{********************************************}
unit WorkFlowHotDocsXML;

interface

uses Xml.Xmldom, Xml.XMLDoc, Xml.XMLIntf,  Xml.Win.msxmldom;

type

{ Forward Decls }

  IXMLAnswerSetType = interface;
  IXMLAnswerType = interface;
  IXMLRptValueType = interface;
  IXMLString_List = interface;

{ IXMLAnswerSetType }

  IXMLAnswerSetType = interface(IXMLNodeCollection)
    ['{A7908BF2-27D4-42BC-9F88-2FB9F103F1C1}']
    { Property Accessors }
    function Get_Title: WideString;
    function Get_Answer(Index: Integer): IXMLAnswerType;
    procedure Set_Title(Value: WideString);
    { Methods & Properties }
    function Add: IXMLAnswerType;
    function Insert(const Index: Integer): IXMLAnswerType;
    property Title: WideString read Get_Title write Set_Title;
    property Answer[Index: Integer]: IXMLAnswerType read Get_Answer; default;
  end;

{ IXMLAnswerType }

  IXMLAnswerType = interface(IXMLNode)
    ['{EE36A560-618D-437F-97E4-141F86AA881D}']
    { Property Accessors }
    function Get_Name: WideString;
    function Get_DateValue: WideString;
    function Get_TextValue: WideString;
    function Get_NumValue: WideString;
    function Get_TFValue: WideString;
    function Get_RptValue: IXMLRptValueType;
    procedure Set_Name(Value: WideString);
    procedure Set_DateValue(Value: WideString);
    procedure Set_TextValue(Value: WideString);
    procedure Set_NumValue(Value: WideString);
    procedure Set_TFValue(Value: WideString);
    { Methods & Properties }
    property Name: WideString read Get_Name write Set_Name;
    property DateValue: WideString read Get_DateValue write Set_DateValue;
    property TextValue: WideString read Get_TextValue write Set_TextValue;
    property NumValue: WideString read Get_NumValue write Set_NumValue;
    property TFValue: WideString read Get_TFValue write Set_TFValue;
    property RptValue: IXMLRptValueType read Get_RptValue;
  end;

{ IXMLRptValueType }

  IXMLRptValueType = interface(IXMLNode)
    ['{EB033DE4-865E-4062-A965-07E99635C483}']
    { Property Accessors }
    function Get_TextValue: IXMLString_List;
    function Get_DateValue: IXMLString_List;
    function Get_NumValue: IXMLString_List;
    function Get_TFValue: IXMLString_List;
    { Methods & Properties }
    property TextValue: IXMLString_List read Get_TextValue;
    property DateValue: IXMLString_List read Get_DateValue;
    property NumValue: IXMLString_List read Get_NumValue;
    property TFValue: IXMLString_List read Get_TFValue;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{42B563E3-567B-4A61-9DD9-7F3CA0279249}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLAnswerSetType = class;
  TXMLAnswerType = class;
  TXMLRptValueType = class;
  TXMLString_List = class;

{ TXMLAnswerSetType }

  TXMLAnswerSetType = class(TXMLNodeCollection, IXMLAnswerSetType)
  protected
    { IXMLAnswerSetType }
    function Get_Title: WideString;
    function Get_Answer(Index: Integer): IXMLAnswerType;
    procedure Set_Title(Value: WideString);
    function Add: IXMLAnswerType;
    function Insert(const Index: Integer): IXMLAnswerType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAnswerType }

  TXMLAnswerType = class(TXMLNode, IXMLAnswerType)
  protected
    { IXMLAnswerType }
    function Get_Name: WideString;
    function Get_DateValue: WideString;
    function Get_TextValue: WideString;
    function Get_NumValue: WideString;
    function Get_TFValue: WideString;
    function Get_RptValue: IXMLRptValueType;
    procedure Set_Name(Value: WideString);
    procedure Set_DateValue(Value: WideString);
    procedure Set_TextValue(Value: WideString);
    procedure Set_NumValue(Value: WideString);
    procedure Set_TFValue(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRptValueType }

  TXMLRptValueType = class(TXMLNode, IXMLRptValueType)
  private
    FTextValue: IXMLString_List;
    FDateValue: IXMLString_List;
    FNumValue: IXMLString_List;
    FTFValue: IXMLString_List;
  protected
    { IXMLRptValueType }
    function Get_TextValue: IXMLString_List;
    function Get_DateValue: IXMLString_List;
    function Get_NumValue: IXMLString_List;
    function Get_TFValue: IXMLString_List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLString_List }

  TXMLString_List = class(TXMLNodeCollection, IXMLString_List)
  protected
    { IXMLString_List }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
  end;

{ Global Functions }

function GetAnswerSet(Doc: IXMLDocument): IXMLAnswerSetType;
function LoadAnswerSet(const FileName: WideString): IXMLAnswerSetType;
function NewAnswerSet: IXMLAnswerSetType;

implementation

{ Global Functions }

function GetAnswerSet(Doc: IXMLDocument): IXMLAnswerSetType;
begin
   Result := Doc.GetDocBinding('AnswerSet', TXMLAnswerSetType) as IXMLAnswerSetType;
end;
function LoadAnswerSet(const FileName: WideString): IXMLAnswerSetType;
begin
   Result := LoadXMLDocument(FileName).GetDocBinding('AnswerSet', TXMLAnswerSetType) as IXMLAnswerSetType;
end;

function NewAnswerSet: IXMLAnswerSetType;
begin
   Result := NewXMLDocument.GetDocBinding('AnswerSet', TXMLAnswerSetType) as IXMLAnswerSetType;
end;

{ TXMLAnswerSetType }

procedure TXMLAnswerSetType.AfterConstruction;
begin
  RegisterChildNode('Answer', TXMLAnswerType);
  ItemTag := 'Answer';
  ItemInterface := IXMLAnswerType;
  inherited;
end;

function TXMLAnswerSetType.Get_Title: WideString;
begin
  Result := AttributeNodes['title'].Text;
end;

procedure TXMLAnswerSetType.Set_Title(Value: WideString);
begin
  SetAttribute('title', Value);
end;

function TXMLAnswerSetType.Get_Answer(Index: Integer): IXMLAnswerType;
begin
  Result := List[Index] as IXMLAnswerType;
end;

function TXMLAnswerSetType.Add: IXMLAnswerType;
begin
  Result := AddItem(-1) as IXMLAnswerType;
end;

function TXMLAnswerSetType.Insert(const Index: Integer): IXMLAnswerType;
begin
  Result := AddItem(Index) as IXMLAnswerType;
end;


{ TXMLAnswerType }

procedure TXMLAnswerType.AfterConstruction;
begin
  RegisterChildNode('RptValue', TXMLRptValueType);
  inherited;
end;

function TXMLAnswerType.Get_Name: WideString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLAnswerType.Set_Name(Value: WideString);
begin
  SetAttribute('name', Value);
end;

function TXMLAnswerType.Get_DateValue: WideString;
begin
  Result := ChildNodes['DateValue'].Text;
end;

procedure TXMLAnswerType.Set_DateValue(Value: WideString);
begin
  ChildNodes['DateValue'].NodeValue := Value;
end;

function TXMLAnswerType.Get_TextValue: WideString;
begin
  Result := ChildNodes['TextValue'].Text;
end;

procedure TXMLAnswerType.Set_TextValue(Value: WideString);
begin
  ChildNodes['TextValue'].NodeValue := Value;
end;

function TXMLAnswerType.Get_NumValue: WideString;
begin
  Result := ChildNodes['NumValue'].Text;
end;

procedure TXMLAnswerType.Set_NumValue(Value: WideString);
begin
  ChildNodes['NumValue'].NodeValue := Value;
end;

function TXMLAnswerType.Get_TFValue: WideString;
begin
  Result := ChildNodes['TFValue'].Text;
end;

procedure TXMLAnswerType.Set_TFValue(Value: WideString);
begin
  ChildNodes['TFValue'].NodeValue := Value;
end;

function TXMLAnswerType.Get_RptValue: IXMLRptValueType;
begin
  Result := ChildNodes['RptValue'] as IXMLRptValueType;
end;

{ TXMLRptValueType }

procedure TXMLRptValueType.AfterConstruction;
begin
  FTextValue := CreateCollection(TXMLString_List, IXMLNode, 'TextValue') as IXMLString_List;
  FDateValue := CreateCollection(TXMLString_List, IXMLNode, 'DateValue') as IXMLString_List;
  FNumValue := CreateCollection(TXMLString_List, IXMLNode, 'NumValue') as IXMLString_List;
  FTFValue := CreateCollection(TXMLString_List, IXMLNode, 'TFValue') as IXMLString_List;
  inherited;
end;

function TXMLRptValueType.Get_TextValue: IXMLString_List;
begin
  Result := FTextValue;
end;

function TXMLRptValueType.Get_DateValue: IXMLString_List;
begin
  Result := FDateValue;
end;

function TXMLRptValueType.Get_NumValue: IXMLString_List;
begin
  Result := FNumValue;
end;

function TXMLRptValueType.Get_TFValue: IXMLString_List;
begin
  Result := FTFValue;
end;

{ TXMLString_List }

function TXMLString_List.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;


function TXMLString_List.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;


function TXMLString_List.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

initialization
   Xml.Win.msxmldom.MSXML6_ProhibitDTD := False;

end.
