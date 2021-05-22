program ss;
const fii='';
	  foo='';
var a:array[1..100,1..100] of integer;
 	n:integer;
    fi,fo:text;
procedure qsort(l,r,p:integer);
Var i,j,x,w:integer;
Begin
	x:=a[p][(l+r) div 2];
  	i:=l;j:=r;
 	Repeat
    	While(a[p][i]<x) do i:=i+1;
    	While (x<a[p][j]) do j:=j-1;
     	If i<=j then
        	Begin
         		w:=a[p][i];
			a[p][i]:=a[p][j];
			a[p][j]:=w;
          		i:=i+1;j:=j-1;
        	End;	

	until i>j;
 	If l<j then qsort(l,j,p);
	If i<r then qsort(i,r,p);
End;

procedure readfile;
var i,j:integer;
Begin
	readln(fi, n);
	for i:=1 to n do
		Begin
			for j:=1 to n do
				read(fi, a[i][j]);
			readln(fi);
		end;
end;

procedure run;
var i,j:integer;
Begin
	j:=0;
	for i:=1 to n do
		Begin
			inc(j);
			qsort(1,n,i);
			a[n+1][j]:=a[i][(n div 2)+1];
		end;
	qsort(1,n,n+1);
	write(fo,a[n+1][(n div 2)+1]);
end;

BEGIN
	assign(fi,fii);
	reset(fi);
	assign(fo,foo);
	rewrite(fo);
	readfile;
	run;
	close(fi);
	close(fo);
End.
