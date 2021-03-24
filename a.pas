program ss;
uses crt;
var n,d:longword;

function count():longword; //dem tam giac
var s:longword;
begin
	s:=2+d;
	exit((s*(s-1) div 2)*(n+1));
end;

begin
	write('d = ');
	readln(d);
	write('n = ');
	readln(n);
	write(count());
end.