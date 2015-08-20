unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmCachedUpdates = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCachedUpdates: TdmCachedUpdates;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
