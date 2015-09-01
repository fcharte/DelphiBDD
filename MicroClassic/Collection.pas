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

end.
