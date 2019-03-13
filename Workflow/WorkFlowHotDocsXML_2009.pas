
{*******************************************************************}
{                                                                   }
{                         XML Data Binding                          }
{                                                                   }
{         Generated on: 7/04/2015 13:33:53                          }
{       Generated from: C:\HotDocs\Answers\xml\AnswerSet_2009.xsd   }
{   Settings stored in: C:\HotDocs\Answers\xml\AnswerSet_2009.xdb   }
{                                                                   }
{*******************************************************************}

unit WorkFlowHotDocsXML_2009;

interface

uses xmldom, XMLDoc, XMLIntf, Xml.Win.msxmldom;

type

{ Forward Decls }

  IXMLAnswerSet = interface;
  IXMLAnswer = interface;
  IXMLTextValue = interface;
  IXMLTextValueList = interface;
  IXMLNumValue = interface;
  IXMLNumValueList = interface;
  IXMLDateValue = interface;
  IXMLDateValueList = interface;
  IXMLTFValue = interface;
  IXMLTFValueList = interface;
  IXMLMCValue = interface;
  IXMLMCValueList = interface;
  IXMLClauseLibValue = interface;
  IXMLClauseLibValueList = interface;
  IXMLClauseLibValue_ClauseSelValue = interface;
  IXMLDBValue = interface;
  IXMLDBValueList = interface;
  IXMLDBValue_DBColumn = interface;
  IXMLRptValue = interface;
  IXMLRptValueList = interface;
  IXMLDocTextValue = interface;

{ IXMLAnswerSet }

  IXMLAnswerSet = interface(IXMLNodeCollection)
    ['{01E90D1C-1A1E-4C30-BA1C-EB10D308A625}']
    { Property Accessors }
    function Get_Title: UnicodeString;
    function Get_Version: UnicodeString;
    function Get_Save: UnicodeString;
    function Get_UseMangledNames: Boolean;
    function Get_Answer(Index: Integer): IXMLAnswer;
    procedure Set_Title(Value: UnicodeString);
    procedure Set_Version(Value: UnicodeString);
    procedure Set_Save(Value: UnicodeString);
    procedure Set_UseMangledNames(Value: Boolean);
    { Methods & Properties }
    function Add: IXMLAnswer;
    function Insert(const Index: Integer): IXMLAnswer;
    property Title: UnicodeString read Get_Title write Set_Title;
    property Version: UnicodeString read Get_Version write Set_Version;
    property Save: UnicodeString read Get_Save write Set_Save;
    property UseMangledNames: Boolean read Get_UseMangledNames write Set_UseMangledNames;
    property Answer[Index: Integer]: IXMLAnswer read Get_Answer; default;
  end;

