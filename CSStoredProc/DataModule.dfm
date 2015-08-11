object dmStoredProc: TdmStoredProc
  OldCreateOrder = False
  Height = 213
  Width = 328
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 90
    Top = 56
  end
  object UspgetmanageremployeesProc: TFDStoredProc
    Active = True
    Connection = AdventureworksConnection
    CatalogName = 'AdventureWorks'
    SchemaName = 'dbo'
    StoredProcName = 'uspGetManagerEmployees'
    Left = 90
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@BusinessEntityID'
        DataType = ftInteger
        ParamType = ptInput
        Value = '1'
      end>
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 232
    Top = 80
  end
end
