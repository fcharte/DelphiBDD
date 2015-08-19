object dmChangeNotification: TdmChangeNotification
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 271
  Width = 404
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 52
  end
  object ProductcategoryTable: TFDQuery
    Active = True
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT * FROM AdventureWorks.Production.ProductCategory')
    Left = 88
    Top = 100
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    ScreenCursor = gcrHourGlass
    Left = 248
    Top = 48
  end
  object FDEventAlerter1: TFDEventAlerter
    Connection = AdventureworksConnection
    Names.Strings = (
      'SERVICE=?'
      'QUEUE=?'
      
        'CHANGE1=ev1;select ProductCategoryID, Name, ModifiedDate from Ad' +
        'ventureWorks.Production.ProductCategory')
    Options.Timeout = 5000
    OnAlert = FDEventAlerter1Alert
    OnTimeout = FDEventAlerter1Timeout
    Left = 80
    Top = 192
  end
end
