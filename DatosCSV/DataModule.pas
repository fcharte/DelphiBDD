unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteVDataSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text;

type
  TdmIris = class(TDataModule)
    FDBatchMove1: TFDBatchMove;
    IrisCSVReader: TFDBatchMoveTextReader;
    IrisDSWriter: TFDBatchMoveDataSetWriter;
    IrisTable: TFDMemTable;
    IrisConnection: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
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

end.
