program HerramientasEntorno;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form3},
  DataModule in 'DataModule.pas' {MyDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TMyDataModule, MyDataModule);
  Application.Run;
end.
