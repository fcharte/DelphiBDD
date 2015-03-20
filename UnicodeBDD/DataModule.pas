unit DataModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmUnicode = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUnicode: TdmUnicode;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
