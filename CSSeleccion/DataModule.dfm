object dmSeleccion: TdmSeleccion
  OldCreateOrder = False
  Height = 224
  Width = 415
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 54
  end
  object ProductCategoryQuery: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT SalesOrderDetailID, ProductID,'
      ' OrderQty, UnitPrice, LineTotal'
      'FROM Sales.SalesOrderDetail'
      'WHERE SalesOrderId = :SalesOrderId'
      '')
    Left = 184
    Top = 128
    ParamData = <
      item
        Name = 'SALESORDERID'
        DataType = ftString
        ParamType = ptInput
        Value = '43659'
      end>
  end
end
