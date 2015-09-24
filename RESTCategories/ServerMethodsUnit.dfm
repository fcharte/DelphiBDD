object ProductInfo: TProductInfo
  OldCreateOrder = False
  Height = 266
  Width = 422
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 52
    Top = 33
  end
  object ProductcategoryTable: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 52
    Top = 81
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 200
    Top = 32
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 200
    Top = 96
  end
end
