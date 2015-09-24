// 
// Created by the DataSnap proxy generator.
// 24/09/2015 12:16:58
// 

unit ClientClassesUnit1;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.FireDACJSONReflect, Data.DBXJSONReflect;

type

  IDSRestCachedTFDJSONDataSets = interface;

  TProductInfoClient = class(TDSAdminRestClient)
  private
    FGetProductCategoriesCommand: TDSRestCommand;
    FGetProductCategoriesCommand_Cache: TDSRestCommand;
    FApplyChangesProductCategoriesCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetProductCategories(const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetProductCategories_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    procedure ApplyChangesProductCategories(DeltaList: TFDJSONDeltas);
  end;

  IDSRestCachedTFDJSONDataSets = interface(IDSRestCachedObject<TFDJSONDataSets>)
  end;

  TDSRestCachedTFDJSONDataSets = class(TDSRestCachedObject<TFDJSONDataSets>, IDSRestCachedTFDJSONDataSets, IDSRestCachedCommand)
  end;

const
  TProductInfo_GetProductCategories: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TProductInfo_GetProductCategories_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TProductInfo_ApplyChangesProductCategories: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'DeltaList'; Direction: 1; DBXType: 37; TypeName: 'TFDJSONDeltas')
  );

implementation

function TProductInfoClient.GetProductCategories(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetProductCategoriesCommand = nil then
  begin
    FGetProductCategoriesCommand := FConnection.CreateCommand;
    FGetProductCategoriesCommand.RequestType := 'GET';
    FGetProductCategoriesCommand.Text := 'TProductInfo.GetProductCategories';
    FGetProductCategoriesCommand.Prepare(TProductInfo_GetProductCategories);
  end;
  FGetProductCategoriesCommand.Execute(ARequestFilter);
  if not FGetProductCategoriesCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetProductCategoriesCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetProductCategoriesCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetProductCategoriesCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TProductInfoClient.GetProductCategories_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetProductCategoriesCommand_Cache = nil then
  begin
    FGetProductCategoriesCommand_Cache := FConnection.CreateCommand;
    FGetProductCategoriesCommand_Cache.RequestType := 'GET';
    FGetProductCategoriesCommand_Cache.Text := 'TProductInfo.GetProductCategories';
    FGetProductCategoriesCommand_Cache.Prepare(TProductInfo_GetProductCategories_Cache);
  end;
  FGetProductCategoriesCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetProductCategoriesCommand_Cache.Parameters[0].Value.GetString);
end;

procedure TProductInfoClient.ApplyChangesProductCategories(DeltaList: TFDJSONDeltas);
begin
  if FApplyChangesProductCategoriesCommand = nil then
  begin
    FApplyChangesProductCategoriesCommand := FConnection.CreateCommand;
    FApplyChangesProductCategoriesCommand.RequestType := 'POST';
    FApplyChangesProductCategoriesCommand.Text := 'TProductInfo."ApplyChangesProductCategories"';
    FApplyChangesProductCategoriesCommand.Prepare(TProductInfo_ApplyChangesProductCategories);
  end;
  if not Assigned(DeltaList) then
    FApplyChangesProductCategoriesCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FApplyChangesProductCategoriesCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FApplyChangesProductCategoriesCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(DeltaList), True);
      if FInstanceOwner then
        DeltaList.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FApplyChangesProductCategoriesCommand.Execute;
end;

constructor TProductInfoClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TProductInfoClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TProductInfoClient.Destroy;
begin
  FGetProductCategoriesCommand.DisposeOf;
  FGetProductCategoriesCommand_Cache.DisposeOf;
  FApplyChangesProductCategoriesCommand.DisposeOf;
  inherited;
end;

end.
