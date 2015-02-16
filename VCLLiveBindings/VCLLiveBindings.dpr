program VCLLiveBindings;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
