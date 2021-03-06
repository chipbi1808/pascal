//so nguyen to rut gon
program iso;
uses crt;
var n,b,a:longint;

function check(n:longint):boolean; //ham kiem tra so nguyen to
var i:longint;
begin
	for i:=2 to round(sqrt(n)) do
		if(n mod i=0) then
			exit(False);
	exit(True); 
end;

function pr_cls(n:longint):longint; //tim ra so nguyen to rut gon
var	i,s:longint;
begin
	s:=0;
	for i:=2 to n do
		if((n mod i=0) and (check(i)=True)) then
			s:=s+i;
	exit(s);
end;

procedure print(a,b,n : longint); //in cac so co cung so nguyen to rut gon voi n
var i,s:longint;
begin
	s:=pr_cls(n);
	for i:=a to b do
		if(pr_cls(i)=s) then
			writeln(i);
end;


begin
	write('Nhap so tu nhien n = ');
	readln(n);
	writeln('So nguyen to rut gon cua n la ', pr_cls(n));
	writeln('Nhap so a,b.(Luu y a<b)');
	readln(a,b);
	print(a,b,n);
end.