{ IXMLAnswer }

  IXMLAnswer = interface(IXMLNode)
    ['{FD31FAC7-B4EB-4E6A-9AD8-995A74B100E8}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_Save: UnicodeString;
    function Get_TextValue: IXMLTextValue;
    function Get_NumValue: IXMLNumValue;
    function Get_DateValue: IXMLDateValue;
    function Get_TFValue: IXMLTFValue;
    function Get_MCValue: IXMLMCValue;
    function Get_ClauseLibValue: IXMLClauseLibValue;
    function Get_DBValue: IXMLDBValue;
    function Get_RptValue: IXMLRptValue;
    function Get_DocTextValue: IXMLDocTextValue;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Save(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property Save: UnicodeString read Get_Save write Set_Save;
    property TextValue: IXMLTextValue read Get_TextValue;
    property NumValue: IXMLNumValue read Get_NumValue;
    property DateValue: IXMLDateValue read Get_DateValue;
    property TFValue: IXMLTFValue read Get_TFValue;
    property MCValue: IXMLMCValue read Get_MCValue;
    property ClauseLibValue: IXMLClauseLibValue read Get_ClauseLibValue;
    property DBValue: IXMLDBValue read Get_DBValue;
    property RptValue: IXMLRptValue read Get_RptValue;
    property DocTextValue: IXMLDocTextValue read Get_DocTextValue;
  end;

{ IXMLTextValue }

  IXMLTextValue = interface(IXMLNode)
    ['{D9698D2D-8ED3-4535-8E4E-485A04BEE630}']
    { Property Accessors }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    property Unans: Boolean read Get_Unans write Set_Unans;
  end;

{ IXMLTextValueList }

  IXMLTextValueList = interface(IXMLNodeCollection)
    ['{5C941D69-A577-4A23-8853-88D38B0C3FE1}']
    { Methods & Properties }
    function Add: IXMLTextValue;
    function Insert(const Index: Integer): IXMLTextValue;

    function Get_Item(Index: Integer): IXMLTextValue;
    property Items[Index: Integer]: IXMLTextValue read Get_Item; default;
  end;

{ IXMLNumValue }

  IXMLNumValue = interface(IXMLNode)
    ['{74DF5815-F83A-461F-B416-A39FB1211AD1}']
    { Property Accessors }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    property Unans: Boolean read Get_Unans write Set_Unans;
  end;

{ IXMLNumValueList }

  IXMLNumValueList = interface(IXMLNodeCollection)
    ['{3F2BB40F-9D04-4C73-9827-B04E86D35CA8}']
    { Methods & Properties }
    function Add: IXMLNumValue;
    function Insert(const Index: Integer): IXMLNumValue;

    function Get_Item(Index: Integer): IXMLNumValue;
    property Items[Index: Integer]: IXMLNumValue read Get_Item; default;
  end;

{ IXMLDateValue }

  IXMLDateValue = interface(IXMLNode)
    ['{48F0B539-F256-408D-AF21-E7B3D5825B58}']
    { Property Accessors }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    property Unans: Boolean read Get_Unans write Set_Unans;
  end;

{ IXMLDateValueList }

  IXMLDateValueList = interface(IXMLNodeCollection)
    ['{4163A8CB-E655-44D2-B525-C7F223AA8037}']
    { Methods & Properties }
    function Add: IXMLDateValue;
    function Insert(const Index: Integer): IXMLDateValue;

    function Get_Item(Index: Integer): IXMLDateValue;
    property Items[Index: Integer]: IXMLDateValue read Get_Item; default;
  end;

{ IXMLTFValue }

  IXMLTFValue = interface(IXMLNode)
    ['{469B3C9C-5C9C-4767-841F-B1F8F23F4109}']
    { Property Accessors }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    property Unans: Boolean read Get_Unans write Set_Unans;
  end;

{ IXMLTFValueList }

  IXMLTFValueList = interface(IXMLNodeCollection)
    ['{C14E2BAB-31D5-47DF-87A1-C4D3BA834A13}']
    { Methods & Properties }
    function Add: IXMLTFValue;
    function Insert(const Index: Integer): IXMLTFValue;

    function Get_Item(Index: Integer): IXMLTFValue;
    property Items[Index: Integer]: IXMLTFValue read Get_Item; default;
  end;

{ IXMLMCValue }

  IXMLMCValue = interface(IXMLNodeCollection)
    ['{DA336882-93C1-4979-81A1-6D3BBD00A2DC}']
    { Property Accessors }
    function Get_Unans: Boolean;
    function Get_SelValue(Index: Integer): UnicodeString;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    function Add(const SelValue: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SelValue: UnicodeString): IXMLNode;
    property Unans: Boolean read Get_Unans write Set_Unans;
    property SelValue[Index: Integer]: UnicodeString read Get_SelValue; default;
  end;

{ IXMLMCValueList }

  IXMLMCValueList = interface(IXMLNodeCollection)
    ['{2E9C4D51-C875-470A-8CA4-BA94B6632F73}']
    { Methods & Properties }
    function Add: IXMLMCValue;
    function Insert(const Index: Integer): IXMLMCValue;

    function Get_Item(Index: Integer): IXMLMCValue;
    property Items[Index: Integer]: IXMLMCValue read Get_Item; default;
  end;

{ IXMLClauseLibValue }

  IXMLClauseLibValue = interface(IXMLNodeCollection)
    ['{345CF9CA-9F1F-405B-9AFD-806A186AEE97}']
    { Property Accessors }
    function Get_Unans: Boolean;
    function Get_ClauseSelValue(Index: Integer): IXMLClauseLibValue_ClauseSelValue;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    function Add: IXMLClauseLibValue_ClauseSelValue;
    function Insert(const Index: Integer): IXMLClauseLibValue_ClauseSelValue;
    property Unans: Boolean read Get_Unans write Set_Unans;
    property ClauseSelValue[Index: Integer]: IXMLClauseLibValue_ClauseSelValue read Get_ClauseSelValue; default;
  end;

{ IXMLClauseLibValueList }

  IXMLClauseLibValueList = interface(IXMLNodeCollection)
    ['{7E39CD55-3C46-4419-90F7-BFF697D598AA}']
    { Methods & Properties }
    function Add: IXMLClauseLibValue;
    function Insert(const Index: Integer): IXMLClauseLibValue;

    function Get_Item(Index: Integer): IXMLClauseLibValue;
    property Items[Index: Integer]: IXMLClauseLibValue read Get_Item; default;
  end;

{ IXMLClauseLibValue_ClauseSelValue }

  IXMLClauseLibValue_ClauseSelValue = interface(IXMLNode)
    ['{87AC159D-CCC7-45A9-9FBC-85FC5D95FB01}']
    { Property Accessors }
    function Get_Title: UnicodeString;
    function Get_FileName: UnicodeString;
    function Get_Description: UnicodeString;
    procedure Set_Title(Value: UnicodeString);
    procedure Set_FileName(Value: UnicodeString);
    procedure Set_Description(Value: UnicodeString);
    { Methods & Properties }
    property Title: UnicodeString read Get_Title write Set_Title;
    property FileName: UnicodeString read Get_FileName write Set_FileName;
    property Description: UnicodeString read Get_Description write Set_Description;
  end;

{ IXMLDBValue }

  IXMLDBValue = interface(IXMLNodeCollection)
    ['{6F1AC319-AA3B-47D1-8D2C-A0B854E24021}']
    { Property Accessors }
    function Get_Unans: Boolean;
    function Get_DBColumn(Index: Integer): IXMLDBValue_DBColumn;
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    function Add: IXMLDBValue_DBColumn;
    function Insert(const Index: Integer): IXMLDBValue_DBColumn;
    property Unans: Boolean read Get_Unans write Set_Unans;
    property DBColumn[Index: Integer]: IXMLDBValue_DBColumn read Get_DBColumn; default;
  end;

{ IXMLDBValueList }

  IXMLDBValueList = interface(IXMLNodeCollection)
    ['{58AE4E12-BCFD-4943-8115-703D043326E9}']
    { Methods & Properties }
    function Add: IXMLDBValue;
    function Insert(const Index: Integer): IXMLDBValue;

    function Get_Item(Index: Integer): IXMLDBValue;
    property Items[Index: Integer]: IXMLDBValue read Get_Item; default;
  end;

{ IXMLDBValue_DBColumn }

  IXMLDBValue_DBColumn = interface(IXMLNode)
    ['{6C7206D8-341B-4AEA-9437-8D326C6162A1}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_TextValue: IXMLTextValue;
    function Get_NumValue: IXMLNumValue;
    function Get_DateValue: IXMLDateValue;
    function Get_TFValue: IXMLTFValue;
    function Get_MCValue: IXMLMCValue;
    procedure Set_Name(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property TextValue: IXMLTextValue read Get_TextValue;
    property NumValue: IXMLNumValue read Get_NumValue;
    property DateValue: IXMLDateValue read Get_DateValue;
    property TFValue: IXMLTFValue read Get_TFValue;
    property MCValue: IXMLMCValue read Get_MCValue;
  end;

{ IXMLRptValue }

  IXMLRptValue = interface(IXMLNode)
    ['{9A76AEF1-5183-4F30-A656-D6893C8ECAF6}']
    { Property Accessors }
    function Get_TextValue: IXMLTextValueList;
    function Get_NumValue: IXMLNumValueList;
    function Get_DateValue: IXMLDateValueList;
    function Get_TFValue: IXMLTFValueList;
    function Get_MCValue: IXMLMCValueList;
    function Get_ClauseLibValue: IXMLClauseLibValueList;
    function Get_DBValue: IXMLDBValueList;
    function Get_RptValue: IXMLRptValueList;
    { Methods & Properties }
    property TextValue: IXMLTextValueList read Get_TextValue;
    property NumValue: IXMLNumValueList read Get_NumValue;
    property DateValue: IXMLDateValueList read Get_DateValue;
    property TFValue: IXMLTFValueList read Get_TFValue;
    property MCValue: IXMLMCValueList read Get_MCValue;
    property ClauseLibValue: IXMLClauseLibValueList read Get_ClauseLibValue;
    property DBValue: IXMLDBValueList read Get_DBValue;
    property RptValue: IXMLRptValueList read Get_RptValue;
  end;

{ IXMLRptValueList }

  IXMLRptValueList = interface(IXMLNodeCollection)
    ['{FFB16973-8610-4D2E-AAA7-678FFBF5195C}']
    { Methods & Properties }
    function Add: IXMLRptValue;
    function Insert(const Index: Integer): IXMLRptValue;

    function Get_Item(Index: Integer): IXMLRptValue;
    property Items[Index: Integer]: IXMLRptValue read Get_Item; default;
  end;

{ IXMLDocTextValue }

  IXMLDocTextValue = interface(IXMLNode)
    ['{FEC1A5A5-64F9-4B91-AF7E-EB4A465965B5}']
    { Property Accessors }
    function Get_Fmt: UnicodeString;
    function Get_Unans: Boolean;
    procedure Set_Fmt(Value: UnicodeString);
    procedure Set_Unans(Value: Boolean);
    { Methods & Properties }
    property Fmt: UnicodeString read Get_Fmt write Set_Fmt;
    property Unans: Boolean read Get_Unans write Set_Unans;
  end;

{ Forward Decls }

  TXMLAnswerSet = class;
  TXMLAnswer = class;
  TXMLTextValue = class;
  TXMLTextValueList = class;
  TXMLNumValue = class;
  TXMLNumValueList = class;
  TXMLDateValue = class;
  TXMLDateValueList = class;
  TXMLTFValue = class;
  TXMLTFValueList = class;
  TXMLMCValue = class;
  TXMLMCValueList = class;
  TXMLClauseLibValue = class;
  TXMLClauseLibValueList = class;
  TXMLClauseLibValue_ClauseSelValue = class;
  TXMLDBValue = class;
  TXMLDBValueList = class;
  TXMLDBValue_DBColumn = class;
  TXMLRptValue = class;
  TXMLRptValueList = class;
  TXMLDocTextValue = class;

{ TXMLAnswerSet }

  TXMLAnswerSet = class(TXMLNodeCollection, IXMLAnswerSet)
  protected
    { IXMLAnswerSet }
    function Get_Title: UnicodeString;
    function Get_Version: UnicodeString;
    function Get_Save: UnicodeString;
    function Get_UseMangledNames: Boolean;
    function Get_Answer(Index: Integer): IXMLAnswer;
    procedure Set_Title(Value: UnicodeString);
    procedure Set_Version(Value: UnicodeString);
    procedure Set_Save(Value: UnicodeString);
    procedure Set_UseMangledNames(Value: Boolean);
    function Add: IXMLAnswer;
    function Insert(const Index: Integer): IXMLAnswer;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAnswer }

  TXMLAnswer = class(TXMLNode, IXMLAnswer)
  protected
    { IXMLAnswer }
    function Get_Name: UnicodeString;
    function Get_Save: UnicodeString;
    function Get_TextValue: IXMLTextValue;
    function Get_NumValue: IXMLNumValue;
    function Get_DateValue: IXMLDateValue;
    function Get_TFValue: IXMLTFValue;
    function Get_MCValue: IXMLMCValue;
    function Get_ClauseLibValue: IXMLClauseLibValue;
    function Get_DBValue: IXMLDBValue;
    function Get_RptValue: IXMLRptValue;
    function Get_DocTextValue: IXMLDocTextValue;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Save(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTextValue }

  TXMLTextValue = class(TXMLNode, IXMLTextValue)
  protected
    { IXMLTextValue }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
  end;

{ TXMLTextValueList }

  TXMLTextValueList = class(TXMLNodeCollection, IXMLTextValueList)
  protected
    { IXMLTextValueList }
    function Add: IXMLTextValue;
    function Insert(const Index: Integer): IXMLTextValue;

    function Get_Item(Index: Integer): IXMLTextValue;
  end;

{ TXMLNumValue }

  TXMLNumValue = class(TXMLNode, IXMLNumValue)
  protected
    { IXMLNumValue }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
  end;

{ TXMLNumValueList }

  TXMLNumValueList = class(TXMLNodeCollection, IXMLNumValueList)
  protected
    { IXMLNumValueList }
    function Add: IXMLNumValue;
    function Insert(const Index: Integer): IXMLNumValue;

    function Get_Item(Index: Integer): IXMLNumValue;
  end;

{ TXMLDateValue }

  TXMLDateValue = class(TXMLNode, IXMLDateValue)
  protected
    { IXMLDateValue }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
  end;

{ TXMLDateValueList }

  TXMLDateValueList = class(TXMLNodeCollection, IXMLDateValueList)
  protected
    { IXMLDateValueList }
    function Add: IXMLDateValue;
    function Insert(const Index: Integer): IXMLDateValue;

    function Get_Item(Index: Integer): IXMLDateValue;
  end;

{ TXMLTFValue }

  TXMLTFValue = class(TXMLNode, IXMLTFValue)
  protected
    { IXMLTFValue }
    function Get_Unans: Boolean;
    procedure Set_Unans(Value: Boolean);
  end;

{ TXMLTFValueList }

  TXMLTFValueList = class(TXMLNodeCollection, IXMLTFValueList)
  protected
    { IXMLTFValueList }
    function Add: IXMLTFValue;
    function Insert(const Index: Integer): IXMLTFValue;

    function Get_Item(Index: Integer): IXMLTFValue;
  end;

{ TXMLMCValue }

  TXMLMCValue = class(TXMLNodeCollection, IXMLMCValue)
  protected
    { IXMLMCValue }
    function Get_Unans: Boolean;
    function Get_SelValue(Index: Integer): UnicodeString;
    procedure Set_Unans(Value: Boolean);
    function Add(const SelValue: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SelValue: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMCValueList }

  TXMLMCValueList = class(TXMLNodeCollection, IXMLMCValueList)
  protected
    { IXMLMCValueList }
    function Add: IXMLMCValue;
    function Insert(const Index: Integer): IXMLMCValue;

    function Get_Item(Index: Integer): IXMLMCValue;
  end;

{ TXMLClauseLibValue }

  TXMLClauseLibValue = class(TXMLNodeCollection, IXMLClauseLibValue)
  protected
    { IXMLClauseLibValue }
    function Get_Unans: Boolean;
    function Get_ClauseSelValue(Index: Integer): IXMLClauseLibValue_ClauseSelValue;
    procedure Set_Unans(Value: Boolean);
    function Add: IXMLClauseLibValue_ClauseSelValue;
    function Insert(const Index: Integer): IXMLClauseLibValue_ClauseSelValue;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLClauseLibValueList }

  TXMLClauseLibValueList = class(TXMLNodeCollection, IXMLClauseLibValueList)
  protected
    { IXMLClauseLibValueList }
    function Add: IXMLClauseLibValue;
    function Insert(const Index: Integer): IXMLClauseLibValue;

    function Get_Item(Index: Integer): IXMLClauseLibValue;
  end;

{ TXMLClauseLibValue_ClauseSelValue }

  TXMLClauseLibValue_ClauseSelValue = class(TXMLNode, IXMLClauseLibValue_ClauseSelValue)
  protected
    { IXMLClauseLibValue_ClauseSelValue }
    function Get_Title: UnicodeString;
    function Get_FileName: UnicodeString;
    function Get_Description: UnicodeString;
    procedure Set_Title(Value: UnicodeString);
    procedure Set_FileName(Value: UnicodeString);
    procedure Set_Description(Value: UnicodeString);
  end;

{ TXMLDBValue }

  TXMLDBValue = class(TXMLNodeCollection, IXMLDBValue)
  protected
    { IXMLDBValue }
    function Get_Unans: Boolean;
    function Get_DBColumn(Index: Integer): IXMLDBValue_DBColumn;
    procedure Set_Unans(Value: Boolean);
    function Add: IXMLDBValue_DBColumn;
    function Insert(const Index: Integer): IXMLDBValue_DBColumn;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDBValueList }

  TXMLDBValueList = class(TXMLNodeCollection, IXMLDBValueList)
  protected
    { IXMLDBValueList }
    function Add: IXMLDBValue;
    function Insert(const Index: Integer): IXMLDBValue;

    function Get_Item(Index: Integer): IXMLDBValue;
  end;

{ TXMLDBValue_DBColumn }

  TXMLDBValue_DBColumn = class(TXMLNode, IXMLDBValue_DBColumn)
  protected
    { IXMLDBValue_DBColumn }
    function Get_Name: UnicodeString;
    function Get_TextValue: IXMLTextValue;
    function Get_NumValue: IXMLNumValue;
    function Get_DateValue: IXMLDateValue;
    function Get_TFValue: IXMLTFValue;
    function Get_MCValue: IXMLMCValue;
    procedure Set_Name(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRptValue }

  TXMLRptValue = class(TXMLNode, IXMLRptValue)
  private
    FTextValue: IXMLTextValueList;
    FNumValue: IXMLNumValueList;
    FDateValue: IXMLDateValueList;
    FTFValue: IXMLTFValueList;
    FMCValue: IXMLMCValueList;
    FClauseLibValue: IXMLClauseLibValueList;
    FDBValue: IXMLDBValueList;
    FRptValue: IXMLRptValueList;
  protected
    { IXMLRptValue }
    function Get_TextValue: IXMLTextValueList;
    function Get_NumValue: IXMLNumValueList;
    function Get_DateValue: IXMLDateValueList;
    function Get_TFValue: IXMLTFValueList;
    function Get_MCValue: IXMLMCValueList;
    function Get_ClauseLibValue: IXMLClauseLibValueList;
    function Get_DBValue: IXMLDBValueList;
    function Get_RptValue: IXMLRptValueList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRptValueList }

  TXMLRptValueList = class(TXMLNodeCollection, IXMLRptValueList)
  protected
    { IXMLRptValueList }
    function Add: IXMLRptValue;
    function Insert(const Index: Integer): IXMLRptValue;

    function Get_Item(Index: Integer): IXMLRptValue;
  end;

