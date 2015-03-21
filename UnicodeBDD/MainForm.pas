unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Memo;

type
  TForm6 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

procedure TForm6.FormCreate(Sender: TObject);
var
  収益: Integer;
  ideog: Char;
begin
  ideog := '収';

  収益 := 1254;

  ShowMessage('収益 = ' + IntToStr(収益));


  Memo1.Lines.LoadFromFile('Vocab.csv', TEncoding.UTF8);
end;

end.
