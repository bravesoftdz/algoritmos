unit InsertionSort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  A :array[1..6] of integer;
  j :integer;
  key : Integer;
  i :integer;
begin
  Memo1.Clear;
  A[1] := 3;
  A[2] := 2;
  A[3] := 5;
  A[4] := 9;
  A[5] := 7;
  A[6] := 4;
  for j := 2 to high(A) do
  begin
    key := A[j];
    i := j - 1;
    while (i > 0) and (A[i] > key) do
    begin
      A[i + 1] := A[i];
      i := i - 1;
    end;
    A[i + 1] := key;
  end;



  for i := low(A) to high(A) do
  begin
    Memo1.Lines.Add(IntToStr(A[i]));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  A :array[0..5] of integer;
  j :integer;
  key : Integer;
  i :integer;
begin
  Memo1.Clear;
  A[0] := 3;
  A[1] := 2;
  A[2] := 5;
  A[3] := 9;
  A[4] := 7;
  A[5] := 4;
  for j := 1 to high(A) do
  begin
    key := A[j];
    i := j - 1;
    while (i > -1) and (A[i] > key) do
    begin
      A[i + 1] := A[i];
      i := i - 1;
    end;
    A[i + 1] := key;
  end;


  for i := low(A) to high(A) do
  begin
    Memo1.Lines.Add(IntToStr(A[i]));
  end;

end;

end.
