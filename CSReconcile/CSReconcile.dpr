program CSReconcile;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  DataModule in 'DataModule.pas' {dmReconcile: TDataModule},
  ReconcileForm in 'ReconcileForm.pas' {frmReconcile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmReconcile, dmReconcile);
  Application.CreateForm(TfrmReconcile, frmReconcile);
  Application.Run;
end.
