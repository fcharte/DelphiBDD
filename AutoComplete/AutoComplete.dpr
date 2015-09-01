program AutoComplete;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type

TMyClass = class
  private
    FF2: String;
    FF1: Integer;
    procedure SetF1(const Value: Integer);
    procedure SetF2(const Value: String);
  public
    property F1 : Integer read FF1 write SetF1;
    property F2 : String read FF2 write SetF2;
end;

{ TMyClass }

procedure TMyClass.SetF1(const Value: Integer);
begin
  FF1 := Value;
end;

procedure TMyClass.SetF2(const Value: String);
begin
  FF2 := Value;
end;

begin

end.
