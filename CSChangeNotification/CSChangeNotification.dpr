program CSChangeNotification;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form8},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
