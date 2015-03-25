unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text;

type
  TdmUnicode = class(TDataModule)
    CSVReader: TFDBatchMoveTextReader;
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
