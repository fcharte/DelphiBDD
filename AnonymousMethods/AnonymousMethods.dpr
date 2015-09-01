program AnonymousMethods;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure Sort(items: TStringDynArray;
                 compareFunc: TFuncComparator);

var
  index, position: Integer;
  temp: String;
begin
  for index := Low(items)+1 to High(items) do
    begin
      temp := items[index];
      position := index – 1;

      while ((position >= Low(items)) and
              compareFunc(temp, items[position])) do
        begin
          items[position+1] := items[position];
          dec(position);
        end;

       items[position+1] := temp;
    end;
end;


begin

end.
