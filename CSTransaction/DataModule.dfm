object dmTransaction: TdmTransaction
  OldCreateOrder = False
  Height = 219
  Width = 384
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 77
    Top = 143
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 304
    Top = 24
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    Connection = AdventureworksConnection
    UpdateOptions.AssignedValues = [uvLockMode, uvLockPoint, uvLockWait]
    UpdateOptions.LockMode = lmPessimistic
    UpdateOptions.LockPoint = lpImmediate
    UpdateOptions.LockWait = True
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 267
    Top = 141
  end
end
