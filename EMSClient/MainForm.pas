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
  FMX.StdCtrls, REST.Client, REST.Backend.EndPoint, FMX.Edit;

type
  TForm12 = class(TForm)
    BackendGroups1: TBackendGroups;
    EMSProvider1: TEMSProvider;
    BackendQuery1: TBackendQuery;
    lbGroups: TListBox;
    Label1: TLabel;
    lbUsers: TListBox;
    Label2: TLabel;
    BackendEndpoint1: TBackendEndpoint;
    BackendUsers1: TBackendUsers;
    BackendStorage1: TBackendStorage;
    BackendAuth1: TBackendAuth;
    edlGrupo: TEdit;
    btnGrupo: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
  private
    procedure RefreshGroups;
    procedure RefreshUsers;
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.fmx}

procedure TForm12.btnGrupoClick(Sender: TObject);
var
  newGroup: TBackendEntityValue;
begin
  BackendGroups1.Groups.CreateGroup(edlGrupo.Text, TJSONObject.Create, newGroup);
  RefreshGroups;
end;

procedure TForm12.FormShow(Sender: TObject);
var
  I: Integer;
  EMSClient: TEMSClientAPI;
  userName: String;
begin
  RefreshGroups;
  RefreshUsers;

  //EMSClient := TEMSClientAPI.Create;
  // Host y puerto del servidor
  //for userName in EMSClient.RetrieveUsersNames do
  //  lbUsers.Items.Add(userName);
end;

procedure TForm12.RefreshGroups;
var
  I: Integer;
begin
  lbGroups.Clear;

  BackendQuery1.BackendService := 'Groups';
  BackendQuery1.Execute;
  with BackendQuery1.JSONResult do
  for I := 0 to Count-1 do
    lbGroups.Items.Add(Items[I].GetValue<String>('groupname'));
end;

procedure TForm12.RefreshUsers;
var
  I: Integer;
begin
  BackendQuery1.BackendService := 'Users';
  BackendQuery1.Execute;
  with BackendQuery1.JSONResult do
  for I := 0 to Count-1 do
    lbUsers.Items.Add(Items[I].GetValue<String>('username'));
end;

end.
