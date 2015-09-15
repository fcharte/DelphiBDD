program JSONDoc;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.JSON;

var
  cliente, direccion, pedido1, pedido2: TJSONObject;
  pedidos: TJSONArray;

begin
  cliente := TJSONObject.Create;
  direccion := TJSONObject.Create;
  pedido1 := TJSONObject.Create;
  pedido2 := TJSONObject.Create;
  pedidos := TJSONArray.Create;

  with direccion do begin
    AddPair(TJSONPair.Create(
      TJSONString.Create('TipoVia'),
      TJSONSTring.Create('Calle')
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Via'),
      TJSONSTring.Create('Bailén')
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Numero'),
      TJSONNumber.Create(56)
    ));
  end;

  with pedido1 do begin
    AddPair(TJSONPair.Create(
      TJSONString.Create('Fecha'),
      TJSONSTring.Create('12/6/2014')
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Importe'),
      TJSONNumber.Create(324.65)
    ));
  end;

  with pedido2 do begin
    AddPair(TJSONPair.Create(
      TJSONString.Create('Fecha'),
      TJSONSTring.Create('8/10/2014')
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Importe'),
      TJSONNumber.Create(187.43)
    ));
  end;

  pedidos.AddElement(pedido1);
  pedidos.AddElement(pedido2);

  with cliente do begin
    AddPair(TJSONPair.Create(
      TJSONString.Create('Nombre'),
      TJSONSTring.Create('Francisco Charte')
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Saldo'),
      TJSONNumber.Create(512.08)
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('ClienteHabitual'),
      TJSONTrue.Create
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Direccion'),
      direccion
    ));
    AddPair(TJSONPair.Create(
      TJSONString.Create('Pedidos'),
      pedidos
    ));
  end;

  WriteLn('Representación JSON del TJSONObject' + #13#10#10 +
    cliente.ToString + #13#10#10 + 'Pulsa <Intro>');

  ReadLn;

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

  WriteLn('Vía de la dirección: ' +
    cliente.Values['Cliente'].GetValue<TJSONObject>('Direccion').Values['Via'].Value +
    #13#10#10 + 'Pulsa <Intro>'
  );

  ReadLn;
end.
