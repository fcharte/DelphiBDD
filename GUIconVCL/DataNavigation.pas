unit DataNavigation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Controls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator, Vcl.StdCtrls,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TfrmNavegacion = class(TForm)
    Edit1: TEdit;
    BindSourceDB1: TBindSourceDB;
    LinkControlToFieldCompany: TLinkControlToField;
    BindingsList1: TBindingsList;
    Label1: TLabel;
    Edit2: TEdit;
    LinkControlToFieldCity: TLinkControlToField;
    NavigatorBindSourceDB1: TBindNavigator;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNavegacion: TfrmNavegacion;

implementation

{$R *.dfm}

uses DataModule;

end.
