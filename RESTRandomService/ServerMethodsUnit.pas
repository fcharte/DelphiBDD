unit ServerMethodsUnit;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TRandomMethods = class(TComponent)
  private
    { Private declarations }
  public
    { Public declarations }
    function NextRand(FromN: integer; ToN: integer): integer;
  end;
{$METHODINFO OFF}

implementation

{ TServerMethods1 }

function TRandomMethods.NextRand(FromN, ToN: integer): integer;
begin
  Result :=  Random(ToN-FromN) + FromN;
end;

end.

