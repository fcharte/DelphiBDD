object dmIris: TdmIris
  OldCreateOrder = False
  Height = 272
  Width = 412
  object FDBatchMove1: TFDBatchMove
    Reader = IrisCSVReader
    Writer = IrisDSWriter
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 192
    Top = 120
  end
  object IrisCSVReader: TFDBatchMoveTextReader
    FileName = 'D:\DelphiBDD\DatosCSV\iris.csv'
    DataDef.Fields = <>
    Left = 48
    Top = 200
  end
  object IrisDSWriter: TFDBatchMoveDataSetWriter
    DataSet = IrisTable
    Left = 192
    Top = 200
  end
  object IrisTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    LocalSQL = FDLocalSQL1
    AutoCommitUpdates = False
    Left = 312
    Top = 192
  end
  object IrisConnection: TFDConnection
    Left = 56
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = IrisConnection
    DataSets = <>
    Left = 176
    Top = 40
  end
end
