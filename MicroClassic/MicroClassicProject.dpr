program MicroClassicProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form8},
  Collectible in 'Collectible.pas',
  Computer in 'Computer.pas',
  Collection in 'Collection.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
