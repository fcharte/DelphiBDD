unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfrmMain = class(TForm)
    RESTRand: TRESTClient;
    RESTRandRequest: TRESTRequest;
    RESTRandResponse: TRESTResponse;
    RESTSeed: TRESTClient;
    RESTSeedRequest: TRESTRequest;
    RESTSeedResponse: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

end.
