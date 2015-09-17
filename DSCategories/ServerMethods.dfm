object CategoriesMethods: TCategoriesMethods
  OldCreateOrder = False
  Height = 187
  Width = 294
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 58
    Top = 38
  end
  object ProductcategoryTable: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 58
    Top = 86
  end
end
