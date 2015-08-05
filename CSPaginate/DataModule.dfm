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
    Active = True
    Connection = AdventureworksConnection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmManual
    SQL.Strings = (
      'SELECT SalesOrderId, OrderDate, CustomerID, TotalDue'
      'FROM Sales.SalesOrderHeader')
    Left = 120
    Top = 128
  end
end
