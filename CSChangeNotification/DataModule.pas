unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.FMXUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.DataSet;

type
  TdmChangeNotification = class(TDataModule)
    AdventureworksConnection: TFDConnection;
    ProductcategoryTable: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDEventAlerter1: TFDEventAlerter;
    procedure FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
      const AEventName: string; const AArgument: Variant);
    procedure FDEventAlerter1Timeout(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmChangeNotification: TdmChangeNotification;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses MainForm, FMX.Dialogs;

{$R *.dfm}



procedure TdmChangeNotification.FDEventAlerter1Alert(
  ASender: TFDCustomEventAlerter; const AEventName: string;
  const AArgument: Variant);
begin
  ProductcategoryTable.Refresh;
end;

procedure TdmChangeNotification.FDEventAlerter1Timeout(Sender: TObject);
begin
  ProductcategoryTable.Refresh;
  frmMain.Grid1.RealignContent;
end;

end.
