program xau;
uses crt;
var i:integer; st:string;
begin
     clrscr;
     write('Nhap xau:    '); readln(st);
     writeln('Xau da nhap: ',st);
     for i:=1 to length(st) do
         st[i]:=upcase(st[i]);
     writeln('Xau in hoa:  ',st);
     readln;
end.