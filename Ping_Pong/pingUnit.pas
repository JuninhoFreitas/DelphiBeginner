unit pingUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExControls, JvXPCore, JvXPButtons;

type
  TForm1 = class(TForm)
    campo: TPanel;
    jogador: TPanel;
    computador: TPanel;
    bola: TPanel;
    pontosJogador: TLabel;
    pontosComputador: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    tempoBola: TTimer;
    tempoComputador: TTimer;
    estadosJogo: TTimer;
    podertim: TTimer;
    contador: TTimer;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    infoBolaFinal: TLabel;
    infoSaidaBola: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BolaPEsquerda;
    procedure BolaPDireita;
    procedure bolaPCima;
    procedure bolaPBaixo;
    procedure computadorSobe;
    procedure computadorDesce;
    procedure tempoBolaTimer(Sender: TObject);
    procedure tempoComputadorTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure estadosJogoTimer(Sender: TObject);
    procedure contadorTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  X,Y,Yx:Integer;//Ancoras de acelera��o
  baixoBola,direitaBola:Integer;//Lados da Bola
  baixoComputador:Integer;//Lados da raquete do computador
  ptsJogador,ptsComputador:Integer;//Pontua��o
  direitaJogador,baixoJogador:Integer;//Lados Jogador
  bolaAcima,bolaAbaixo,bolaCentralizada:Boolean;//Localiza��o da bola na tela relativa a raquete do computador
  meioBola:Integer;//Localiza��o do meio da bola em rela��o a tela
  poderJogador,poderComputador:integer;//V�riavel para guardar a quantidade de uso dos poderes
  jogadorMarcou,computadorMarcou:Boolean;//V�riavel para armazenar temporariamente quando um lado marca pontos
  DoisJogadores:Boolean;//V�riavel para verificar qual a op��o escolhida na primeira tela
  arq:TextFile;


ypositivo:String;
bateuesq:Integer;
bateudir:Integer;
inicioPos:Integer;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    X:=-3;
    Y:=-3;
    Yx:=-2;
    ptsJogador:=0;
    ptsComputador:=0;
    poderJogador:=1;
    poderComputador:=1;
end;

procedure TForm1.BolaPEsquerda;
begin
    if X>0 then
    begin
        X:=X*-1;
    end;
end;

procedure TForm1.BolaPDireita;
begin
    if X<0 then
    begin
        X:=X*-1;
    end;
end;

procedure TForm1.bolaPCima;
begin
    if Y>0 then
    begin
        Y:=Y*-1;
    end;
end;
                                                         
procedure TForm1.bolaPBaixo;
begin
    if Y <0 then
    begin
        Y:=Y*-1;
    end;
end;

procedure TForm1.computadorSobe;
begin
    if Yx>0 then
    begin
        Yx:=Yx*-1;
    end;
end;

procedure TForm1.computadorDesce;
begin
    if Yx<0 then
    begin
        Yx:=Yx*-1;
    end;
end;

