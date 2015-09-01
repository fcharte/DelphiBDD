unit Collection;

interface

type

  TCollection = class
  private
    class var refInstance: TCollection;

    { TODO: Añadir los miembros de clase para contener
      los objetos de la colección }

    class constructor Create;

    class destructor Destroy;

    constructor Create;

  public
    class function getInstance: TCollection;
    class property Instance: TCollection read refInstance;
  end;

implementation
uses System.SysUtils;

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


constructor TCollection.Create;
begin
  inherited;
  if refInstance <> nil then
     raise Exception.Create(
      'No se pueden crear más objetos de esta clase');
end;


class function TCollection.getInstance: TCollection;
begin
  result := refInstance;
end;

end.
