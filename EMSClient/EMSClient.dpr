program EMSClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
