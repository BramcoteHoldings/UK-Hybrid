unit ITrackMatterDetails;

interface

uses
   sysutils;

type

  TMatterDetails = class(TObject)
  public
    ClientReference: String;
    RetailerReference: String;
    URL: string;
      (* Static constructor *)
      class function NewFrom( ClientReference, RetailerReference: String): TMatterDetails;
  end;

implementation

{TTitleSearch}
class function TMatterDetails.NewFrom( ClientReference, RetailerReference: String): TMatterDetails;
begin
  Result := TMatterDetails.Create;
//  Result.Reference := Reference;
  Result.ClientReference := ClientReference;
  Result.RetailerReference := RetailerReference;
end;

end.
