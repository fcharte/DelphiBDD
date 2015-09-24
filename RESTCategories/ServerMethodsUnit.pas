unit ServerMethodsUnit;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageJSON, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.FireDACJSONReflect;

type
{$METHODINFO ON}
  TProductInfo = class(TDataModule)
    AdventureworksConnection: TFDConnection;
    ProductcategoryTable: TFDQuery;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
  private
    { Private declarations }
  public
    function GetProductCategories: TFDJSONDataSets;
  end;
{$METHODINFO OFF}

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


{ TServerMethods1 }

function TProductInfo.GetProductCategories: TFDJSONDataSets;
var
  dataset: TFDJSONDataSets;
begin
  ProductcategoryTable.Open;
  dataset := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(dataset, ProductcategoryTable);

  result := dataset;
end;

end.

