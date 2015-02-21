unit DataModuleEmployee;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.FMXUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBLiteDef,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Phys.IBBase;

type
  TdmEmployee = class(TDataModule)
    EmployeeConnection: TFDConnection;
    DepartmentTable: TFDQuery;
    EmployeeTable: TFDQuery;
    dsDepartment: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    SalaryHistoryTable: TFDQuery;
    dsEmployee: TDataSource;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    procedure EmployeeConnectionBeforeConnect(Sender: TObject);
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

uses
  System.IOUtils;

procedure TdmEmployee.EmployeeConnectionBeforeConnect(Sender: TObject);
begin
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
   EmployeeConnection.Params.Values['Database'] :=
      TPath.Combine(TPath.GetDocumentsPath, 'EMPLOYEE.GDB');
  {$ENDIF}
end;

end.
