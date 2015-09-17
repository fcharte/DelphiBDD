unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.DS, FireDAC.Phys.DSDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FMX.Controls.Presentation,
  FMX.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  IPPeerClient, FireDAC.Phys.TDBXBase, FireDAC.FMXUI.Wait, FireDAC.Comp.UI,
  FMX.Edit;

type
  TfrmMain = class(TForm)
    RandomserviceConnection: TFDConnection;
    NextrandProc: TFDStoredProc;
    Button1: TButton;
    FDPhysDSDriverLink1: TFDPhysDSDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button2: TButton;
    GroupBox1: TGroupBox;
    edInferior: TEdit;
    Label1: TLabel;
    edSuperior: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    edInferior2: TEdit;
    Label3: TLabel;
    edSuperior2: TEdit;
    Label4: TLabel;
    lblResultado: TLabel;
    Label6: TLabel;
    lblResultado2: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses RandomClassesUnit, RandomModuleUnit;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  with NextrandProc do begin
    ParamByName('FromN').Value := StrToInt(edInferior.Text);
    ParamByName('ToN').Value := StrToInt(edSuperior.Text);
    ExecProc;
    lblResultado.Text := ParamByName('ReturnValue').AsString;
  end;

end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  lblResultado2.Text := IntToStr(RandomModule.RandomMethodsClient.NextRand(
     StrToInt(edInferior2.Text), StrToInt(edSuperior2.Text)));
end;

end.
