unit RandModule;

// EMS Resource Module

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  EMS.Services, EMS.ResourceAPI, EMS.ResourceTypes;

type
  [ResourceName('Rand')]
  TRandResource1 = class(TDataModule)
  published
    [ResourceSuffix('Random/{FromN}/{ToN}')]
    procedure GetRandom(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
    procedure Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
    [ResourceSuffix('{item}')]
    procedure GetItem(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
    procedure Post(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TRandResource1.Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
  // Sample code
  AResponse.Body.SetValue(TJSONString.Create('Rand'), True)
end;

procedure TRandResource1.GetItem(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
var
  LItem: string;
begin
  LItem := ARequest.Params.Values['item'];
  // Sample code
  AResponse.Body.SetValue(TJSONString.Create('Rand ' + LItem), True)
end;

procedure TRandResource1.GetRandom(const AContext: TEndpointContext;
  const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
var
  FromN, ToN: Integer;
begin
  FromN := StrToInt(ARequest.Params.Values['FromN']);
  ToN := StrToInt(ARequest.Params.Values['ToN']);

  AResponse.Body.SetValue(TJSONNumber.Create(Random(ToN-FromN) + FromN), True);
end;

procedure TRandResource1.Post(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
end;

procedure Register;
begin
  RegisterResource(TypeInfo(TRandResource1));
end;

initialization
  Register;
end.


