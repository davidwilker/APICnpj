object unitDM: TunitDM
  OldCreateOrder = False
  Height = 362
  Width = 762
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=CNPJ'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object dsSql: TDataSource
    DataSet = qrSql
    Left = 112
    Top = 88
  end
  object qrSql: TFDQuery
    Connection = Conexao
    Left = 112
    Top = 152
  end
end
