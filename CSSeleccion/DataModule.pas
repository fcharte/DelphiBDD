unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmSeleccion = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSeleccion: TdmSeleccion;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
