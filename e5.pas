//in ra bang cuu chuong
program d;
uses crt;
var n:longint;

procedure print(n:longint); //in ra bang cuu chuong
var i:longint;
begin
	for i:=1 to 9 do
		writeln(i,' x ',n,' = ',i*n);
end;

begin
	write('Nhap so bang cuu chuong can in: ');
	readln(n);
	print(n);
end.
