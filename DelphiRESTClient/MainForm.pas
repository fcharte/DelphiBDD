unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TfrmMain = class(TForm)
    RESTRand: TRESTClient;
    RESTRandRequest: TRESTRequest;
    RESTRandResponse: TRESTResponse;
    RESTSeed: TRESTClient;
    RESTSeedRequest: TRESTRequest;
    RESTSeedResponse: TRESTResponse;
    btnRand: TButton;
    lblRand: TLabel;
    procedure btnRandClick(Sender: TObject);
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
//  RESTRandRequest.Params[0].Value := '1';
 // RESTRandRequest.Params[1].Value := '100';
  RESTRandRequest.Execute;
  lblRand.Text := ((RESTRandResponse.JSONValue as TJSONObject).Values['result'] as TJSONArray).Items[0].ToString;
end;

end.
