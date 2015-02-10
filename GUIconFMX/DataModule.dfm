object MyDataModule: TMyDataModule
  OldCreateOrder = False
  Height = 259
  Width = 383
  object DbdemosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DBDEMOS')
    Connected = True
    LoginPrompt = False
    Left = 67
    Top = 31
  end
  object CustomerTable: TFDQuery
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM customer')
    Left = 67
    Top = 79
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 240
    Top = 32
  end
end
