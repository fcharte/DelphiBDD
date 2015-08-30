program EnumeratedType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TProductCategory = (Snacks, Crunchies, Smoothies);

  TSnacksCategory = (
     Almonds = 5, Crackers = 8, Muffins = 10);

{$SCOPEDENUMS ON}
  TSmoothiesCategory = (Pineapple, Kiwi, Chocolate);
{$SCOPEDENUMS OFF}

var
  aProductCategory: TProductCategory;
  aSnack: TSnacksCategory;
  aSmoothy: TSmoothiesCategory;
begin

  aProductCategory := Snacks;
  aSnack := TSnacksCategory.Almonds;
  aSmoothy := TSmoothiesCategory.Kiwi;
end.
