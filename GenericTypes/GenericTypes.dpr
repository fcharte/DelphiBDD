program GenericTypes;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type

  TSort<DataType> = class
  type
    ArrayType = array of DataType;
    TFuncComparator = reference to function(l1, l2: DataType): Boolean;

  class procedure Sort(items: ArrayType; compareFunc: TFuncComparator);
  end;

  TSortString = TSort<String>;
  TSortInteger = TSort<Integer>;

class procedure TSort<DataType>.Sort(items: ArrayType;
  compareFunc: TFuncComparator);
var
  index, position: Integer;
  temp: DataType;

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
  months: TSortString.ArrayType;
  days: TSortInteger.ArrayType;

begin
  SetLength(days, 10);
  SetLength(months, 12);

  // TODO: Introducir elementos en las matrices

  // Ordenar la matriz de enteros
  TSortInteger.Sort(days,
    function(l1, l2: Integer): Boolean
    begin
      result := l1 < l2;
    end);

  // Ordenar la matriz de cadenas de caracteres
  TSortString.Sort(months,
    function(l1, l2: String): Boolean
    begin
      result := l1 < l2;
    end);

end.
