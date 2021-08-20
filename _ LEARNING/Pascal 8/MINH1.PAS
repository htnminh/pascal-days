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
     for i:=1 to n do
         if a[i] mod 3=0 then
            begin
                          d:=d+1;
                          tg:=a[i];
                          a[i]:=a[d];
                          a[d]:=tg;
            end;
     for i:=1 to n do write(a[i]:4);
     writeln;
     for i:=n-1 to n do a[i]:=a[i+1];
     n:=n-1;
     for i:=1 to n do write(a[i]:4);

     readln;
end.