{ TXMLDocTextValue }

  TXMLDocTextValue = class(TXMLNode, IXMLDocTextValue)
  protected
    { IXMLDocTextValue }
    function Get_Fmt: UnicodeString;
    function Get_Unans: Boolean;
    procedure Set_Fmt(Value: UnicodeString);
    procedure Set_Unans(Value: Boolean);
  end;

{ Global Functions }

function GetAnswerSet(Doc: IXMLDocument): IXMLAnswerSet;
function LoadAnswerSet(const FileName: string): IXMLAnswerSet;
function NewAnswerSet: IXMLAnswerSet;

const
  TargetNamespace = 'http://www.hotdocs.com/schemas/answer_set/2009';

implementation

{ Global Functions }

function GetAnswerSet(Doc: IXMLDocument): IXMLAnswerSet;
begin
  Result := Doc.GetDocBinding('AnswerSet', TXMLAnswerSet, TargetNamespace) as IXMLAnswerSet;
end;

function LoadAnswerSet(const FileName: string): IXMLAnswerSet;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('AnswerSet', TXMLAnswerSet, TargetNamespace) as IXMLAnswerSet;
end;

function NewAnswerSet: IXMLAnswerSet;
begin
  Result := NewXMLDocument.GetDocBinding('AnswerSet', TXMLAnswerSet, TargetNamespace) as IXMLAnswerSet;
