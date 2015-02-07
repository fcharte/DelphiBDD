object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 367
  Width = 513
  object DbdemosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DBDEMOS'
      'MonitorBy=Remote')
    Connected = True
    LoginPrompt = False
    Left = 70
    Top = 42
  end
  object CustomerTable: TFDQuery
    OnCalcFields = CustomerTableCalcFields
    Aggregates = <
      item
      end>
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT Company, City, Country, Contact, LastInvoiceDate'
      'FROM customer'
      'WHERE LastInvoiceDate > :RefDate'
      'ORDER BY Country, LastInvoiceDate DESC')
    Left = 70
    Top = 90
    ParamData = <
      item
        Name = 'REFDATE'
        DataType = ftDate
        ParamType = ptInput
        Value = 34700d
      end>
    object CustomerTableCompany: TWideStringField
      FieldName = 'Company'
      Origin = 'Company'
      Size = 30
    end
    object CustomerTableCity: TWideStringField
      FieldName = 'City'
      Origin = 'City'
      Size = 15
    end
    object CustomerTableCountry: TWideStringField
      FieldName = 'Country'
      Origin = 'Country'
    end
    object CustomerTableContact: TWideStringField
      FieldName = 'Contact'
      Origin = 'Contact'
    end
    object CustomerTableLastInvoiceDate: TSQLTimeStampField
      FieldName = 'LastInvoiceDate'
      Origin = 'LastInvoiceDate'
    end
    object CustomerTableDaysSinceLastInvoice: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DaysSinceLastInvoice'
      Calculated = True
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 216
    Top = 160
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 400
    Top = 160
  end
end
