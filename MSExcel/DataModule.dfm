object dmPoblacion: TdmPoblacion
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 305
  Width = 487
  object PoblacionConnection: TFDConnection
    Params.Strings = (
      
        'ODBCDriver={Microsoft Excel Driver (*.xls, *.xlsx, *.xlsm, *.xls' +
        'b)}'
      'Database=D:\DelphiBDD\MSExcel\Poblacion.xls'
      'User_Name=admin'
      'ODBCAdvanced=Mode=ReadWrite;ReadOnly=false; HDR=YES'
      'DriverID=ODBC')
    LoginPrompt = False
    Left = 79
    Top = 22
  end
  object PoblacionPaisTable: TFDQuery
    Connection = PoblacionConnection
    SQL.Strings = (
      
        'SELECT Pais, sum(Hombres) AS TotalHombres, sum(Mujeres) AS Total' +
        'Mujeres'
      'FROM [DatosIniciales$]'
      'WHERE Continente = '#39'Europa'#39
      'GROUP BY Pais')
    Left = 79
    Top = 94
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 232
    Top = 96
  end
  object FDPhysODBCDriverLink1: TFDPhysODBCDriverLink
    ODBCDriver = 'Microsoft Excel Driver (*.xls, *.xlsx, *.xlsm, *.xlsb)'
    ODBCAdvanced = 'Mode=ReadWrite;ReadOnly=false; HDR=YES'
    Left = 232
    Top = 24
  end
end
