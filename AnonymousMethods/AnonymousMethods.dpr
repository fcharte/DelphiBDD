program AnonymousMethods;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Types, System.StrUtils;

type

  TFuncComparator = reference to function(l1, l2: String): Boolean;

procedure Sort(items: TStringDynArray; compareFunc: TFuncComparator);
var
  index, position: Integer;
  temp: String;
begin
  for index := Low(items) + 1 to High(items) do
  begin
    temp := items[index];
    position := index - 1;

    while ((position >= Low(items)) and compareFunc(temp, items[position])) do
    begin
      items[position + 1] := items[position];
      dec(position);
    end;

    items[position + 1] := temp;
  end;
end;


var
  months: TStringDynArray;

begin
  months := SplitString('Ene,Feb,Mar,Abr,May,Jun,' +
                        'Jul,Ago,Sep,Oct,Nov,Dic', ',');

  Sort(months, function(l1, l2: String): Boolean
    begin
      if l1 < l2 then
        result := true
      else
        result := false;
    end);
end.
