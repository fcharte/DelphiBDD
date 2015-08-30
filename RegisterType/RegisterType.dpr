program RegisterType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TPubYear = 1970..1995;

  TBitsComputer = (bo8 = 8, bo16 = 16, bo32 = 32);

  TComputer = record
    name         : String;
    year         : TPubYear;
    manufacturer : String;
    model        : String;
    bits         : TBitsComputer;
    RAM          : SmallInt;
    ROM          : SmallInt;
    itWorks      : Boolean;
  end;

var
  aComputer: TComputer;
  collection: array of TComputer;
  numComputers: Integer;

begin
  // Establecer el número de ordenadores en la colección
  numComputers := 75;
  SetLength(collection, numComputers);

  collection[0].name := 'Atari 400';
  collection[0].year := 1979;
  collection[0].manufacturer := 'Atari';
  collection[0].bits := bo8;
  collection[0].RAM := 48;

  with collection[0] do
  begin
    name := 'Atari 400';
    year := 1979;
    manufacturer := 'Atari';
    bits := bo8;
    RAM := 48;
  end;

end.
