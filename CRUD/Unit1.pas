unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles, Mask, StdCtrls, ComCtrls, Buttons, JvExControls, JvDice,
  JvFullColorSpaces, JvFullColorCtrls, ExtCtrls, JvExExtCtrls, JvShape,
  JvZoom, Grids, JvExGrids, JvCharMap, JvComponentBase, JvFormAnimation,
  JvArrowButton, JvSwitch;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TEdit;
    edtTime: TEdit;
    edtData: TMaskEdit;
    Cadastrar: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtNomeNovo: TEdit;
    edtTimeNovo: TEdit;
    edtDataNovo: TMaskEdit;
    Button2: TButton;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Label4: TLabel;
    edtIdUpdate: TEdit;
    Memo2: TMemo;
    Label11: TLabel;
    edtIdRemover: TEdit;
    Memo3: TMemo;
    btnRemover: TBitBtn;
    JvDice1: TJvDice;
    JvZoom1: TJvZoom;
    JvSwitch1: TJvSwitch;
    Label5: TLabel;
    Label6: TLabel;
    procedure CadastrarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtIdRemoverChange(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure JvDice1Click(Sender: TObject);
    procedure JvSwitch1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arq:TIniFile;
  ID:Integer;

implementation

{$R *.dfm}

procedure TForm1.CadastrarClick(Sender: TObject);
begin
    arq:=TIniFile.Create(GetCurrentDir+'\configs.ini');
    while arq.SectionExists('Cadastro_'+inttostr(id)) do
    begin
        id:=id+1;
    end;
    arq.writestring('Cadastro_'+inttostr(id),'ID',inttostr(id));
    arq.WriteString('Cadastro_'+inttostr(id),'Nome',edtNome.text);
    arq.WriteString('Cadastro_'+inttostr(id),'Nascimento',edtData.text);
    arq.WriteString('Cadastro_'+inttostr(id),'Time',edtTime.text);
    arq.UpdateFile;
    showMessage('Usuario cadastrado:'#13#10+edtNome.text+#13#10'ID:'+inttostr(id));
    arq.free;

end;

procedure TForm1.btnPesquisarClick(Sender: TObject);
var
i_id,nome,data,time:string;
i:Integer;
countS:Integer;

begin
    Memo1.Clear;

    arq := TIniFile.Create('D:\Joao\CRUD\configs.ini');
     arq.ReadSections(ListBox1.items);
     countS:=listbox1.count;
    if (ComboBox1.ItemIndex=1) then   //ID
    begin
        if (arq.ReadString('Cadastro_'+edtPesquisar.Text,'Id','ERRO') <> 'ERRO') then
        begin
             i_id:=arq.readstring('Cadastro_'+edtPesquisar.Text,'ID','');
             nome:=arq.readstring('Cadastro_'+edtPesquisar.Text,'Nome','');
             data:=arq.readstring('Cadastro_'+edtPesquisar.Text,'Nascimento','');
             time:=arq.readstring('Cadastro_'+edtPesquisar.Text,'Time','');
             Memo1.Lines.Add('ID:'+I_id+#13#10+'Nome:'+nome+#13#10+'Data de Nascimento:'+data+#13#10+'Time:'+time);
        end;
    end;

    if (ComboBox1.ItemIndex=2) then  //Nome
    begin
        for i:=0 to countS do
        begin
            if (arq.ReadString('Cadastro_'+inttostr(i),'Nome','ERRO') <> 'ERRO') then
            begin
                if(arq.readstring('Cadastro_'+inttostr(i),'Nome','ERRO') = edtPesquisar.text) then
                begin
                     i_id:=arq.readstring('Cadastro_'+inttostr(i),'ID','');
                     nome:=arq.readstring('Cadastro_'+inttostr(i),'Nome','');
                     data:=arq.readstring('Cadastro_'+inttostr(i),'Nascimento','');
                     time:=arq.readstring('Cadastro_'+inttostr(i),'Time','');
                     Memo1.Lines.Add('ID:'+I_id+#13#10+'Nome:'+nome+#13#10+'Data de Nascimento:'+data+#13#10+'Time:'+time);
                end;
            end;
        end;
    end;

    if (ComboBox1.ItemIndex=0) then  //Data de nascimento
    begin
        for i:=0 to countS do
        begin
            if (arq.ReadString('Cadastro_'+inttostr(i),'Nascimento','ERRO') <> 'ERRO') then
            begin
                if(arq.readstring('Cadastro_'+inttostr(i),'Nascimento','ERRO') = edtPesquisar.text) then
                begin
                     i_id:=arq.readstring('Cadastro_'+inttostr(i),'ID','');
                     nome:=arq.readstring('Cadastro_'+inttostr(i),'Nome','');
                     data:=arq.readstring('Cadastro_'+inttostr(i),'Nascimento','');
                     time:=arq.readstring('Cadastro_'+inttostr(i),'Time','');
                     Memo1.Lines.Add('ID:'+I_id+#13#10+'Nome:'+nome+#13#10+'Data de Nascimento:'+data+#13#10+'Time:'+time);
                end;
            end;
        end;
    end;
    if (ComboBox1.ItemIndex=3) then  //Time
    begin
        for i:=0 to countS do
        begin
            if (arq.ReadString('Cadastro_'+inttostr(i),'Time','ERRO') <> 'ERRO') then
            begin
                if(arq.readstring('Cadastro_'+inttostr(i),'Time','ERRO') = edtPesquisar.text) then
                begin
                     i_id:=arq.readstring('Cadastro_'+inttostr(i),'ID','');
                     nome:=arq.readstring('Cadastro_'+inttostr(i),'Nome','');
                     data:=arq.readstring('Cadastro_'+inttostr(i),'Nascimento','');
                     time:=arq.readstring('Cadastro_'+inttostr(i),'Time','');
                     Memo1.Lines.Add('ID:'+I_id+#13#10+'Nome:'+nome+#13#10+'Data de Nascimento:'+data+#13#10+'Time:'+time);
                end;
            end;
        end;
    end;


end;

procedure TForm1.Button2Click(Sender: TObject);
var
idUp:integer ;

begin
     arq := TIniFile.Create('D:\Joao\CRUD\configs.ini');
     idUp:=strtoint(edtIdUpdate.Text);
     Memo2.Clear;

     if (arq.ReadString('Cadastro_'+inttostr(idUp),'ID','ERRO') <> 'ERRO') then
     begin

          if edtNomeNovo.text <> '' then
          begin
              arq.WriteString('Cadastro_'+inttostr(idUp),'Nome',edtNomeNovo.text);
          end;

          if edtDataNovo.Text <> '  /  /    ' then
          begin
              arq.WriteString('Cadastro_'+inttostr(idUp),'Nascimento',edtDataNovo.text);

          end;

          if edtTimeNovo.text <> '' then
          begin
              arq.WriteString('Cadastro_'+inttostr(idUp),'Time',edtTimeNovo.text);
          end;
          arq.UpdateFile;
          Memo2.Lines.Add('ID:'+arq.readstring('Cadastro_'+inttostr(idUp),'ID','')+#13#10+'Nome:'+arq.readstring('Cadastro_'+inttostr(idUp),'Nome','')+#13#10+'Data de Nascimento:'+arq.readstring('Cadastro_'+inttostr(idUp),'Nascimento','')+#13#10+'Time:'+arq.readstring('Cadastro_'+inttostr(idUp),'Time',''));
     end;



end;
procedure TForm1.edtIdRemoverChange(Sender: TObject);
var
idEdt:String;
begin
     arq := TIniFile.Create('D:\Joao\CRUD\configs.ini');
     idEdt:= edtIdRemover.text;
     memo3.Clear;
     if (arq.ReadString('Cadastro_'+idEdt,'ID','ERRO') <> 'ERRO') then
     begin
     Memo3.Lines.Add('ID:'+arq.readstring('Cadastro_'+idEdt,'ID','')+#13#10+'Nome:'+arq.readstring('Cadastro_'+idEdt,'Nome','')+#13#10+'Data de Nascimento:'+arq.readstring('Cadastro_'+idEdt,'Nascimento','')+#13#10+'Time:'+arq.readstring('Cadastro_'+idEdt,'Time',''));
     end;
end;

procedure TForm1.btnRemoverClick(Sender: TObject);
begin
     arq := TIniFile.Create('D:\Joao\CRUD\configs.ini');
     showMessage('Cadastro_'+edtIdRemover.text+' Removido');
     arq.EraseSection('Cadastro_'+edtIdRemover.text);
     arq.UpdateFile;
     arq.Free;
end;

procedure TForm1.JvDice1Click(Sender: TObject);
begin
      if  JvDice1.rotate then
      begin
          jvDice1.Rotate := false;
      end
      else
      begin
          jvdice1.rotate:=true;
      end;
      edtIdRemover.Text:=(inttostr(jvdice1.Value));

end;

procedure TForm1.JvSwitch1Click(Sender: TObject);
begin
    if     JvSwitch1.StateOn then
    begin

        Form1.Color := $00292929;
        Application.ProcessMessages;
        Label11.Font.color:=clWhite;
        Label1.Font.color:=clWhite;
        Label2.Font.color:=clWhite;
        Label4.Font.color:=clWhite;
        Label3.Font.color:=clWhite;
        Label7.Font.color:=clWhite;
        Label8.Font.color:=clWhite;
        Label9.Font.color:=clWhite;
        Label5.Font.color:=clWhite;
        Label6.Font.color:=clWhite;


    end
    else
    begin
        form1.color:=clBtnFace;
        Application.ProcessMessages;
    end;

end;

end.