end;

{ TXMLAnswerSet }

procedure TXMLAnswerSet.AfterConstruction;
begin
  RegisterChildNode('Answer', TXMLAnswer);
  ItemTag := 'Answer';
  ItemInterface := IXMLAnswer;
  inherited;
end;

function TXMLAnswerSet.Get_Title: UnicodeString;
begin
  Result := AttributeNodes['title'].Text;
end;

procedure TXMLAnswerSet.Set_Title(Value: UnicodeString);
begin
  SetAttribute('title', Value);
end;

function TXMLAnswerSet.Get_Version: UnicodeString;
begin
  Result := AttributeNodes['version'].Text;
end;

procedure TXMLAnswerSet.Set_Version(Value: UnicodeString);
begin
  SetAttribute('version', Value);
end;

function TXMLAnswerSet.Get_Save: UnicodeString;
begin
  Result := AttributeNodes['save'].Text;
end;

procedure TXMLAnswerSet.Set_Save(Value: UnicodeString);
begin
  SetAttribute('save', Value);
end;

function TXMLAnswerSet.Get_UseMangledNames: Boolean;
begin
  Result := AttributeNodes['useMangledNames'].NodeValue;
end;

procedure TXMLAnswerSet.Set_UseMangledNames(Value: Boolean);
begin
  SetAttribute('useMangledNames', Value);
