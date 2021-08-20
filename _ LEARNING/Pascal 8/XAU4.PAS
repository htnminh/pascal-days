program xau;
uses crt;
var i,dchu,dso:integer; st:string;
begin
     clrscr;
     write('Nhap xau: '); readln(st);
     dchu:=0; dso:=0;
     for i:=1 to length(st) do
         begin
              if (st[i] in ['a'..'z']) or (st[i] in ['A'..'Z']) then
                 dchu:=dchu+1;
              if st[i] in ['0'..'9'] then
                 dso:=dso+1;
         end;
     writeln('Co ',dchu,' ki tu la chu');
     writeln('Co ',dso,' ki tu la so');
     readln;
end.


