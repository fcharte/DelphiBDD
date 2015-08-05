object dmEmployee: TdmEmployee
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 254
  Width = 414
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks'
      'MonitorBy=Remote')
    Connected = True
    LoginPrompt = False
    Left = 126
    Top = 129
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 288
    Top = 128
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    Filter = 'name LIKE '#39'C%'#39
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 127
    Top = 191
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 288
    Top = 184
  end
end
