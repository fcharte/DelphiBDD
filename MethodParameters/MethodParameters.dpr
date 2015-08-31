program MethodParameters;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure hypotenuse(C1, C2: Real; var H: Real);
begin
  H := H + C1*C1 + C2*C2;
end;


var
  H: Real;

begin
  H := 0.0;
  hypotenuse(3.2, 4.1, H);
  hypotenuse(1.8, 5.7, H)

  // H contiene la suma de las dos hipotenusas

end.
