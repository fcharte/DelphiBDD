object dmIris: TdmIris
  OldCreateOrder = False
  Height = 272
  Width = 412
  object FDBatchMove1: TFDBatchMove
    Reader = IrisCSVReader
    Writer = IrisDSWriter
    Mappings = <>
    LogFileAction = laAppend
    LogFileName = 'Data.log'
    Analyze = [taDelimSep, taHeader, taFields]
    Left = 192
    Top = 120
  end
  object IrisCSVReader: TFDBatchMoveTextReader
    DataDef.Fields = <>
    DataDef.FormatSettings.DecimalSeparator = '.'
    Left = 48
    Top = 200
  end
  object IrisDSWriter: TFDBatchMoveDataSetWriter
    DataSet = IrisMemTable
    Left = 192
    Top = 200
  end
  object IrisMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 312
    Top = 192
  end
  object IrisConnection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    ResourceOptions.AssignedValues = [rvDirectExecute, rvAutoConnect]
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = IrisConnection
    Active = True
    OnGetDataSet = FDLocalSQL1GetDataSet
    Left = 176
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 320
    Top = 40
  end
  object IrisTable: TFDQuery
    Connection = IrisConnection
    SQL.Strings = (
      'SELECT * FROM iris')
    Left = 56
    Top = 120
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 320
    Top = 112
  end
end
