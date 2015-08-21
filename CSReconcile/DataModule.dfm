object dmReconcile: TdmReconcile
  OldCreateOrder = False
  Height = 210
  Width = 340
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 106
    Top = 81
  end
  object ProductcategoryTable: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 106
    Top = 129
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 136
  end
end
