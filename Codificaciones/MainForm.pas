unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TForm7 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  JapString = type AnsiString(50220);

var
  Form7: TForm7;

implementation

{$R *.fmx}

procedure TForm7.FormCreate(Sender: TObject);
var
  ansiJap: JapString;
  uniJap: String;
begin
  uniJap := '収益';
  ansiJap := uniJap;

  ShowMessage('uniJap: ' + uniJap + #13#10 + 'ansiJap: ' + ansiJap);
end;

end.
