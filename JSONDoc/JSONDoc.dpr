program JSONDoc;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.JSON;

var
  cliente: TJSONObject;

begin
  cliente := TJSONObject.Create;
  cliente.Parse(BytesOf('{ "Cliente": ' +
     '{ "Nombre": "Francisco Charte", ' +
     ' "ClienteHabitual": true, ' +
     ' "Saldo": 512.08, ' +
     ' "Direccion": ' +
     '{ "TipoVia": "Calle", ' +
     ' "Via": "Bailén", ' +
     ' "Numero": 56 }, ' +
     ' "Pedidos": [ { ' +
     ' "Fecha": "12/6/2014", ' +
     ' "Importe": 324.65 },{ ' +
     ' "Fecha": "8/10/2014", ' +
     ' "Importe": 187.43 }]}}'
  ), 0);

  WriteLn(cliente.ToString);

  ReadLn;
end.
