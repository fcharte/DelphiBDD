unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Backend.EMSApi,
  IPPeerClient, REST.Backend.ServiceTypes, REST.Backend.MetaTypes,
  REST.Backend.EMSServices, System.JSON, REST.Backend.EMSProvider,
  REST.Backend.Providers, REST.Backend.ServiceComponents, FMX.Layouts,
  FMX.ListBox, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Backend.BindSource, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  FMX.StdCtrls;

type
  TForm12 = class(TForm)
    BackendGroups1: TBackendGroups;
    EMSProvider1: TEMSProvider;
    BackendQuery1: TBackendQuery;
    lbGroups: TListBox;
    Label1: TLabel;
    lbUsers: TListBox;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  EMSClient: TEMSClientAPI;

implementation

{$R *.fmx}

procedure TForm12.FormShow(Sender: TObject);
var
  I: Integer;
begin
  BackendQuery1.BackendService := 'Groups';
  BackendQuery1.Execute;
  with BackendQuery1.JSONResult do
  for I := 0 to Count-1 do
    lbGroups.Items.Add(Items[I].GetValue<String>('groupname'));

  BackendQuery1.BackendService := 'Users';
  BackendQuery1.Execute;
  with BackendQuery1.JSONResult do
  for I := 0 to Count-1 do
    lbUsers.Items.Add(Items[I].GetValue<String>('username'));

end;

end.
