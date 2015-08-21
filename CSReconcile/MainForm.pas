unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  Data.Bind.Controls, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Layouts, Fmx.Bind.Navigator,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Grid;

type
  TfrmMain = class(TForm)
    Grid1: TGrid;
    Panel1: TPanel;
    btnApplyUpdates: TButton;
    btnCancelUpdates: TButton;
    cbShowChanges: TCheckBox;
    BindNavigator1: TBindNavigator;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Timer1: TTimer;
    procedure btnApplyUpdatesClick(Sender: TObject);
    procedure btnCancelUpdatesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbShowChangesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses DataModule, FireDAC.Comp.DataSet;

procedure TfrmMain.btnApplyUpdatesClick(Sender: TObject);
var
  nErrors: Integer;
begin
  with dmReconcile.ProductcategoryTable do
  begin
    ApplyUpdates;
    CommitUpdates;
  end;
end;

procedure TfrmMain.btnCancelUpdatesClick(Sender: TObject);
begin
  dmReconcile.ProductcategoryTable.CancelUpdates;
end;

procedure TfrmMain.cbShowChangesChange(Sender: TObject);
begin
  with dmReconcile.ProductcategoryTable do
    if cbShowChanges.IsChecked then
      FilterChanges := [rtModified,rtInserted,rtDeleted]
    else
      FilterChanges := [rtModified,rtInserted,rtUnmodified];
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  with dmReconcile.ProductcategoryTable, btnApplyUpdates do
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
