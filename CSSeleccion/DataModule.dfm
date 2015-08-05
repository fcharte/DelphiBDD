object dmSeleccion: TdmSeleccion
  OldCreateOrder = False
  Height = 224
  Width = 415
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 54
  end
  object ProductCategoryQuery: TFDQuery
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT ProductCategoryID, Name'
      'FROM Production.ProductCategory')
    Left = 184
    Top = 128
  end
end
