program GUIconVCL;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form3},
  DataModule in 'DataModule.pas' {MyDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TMyDataModule, MyDataModule);
  Application.Run;
end.
