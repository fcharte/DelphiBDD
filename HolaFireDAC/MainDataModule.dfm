object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 202
  Width = 401
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\DelphiBDD\HolaFireDAC\HolaFireDAC.sdb'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object FDTableEntradas: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Entradas'
    TableName = 'Entradas'
    Left = 176
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 192
    Top = 120
  end
end
