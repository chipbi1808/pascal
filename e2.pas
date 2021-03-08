//Cho trước tập tin văn bản INPUT.INP gồm nhiều dòng (không quá 1000 dòng), 
//mỗi dòng chứa một chuỗi ký tự (gồm các chữ cái từ ‘A’ đến ‘Z’ viết dính liền với nhau), 
//mỗi chuỗi dài không quá 255 ký tự. Trong tập tin này có duy nhất một chuỗi xuất hiện đúng một lần, 
//các chuỗi còn lại đều xuất hiện đúng k lần. (Số k không cho trước, nhưng biết rằng k là một số chẵn và k≠0).

program siu;
uses crt;
type mang1c=array[1..1000] of string;

var fi,fo:text;
	arr:mang1c;
	n: longint;
procedure read(var fi:text;var arr:mang1c;var n:longint); //arr luu gia tri. n de luu so gia tri
begin
	n:=0;
	while not eof(fi) do
		begin
			inc(n);
			readln(fi,arr[n]);
		end;
end;

procedure clean_1(var str:string);  //xoa cac ky tu space o dau trong 1 xau
begin
	repeat	
		if(str[1]=' ') then
			delete(str,1,1);
	until str[1]<>' ';
end;

procedure clean_all(var arr:mang1c;n:longint); //trong 1 mang
var i:longint;
begin
	for i:=1 to n do
		clean_1(arr[i]);
end;

function tansuat(var arr:mang1c;n,m:longint):integer; //tan suat cua m trong mang a gom n phan tu
var i,s:longint;
	str:string;
begin
	str:=arr[m];
	s:=0;
	for i:=1 to n do
		if(arr[i]=str) then 
			s:=s+1;
	exit(s);
end;

function flick(var arr:mang1c;n:longint):string; //tim ra xau 
var i:longint;
begin
	for i:=1 to n do
		if(tansuat(arr,n,i)=1) then 
			exit(arr[i]);
end;

procedure print(var fo:text;var arr:mang1c;n:longint);
begin
	writeln(fo,flick(arr,n));
end;
begin
	assign(fi,'');
	assign(fo, '');
	reset(fi);
	rewrite(fo);
	read(fi,arr,n);
	clean_all(arr,n);
	print(fo,arr,n);
	close(fo);
	close(fi);
end.
