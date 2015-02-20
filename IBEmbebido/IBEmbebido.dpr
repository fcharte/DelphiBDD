program IBEmbebido;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  DataModuleEmployee in 'DataModuleEmployee.pas' {dmEmployee: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmEmployee, dmEmployee);
  Application.Run;
end.