end;

function TXMLAnswerSet.Get_Answer(Index: Integer): IXMLAnswer;
begin
  Result := List[Index] as IXMLAnswer;
end;

function TXMLAnswerSet.Add: IXMLAnswer;
begin
  Result := AddItem(-1) as IXMLAnswer;
end;

function TXMLAnswerSet.Insert(const Index: Integer): IXMLAnswer;
begin
  Result := AddItem(Index) as IXMLAnswer;
end;

{ TXMLAnswer }

procedure TXMLAnswer.AfterConstruction;
begin
  RegisterChildNode('TextValue', TXMLTextValue);
  RegisterChildNode('NumValue', TXMLNumValue);
  RegisterChildNode('DateValue', TXMLDateValue);
  RegisterChildNode('TFValue', TXMLTFValue);
  RegisterChildNode('MCValue', TXMLMCValue);
  RegisterChildNode('ClauseLibValue', TXMLClauseLibValue);
  RegisterChildNode('DBValue', TXMLDBValue);
  RegisterChildNode('RptValue', TXMLRptValue);
  RegisterChildNode('DocTextValue', TXMLDocTextValue);
  inherited;
end;

function TXMLAnswer.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLAnswer.Set_Name(Value: UnicodeString);
begin
  SetAttribute('name', Value);
