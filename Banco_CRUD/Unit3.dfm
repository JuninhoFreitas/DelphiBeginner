object DM: TDM
  OldCreateOrder = False
  Left = 726
  Top = 139
  Height = 542
  Width = 440
  object Database: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:D:\Gabriel\dados\teste.fdb'
    Params.Strings = (
      'user_name=INFOCAP'
      'password=231458536')
    LoginPrompt = False
    DefaultTransaction = Transaction
    TraceFlags = [tfTransact]
    Left = 24
    Top = 32
  end
  object Transaction: TIBTransaction
    Active = True
    DefaultDatabase = Database
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'concurrency'
      'nowait')
    AutoStopAction = saCommit
    Left = 104
    Top = 32
  end
  object DataInsert: TIBDataSet
    Database = Database
    Transaction = Transaction
    AfterPost = DataInsertAfterPost
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  PRECO = :OLD_PRECO and'
      '  QUANTIDADE = :OLD_QUANTIDADE and'
      '  UNID_MEDIDA = :OLD_UNID_MEDIDA')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      '  (DESCRICAO, PRECO, QUANTIDADE, UNID_MEDIDA)'
      'values'
      '  (:DESCRICAO, :PRECO, :QUANTIDADE, :UNID_MEDIDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DESCRICAO,'
      '  PRECO,'
      '  QUANTIDADE,'
      '  UNID_MEDIDA'
      'from PRODUTOS '
      'where'
      '  DESCRICAO = :DESCRICAO and'
      '  PRECO = :PRECO and'
      '  QUANTIDADE = :QUANTIDADE and'
      '  UNID_MEDIDA = :UNID_MEDIDA')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUTOS'
      '')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  PRECO = :PRECO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNID_MEDIDA = :UNID_MEDIDA'
      'where'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  PRECO = :OLD_PRECO and'
      '  QUANTIDADE = :OLD_QUANTIDADE and'
      '  UNID_MEDIDA = :OLD_UNID_MEDIDA')
    Active = True
    Left = 24
    Top = 104
    object DataInsertDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Required = True
      Size = 100
    end
    object DataInsertPRECO: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'PRECO'
      Origin = '"PRODUTOS"."PRECO"'
      currency = True
    end
    object DataInsertQUANTIDADE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTOS"."QUANTIDADE"'
      Required = True
    end
    object DataInsertUNID_MEDIDA: TIBStringField
      FieldName = 'UNID_MEDIDA'
      Origin = '"PRODUTOS"."UNID_MEDIDA"'
      Size = 5
    end
  end
  object SourceInsert: TDataSource
    DataSet = DataInsert
    Left = 104
    Top = 104
  end
  object SourceConsulta: TDataSource
    DataSet = IBQuery1
    Left = 96
    Top = 232
  end
  object IBQuery1: TIBQuery
    Database = Database
    Transaction = Transaction
    Left = 24
    Top = 232
  end
  object DataUpdate: TIBDataSet
    Database = Database
    Transaction = Transaction
    AfterPost = DataInsertAfterPost
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  ID = :OLD_ID and'
      '  PRECO = :OLD_PRECO and'
      '  QUANTIDADE = :OLD_QUANTIDADE and'
      '  UNID_MEDIDA = :OLD_UNID_MEDIDA')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      '  (DESCRICAO, PRECO, QUANTIDADE, UNID_MEDIDA)'
      'values'
      '  (:DESCRICAO, :PRECO, :QUANTIDADE, :UNID_MEDIDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DESCRICAO,'
      '  PRECO,'
      '  QUANTIDADE,'
      '  UNID_MEDIDA'
      'from PRODUTOS '
      'where'
      '  DESCRICAO = :DESCRICAO and'
      '  ID = :ID and'
      '  PRECO = :PRECO and'
      '  QUANTIDADE = :QUANTIDADE and'
      '  UNID_MEDIDA = :UNID_MEDIDA')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUTOS'
      '')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  PRECO = :PRECO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNID_MEDIDA = :UNID_MEDIDA'
      'where'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  PRECO = :OLD_PRECO and'
      '  QUANTIDADE = :OLD_QUANTIDADE and'
      '  UNID_MEDIDA = :OLD_UNID_MEDIDA')
    Active = True
    Left = 24
    Top = 160
    object DataUpdateID: TIntegerField
      Alignment = taCenter
      DisplayWidth = 3
      FieldName = 'ID'
      Origin = '"PRODUTOS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      DisplayWidth = 51
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Required = True
      Size = 100
    end
    object FloatField1: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 25
      FieldName = 'PRECO'
      Origin = '"PRODUTOS"."PRECO"'
      currency = True
    end
    object IntegerField1: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 8
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTOS"."QUANTIDADE"'
      Required = True
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 15
      FieldName = 'UNID_MEDIDA'
      Origin = '"PRODUTOS"."UNID_MEDIDA"'
      Size = 5
    end
  end
  object SourceUpdate: TDataSource
    DataSet = DataUpdate
    Left = 104
    Top = 160
  end
  object IBTable1: TIBTable
    Database = Database
    Transaction = Transaction
    ForcedRefresh = True
    AfterDelete = IBTable1AfterDelete
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRECO'
        DataType = ftFloat
      end
      item
        Name = 'QUANTIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'UNID_MEDIDA'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'PK_PRODUTOS'
        Fields = 'ID'
        Options = [ixUnique]
      end
      item
        Name = 'PRODUTOS_DESCRICAO'
        Fields = 'DESCRICAO'
      end>
    StoreDefs = True
    TableName = 'PRODUTOS'
    Left = 24
    Top = 296
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object IBTable1PRECO: TFloatField
      FieldName = 'PRECO'
    end
    object IBTable1QUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object IBTable1UNID_MEDIDA: TIBStringField
      FieldName = 'UNID_MEDIDA'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 96
    Top = 296
  end
end
