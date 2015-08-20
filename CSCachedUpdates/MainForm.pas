unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, FMX.StdCtrls, FMX.Controls.Presentation,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Layouts, FMX.Grid,
  Data.Bind.Controls, Fmx.Bind.Navigator;

type
  TfrmMain = class(TForm)
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Panel1: TPanel;
    btnApplyUpdates: TButton;
    btnCancelUpdates: TButton;
    Timer1: TTimer;
    BindNavigator1: TBindNavigator;
    procedure btnApplyUpdatesClick(Sender: TObject);
    procedure btnCancelUpdatesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
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

procedure TfrmMain.btnApplyUpdatesClick(Sender: TObject);
var
  nErrors: Integer;
begin
  nErrors := dmCachedUpdates.ProductcategoryTable.ApplyUpdates;
  if nErrors <> 0 then
    ShowMessage(IntToStr(nErrors) + ' errores');
end;

procedure TfrmMain.btnCancelUpdatesClick(Sender: TObject);
begin
  dmCachedUpdates.ProductcategoryTable.CancelUpdates;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  with dmCachedUpdates.ProductcategoryTable, btnApplyUpdates do
  begin
    if UpdatesPending then
    begin
      Text := 'ApplyUpdates (' + IntToStr(ChangeCount) + ')';
      Enabled := True;
      btnCancelUpdates.Enabled := True;
    end
    else
    begin
      Text := 'ApplyUpdates';
      Enabled := False;
      btnCancelUpdates.Enabled := False;
    end;
  end;
end;

end.
