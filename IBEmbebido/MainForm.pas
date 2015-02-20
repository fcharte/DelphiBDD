unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, FMX.TabControl,
  Data.Bind.Components, FMX.ListView, Data.Bind.DBScope, FMX.StdCtrls;

type
  TfrmMain = class(TForm)
    BindSourceDepartment: TBindSourceDB;
    ListViewDEPARTMENT: TListView;
    BindingsList1: TBindingsList;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ListViewEMPLOYEE: TListView;
    BindSourceEmployee: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    ToolBar1: TToolBar;
    Label1: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    Button1: TButton;
    ToolBar2: TToolBar;
    Label2: TLabel;
    BindSourceSalaryHistory: TBindSourceDB;
    TabItem3: TTabItem;
    ToolBar3: TToolBar;
    Label3: TLabel;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    Button2: TButton;
    ListViewSALARYHISTORY: TListView;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewDEPARTMENTItemClick(const Sender: TObject;
      const AItem: TListViewItem);
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

uses DataModuleEmployee;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem2;
end;

procedure TfrmMain.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl1.ActiveTab := TabItem3;
end;

procedure TfrmMain.ListViewDEPARTMENTItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  TabControl1.ActiveTab := TabItem2;
end;

end.
