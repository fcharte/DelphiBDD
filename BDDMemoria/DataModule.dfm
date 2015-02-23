object dmMemoria: TdmMemoria
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 317
  Width = 517
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    Left = 56
    Top = 112
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 416
    Top = 48
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 424
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 168
    Top = 56
  end
  object RastroTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 56
    Top = 200
  end
  object FDTable1: TFDTable
    CachedUpdates = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Rastro'
    TableName = 'Rastro'
    Left = 160
    Top = 200
  end
end
