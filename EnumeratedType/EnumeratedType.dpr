program EnumeratedType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TProductCategory = (Snacks, Crunchies, Smoothies);

  TSnacksCategory = (
     Almonds = 5, Crackers = 8, Muffins = 10);

var
  aProductCategory: TProductCategory;
  aSnack: TSnacksCategory;
begin

  aProductCategory := TProductCategory.Snacks;
  aSnack := TSnacksCategory.Almonds;
end.
