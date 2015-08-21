program CSReconcile;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  ReconcileForm in 'ReconcileForm.pas' {frmReconcile},
  DataModule in 'DataModule.pas' {dmReconcile: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmReconcile, dmReconcile);
  Application.Run;
end.
