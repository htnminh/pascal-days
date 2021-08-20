uses crt;
var a:array[1..100] of integer;
    n,i,j,tg,d:integer;
begin
     clrscr;
     write('n='); readln(n);
     for i:=1 to n do
         begin
              write('a[',i,']=');
              readln(a[i]);
         end;
         n:=n-1;
     for i:=1 to n do write(a[i]:4);
     readln;
end.