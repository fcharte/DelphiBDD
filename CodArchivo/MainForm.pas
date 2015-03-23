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
    Memo1: TMemo;
    UTF16: TRadioButton;
    UTF8: TRadioButton;
    ANSI: TRadioButton;
    BOM: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

end.
