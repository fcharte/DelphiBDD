unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.FMXUI.Wait, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.FMXUI.Script, FireDAC.Comp.UI, FireDAC.Comp.Script,
  Data.DB, FireDAC.Comp.Client;

type
  TdmScript = class(TDataModule)
    AdventureworksConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDScript1: TFDScript;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmScript: TdmScript;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
