object dmMemoria: TdmMemoria
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 317
  Width = 517
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
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
  object RastroTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 48
    Top = 200
  end
end
