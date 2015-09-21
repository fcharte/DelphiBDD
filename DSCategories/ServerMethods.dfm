object CategoriesMethods: TCategoriesMethods
  OldCreateOrder = False
  Height = 187
  Width = 294
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 74
    Top = 38
  end
  object AdventureWorksTable: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 74
    Top = 102
  end
end
