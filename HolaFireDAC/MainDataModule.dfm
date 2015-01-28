object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 202
  Width = 401
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\DelphiBDD\HolaFireDAC\HolaFireDAC.sdb'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 48
    Top = 120
  end
end
