program RESTCategories;
{$APPTYPE GUI}

uses
  FMX.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  MainForm in 'MainForm.pas' {Form1},
  ServerMethodsUnit in 'ServerMethodsUnit.pas' {ServerMethods1: TDataModule},
  WebModuleUnit in 'WebModuleUnit.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
