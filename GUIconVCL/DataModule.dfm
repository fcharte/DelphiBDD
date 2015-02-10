object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 150
  Width = 215
  object DbdemosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DBDEMOS')
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object CustomerTable: TFDQuery
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM customer')
    Left = 48
    Top = 88
  end
end