procedure TForm1.tempoBolaTimer(Sender: TObject);
begin
{
AssignFile(arq,'d:\\Joao\machine.txt');
Append(arq);
}
    bola.Top := bola.Top + Y;
    bola.Left := bola.Left +X;
    baixoBola:=bola.Top+bola.Height;
    direitaBola:=bola.Left+Bola.Width;
    meioBola := bola.Top+Round(bola.Height/2);
    direitaJogador:=jogador.left+jogador.width;
    baixoJogador:=jogador.top+jogador.height;

    //bater no limite de cima do campo ele volta pra baixo
    if bola.top<=campo.top then
    begin
        bolapbaixo;
    end;

    //bater no limite de baixo do campo ele volta pra cima
    if baixoBola>=campo.Height-3 then
    begin
        bolaPCima;
    end;

    //bater no limite da esquerda do campo o timer para
    if bola.Left <= campo.Left+20 then
    begin
        tempoBola.Enabled := false;
        computadorMarcou := True;
    end;

    //bater no limite da direita do campo o timer para
    if direitaBola >= campo.Width-20 then
    begin
        tempoBola.Enabled := false;
        jogadorMarcou := True;
    end;

    //se a bola bater na direita do jogador ele desvia seu caminho
    if (bola.Left <= direitaJogador) And (bola.Top <= baixoJogador) And (baixoBola >= jogador.top) then
    begin
    //se bater na parte de cima da raquete
        if (baixoBola >jogador.top)AND(meioBola < jogador.top+50)then
        begin
            bolaPCima;
            contador.Enabled:=False;
        end;
    //se bater no meio da raquete
        if (bola.Top >jogador.top+50)AND(meioBola<jogador.top+100)AND(meioBola>jogador.top+50)then
        begin
            poderJogador:=poderJogador+1;
            contador.Enabled:=False;
        end;
    //bate na parte de baixo da raquete e vai pra baixo
        if (bola.top>jogador.Top+100) AND (bola.Top < baixojogador) then
        begin
            bolaPBaixo;
            contador.Enabled:=False;
        end;
        BolaPDireita;
        iniciopos:=bola.top;
        bateuesq:=1;



    end;

    if (X>0) and (Bola.Left <=45) And (bola.left >= 43) then
    begin
    if y>0 then begin ypositivo:= 'Positivo' end;
    if y<0 then begin ypositivo:='Negativo' end;
    end;


    //se a bola bater na esquerda do computador ele desvia seu caminho
    if (direitaBola >= computador.Left) And (bola.Top <= baixoComputador) And (baixoBola >= computador.top) then
    begin
        //bate na parte de cima da raquete e vai pra cima
        if (baixoBola >computador.top)AND(meioBola < computador.top+50)then
        begin
            bolaPCima;
        end;
        //bate no meio da raquete e acrescenta um ponto de poder
        if (bola.Top >computador.top+50)AND(meioBola<computador.top+100)AND(meioBola>computador.top+50)then
        begin
             poderComputador:=poderComputador+1;
        end;

        //bate na parte de baixo da raquete e vai pra baixo
        if (bola.top>computador.Top+100) AND (bola.Top < baixoComputador) then
        begin
            bolaPBaixo;
        end;


        BolaPEsquerda;
        bateudir:=1;

    end;

    infoBolaFinal.Caption := 'BATEUDIR:= ' + inttostr(bateudir) + ' bateuesq:= '+inttostr(bateuesq) + ' eixo y: '+ypositivo;
    if bateudir =1 then
    begin
        bateudir := 0;
        bateuesq := 0;
        ypositivo := '';
    end;

end;



procedure TForm1.tempoComputadorTimer(Sender: TObject);
begin

    baixoComputador := computador.top+computador.height;

    if not DoisJogadores then //Aqui dentro vai os comandos da em modo VS "I.A"
    begin

        if (X > 0) and (bola.left > RandomRange(200,500) ) then
        begin

            if meioBola >= baixoComputador then
            begin
                bolaAbaixo:=true;
                computador.top := computador.top +2;
            end;

            if meioBola <= computador.Top+30 then
            begin
                bolaAcima:=true;
                computador.top := computador.top -2;
            end;

            if (bola.Top <= baixoComputador)AND(baixoBola >= computador.top) then
            begin
                bolaCentralizada:=True;
                computador.top := computador.top;

            end;


        end;


        // PODER DO COMPUTADOR
        if (bola.left < direitaJogador+150) and (x<0) then // VERIFICA SE EST� INDO NA DIRE��O DO JOGADOR E PR�XIMO A ELE
        begin
        //VERIFICA SE A BOLA ESTA ACIMA DA PARTE SUPERIOR DA RAQUETE DO JOGADOR
              // E SE A PARTE DE CIMA DA RAQUETE DO JOGADOR ESTA AFASTADA DO TOPO DO CAMPO
                // TAMB�M VERIFICA SE A BOLA ESTA DESCENDO, PARA INVERTER ELA
            if (jogador.top < bola.Top) and (jogador.top > campo.top + 70) and (Y>0) and (baixoJogador < (campo.Height-jogador.Height)) then
            begin
                //VERIFICA SE O COMPUTADOR TEM PODER PARA USAR
                if poderComputador > 0 then
                begin
                     y := y*-1;
                     podercomputador := podercomputador -1;
                end;

            end;
            //VERIFICA SE A BOLA ESTA ABAIXO DA PARTE INFERIOR DA RAQUETE DO JOGADOR
              //E SE A PARTE DE BAIXO DO JOGADOR ESTA AFASTADA DA PARTE DE BAIXO DO CAMPO
                // TAMB�M VERIFICA SE A BOLA ESTA SUBINDO, PARA INVERTER ELA
            if (baixoJogador < bola.top) and (baixoJogador < campo.Height-70) and (y<0) and (baixoJogador < (campo.height-jogador.height)) then
            begin

                y:= y*-1;
                podercomputador:= podercomputador-1;

            end;


        end;

    end;



