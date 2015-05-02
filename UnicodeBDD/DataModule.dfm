object dmUnicode: TdmUnicode
  OldCreateOrder = False
  Height = 334
  Width = 461
  object CSVReader: TFDBatchMoveTextReader
    FileName = 'C:\DelphiBDD\UnicodeBDD\Win32\Debug\japeng.csv'
    DataDef.Fields = <
      item
        FieldName = 'Japanese'
        DataType = atString
      end
      item
        FieldName = 'English'
        DataType = atString
      end>
    DataDef.FormatSettings.DecimalSeparator = '.'
    Encoding = ecUTF8
    Left = 48
    Top = 200
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 376
    Top = 200
  end
  object FDBatchMove1: TFDBatchMove
    Reader = CSVReader
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileAction = laAppend
    LogFileName = 'Data.log'
    Left = 128
    Top = 200
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = FDMemTable1
    Left = 248
    Top = 200
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 352
    Top = 48
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    OnGetDataSet = FDLocalSQL1GetDataSet
    Left = 144
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM japeng')
    Left = 240
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 344
    Top = 112
  end
end
