unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.GenData, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Data.Bind.Components,
  Data.Bind.ObjectScope, Data.Bind.Controls, Vcl.Buttons, Vcl.Bind.Navigator;

type
  TForm5 = class(TForm)
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LabeledEditContactName: TLabeledEdit;
    LinkControlToFieldContactName12: TLinkControlToField;
    LabeledEditContactTitle1: TLabeledEdit;
    LinkControlToFieldContactTitle1: TLinkControlToField;
    MaskEditCurrencyField1: TMaskEdit;
    LinkControlToFieldCurrencyField1: TLinkControlToField;
    Label1: TLabel;
    ImageContactBitmap1: TImage;
    LinkControlToFieldContactBitmap1: TLinkControlToField;
    MemoStringsField1: TMemo;
    LinkControlToFieldStringsField1: TLinkControlToField;
    NavigatorPrototypeBindSource1: TBindNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
