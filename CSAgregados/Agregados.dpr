program Agregados;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainModule in 'MainModule.pas' {frmMain},
  DataModule in 'DataModule.pas' {dmAgregado: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmAgregado, dmAgregado);
  Application.Run;
end.
