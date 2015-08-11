unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmAgregado = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAgregado: TdmAgregado;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
