program ArrayType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  res1: array[1..10] of String;
  res2: array[1..10,1..3] of Integer;

begin
  res1[1] := '256x192x16';

  res2[1][1] := 256;
  res2[1,2] := 192;
  res2[1,3] := 16;

end.
