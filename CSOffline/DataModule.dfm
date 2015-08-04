object dmEmployee: TdmEmployee
  OldCreateOrder = False
  Height = 254
  Width = 414
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    LoginPrompt = False
    Left = 126
    Top = 129
  end
  object EmployeeTable: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.HumanResources.Employee')
    Left = 126
    Top = 177
  end
end
