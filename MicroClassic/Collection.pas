unit Collection;

interface

type

  TCollection = class
  private
    class var refInstance: TCollection;

    { TODO: A�adir los miembros de clase para contener
      los objetos de la colecci�n }

    class constructor Create;

    class destructor Destroy;

    constructor Create;

  public
    class function getInstance: TCollection;
    class property Instance: TCollection read refInstance;
  end;

implementation

class constructor TCollection.Create;
begin
  if refInstance = nil then
    refInstance := TCollection.Create;
end;

class destructor TCollection.Destroy;
begin
  refInstance.Free;
  refInstance := nil;
end;

end.