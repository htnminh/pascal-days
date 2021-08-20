uses crt;
var n,i,k,tong:longint;
begin
     clrscr;
     write('n='); readln(n);
     i:=0; k:=n;
     repeat
           tong:=tong+k mod 10;
           k:=k div 10;
           i:=i+1;
     until k=0;
     writeln('n co ',i,' chu so');
     writeln('Tong cac chu so la ',tong);
     readln;
end.
