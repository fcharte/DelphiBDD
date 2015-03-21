unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edUnicodeString: TEdit;
    edAnsiString: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    longUnicode: TEdit;
    longAnsi: TEdit;
    bytesUnicode: TEdit;
    bytesAnsi: TEdit;
    procedure edAnsiStringChange(Sender: TObject);
    procedure edUnicodeStringChange(Sender: TObject);
  private
    { Private declarations }
    cadAnsi: AnsiString;
    cadUnicode: String;
  public
    { Public declarations }
    procedure UpdateGUI;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.UpdateGUI;
begin
  edUnicodeString.Text := cadUnicode;
  edAnsiString.Text := cadAnsi;

  longUnicode.Text := IntToStr(length(cadUnicode));
  bytesUnicode.Text := IntToStr(StringElementSize(cadUnicode) * Length(cadUnicode));
  longAnsi.Text := IntToStr(length(cadAnsi));
  bytesAnsi.Text := IntToStr(Length(cadAnsi) * StringElementSize(cadAnsi));
end;

procedure TForm1.edAnsiStringChange(Sender: TObject);
begin
  cadAnsi := edAnsiString.Text;
  UpdateGUI;
end;

procedure TForm1.edUnicodeStringChange(Sender: TObject);
begin
  cadUnicode := edUnicodeString.Text;
  UpdateGUI;
end;

end.
