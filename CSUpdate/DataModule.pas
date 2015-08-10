unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, FireDAC.Moni.Base,
  FireDAC.Moni.RemoteClient;

type
  TdmUpdateOptions = class(TDataModule)
    AdventureworksConnection: TFDConnection;
    ProductcategoryTable: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    ProductcategoryTableProductCategoryID: TFDAutoIncField;
    ProductcategoryTableName: TWideStringField;
    ProductcategoryTableName_1: TWideStringField;
    ProductcategoryTableProductSubCategoryID: TFDAutoIncField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUpdateOptions: TdmUpdateOptions;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
