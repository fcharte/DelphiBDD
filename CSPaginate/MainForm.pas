unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Layouts, FMX.Grid, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edNumFilas: TEdit;
    Button1: TButton;
    Button2: TButton;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    UltimaFila: Integer;
    procedure Fetch;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses DataModule;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  UltimaFila := UltimaFila - StrToInt(edNumFilas.Text);
  Fetch;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  UltimaFila := UltimaFila + StrToInt(edNumFilas.Text);
  Fetch;
end;

procedure TfrmMain.Fetch;
begin
  with dmPaginate.SalesorderheaderQuery do
  begin
    if UltimaFila < 0 then
      UltimaFila := 0;

    Disconnect;
    FetchOptions.RecsSkip := UltimaFila;
    FetchOptions.RecsMax := StrToInt(edNumFilas.Text);
    Open;

    Button1.Enabled := UltimaFila <> 0;
    Button2.Enabled := RecordCount >= StrToInt(edNumFilas.Text);
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  dmPaginate.SalesorderheaderQuery.Open;
  UltimaFila := 0;
  Fetch;
end;

end.
