object dmCachedUpdates: TdmCachedUpdates
  OldCreateOrder = False
  Height = 251
  Width = 431
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
    Connection = AdventureworksConnection
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
