unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, Data.DB;

type
  TdmMemoria = class(TDataModule)
    FDConnection1: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
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

end.
