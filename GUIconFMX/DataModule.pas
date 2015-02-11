unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.FMXUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.ODBCBase;

type
  TMyDataModule = class(TDataModule)
    DbdemosConnection: TFDConnection;
    CustomerTable: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyDataModule: TMyDataModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
