unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Layouts, FMX.Grid, FMX.StdCtrls, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Ani;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    FloatAnimation1: TFloatAnimation;
    Button1: TButton;
    procedure CheckBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses DataModule, DataNavigation;

procedure TForm4.Button1Click(Sender: TObject);
begin
  DataNavigation.frmNavegacion.ShowModal;
end;

procedure TForm4.CheckBox1Change(Sender: TObject);
begin
  MyDataModule.CustomerTable.Active := CheckBox1.IsChecked;
end;

end.
