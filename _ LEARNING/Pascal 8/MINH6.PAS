uses crt;
var n,i,x,y,z:longint;
    a: array [1..100] of integer;
begin
     clrscr;
     write('n='); readln(n);
     x:=0; y:=0; z:=0;
     for i:=1 to n do begin write('a[',i,']='); readln(a[i]); end;
     for i:=1 to n do
         begin
              if (a[i]>0) and (a[i+1]>0) then x:=x+1;
              if ((a[i]>0) and (a[i+1]>0))
                 or ((a[i]<0) and (a[i+1]<0))
                 and (abs(a[i])>a[i+1])
                 then y:=y+1;
              if ((a[i]>0) and (a[i+1]<0))
                 or ((a[i]<0) and (a[i+1]>0))
                 then z:=z+1;
         end;
     writeln('Dong 1: ',x);
     writeln('Dong 2: ',y);
     writeln('Dong 3: ',z);
     readln;
end.