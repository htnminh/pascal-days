program xau;
uses crt;
var i:integer; st:string;
begin
     clrscr;
     write('Nhap xau:       '); readln(st);
     writeln('Xau da nhap:    ',st);
     for i:=1 to length(st) do
         if st[i] in ['A'..'Z'] then
            st[i]:=chr(ord(st[i])+32);
     write('Xau chu thuong: ',st);
     readln;
end.