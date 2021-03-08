program kos;
uses crt;
type mang_str=array[1..225] of string;
var str1:string;

function decide_str(str:string;var m:integer):mang_str;
var a:mang_str;
	i,n:integer; 	//n la so phan tu cua mang duoc tra ve
begin
	n:=1;
	a[1]:=str[1];
	for i:=2 to length(str) do
		begin
			if(str[i]<>str[i-1]) then
				begin
					n:=n+1;
					a[n]:=a[n]+str[i];
				end
			else
				a[n]:=a[n]+str[i];
		end;
	m:=n;
	exit(a);
end;	

function decide_str_1(str:string;var m:integer):mang_str;
var a:mang_str;
	i,n,d:integer; 	//n la so phan tu cua mang duoc tra ve
	s:string;
begin
	n:=1;
	a[1]:=str[1];
	d:=0;
	s:=str[1];
	for i:=2 to length(str) do
		begin
			if((str[i]<>s) and (d=1)) then
				begin
					d:=0;
					n:=n+1;
					s:=str[i];
					a[n]:=a[n]+str[i];
				end
			else if((d=0) and (str[i]<>s)) then
				begin
					d:=d+1;
					a[n]:=a[n]+str[i];
				end
			else 
				a[n]:=a[n]+str[i];
		end;
	m:=n;
	exit(a);
end;	

procedure print(str:string;m:integer); //m la cau a hoac b
var n,i:integer;
	a1:mang_str;
	st1:string;
begin
	if(m=1) then 
		a1:=decide_str(str,n)
	else
		a1:=decide_str_1(str,n);
	st1:=a1[1];
	for i:=2 to n do
		if(length(a1[i])>length(st1)) then
			st1:=a1[i];
	writeln(st1);
	writeln('Do dai la: ',length(st1));
end;

begin
	readln(str1);
	write('Day con bac dung dai nhat la: ');
	print(str1,1);
	write('Day con bac nhat dai nhat la: ');
	print(str1,0);
	
end.
