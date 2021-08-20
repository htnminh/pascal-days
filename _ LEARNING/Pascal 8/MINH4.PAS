uses crt;
var a1,n,i:integer; a:real;
begin
     clrscr;
     write('a=');
     readln(a1);
     write('n='); readln(n);
     a:=1; i:=1;
     while i<=n do
           begin
                a:=a*a1;
                i:=i+1;
           end;
     writeln('a^n=',a:10:0);
     readln;
end.

