unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    BindingsList1: TBindingsList;
    Button1: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses DataModule, DataNavigation;

procedure TForm3.Button1Click(Sender: TObject);
begin
  DataNavigation.frmNavegacion.ShowModal;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Active := CheckBox1.Checked;
end;

end.
