unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.BatchMove.DataSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.DApt,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.UI;

type
  TdmUnicode = class(TDataModule)
    CSVReader: TFDBatchMoveTextReader;
    FDMemTable1: TFDMemTable;
    FDBatchMove1: TFDBatchMove;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection1: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
    FDQuery1: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure FDLocalSQL1GetDataSet(ASender: TObject; const ASchemaName,
      AName: string; var ADataSet: TDataSet; var AOwned: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUnicode: TdmUnicode;

implementation

uses FMX.Dialogs;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TdmUnicode.FDLocalSQL1GetDataSet(ASender: TObject; const ASchemaName,
  AName: string; var ADataSet: TDataSet; var AOwned: Boolean);
begin
  try
    FDMemTable1.Close;
    FDBatchMove1.Execute;
    ADataSet := FDMemTable1;
    AOwned := True;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

end.
