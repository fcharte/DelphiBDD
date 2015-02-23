unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteVDataSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text, FireDAC.FMXUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.DApt;

type
  TdmIris = class(TDataModule)
    FDBatchMove1: TFDBatchMove;
    IrisCSVReader: TFDBatchMoveTextReader;
    IrisDSWriter: TFDBatchMoveDataSetWriter;
    IrisMemTable: TFDMemTable;
    IrisConnection: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    IrisTable: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure FDLocalSQL1GetDataSet(ASender: TObject; const ASchemaName,
      AName: string; var ADataSet: TDataSet; var AOwned: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmIris: TdmIris;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses FMX.Dialogs;

procedure TdmIris.FDLocalSQL1GetDataSet(ASender: TObject; const ASchemaName,
  AName: string; var ADataSet: TDataSet; var AOwned: Boolean);
begin
  try
    IrisMemTable.Close;
    IrisCSVReader.FileName := 'D:\DelphiBDD\DatosCSV\' + AName + '.csv';
    FDBatchMove1.Execute;
    ADataSet := IrisMemTable;
    AOwned := True;  
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

end.
