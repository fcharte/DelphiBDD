program MethodParameters;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure hypotenuse(C1, C2: Real; var H: Real);
begin
  H := H + C1*C1 + C2*C2;
end;

procedure setRes(resolutions: array of String);
var
  aResolution: String;

begin
  for aResolution in resolutions do
    // Hacer algo con la variable aResolution
end;

var
  H: Real;

begin
  H := 0.0;
  hypotenuse(3.2, 4.1, H);
  hypotenuse(1.8, 5.7, H) ;

  // H contiene la suma de las dos hipotenusas

  setRes(['12x15', '15x32'])

end.
