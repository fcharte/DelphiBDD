unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TfrmMain = class(TForm)
    RESTRand: TRESTClient;
    RESTRandRequest: TRESTRequest;
    RESTRandResponse: TRESTResponse;
    RESTSeedRequest: TRESTRequest;
    RESTSeedResponse: TRESTResponse;
    Label1: TLabel;
    edInferior: TEdit;
    Label2: TLabel;
    edSuperior: TEdit;
    Label6: TLabel;
    lblResultado: TLabel;
    btnRand: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnSeed: TButton;
    edSemilla: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    lblResultSeed: TLabel;
    procedure btnRandClick(Sender: TObject);
    procedure btnSeedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses System.JSON, REST.Types;

{$R *.fmx}

procedure TfrmMain.btnRandClick(Sender: TObject);
begin
  RESTRandRequest.Params[0].Value := edInferior.Text;
  RESTRandRequest.Params[1].Value := edSuperior.Text;
  RESTRandRequest.Execute;
  lblResultado.Text := ((RESTRandResponse.JSONValue as TJSONObject).Values['result'] as TJSONArray).Items[0].ToString;
end;

procedure TfrmMain.btnSeedClick(Sender: TObject);
begin
  RESTSeedRequest.Params[0].Value := edSemilla.Text;
  RESTSeedRequest.Execute;
  lblResultSeed.Text := ((RESTSeedResponse.JSONValue as TJSONObject).Values['result'] as TJSONArray).Items[0].ToString;
end;

end.
