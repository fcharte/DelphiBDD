unit ReconcileForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Comp.DataSet, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.ListBox;

type
  TfrmReconcile = class(TForm)
    Label1: TLabel;
    lblOperacion: TLabel;
    Label2: TLabel;
    lblMensaje: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edIDOriginal: TEdit;
    edIDActual: TEdit;
    edIDNuevo: TEdit;
    edNameActual: TEdit;
    edNameOriginal: TEdit;
    edNameNuevo: TEdit;
    cbAction: TComboBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    Label8: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

procedure TfrmReconcile.Button1Click(Sender: TObject);
begin
  Close;
end;

function TfrmReconcile.ReconcileForm;
begin
  with lblOperacion do
  case UpdateKind of
    rsInserted: Text := 'Inserción';
    rsDeleted: Text := 'Eliminación';
    rsModified: Text := 'Actualización';
    rsUnchanged: Text := 'Ninguna';
  end;

  lblMensaje.Text := E.Message;

  with DataSet do
  begin
    edIDOriginal.Text := FieldByName('ProductCategoryID').OldValue;
    edIDActual.Text := FieldByName('ProductCategoryID').CurValue;
    edIDNuevo.Text := FieldByName('ProductCategoryID').Value;
    edNameOriginal.Text := FieldByName('Name').OldValue;
    edNameActual.Text := FieldByName('Name').CurValue;
    edNameNuevo.Text := FieldByName('Name').Value;
  end;

  ShowModal;

  result := TFDDAptReconcileAction(cbAction.Selected.Tag);
end;


end.
