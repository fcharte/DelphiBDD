object dmMemoria: TdmMemoria
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 317
  Width = 517
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    Left = 56
    Top = 112
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 416
    Top = 48
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 424
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 168
    Top = 56
  end
  object RastroTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Lugar'
        DataType = ftInteger
      end
      item
        Name = 'TimeStamp'
        DataType = ftDateTime
      end
      item
        Name = 'Coords'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Altitud'
        DataType = ftFloat
      end
      item
        Name = 'Comentario'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RastroTableLugarIndex'
        Fields = 'Lugar'
      end>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 56
    Top = 200
    object RastroTableLugar: TIntegerField
      FieldName = 'Lugar'
    end
    object RastroTableTimeStamp: TDateTimeField
      FieldName = 'TimeStamp'
    end
    object RastroTableCoords: TStringField
      FieldName = 'Coords'
      Size = 18
    end
    object RastroTableAltitud: TFloatField
      FieldName = 'Altitud'
    end
    object RastroTableComentario: TStringField
      FieldName = 'Comentario'
      Size = 50
    end
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Rastro'
    TableName = 'Rastro'
    Left = 256
    Top = 48
  end
  object FDSQLiteBackup1: TFDSQLiteBackup
    DriverLink = FDPhysSQLiteDriverLink1
    Catalog = 'MAIN'
    DestCatalog = 'MAIN'
    Left = 408
    Top = 224
  end
end
