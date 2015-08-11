unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmStoredProc = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmStoredProc: TdmStoredProc;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
