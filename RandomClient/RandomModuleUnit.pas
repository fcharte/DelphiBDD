unit RandomModuleUnit;

interface

uses
  System.SysUtils, System.Classes, RandomClassesUnit, Data.DbxDatasnap,
  IPPeerClient, Data.DBXCommon, Data.DB, Data.SqlExpr;

type
  TRandomModule = class(TDataModule)
    SQLConnection1: TSQLConnection;
  private
    FInstanceOwner: Boolean;
    FRandomMethodsClient: TRandomMethodsClient;
    function GetRandomMethodsClient: TRandomMethodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property RandomMethodsClient: TRandomMethodsClient read GetRandomMethodsClient write FRandomMethodsClient;

end;

var
  RandomModule: TRandomModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

constructor TRandomModule.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TRandomModule.Destroy;
begin
  FRandomMethodsClient.Free;
  inherited;
end;

function TRandomModule.GetRandomMethodsClient: TRandomMethodsClient;
begin
  if FRandomMethodsClient = nil then
  begin
    SQLConnection1.Open;
    FRandomMethodsClient:= TRandomMethodsClient.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FRandomMethodsClient;
end;

end.