end;

function TXMLAnswer.Get_Save: UnicodeString;
begin
  Result := AttributeNodes['save'].Text;
end;

procedure TXMLAnswer.Set_Save(Value: UnicodeString);
begin
  SetAttribute('save', Value);
end;

function TXMLAnswer.Get_TextValue: IXMLTextValue;
begin
  Result := ChildNodes['TextValue'] as IXMLTextValue;
end;

function TXMLAnswer.Get_NumValue: IXMLNumValue;
begin
  Result := ChildNodes['NumValue'] as IXMLNumValue;
end;

function TXMLAnswer.Get_DateValue: IXMLDateValue;
begin
  Result := ChildNodes['DateValue'] as IXMLDateValue;
end;

function TXMLAnswer.Get_TFValue: IXMLTFValue;
begin
  Result := ChildNodes['TFValue'] as IXMLTFValue;
end;

function TXMLAnswer.Get_MCValue: IXMLMCValue;
begin
  Result := ChildNodes['MCValue'] as IXMLMCValue;
end;

function TXMLAnswer.Get_ClauseLibValue: IXMLClauseLibValue;
begin
  Result := ChildNodes['ClauseLibValue'] as IXMLClauseLibValue;
end;

function TXMLAnswer.Get_DBValue: IXMLDBValue;
begin
  Result := ChildNodes['DBValue'] as IXMLDBValue;
end;

function TXMLAnswer.Get_RptValue: IXMLRptValue;
begin
  Result := ChildNodes['RptValue'] as IXMLRptValue;
end;

function TXMLAnswer.Get_DocTextValue: IXMLDocTextValue;
begin
  Result := ChildNodes['DocTextValue'] as IXMLDocTextValue;
end;

{ TXMLTextValue }

function TXMLTextValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLTextValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

{ TXMLTextValueList }

function TXMLTextValueList.Add: IXMLTextValue;
begin
  Result := AddItem(-1) as IXMLTextValue;
end;

function TXMLTextValueList.Insert(const Index: Integer): IXMLTextValue;
begin
  Result := AddItem(Index) as IXMLTextValue;
end;

function TXMLTextValueList.Get_Item(Index: Integer): IXMLTextValue;
begin
  Result := List[Index] as IXMLTextValue;
end;

{ TXMLNumValue }

function TXMLNumValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLNumValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

{ TXMLNumValueList }

function TXMLNumValueList.Add: IXMLNumValue;
begin
  Result := AddItem(-1) as IXMLNumValue;
end;

function TXMLNumValueList.Insert(const Index: Integer): IXMLNumValue;
begin
  Result := AddItem(Index) as IXMLNumValue;
end;

function TXMLNumValueList.Get_Item(Index: Integer): IXMLNumValue;
begin
  Result := List[Index] as IXMLNumValue;
end;

{ TXMLDateValue }

function TXMLDateValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLDateValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

{ TXMLDateValueList }

function TXMLDateValueList.Add: IXMLDateValue;
begin
  Result := AddItem(-1) as IXMLDateValue;
end;

function TXMLDateValueList.Insert(const Index: Integer): IXMLDateValue;
begin
  Result := AddItem(Index) as IXMLDateValue;
end;

function TXMLDateValueList.Get_Item(Index: Integer): IXMLDateValue;
begin
  Result := List[Index] as IXMLDateValue;
end;

{ TXMLTFValue }

function TXMLTFValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLTFValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

{ TXMLTFValueList }

function TXMLTFValueList.Add: IXMLTFValue;
begin
  Result := AddItem(-1) as IXMLTFValue;
end;

function TXMLTFValueList.Insert(const Index: Integer): IXMLTFValue;
begin
  Result := AddItem(Index) as IXMLTFValue;
end;

function TXMLTFValueList.Get_Item(Index: Integer): IXMLTFValue;
begin
  Result := List[Index] as IXMLTFValue;
