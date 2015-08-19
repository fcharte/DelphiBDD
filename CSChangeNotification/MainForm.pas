unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Layouts, FMX.Grid, Data.Bind.Controls, Fmx.Bind.Navigator, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TfrmMain = class(TForm)
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Panel1: TPanel;
    btnEditar: TButton;
    btnConfirmar: TButton;
    btnRechazar: TButton;
    procedure btnEditarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnRechazarClick(Sender: TObject);
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

procedure TfrmMain.btnConfirmarClick(Sender: TObject);
begin
  dmChangeNotification.AdventureworksConnection.Commit;
  btnEditar.Enabled := True;
  btnConfirmar.Enabled := False;
  btnRechazar.Enabled := False;
end;

procedure TfrmMain.btnEditarClick(Sender: TObject);
begin
  dmChangeNotification.AdventureworksConnection.StartTransaction;
  btnEditar.Enabled := False;
  btnConfirmar.Enabled := True;
  btnRechazar.Enabled := True;
end;

procedure TfrmMain.btnRechazarClick(Sender: TObject);
begin
  dmChangeNotification.AdventureworksConnection.Rollback;
  btnEditar.Enabled := True;
  btnConfirmar.Enabled := False;
  btnRechazar.Enabled := False;
end;

end.
