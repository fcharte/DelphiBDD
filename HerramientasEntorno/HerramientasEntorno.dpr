program HerramientasEntorno;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {MyForm},
  DataModule in 'DataModule.pas' {MyDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm, MyForm);
  Application.CreateForm(TMyDataModule, MyDataModule);
  Application.Run;
end.
