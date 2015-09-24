unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Stan.StorageJSON, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule2 = class(TDataModule)
    ProductCategoryTable: TFDMemTable;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
  private
    { Private declarations }
  public
    procedure GetProductCategories;
    procedure ApplyChangesProduct;
  end;

var
  ProductDataModule: TDataModule2;

implementation
uses  Data.FireDACJSONReflect, ClientClassesUnit1, ClientModuleUnit1;
{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.ApplyChangesProduct;
var
  listChanges: TFDJSONDeltas;
begin
  listChanges := TFDJSONDeltas.Create;
  TFDJSONDeltasWriter.ListAdd(listChanges, 'ProductcategoryTable', ProductDataModule.ProductCategoryTable);
  ClientModule1.ProductInfoClient.ApplyChangesProductCategories(listChanges);
end;

procedure TDataModule2.GetProductCategories;
var
  listDatasets: TFDJSONDataSets;
  datasetProduct: TFDDataSet;
begin
  listDatasets := ClientModule1.ProductInfoClient.GetProductCategories;
  datasetProduct := TFDJSONDataSetsReader.GetListValueByName(listDatasets, 'ProductcategoryTable');

  ProductCategoryTable.Close;
  ProductCategoryTable.AppendData(datasetProduct);
end;

end.
