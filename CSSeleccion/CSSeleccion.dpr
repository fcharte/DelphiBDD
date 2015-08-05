program CSSeleccion;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  DataModule in 'DataModule.pas' {dmSeleccion: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmSeleccion, dmSeleccion);
  Application.Run;
end.
