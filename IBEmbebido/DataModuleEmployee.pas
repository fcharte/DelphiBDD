unit DataModuleEmployee;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.FMXUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmEmployee = class(TDataModule)
    EmployeeConnection: TFDConnection;
    DepartmentTable: TFDQuery;
    EmployeeTable: TFDQuery;
    dsDepartment: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    SalaryHistoryTable: TFDQuery;
    dsEmployee: TDataSource;
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

end.
