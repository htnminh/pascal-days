uses crt;
var i,k,s:byte; n:longint;
begin
     clrscr;
     write('Nhap n: '); readln(n);
     k:=1; s:=0;
     for i:=1 to n do
         begin
              s:=s+n mod 10;
              n:=n div 10;
              if n<>0 then k:=k+1;
         end;
     writeln('n co ',k,' chu so');
     writeln('Tong cac chu so cua n la ',s);
     readln;
end.