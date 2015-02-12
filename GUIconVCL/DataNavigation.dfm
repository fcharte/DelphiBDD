object frmNavegacion: TfrmNavegacion
  Left = 0
  Top = 0
  Caption = 'Navegaci'#243'n por los datos'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 45
    Width = 107
    Height = 13
    Caption = 'Nombre de la empresa'
  end
  object Label2: TLabel
    Left = 24
    Top = 109
    Width = 33
    Height = 13
    Caption = 'Ciudad'
  end
  object Edit1: TEdit
    Left = 24
    Top = 64
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object NavigatorBindSourceDB1: TBindNavigator
    Left = 0
    Top = 0
    Width = 635
    Height = 25
    DataSource = BindSourceDB1
    Align = alTop
    Orientation = orHorizontal
    TabOrder = 2
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = MyDataModule.CustomerTable
    ScopeMappings = <>
    Left = 152
    Top = 248
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 60
    Top = 245
    object LinkControlToFieldCompany: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Company'
      Control = Edit1
      Track = True
    end
    object LinkControlToFieldCity: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'City'
      Control = Edit2
      Track = True
    end
  end
end
