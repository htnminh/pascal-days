uses crt;
var n,i,t:longint;
    a:array[1..100] of integer;
begin
     clrscr;
     write('n='); readln(n);
     a[1]:=1; a[2]:=1; t:=0;
     for i:=3 to n do
         a[i]:=a[i-2]+a[i-1];
     for i:=1 to n do
         begin
              write(a[i]:4);
              t:=t+a[i];
         end;
     writeln;
     write('Tong day Fibonaci: ',t);

     readln;
end.


