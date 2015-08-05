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

procedure TfrmMain.Fetch;
begin
  with dmPaginate.SalesorderheaderQuery do
  begin
    FetchOptions.RecsSkip := UltimaFila;
    FetchOptions.RecsMax := StrToInt(edNumFilas.Text);
    FetchNext;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  UltimaFila := 0;
  Fetch;
end;

end.
