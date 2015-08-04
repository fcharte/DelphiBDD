unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox;

type
  TfrmMain = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses DataModule, FireDAC.Comp.Client;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FDManager.GetConnectionDefNames(ListBox1.Items);

end;

procedure TfrmMain.ListBox1Change(Sender: TObject);
begin
  FDManager.GetConnectionDefParams(ListBox1.Selected.Text, ListBox2.Items);
end;

end.
