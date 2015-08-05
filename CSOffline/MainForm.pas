unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Layouts, FMX.Grid, FMX.Controls.Presentation, FMX.StdCtrls,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
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

procedure TfrmMain.CheckBox1Change(Sender: TObject);
begin
  with dmEmployee.AdventureworksConnection do
  begin
    Connected := CheckBox1.IsChecked;
    if Connected then
      dmEmployee.ProductcategoryTable.Open;
  end;

end;

procedure TfrmMain.CheckBox2Change(Sender: TObject);
begin
  dmEmployee.AdventureworksConnection.Offlined := CheckBox2.IsChecked;
end;

procedure TfrmMain.CheckBox3Change(Sender: TObject);
begin
  dmEmployee.ProductcategoryTable.Filtered := CheckBox3.IsChecked;
end;

end.
