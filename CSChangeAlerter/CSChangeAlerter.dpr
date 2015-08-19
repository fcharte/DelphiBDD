program CSChangeAlerter;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  DataModule in 'DataModule.pas' {dmChangeAlerter: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmChangeAlerter, dmChangeAlerter);
  Application.Run;
end.
