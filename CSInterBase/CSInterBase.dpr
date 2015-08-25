program CSInterBase;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  DataModule in 'DataModule.pas' {dbInterBase: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdbInterBase, dbInterBase);
  Application.Run;
end.
