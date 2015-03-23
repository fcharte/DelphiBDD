unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Memo;

type
  TfrmMain = class(TForm)
    OpenDialog1: TOpenDialog;
    ToolBar1: TToolBar;
    btnAbrir: TButton;
    btnGuardar: TButton;
    UTF16: TRadioButton;
    UTF8: TRadioButton;
    ANSI: TRadioButton;
    BOM: TCheckBox;
    Memo1: TMemo;
    procedure btnAbrirClick(Sender: TObject);
    procedure ANSIChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fileName: TFileName;
    contenido: TBytes;
    codActual: TEncoding;
    function getEncoding: TEncoding;
    procedure setEncoding(encoding: TEncoding);

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

function TfrmMain.getEncoding;
begin
  if UTF16.IsChecked then
    result := TEncoding.Unicode
  else if UTF8.IsChecked then
       result := TEncoding.UTF8
       else result := TEncoding.ANSI;
end;

procedure TfrmMain.setEncoding(encoding: TEncoding);
begin
  UTF16.IsChecked := encoding = TEncoding.Unicode;
  UTF8.IsChecked := encoding = TEncoding.UTF8;
  ANSI.IsChecked := encoding = TEncoding.ANSI;
end;

procedure TfrmMain.ANSIChange(Sender: TObject);
var
  codNueva: TEncoding;
begin
  codNueva := getEncoding;

  if codActual <> codNueva then
  begin
    Memo1.Text := codNueva.GetString(
      TEncoding.Convert(codActual, codNueva,
        codActual.GetBytes(Memo1.Text)));

  codActual := codNueva;
  end;
end;

procedure TfrmMain.btnAbrirClick(Sender: TObject);
var
  archivo: TFileStream;
  longPreambulo: Integer;
begin
  if OpenDialog1.Execute then
  begin
    fileName := OpenDialog1.FileName;
    archivo := TFileStream.Create(fileName, fmOpenRead);
    SetLength(contenido, archivo.Size);
    archivo.ReadBuffer(Pointer(contenido)^, Length(contenido));
    codActual := nil;
    longPreambulo := TEncoding.GetBufferEncoding(contenido, codActual);

    BOM.IsChecked := longPreambulo >  0;

    Memo1.Text := codActual.GetString(contenido);
    setEncoding(codActual);
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  codActual := getEncoding;
end;

end.
