object dmScript: TdmScript
  OldCreateOrder = False
  Height = 299
  Width = 374
  object AdventureworksConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AdventureWorks')
    Connected = True
    LoginPrompt = False
    Left = 58
    Top = 26
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 56
    Top = 88
  end
  object FDScript1: TFDScript
    SQLScripts = <
      item
        Name = 'GetListPrice'
        SQL.Strings = (
          'DECLARE @ListPrice money;'
          ''
          'SELECT @ListPrice = plph.ListPrice'
          'FROM Production.Product p '
          '     INNER JOIN Production.ProductListPriceHistory plph '
          '     ON p.ProductID = plph.ProductID'
          '         AND p.ProductID = 707'
          
            '         AND '#39'15/08/2005'#39' BETWEEN plph.StartDate AND plph.EndDat' +
            'e;'
          ''
          'SELECT @ListPrice;')
      end>
    Connection = AdventureworksConnection
    ScriptDialog = FDGUIxScriptDialog1
    Params = <
      item
      end>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 56
    Top = 160
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'FMX'
    Options = [ssCallstack, ssConsole]
    Left = 152
    Top = 160
  end
end
