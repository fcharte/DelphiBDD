unit Collectible;

interface

uses
  FMX.Graphics; { Módulo con la definición de TBitmap }

type
  TLaunchYear    = 1965 .. 1995;
  TConsState     =    0 .. 100;

TCollectible = class abstract
  private
    Fname        : String;
    Fyear        : TLaunchYear;
    Fstate       : TConsState;
    Fdescription : String;
    Fpictures    : array of TBitmap;
    nPictures    : Integer;
    { Métodos de uso interno }
    procedure setName(name: String);
    function  getPicture(Index: Integer): TBitmap;
    procedure extendPictures;
end;

implementation

end.
