unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    x: TPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
direita:integer;
baixo:integer;
begin
    direita := x.Left + x.Width;
    baixo := x.top + x.height;
    if (x.Left >= 0) and (x.Top = 0) and (direita <= 400) then
    begin
        x.left := x.left + 2;
    end;
    if (direita >=400) and (baixo <= 400) then
    begin
        x.top:= x.top + 2;
    end;
    if (baixo>=399) and (x.left>= 0)then
    begin
        x.left := x.left-2;
    end;
    if (baixo>=201) and (x.left >= 0) and (direita <= 205)then
    begin
        x.top := x.top-2;
    end;
end;

end.
