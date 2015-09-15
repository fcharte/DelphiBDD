program RandomService;

uses
  FMX.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  MainForm in 'MainForm.pas' {Form10},
  RandomMethods in 'RandomMethods.pas',
  RandomContainer in 'RandomContainer.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

