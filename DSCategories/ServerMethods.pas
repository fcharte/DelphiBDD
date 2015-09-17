unit ServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider;

type
  TCategoriesMethods = class(TDSServerModule)
    AdventureworksConnection: TFDConnection;
    ProductcategoryTable: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetCategories(query: String): TDataset;
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


{ TCategoriesMethods }


{ TCategoriesMethods }

function TCategoriesMethods.GetCategories(query: String): TDataset;
begin
  with ProductcategoryTable do begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(query);
    Open;
  end;

  result := ProductcategoryTable;
end;

end.

