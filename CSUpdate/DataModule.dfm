object dmUpdateOptions: TdmUpdateOptions
  OldCreateOrder = False
  Height = 244
  Width = 402
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 110
    Top = 24
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT Name'
      'FROM Production.ProductCategory')
    Left = 110
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 104
    Top = 152
  end
end
