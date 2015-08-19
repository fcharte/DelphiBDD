object dmChangeAlerter: TdmChangeAlerter
  OldCreateOrder = False
  Height = 317
  Width = 467
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 71
    Top = 37
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    ChangeAlerter = FDEventAlerter1
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT ProductCategoryID, Name, ModifiedDate'
      'FROM AdventureWorks.Production.ProductCategory')
    Left = 79
    Top = 101
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    ScreenCursor = gcrHourGlass
    Left = 216
    Top = 144
  end
  object FDEventAlerter1: TFDEventAlerter
    Connection = AdventureworksConnection
    Options.AutoRegister = True
    Left = 80
    Top = 184
  end
end
