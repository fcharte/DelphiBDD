unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Layouts, FMX.Grid, FMX.StdCtrls;

type
  TfrmMain = class(TForm)
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    ToolBar1: TToolBar;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses DataModule;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  query: String;
begin
  with dmPoblacion.PoblacionConnection do
  begin
    query := 'CREATE TABLE SumEuropa (Pais varchar, Hombres integer, Mujeres integer)';
    ExecSQL(query);

    query :=
      'INSERT INTO [SumEuropa$](Pais, Hombres, Mujeres) ' +
         'SELECT Pais, sum(Hombres) AS TotalHombres, sum(Mujeres) AS TotalMujeres ' +
         'FROM [DatosIniciales$] ' +
         'WHERE Continente = ''Europa'' ' +
         'GROUP BY Pais';
    ExecSQL(query);
  end;
end;

end.
