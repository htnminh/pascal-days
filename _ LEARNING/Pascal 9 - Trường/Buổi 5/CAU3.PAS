uses crt;
var n,i,j,d,max:integer;
    a,b:array [1..1000] of integer;
begin
     clrscr;
     repeat write('n='); readln(n);
     until n<=1000;
     writeln;
     for i:=1 to n do begin write('A[',i,']='); readln(a[i]); end;
     writeln;
     for i:=1 to n do begin write('B[',i,']='); readln(b[i]); end;

     for i:=1 to n
         for j:=1 to n
             begin
                  if a[i]>a[j] then d:=d+1;

     readln;
end.