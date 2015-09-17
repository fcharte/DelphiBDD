unit MainForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Types,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm10 = class(TForm)
    btnIniciar: TButton;
    btnDetener: TButton;
    Label1: TLabel;
    edPuerto: TEdit;
    procedure btnIniciarClick(Sender: TObject);
    procedure btnDetenerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.fmx}

uses RandomContainer;

procedure TForm10.btnDetenerClick(Sender: TObject);
begin
  ServerContainer1.DSServer1.Stop;
  btnIniciar.Enabled := True;
  btnDetener.Enabled := False;
  edPuerto.Enabled := True;
end;

procedure TForm10.btnIniciarClick(Sender: TObject);
begin
  ServerContainer1.DSTCPServerTransport1.Port := StrToInt(edPuerto.Text);
  ServerContainer1.DSServer1.Start;
  btnIniciar.Enabled := False;
  btnDetener.Enabled := True;
  edPuerto.Enabled := False;
end;

end.

