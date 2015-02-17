unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Data.Bind.Components, Data.Bind.DBScope, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  Data.Bind.Grid, FMX.Layouts, FMX.Grid, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, Data.Bind.Controls, Fmx.Bind.Navigator,
  FMX.ListBox, FMX.ComboEdit, FMX.CalendarEdit;

type
  TfrmMain = class(TForm)
    BindSourceDB1: TBindSourceDB;
    EditOrderNo: TEdit;
    LabelOrderNo: TLabel;
    LinkControlToFieldOrderNo: TLinkControlToField;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    GridBindSourceDB2: TGrid;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    NavigatorBindSourceDB1: TBindNavigator;
    EditCustomerName: TEdit;
    LabelCustomerName: TLabel;
    LinkControlToFieldCustomerName: TLinkControlToField;
    CalendarEditSaleDate: TCalendarEdit;
    LabelSaleDate: TLabel;
    LinkControlToFieldSaleDate: TLinkControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses DataModule;

end.
