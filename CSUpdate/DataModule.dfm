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
    Active = True
    Connection = AdventureworksConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT ProductCategoryId, Name'
      'FROM Production.ProductCategory')
    Left = 110
    Top = 80
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
