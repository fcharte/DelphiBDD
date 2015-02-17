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
    object OrdersTableOrderNo: TFloatField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OrdersTableSaleDate: TSQLTimeStampField
      FieldName = 'SaleDate'
      Origin = 'SaleDate'
    end
    object OrdersTableCustNo: TFloatField
      FieldName = 'CustNo'
      Origin = 'CustNo'
    end
    object OrdersTableCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupDataSet = CustomerTable
      LookupKeyFields = 'CustNo'
      LookupResultField = 'Company'
      KeyFields = 'CustNo'
      Lookup = True
    end
  end
  object ItemsTable: TFDQuery
    Active = True
    MasterSource = dsOrders
    MasterFields = 'OrderNo'
    DetailFields = 'OrderNo'
    Connection = DbdemosConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM items'
      'WHERE OrderNo = :OrderNo')
    Left = 74
    Top = 243
    ParamData = <
      item
        Name = 'ORDERNO'
        DataType = ftFloat
        ParamType = ptInput
        Size = 8
        Value = 1003.000000000000000000
      end>
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 184
    Top = 40
  end
  object dsOrders: TDataSource
    DataSet = OrdersTable
    Left = 72
    Top = 192
  end
  object CustomerTable: TFDQuery
    Active = True
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM customer')
    Left = 174
    Top = 156
  end
end
