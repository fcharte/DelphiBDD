unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Controls,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, FMX.Layouts,
  Fmx.Bind.Navigator, Data.Bind.Grid, Data.Bind.DBScope, FMX.Grid, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TfrmMain = class(TForm)
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    NavigatorBindSourceDB1: TBindNavigator;
    BindingsList1: TBindingsList;
    Grid2: TGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Edit1: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
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
  with dmMemoria.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Edit1.Text);
    Open;
  end;
end;

end.