end;




procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_Down then
    begin

        jogador.Top := jogador.top + 2;

        if jogador.top+jogador.Height >= campo.Height then
        begin
            jogador.top := jogador.top -2;
        end;
    end;

    if DoisJogadores then
    begin
        if Key = $53 then
        begin
            computador.Top := computador.top + 2;
            if computador.top+computador.Height >= campo.Height then
            begin
                computador.top := computador.top -2;
            end;
        end;

        if Key = $57 then    //SUBIR
        begin

            computador.Top := computador.top - 2;

            if computador.top+computador.Height >= campo.Height then
            begin
                computador.top := computador.top + 2;
            end;

        end;

    end;

    if Key = $44 then     //D
    begin
        if poderComputador>0 then
        begin
            Y:=Y*-1;
            podercomputador:=podercomputador-1;
        end;
    end;


    if Key = VK_Up then
    begin

        jogador.Top := jogador.Top -2;

        if jogador.top <= campo.top then
        begin
            jogador.top := jogador.top+2;
        end;

    end;

    if Key = Vk_RIGHT then
    begin
        if poderJogador>0 then
        begin
        y:=y*-1;
        poderJogador:=poderJogador-1;
        end;

    end;

    //Reinicia jogo ap�s fazer um ponto
    if Key = VK_Space then
    begin

            if bola.left = (Round(campo.width/2)-Round(bola.width/2)) then
            begin
                bola.Enabled := True;
                tempoBola.enabled := True;
                tempoComputador.enabled := True;
            end;

    end;

end;

procedure TForm1.estadosJogoTimer(Sender: TObject);
begin

    //desativa o computador e posiciona a bola+computador no centro de seus lugares
    if tempoBola.Enabled = False then
    begin

        tempoComputador.Enabled := false;
        computador.Top := Round(campo.height/2)-Round(computador.Height/2);
        bola.left := Round(campo.width/2)-Round(bola.width/2);

    end;

    //se o jogador marcar 1 ponto, ele posiciona a bola randomicamente e se da como falso apos somar pontos
    if jogadorMarcou then
    begin

        ptsJogador:=ptsJogador+1;
        pontosJogador.Caption := inttostr(ptsJogador);
        bola.top := RandomRange(50,300);
        jogadorMarcou:=false;

    end;

    //se o computador marcar 1 ponto, ele posiciona a bola randomicamente e se da como falso apos somar pontos
    if computadorMarcou then
    begin

        ptsComputador:=ptsComputador+1;
        pontosComputador.Caption := inttostr(ptsComputador);
        bola.top := RandomRange(50,300);
        computadorMarcou:=false;

    end;

end;

procedure TForm1.contadorTimer(Sender: TObject);
begin

     if(X=3) then
     begin
        X:=6;
     end;

     if(X=6) then
     begin
        X:=3;
     end;

     if(X=-3)then
     begin
        X:=-3;
     end;

     if(X=-6)then
     begin
        X:=-6;
     end;

end;


procedure TForm1.Button1Click(Sender: TObject);
begin

    DoisJogadores:=False;
    tempobola.enabled:=true;
    tempoComputador.Enabled:=true;
    Panel1.Visible := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    DoisJogadores:=True;
    tempobola.enabled:=true;
    tempoComputador.enabled:=true;
    Panel1.Visible := false;
end;

procedure TForm1.Panel1Enter(Sender: TObject);
begin
        tempobola.enabled:=false;
end;

end.
