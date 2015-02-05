object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 186
  Width = 354
  object DbdemosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DBDEMOS')
    LoginPrompt = False
    Left = 70
    Top = 42
  end
  object CustomerTable: TFDQuery
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM customer')
    Left = 70
    Top = 90
  end
  object HolafiredacConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=HolaFireDAC')
    LoginPrompt = False
    Left = 241
    Top = 48
  end
  object EntradasTable: TFDQuery
    Connection = HolafiredacConnection
    SQL.Strings = (
      'SELECT * FROM Entradas')
    Left = 241
    Top = 96
  end
end
