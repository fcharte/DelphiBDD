program SubrangeType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TManufacturingYear = 1900..2100;

var
  manufactured: TManufacturingYear;

begin
  manufactured := 1880; // Esto provocará un error

end.
