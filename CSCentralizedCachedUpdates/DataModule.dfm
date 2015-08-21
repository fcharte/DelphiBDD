object dmCachedUpdates: TdmCachedUpdates
  OldCreateOrder = False
  Height = 287
  Width = 512
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 80
    Top = 49
  end
  object ProductcategoryTable: TFDQuery
    CachedUpdates = True
    Connection = AdventureworksConnection
    SchemaAdapter = FDSchemaAdapter1
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 80
    Top = 97
  end
  object ProductsubcategoryTable: TFDQuery
    CachedUpdates = True
    Connection = dmCachedUpdates.AdventureworksConnection
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductSubcategory')
    Left = 88
    Top = 183
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 240
    Top = 48
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 224
    Top = 144
  end
end
