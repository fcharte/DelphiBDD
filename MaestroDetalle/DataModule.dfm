object dmMaestroDetalle: TdmMaestroDetalle
  OldCreateOrder = False
  Height = 324
  Width = 500
  object DbdemosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DBDEMOS')
    Connected = True
    LoginPrompt = False
    Left = 68
    Top = 57
  end
  object OrdersTable: TFDQuery
    Active = True
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM orders')
    Left = 68
    Top = 105
  end
  object ItemsTable: TFDQuery
    Active = True
    MasterSource = dsOrders
    MasterFields = 'OrderNo'
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM items')
    Left = 274
    Top = 59
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 232
    Top = 144
  end
  object dsOrders: TDataSource
    DataSet = OrdersTable
    Left = 72
    Top = 192
  end
end
