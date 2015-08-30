program EnumeratedType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TProductCategory = (Snacks, Crunchies, Smoothies);

var
  aProductCategory: TProductCategory;

begin

  aProductCategory := TProductCategory.Snacks;
end.
