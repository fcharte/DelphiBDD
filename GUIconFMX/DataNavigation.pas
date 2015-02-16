unit DataNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Controls,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, FMX.Layouts,
  Fmx.Bind.Navigator, Data.Bind.DBScope, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ComboEdit, FMX.CalendarEdit;

type
  TfrmNavegacion = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BindSourceDB1: TBindSourceDB;
    LinkControlToFieldCompany: TLinkControlToField;
    NavigatorBindSourceDB1: TBindNavigator;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    CalendarEditLastInvoiceDate: TCalendarEdit;
    LabelLastInvoiceDate: TLabel;
    LinkControlToFieldLastInvoiceDate: TLinkControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNavegacion: TfrmNavegacion;

implementation

{$R *.fmx}

uses DataModule;

end.
