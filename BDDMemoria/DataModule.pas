unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmMemoria = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMemoria: TdmMemoria;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
