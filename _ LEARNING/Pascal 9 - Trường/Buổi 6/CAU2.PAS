uses crt;
var n,k,i,t,s:integer;
    a: array[1..100] of integer;
begin
     clrscr;
     repeat write('n='); readln(n);
            write('k='); readln(k);
     until (1<=n) and (k<=100);

     for i:=1 to n do
         begin
              write('a(',i,')=');
              readln(a[i]);
         end;

     for i:=1 to n do
         begin
              t:=t+a[i];
              if i mod 2=0 then s:=s+a[i];
         end;
     writeln(t); writeln(s);
     readln;
end.


