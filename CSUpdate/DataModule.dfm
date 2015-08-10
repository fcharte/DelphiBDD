object dmUpdateOptions: TdmUpdateOptions
  OldCreateOrder = False
  Height = 244
  Width = 402
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks'
      'MonitorBy=Remote')
    Connected = True
    LoginPrompt = False
    Left = 110
    Top = 24
  end
  object ProductcategoryTable: TFDQuery
    Connection = AdventureworksConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.UpdateTableName = 'AdventureWorks.Production.ProductCategory'
    UpdateOptions.KeyFields = 'ProductCategoryID'
    SQL.Strings = (
      'SELECT Category.ProductCategoryID, Category.Name, '
      '       SubCategory.ProductSubCategoryID, SubCategory.Name'
      'FROM Production.ProductSubcategory As SubCategory'
      'INNER JOIN Production.ProductCategory As Category'
      'ON SubCategory.ProductCategoryID = Category.ProductCategoryID'
      '')
    Left = 110
    Top = 80
    object ProductcategoryTableProductCategoryID: TFDAutoIncField
      FieldName = 'ProductCategoryID'
      Origin = 'ProductCategoryID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ProductcategoryTableName: TWideStringField
      FieldName = 'Name'
      Origin = 'Name'
      Required = True
      Size = 50
    end
    object ProductcategoryTableName_1: TWideStringField
      DisplayLabel = 'SubCategory'
      FieldName = 'Name_1'
      Origin = 'Name'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object ProductcategoryTableProductSubCategoryID: TFDAutoIncField
      FieldName = 'ProductSubCategoryID'
      Origin = 'ProductSubCategoryID'
      ReadOnly = True
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 104
    Top = 152
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 296
    Top = 24
  end
end
