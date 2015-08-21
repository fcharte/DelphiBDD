program CSCentralizedCachedUpdates;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  DataModule in 'DataModule.pas' {dmCachedUpdates: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmCachedUpdates, dmCachedUpdates);
  Application.Run;
end.
