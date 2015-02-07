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
      'ORDER BY Country, LastInvoiceDate DESC')
    Left = 70
    Top = 90
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
  object HolafiredacConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=HolaFireDAC')
    Connected = True
    LoginPrompt = False
    Left = 241
    Top = 48
  end
  object EntradasTable: TFDQuery
    Connection = HolafiredacConnection
    SQL.Strings = (
      'SELECT asiento, cliente FROM Entradas ORDER BY asiento')
    Left = 241
    Top = 96
  end
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    Connected = True
    LoginPrompt = False
    Left = 243
    Top = 240
  end
  object Add_emp_projProc: TFDStoredProc
    Connection = EmployeeConnection
    StoredProcName = 'ADD_EMP_PROJ'
    Left = 243
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'EMP_NO'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'PROJ_ID'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 5
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\DelphiBDD\HolaFireDAC\HolaFireDAC.sdb'
      'DriverID=SQLite')
    Left = 48
    Top = 256
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 240
    Top = 168
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 400
    Top = 160
  end
end
