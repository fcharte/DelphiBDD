program DSCategories;

uses
  FMX.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  MainForm in 'MainForm.pas' {Form11},
  ServerMethods in 'ServerMethods.pas' {CategoriesMethods: TDSServerModule},
  ServerContainer in 'ServerContainer.pas' {CategoriesContainer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TCategoriesContainer, CategoriesContainer);
  Application.Run;
end.

