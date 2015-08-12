unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmTransaction = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTransaction: TdmTransaction;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
