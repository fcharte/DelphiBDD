program RESTCategoriesClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form12},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
