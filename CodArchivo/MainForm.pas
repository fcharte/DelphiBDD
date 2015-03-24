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
    SaveDialog1: TSaveDialog;
    procedure btnAbrirClick(Sender: TObject);
    procedure ANSIChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
    contenido: TBytes;
    codActual: TEncoding;
    longPreambulo: Integer;
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

  Memo1.Text := codNueva.GetString(
      TEncoding.Convert(codActual, codNueva, contenido));
end;

procedure TfrmMain.btnAbrirClick(Sender: TObject);
var
  archivo: TFileStream;
begin
  if OpenDialog1.Execute then
  begin
    archivo := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
    SetLength(contenido, archivo.Size);
    archivo.ReadBuffer(Pointer(contenido)^, Length(contenido));
    archivo.Free;
    codActual := nil;
    longPreambulo := TEncoding.GetBufferEncoding(contenido, codActual);

    BOM.IsChecked := longPreambulo >  0;

    Memo1.Text := codActual.GetString(contenido);
    setEncoding(codActual);
  end;
end;

procedure TfrmMain.btnGuardarClick(Sender: TObject);
var
  archivo: TFileStream;
  codNueva: TEncoding;
  preambulo, contArchivo: TBytes;
  despContenido: Integer;
begin
  if SaveDialog1.Execute then
  begin
    codNueva := getEncoding;
    archivo := TFileStream.Create(SaveDialog1.FileName, fmCreate);
    if BOM.IsChecked then
    begin
      preambulo := codNueva.GetPreamble;
      archivo.Write(preambulo[0], Length(preambulo));
    end;
    contArchivo := TEncoding.Convert(codActual, codNueva, contenido,
       longPreambulo, Length(contenido) - longPreambulo);
    archivo.Write(contArchivo[0], Length(contArchivo));
    archivo.Free;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  codActual := getEncoding;
end;

end.
