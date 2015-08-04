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
  TdmEmployee = class(TDataModule)
    AdventureworksConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ProductcategoryTable: TFDQuery;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEmployee: TdmEmployee;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TdmEmployee.DataModuleCreate(Sender: TObject);
begin
  ProductcategoryTable.Open;
end;

end.
