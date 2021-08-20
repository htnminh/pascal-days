uses crt;
var s,x:string; i,tu:integer;
begin
     clrscr;
     write('Nhap xau: '); readln(s);
     while (s[1]=' ') do delete(s,1,1);
     while (s[i]=' ') do delete(s,i,1);
     while pos('  ',s)<>0 do delete(s,pos('  ',s),1);
     tu:=1;
     for i:=1 to length(s) do
         if s[i]=' ' then tu:=tu+1;
     writeln('Xau chuan hoa: "',s,'"');
     writeln('Co ',tu,' tu trong cau');
     write('Xau dao nguoc: "');
     for i:=length(s) downto 1 do write(s[i]);
     writeln('"');
     write('Tat ca ! thanh . : ');
     x:=s;
     for i:=1 to length(x) do
         if x[i]='!' then x[i]:='.';
     writeln(x);
     x:=s; i:=0;
     while pos('..',x)<>0 do delete(x,pos('..',x),1);
     writeln('... thanh . : ',x);
     x:=s;
     while pos(

     readln;
end.


