object dmPoblacion: TdmPoblacion
  OldCreateOrder = False
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
    Connected = True
    LoginPrompt = False
    Left = 79
    Top = 22
  end
  object PoblacionPaisTable: TFDQuery
    Connection = PoblacionConnection
    SQL.Strings = (
      
        'SELECT Pa'#237's, sum(Hombres) AS TotalHombres, sum(Mujeres) AS Total' +
        'Mujeres'
      'FROM [DatosIniciales$]'
      'WHERE Continente = '#39'Europa'#39
      'GROUP BY Pa'#237's')
    Left = 79
    Top = 94
  end
end
