unit ClientModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, ClientClassesUnit1, IPPeerClient,
  Datasnap.DSClientRest;

type
  TClientModule1 = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FProductInfoClient: TProductInfoClient;
    function GetProductInfoClient: TProductInfoClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ProductInfoClient: TProductInfoClient read GetProductInfoClient write FProductInfoClient;

end;

var
  ClientModule1: TClientModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModule1.Destroy;
begin
  FProductInfoClient.Free;
  inherited;
end;

function TClientModule1.GetProductInfoClient: TProductInfoClient;
begin
  if FProductInfoClient = nil then
    FProductInfoClient:= TProductInfoClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FProductInfoClient;
end;

end.
