program UnicodeBDD;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {Form6},
  DataModule in 'DataModule.pas' {dmUnicode: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TdmUnicode, dmUnicode);
  Application.Run;
end.
