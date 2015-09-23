unit ServerMethodsUnit;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TRandomMethods = class(TComponent)
  public
    function Rand(FromN: integer; ToN: integer): integer;
    function updateRand(seed: integer): integer;
  end;
{$METHODINFO OFF}

implementation

function TRandomMethods.Rand(FromN, ToN: integer): integer;
begin
  Result :=  Random(ToN-FromN) + FromN;
end;


function TRandomMethods.updateRand(seed: integer): integer;
begin
  result := RandSeed;
  RandSeed := seed;
end;

end.

