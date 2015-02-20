object dmEmployee: TdmEmployee
  OldCreateOrder = False
  Height = 271
  Width = 470
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=D:\DelphiBDD\IBEmbebido\EMPLOYEE.GDB'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 66
    Top = 38
  end
  object DepartmentTable: TFDQuery
    Active = True
    Connection = EmployeeConnection
    SQL.Strings = (
      'SELECT * FROM DEPARTMENT')
    Left = 66
    Top = 86
  end
  object EmployeeTable: TFDQuery
    Active = True
    MasterSource = dsDepartment
    MasterFields = 'DEPT_NO'
    DetailFields = 'DEPT_NO'
    Connection = EmployeeConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE'
      'WHERE DEPT_NO = :DEPT_NO')
    Left = 285
    Top = 51
    ParamData = <
      item
        Name = 'DEPT_NO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 4
        Value = '621'
      end>
  end
  object dsDepartment: TDataSource
    DataSet = DepartmentTable
    Left = 64
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 320
    Top = 152
  end
end
