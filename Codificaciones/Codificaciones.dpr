program Codificaciones;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
