unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Layouts, FMX.Grid, FMX.StdCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Grid1: TGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses DataModule;

end.
