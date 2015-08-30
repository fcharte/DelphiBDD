program SetType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TConnection = (USB, SD, TV, Headphones, DockStation);

var
  connectors: set of TConnection;
  graphics: set of (sprites, scroll, fonts);
  TVoutput: Boolean;

begin

  // Inicialización del conjunto
  connectors := [USB, Headphones];

  // Añadir un nuevo elemento
  connectors := connectors + [TV];

  // Comprobar si un elemento está contenido
  // en el conjunto
  TVoutput := TV in connectors;

  end.
