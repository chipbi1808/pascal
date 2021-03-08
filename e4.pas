//Viết chương trình in ra các 
//số nguyên từ 1 đến 100 sao cho cứ 10 số thì xuống dòng.
program jsi;
uses crt;

procedure print(); //thu tuc lam yeu cau cua de bai
var i:integer;
begin
	for i:=1 to 100 do
		begin
			write(i,' ');
			if(i mod 10=0) then
				writeln;
		end;
end;

begin
	print();
end.