unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdbInterBase = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbInterBase: TdbInterBase;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
