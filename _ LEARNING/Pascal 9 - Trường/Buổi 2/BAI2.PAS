uses crt;
var n,k,l,m,i:integer;
    a:array[1..100] of integer;
begin
     clrscr;
     repeat
           write('n='); readln(n);
           write('k='); readln(k);
     until (1<=n) and (n<=100) and (1<=k) and (k<=n);
     for i:=1 to n do
         begin
              repeat
                    write('a[',i,']='); readln(a[i]);
              until (-10000<=a[i]) and (a[i]<=10000);
         end;

     l:=0;
     for i:=1 to n do
         begin
              write(a[i]:6);
              l:=l+a[i];
              if i mod 2=1 then m:=m+a[i];
         end;
     writeln; writeln(l); writeln(m);

     for i:=k to n do a[i]:=a[i+1];
     for i:=1 to n-1 do write(a[i]:6);
     readln;
end.





