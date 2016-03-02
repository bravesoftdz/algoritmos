unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Button5: TButton;
    Edit2: TEdit;
    Button6: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    function max_array(a :array of integer):integer;
    function max_R(n:Integer; v :array of integer):integer;
    function soma(n:Integer; v :array of integer):integer;
    function fatorial(n: Integer): integer;
    function fibonacci(n: Integer): integer;
    function potencia(k, n: Integer): integer;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
type TDiasMeses = array of integer;
var a : array[0..10] of Integer;
     diasMeses: TDiasMeses;
     d:Integer;
begin
  diasMeses :=  TDiasMeses.create(4,8,2,9,10,14,3,7);
  d := max_array(diasMeses);
  ShowMessage(IntToStr(d));
end;

procedure TForm3.Button2Click(Sender: TObject);
type TDiasMeses = array of integer;
var a : array[0..10] of Integer;
     diasMeses: TDiasMeses;
     d:Integer;
begin
  diasMeses :=  TDiasMeses.create(4,8,2,9,10,14,3,7);
  d := max_R(Length(diasMeses),diasMeses);
  ShowMessage(IntToStr(d));

end;

procedure TForm3.Button3Click(Sender: TObject);
type TValores = array of integer;
var
     valores: TValores;
     total:Integer;
begin
  valores :=  TValores.create(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100);
  total := soma(Length(valores),valores);
  ShowMessage(IntToStr(total));
end;

procedure TForm3.Button4Click(Sender: TObject);
var x:integer;
begin
  x := fatorial(StrToInt(Edit1.Text));
  ShowMessage(IntToStr(x));

end;

procedure TForm3.Button5Click(Sender: TObject);
var x:integer;
begin
  x := fibonacci(StrToInt(Edit2.Text));
  ShowMessage(IntToStr(x));
end;

procedure TForm3.Button6Click(Sender: TObject);
var x:integer;
begin
  x := potencia(StrToInt(Edit3.Text),StrToInt(Edit4.Text));
  ShowMessage(IntToStr(x));
end;

function TForm3.max_array(a: array of integer): integer;
var
  i:integer;
  x:Integer;
begin
  x := 0;
  for i := low(a) to high(a) do
  begin
    if a[i] > x then
    begin
      x := a[i];
    end;
  end;
  Result := x;
end;

function TForm3.max_R(n: Integer; v: array of integer): integer;
var x:Integer;
begin
  if n = 1 then
    result := v[0]
  else
  begin
    x := max_R(n - 1,v);
    if x > v[n - 1] then
      Result := x
    else
      Result := v[n - 1];
  end;
end;

function TForm3.soma(n: Integer; v: array of integer): integer;
var x:Integer;
begin
  if n = 1 then
    result := v[0]
  else
  begin
    x := v[n - 1] + soma(n - 1,v);
    Result := x;
  end;
end;
function TForm3.fatorial(n: Integer): integer;
var x:Integer;
begin
  if n = 0 then
    result := 1
  else
  begin
    x := n * fatorial(n - 1);
    Result := x;
  end;
end;
function TForm3.fibonacci(n: Integer): integer;
var x:Integer;
begin
  if n < 2 then
    result := n
  else
  begin
    x := fibonacci(n - 1) + fibonacci(n - 2);
    Result := x;
  end;
end;
function TForm3.potencia(k,n: Integer): integer;
var x:Integer;
begin
  if n = 1 then
    result := k
  else
  begin
    x := k * potencia(k,(n - 1));
    Result := x;
  end;
end;
end.
