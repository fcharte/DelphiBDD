program RandomClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  RandomClassesUnit in 'RandomClassesUnit.pas',
  RandomModuleUnit in 'RandomModuleUnit.pas' {RandomModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TRandomModule, RandomModule);
  Application.Run;
end.
