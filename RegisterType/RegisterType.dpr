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

begin

end.
