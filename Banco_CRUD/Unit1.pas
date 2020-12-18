unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls,
  dbcgrids, Menus, JvExStdCtrls, JvCombobox;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    textoPesquisa: TLabel;
    DBNavigator2: TDBNavigator;
    edtNome: TEdit;
    btnPesquisar: TButton;
    selecionarPesquisa: TJvComboBox;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBNavigator3: TDBNavigator;
    DBGrid2: TDBGrid;
    DBEdit9: TDBEdit;
    k: TDBGrid;
    DBNavigator4: TDBNavigator;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure selecionarPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}


procedure TForm1.btnPesquisarClick(Sender: TObject);
var
Snome :String;
begin
    Snome:=edtNome.Text;
    if DM.Database.Connected  then
    BEGIN
        if selecionarPesquisa.Text = 'ID' then
        begin
            if RadioButton1.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(ID) = '+Chr(39)+UpperCase(Snome)+Chr(39);
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;
            if RadioButton2.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(ID) LIKE('+Chr(39)+'%'+UpperCase(Snome)+'%'+Chr(39)+')';
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;

        end;

        if selecionarPesquisa.Text = 'NOME' then
        begin
            if RadioButton1.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(DESCRICAO) = '+Chr(39)+UpperCase(Snome)+Chr(39);
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;
            if RadioButton2.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(DESCRICAO) LIKE('+Chr(39)+'%'+UpperCase(Snome)+'%'+Chr(39)+')';
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;

        end;
        if selecionarPesquisa.Text = 'PREÇO' then
        begin
            if RadioButton1.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT PRECO FROM PRODUTOS WHERE UPPER(PRECO) = '+Chr(39)+UpperCase(Snome)+Chr(39);
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end
            else
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(PRECO) LIKE('+Chr(39)+'%'+UpperCase(Snome)+'%'+Chr(39)+')';
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;

        end;
        if selecionarPesquisa.Text = 'QUANTIDADE' then
        begin
            if RadioButton1.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT QUANTIDADE FROM PRODUTOS WHERE UPPER(QUANTIDADE) = '+Chr(39)+UpperCase(Snome)+Chr(39);
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end
            else
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(QUANTIDADE) LIKE('+Chr(39)+'%'+UpperCase(Snome)+'%'+Chr(39)+')';
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;
        end;
        if selecionarPesquisa.Text = 'UNIDADE DE MEDIDA' then
        begin
            if RadioButton1.Checked then
            begin
            DM.IBQuery1.SQL.Text := 'SELECT UNID_MEDIDA FROM PRODUTOS WHERE UPPER(UNID_MEDIDA) = '+Chr(39)+UpperCase(Snome)+Chr(39);
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end
            else
            begin
            DM.IBQuery1.SQL.Text := 'SELECT * FROM PRODUTOS WHERE UPPER(UNID_MEDIDA) LIKE('+Chr(39)+'%'+UpperCase(Snome)+'%'+Chr(39)+')';
            DM.IBQuery1.Open;
            Dm.IBQuery1.First;
            end;
        end;


    END;


end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      DM.Database.Free;
      DM.Transaction.Free;
      DM.DataInsert.Free;
      DM.SourceInsert.Free;
      DM.SourceConsulta.free;
      DM.IBQuery1.Free;
end;

procedure TForm1.selecionarPesquisaChange(Sender: TObject);
var
Snome :String;
begin
    snome:= edtNome.Text;
    if selecionarPesquisa.Text = 'ID' then
    begin
         textoPesquisa.caption:= 'Pesquisa por ID';
    end;
    if selecionarPesquisa.Text = 'NOME' then
    begin
         textoPesquisa.caption:= 'Pesquisa por Nome';
    end;
    if selecionarPesquisa.text  = 'PREÇO' then
    begin
        textoPesquisa.caption:= 'Pesquisa por Preço';
    end;
    if selecionarPesquisa.text = 'QUANTIDADE' then
    begin
        textoPesquisa.caption:= 'Pesquisa por Quantidade';
    end;
    if selecionarpesquisa.text = 'UNIDADE DE MEDIDA' then
    begin
       textoPesquisa.caption:= 'Pesquisa por Unidade de medida';
    end;


end;

end.
