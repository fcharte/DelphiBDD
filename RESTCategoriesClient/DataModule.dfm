object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 249
  Width = 344
  object ProductCategoryTable: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 160
    Top = 112
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 64
    Top = 176
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 216
    Top = 176
  end
end
