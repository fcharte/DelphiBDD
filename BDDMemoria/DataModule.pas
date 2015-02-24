unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.DApt;

type
  TdmMemoria = class(TDataModule)
    FDConnection1: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery1: TFDQuery;
    RastroTable: TFDMemTable;
    FDTable1: TFDTable;
    FDSQLiteBackup1: TFDSQLiteBackup;
    RastroTableLugar: TIntegerField;
    RastroTableTimeStamp: TDateTimeField;
    RastroTableCoords: TStringField;
    RastroTableAltitud: TFloatField;
    RastroTableComentario: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMemoria: TdmMemoria;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses DateUtils;

procedure TdmMemoria.DataModuleCreate(Sender: TObject);
begin
  with FDTable1 do
  begin
    FieldDefs.Add('Lugar', ftInteger);
    FieldDefs.Add('TimeStamp', ftDateTime);
    FieldDefs.Add('Coords', ftString, 18);
    FieldDefs.Add('Altitud', ftFloat);
    FieldDefs.Add('Comentario', ftString, 40);

    CreateDataSet;

    AppendRecord([1, Now,'(37.779594, -3.784906)', 574, 'Salida']);
    AppendRecord([1, IncMinute(Now, 120), '(37.769031, -3.807063)', 923, 'Castillo']);

    FDLocalSQL1.DataSets.Add(FDTable1);

    Open;
  end;

  RastroTable.Open;
  RastroTable.AppendRecord([1, Now,'(37.779594, -3.784906)', 574, 'Salida']);

  FDConnection1.ExecSQL('CREATE TABLE Lugares (Codigo INT PRIMARY KEY, Nombre TEXT)');
  FDConnection1.ExecSQL('INSERT INTO Lugares VALUES (1, "Jaén")');

  FDConnection1.ExecSQL('CREATE VIEW LugaresRastro AS SELECT nombre, Altitud, Comentario FROM Rastro, Lugares WHERE Rastro.Lugar=Lugares.Codigo');

  FDSQLiteBackup1.DatabaseObj := FDConnection1.CliObj;
  FDSQLiteBackup1.DestDatabase := 'D:\DatosRastro.sdb';
  FDSQLiteBackup1.Backup;
end;

end.
