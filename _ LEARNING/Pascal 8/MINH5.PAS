uses crt;
var n,i:longint; a,b,c:array[1..100] of integer;
begin
     clrscr;
     write('n='); readln(n);
     for i:=1 to n do
         begin
              write('a[',i,']='); readln(a[i]);
         end;
     writeln;
     for i:=1 to n do
         begin
              write('b[',i,']='); readln(b[i]);
         end;
     for i:=1 to n do
         c[i]:=a[i]+b[i];
     writeln;
     for i:=1 to n do
         writeln('c[',i,']=',c[i]);
     readln;
end.