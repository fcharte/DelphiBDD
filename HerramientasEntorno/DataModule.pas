unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait, FireDAC.Comp.UI,
  FireDAC.Moni.Base, FireDAC.Moni.RemoteClient;

type
  TDataModule2 = class(TDataModule)
    DbdemosConnection: TFDConnection;
    CustomerTable: TFDQuery;
    HolafiredacConnection: TFDConnection;
    EntradasTable: TFDQuery;
    EmployeeConnection: TFDConnection;
    Add_emp_projProc: TFDStoredProc;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    CustomerTableCompany: TWideStringField;
    CustomerTableCity: TWideStringField;
    CustomerTableCountry: TWideStringField;
    CustomerTableContact: TWideStringField;
    CustomerTableLastInvoiceDate: TSQLTimeStampField;
    CustomerTableDaysSinceLastInvoice: TIntegerField;
    procedure CustomerTableCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses DateUtils;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.CustomerTableCalcFields(DataSet: TDataSet);
begin
  CustomerTableDaysSinceLastInvoice.Value :=
       DaysBetween(System.SysUtils.Date, CustomerTableLastInvoiceDate.AsDateTime);
end;

end.
