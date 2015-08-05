object dmPaginate: TdmPaginate
  OldCreateOrder = False
  Height = 263
  Width = 401
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 117
    Top = 51
  end
  object SalesorderheaderQuery: TFDQuery
    Connection = AdventureworksConnection
    FetchOptions.AssignedValues = [evMode]
    SQL.Strings = (
      'SELECT SalesOrderId, OrderDate, CustomerID, TotalDue'
      'FROM Sales.SalesOrderHeader')
    Left = 120
    Top = 128
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 280
    Top = 128
  end
end
