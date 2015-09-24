object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 266
  Width = 422
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 92
    Top = 81
  end
  object ProductcategoryTable: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 92
    Top = 129
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 320
    Top = 80
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 320
    Top = 144
  end
end
