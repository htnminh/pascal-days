uses crt;
var n,m,i,d,j,k:integer;
    a: array [1..20] of real;
begin
     clrscr;

     writeln('2<=m<=n<=20');
     repeat
           write('n='); readln(n);
           write('m='); readln(m);
     until (2<=m) and (m<=n) and (n<=20);

     for i:=1 to n do
         repeat write('a[',i,']='); readln(a[i])
         until (-1000000000<=a[i]) and (a[i]<=1000000000);

     writeln; writeln(n:3,m:3);

     for i:=m to n do a[i]:=a[i+1];
     for i:=1 to n-1 do writeln(a[i]:10:0);

     d:=0;
     for i:=1 to n do
         for j:=1 to n do
             if a[i]=a[j] then
                begin
                     d:=d+1;
                     for k:=i to j do a[k]:=a[k+1];
                end;
     for i:=1 to n-d do writeln(a[i]:10:0);


     readln;
end.