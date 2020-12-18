unit Unit3;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBQuery, IBTable;

type
  TDM = class(TDataModule)
    Database: TIBDatabase;
    Transaction: TIBTransaction;
    DataInsert: TIBDataSet;
    SourceInsert: TDataSource;
    DataInsertDESCRICAO: TIBStringField;
    DataInsertPRECO: TFloatField;
    DataInsertQUANTIDADE: TIntegerField;
    DataInsertUNID_MEDIDA: TIBStringField;
    SourceConsulta: TDataSource;
    IBQuery1: TIBQuery;
    DataUpdate: TIBDataSet;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    SourceUpdate: TDataSource;
    DataUpdateID: TIntegerField;
    IBTable1: TIBTable;
    IBTable1ID: TIntegerField;
    IBTable1DESCRICAO: TIBStringField;
    IBTable1PRECO: TFloatField;
    IBTable1QUANTIDADE: TIntegerField;
    IBTable1UNID_MEDIDA: TIBStringField;
    DataSource1: TDataSource;
    procedure DataInsertAfterPost(DataSet: TDataSet);
    procedure IBTable1AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataInsertAfterPost(DataSet: TDataSet);
begin
     DM.Transaction.Commit;
     DM.Database.Connected:=TRUE;
     DM.Transaction.StartTransaction;
     DM.DataInsert.Active:=TRUE;

end;

procedure TDM.IBTable1AfterDelete(DataSet: TDataSet);
begin
     DM.Transaction.Commit;
     DM.Database.Connected:=TRUE;
     DM.Transaction.StartTransaction;
     DM.DataInsert.Active:=TRUE;
end;

end.
