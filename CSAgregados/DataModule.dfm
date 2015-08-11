object dmAgregado: TdmAgregado
  OldCreateOrder = False
  Height = 264
  Width = 472
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 172
    Top = 29
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 224
    Top = 120
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = AdventureworksConnection
    SQL.Strings = (
      'SELECT ProductSubcategoryID As Subcategoria, '
      '       AVG(ListPrice) As "Precio medio"'
      'FROM Production.Product'
      'GROUP BY ProductSubcategoryID')
    Left = 328
    Top = 120
  end
end
