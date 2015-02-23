unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmIris = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmIris: TdmIris;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
