object dmReconcile: TdmReconcile
  OldCreateOrder = False
  Height = 270
  Width = 472
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 111
    Top = 51
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    CachedUpdates = True
    OnReconcileError = ProductcategoryTableReconcileError
    Connection = AdventureworksConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 111
    Top = 123
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 288
    Top = 48
  end
end
