unit ReconcileForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FireDAC.Comp.DataSet,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf;

type
  TfrmReconcile = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    function ReconcileForm(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState): TFDDAptReconcileAction;
  end;

var
  frmReconcile: TfrmReconcile;

implementation

{$R *.fmx}

function TfrmReconcile.ReconcileForm;
begin
  ShowMessage(E.Message);

  result := raAbort;
end;


end.
