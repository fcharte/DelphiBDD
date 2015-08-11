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
    Edit1: TEdit;
    Button1: TButton;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
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
  with dmFuncionSQL.FDQuery1 do
  begin
    Disconnect;
    Params.ParamByName('LimitPrice').Value  := StrToInt(Edit1.Text);
    Open;
  end;
end;

end.
