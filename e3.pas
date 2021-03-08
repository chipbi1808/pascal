program kos;
uses crt;
type mang_str=array[1..225] of string;
var str:string;



function decide_str(str:string):mang_str;
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
	exit(a);
end;	

function decide_str_1(str:string):mang_str;
var a:mang_str;
	i,n,d:integer;	//n la so phan tu cua mang duoc tra ve
	st:string;
begin
	n:=1;
	d:=0;
	a[1]:=str[1];
	st:=str[1];
	for i:=2 to length(str) do
		begin
			if(str[i]=st) then
				a[n]:=a[n]+str[i]
			else 
			if(d<1) then
				begin
					a[n]:=a[n]+str[i];
					d:=d+1;
				end
			else
				begin
					d:=0;
					n:=n+1;
					a[n]:=a[n]+str[i];
					st:=str[i];
				end;	
		end;
	exit(a);
end;	

function max_str(a:mang_str;n:integer):string; //tim ra phan tu dai nhat trong mang
var i,s,d:integer;	//s luu do dai,d luu vi tri
begin
	s:=length(a[1]);
	for i:=2 to n do
		if(length(a[i])>s) then
			begin
				d:=i;
				s:=length(a[i]);
			end;
	exit(a[d]);
end;

function so_phan_tu(a:mang_str):integer;
var i:integer;
begin
	i:=1;
	while(a[i+1]<>'') do
		begin
			i:=i+1
		end;
	exit(i);
end;

procedure print(str:string;m:integer); //m la cau a hoac b
var n:integer;
	a:mang_str;
	st:string;
begin
	if(m=1) then 
		a:=decide_str(str)
	else 
		a:=decide_str_1(str);
	n:=so_phan_tu(a);
	st:=max_str(a,n);
	writeln(st);
	writeln('Do dai la: ',length(st));
end;

begin
	writeln('Nhap xau can xu ly');
	readln(str);
	writeln('Day con dung dai nhat la:');
	print(str,1);
	writeln('Day con dung bac 1 dai nhat la:');
	print(str,2);

end.