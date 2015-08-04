object dmCSConnection: TdmCSConnection
  OldCreateOrder = False
  Height = 216
  Width = 335
  object BibliotecaConnection: TFDConnection
    Params.Strings = (
      'Pooled=True'
      'ConnectionDef=Biblioteca')
    LoginPrompt = False
    Left = 66
    Top = 47
  end
  object LibrosTable: TFDQuery
    Connection = BibliotecaConnection
    SQL.Strings = (
      'SELECT * FROM biblioteca.dbo.libros')
    Left = 66
    Top = 95
  end
end