end;

{ TXMLMCValue }

procedure TXMLMCValue.AfterConstruction;
begin
  ItemTag := 'SelValue';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLMCValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLMCValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

function TXMLMCValue.Get_SelValue(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLMCValue.Add(const SelValue: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := SelValue;
end;

function TXMLMCValue.Insert(const Index: Integer; const SelValue: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := SelValue;
end;

{ TXMLMCValueList }

function TXMLMCValueList.Add: IXMLMCValue;
begin
  Result := AddItem(-1) as IXMLMCValue;
end;

function TXMLMCValueList.Insert(const Index: Integer): IXMLMCValue;
begin
  Result := AddItem(Index) as IXMLMCValue;
end;

function TXMLMCValueList.Get_Item(Index: Integer): IXMLMCValue;
begin
  Result := List[Index] as IXMLMCValue;
end;

{ TXMLClauseLibValue }

procedure TXMLClauseLibValue.AfterConstruction;
begin
  RegisterChildNode('ClauseSelValue', TXMLClauseLibValue_ClauseSelValue);
  ItemTag := 'ClauseSelValue';
  ItemInterface := IXMLClauseLibValue_ClauseSelValue;
  inherited;
end;

function TXMLClauseLibValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLClauseLibValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

function TXMLClauseLibValue.Get_ClauseSelValue(Index: Integer): IXMLClauseLibValue_ClauseSelValue;
begin
  Result := List[Index] as IXMLClauseLibValue_ClauseSelValue;
end;

function TXMLClauseLibValue.Add: IXMLClauseLibValue_ClauseSelValue;
begin
  Result := AddItem(-1) as IXMLClauseLibValue_ClauseSelValue;
end;

function TXMLClauseLibValue.Insert(const Index: Integer): IXMLClauseLibValue_ClauseSelValue;
begin
  Result := AddItem(Index) as IXMLClauseLibValue_ClauseSelValue;
end;

{ TXMLClauseLibValueList }

function TXMLClauseLibValueList.Add: IXMLClauseLibValue;
begin
  Result := AddItem(-1) as IXMLClauseLibValue;
end;

function TXMLClauseLibValueList.Insert(const Index: Integer): IXMLClauseLibValue;
begin
  Result := AddItem(Index) as IXMLClauseLibValue;
end;

function TXMLClauseLibValueList.Get_Item(Index: Integer): IXMLClauseLibValue;
begin
  Result := List[Index] as IXMLClauseLibValue;
end;

{ TXMLClauseLibValue_ClauseSelValue }

function TXMLClauseLibValue_ClauseSelValue.Get_Title: UnicodeString;
begin
  Result := AttributeNodes['title'].Text;
end;

procedure TXMLClauseLibValue_ClauseSelValue.Set_Title(Value: UnicodeString);
begin
  SetAttribute('title', Value);
end;

function TXMLClauseLibValue_ClauseSelValue.Get_FileName: UnicodeString;
begin
  Result := AttributeNodes['fileName'].Text;
end;

procedure TXMLClauseLibValue_ClauseSelValue.Set_FileName(Value: UnicodeString);
begin
  SetAttribute('fileName', Value);
end;

function TXMLClauseLibValue_ClauseSelValue.Get_Description: UnicodeString;
begin
  Result := AttributeNodes['description'].Text;
end;

procedure TXMLClauseLibValue_ClauseSelValue.Set_Description(Value: UnicodeString);
begin
  SetAttribute('description', Value);
end;

{ TXMLDBValue }

procedure TXMLDBValue.AfterConstruction;
begin
  RegisterChildNode('DBColumn', TXMLDBValue_DBColumn);
  ItemTag := 'DBColumn';
  ItemInterface := IXMLDBValue_DBColumn;
  inherited;
end;

function TXMLDBValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLDBValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

function TXMLDBValue.Get_DBColumn(Index: Integer): IXMLDBValue_DBColumn;
begin
  Result := List[Index] as IXMLDBValue_DBColumn;
end;

function TXMLDBValue.Add: IXMLDBValue_DBColumn;
begin
  Result := AddItem(-1) as IXMLDBValue_DBColumn;
end;

function TXMLDBValue.Insert(const Index: Integer): IXMLDBValue_DBColumn;
begin
  Result := AddItem(Index) as IXMLDBValue_DBColumn;
end;

{ TXMLDBValueList }

function TXMLDBValueList.Add: IXMLDBValue;
begin
  Result := AddItem(-1) as IXMLDBValue;
end;

function TXMLDBValueList.Insert(const Index: Integer): IXMLDBValue;
begin
  Result := AddItem(Index) as IXMLDBValue;
end;

function TXMLDBValueList.Get_Item(Index: Integer): IXMLDBValue;
begin
  Result := List[Index] as IXMLDBValue;
end;

{ TXMLDBValue_DBColumn }

procedure TXMLDBValue_DBColumn.AfterConstruction;
begin
  RegisterChildNode('TextValue', TXMLTextValue);
  RegisterChildNode('NumValue', TXMLNumValue);
  RegisterChildNode('DateValue', TXMLDateValue);
  RegisterChildNode('TFValue', TXMLTFValue);
  RegisterChildNode('MCValue', TXMLMCValue);
  inherited;
end;

function TXMLDBValue_DBColumn.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLDBValue_DBColumn.Set_Name(Value: UnicodeString);
begin
  SetAttribute('name', Value);
end;

function TXMLDBValue_DBColumn.Get_TextValue: IXMLTextValue;
begin
  Result := ChildNodes['TextValue'] as IXMLTextValue;
end;

function TXMLDBValue_DBColumn.Get_NumValue: IXMLNumValue;
begin
  Result := ChildNodes['NumValue'] as IXMLNumValue;
end;

function TXMLDBValue_DBColumn.Get_DateValue: IXMLDateValue;
begin
  Result := ChildNodes['DateValue'] as IXMLDateValue;
end;

function TXMLDBValue_DBColumn.Get_TFValue: IXMLTFValue;
begin
  Result := ChildNodes['TFValue'] as IXMLTFValue;
end;

function TXMLDBValue_DBColumn.Get_MCValue: IXMLMCValue;
begin
  Result := ChildNodes['MCValue'] as IXMLMCValue;
end;

{ TXMLRptValue }

procedure TXMLRptValue.AfterConstruction;
begin
  RegisterChildNode('TextValue', TXMLTextValue);
  RegisterChildNode('NumValue', TXMLNumValue);
  RegisterChildNode('DateValue', TXMLDateValue);
  RegisterChildNode('TFValue', TXMLTFValue);
  RegisterChildNode('MCValue', TXMLMCValue);
  RegisterChildNode('ClauseLibValue', TXMLClauseLibValue);
  RegisterChildNode('DBValue', TXMLDBValue);
  RegisterChildNode('RptValue', TXMLRptValue);
  FTextValue := CreateCollection(TXMLTextValueList, IXMLTextValue, 'TextValue') as IXMLTextValueList;
  FNumValue := CreateCollection(TXMLNumValueList, IXMLNumValue, 'NumValue') as IXMLNumValueList;
  FDateValue := CreateCollection(TXMLDateValueList, IXMLDateValue, 'DateValue') as IXMLDateValueList;
  FTFValue := CreateCollection(TXMLTFValueList, IXMLTFValue, 'TFValue') as IXMLTFValueList;
  FMCValue := CreateCollection(TXMLMCValueList, IXMLMCValue, 'MCValue') as IXMLMCValueList;
  FClauseLibValue := CreateCollection(TXMLClauseLibValueList, IXMLClauseLibValue, 'ClauseLibValue') as IXMLClauseLibValueList;
  FDBValue := CreateCollection(TXMLDBValueList, IXMLDBValue, 'DBValue') as IXMLDBValueList;
  FRptValue := CreateCollection(TXMLRptValueList, IXMLRptValue, 'RptValue') as IXMLRptValueList;
  inherited;
end;

function TXMLRptValue.Get_TextValue: IXMLTextValueList;
begin
  Result := FTextValue;
end;

function TXMLRptValue.Get_NumValue: IXMLNumValueList;
begin
  Result := FNumValue;
end;

function TXMLRptValue.Get_DateValue: IXMLDateValueList;
begin
  Result := FDateValue;
end;

function TXMLRptValue.Get_TFValue: IXMLTFValueList;
begin
  Result := FTFValue;
end;

function TXMLRptValue.Get_MCValue: IXMLMCValueList;
begin
  Result := FMCValue;
end;

function TXMLRptValue.Get_ClauseLibValue: IXMLClauseLibValueList;
begin
  Result := FClauseLibValue;
end;

function TXMLRptValue.Get_DBValue: IXMLDBValueList;
begin
  Result := FDBValue;
end;

function TXMLRptValue.Get_RptValue: IXMLRptValueList;
begin
  Result := FRptValue;
end;

{ TXMLRptValueList }

function TXMLRptValueList.Add: IXMLRptValue;
begin
  Result := AddItem(-1) as IXMLRptValue;
end;

function TXMLRptValueList.Insert(const Index: Integer): IXMLRptValue;
begin
  Result := AddItem(Index) as IXMLRptValue;
end;

function TXMLRptValueList.Get_Item(Index: Integer): IXMLRptValue;
begin
  Result := List[Index] as IXMLRptValue;
end;

{ TXMLDocTextValue }

function TXMLDocTextValue.Get_Fmt: UnicodeString;
begin
  Result := AttributeNodes['fmt'].Text;
end;

procedure TXMLDocTextValue.Set_Fmt(Value: UnicodeString);
begin
  SetAttribute('fmt', Value);
end;

function TXMLDocTextValue.Get_Unans: Boolean;
begin
  Result := AttributeNodes['unans'].NodeValue;
end;

procedure TXMLDocTextValue.Set_Unans(Value: Boolean);
begin
  SetAttribute('unans', Value);
end;

initialization
   Xml.Win.msxmldom.MSXML6_ProhibitDTD := False;
//   Xml.Win.msxmldom.ms  MSXMLDOMDocumentFactory.AddDOMProperty('ProhibitDTD', False);

end.