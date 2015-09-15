unit RandomMethods;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TRandomMethods = class(TComponent)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function NextRand(FromN: integer; ToN: integer): integer;
  end;
{$METHODINFO OFF}

implementation


uses System.StrUtils;

function TRandomMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TRandomMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TRandomMethods.NextRand;
begin
  Result :=  Random(ToN-FromN) + FromN;
end;
end.

