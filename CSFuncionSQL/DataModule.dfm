object dmFuncionSQL: TdmFuncionSQL
  OldCreateOrder = False
  Height = 239
  Width = 385
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 54
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 176
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT *'
      'FROM HighPriceCategories(:LimitPrice)')
    Left = 272
    Top = 136
    ParamData = <
      item
        Name = 'LIMITPRICE'
        DataType = ftCurrency
        ParamType = ptInput
        Value = 10000000c
      end>
  end
end
