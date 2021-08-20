uses crt;
var a,b,n:integer;
begin
     clrscr;
     write('n='); readln(n);
     a:=0; b:=0;
     while n<>0 do
           begin
                b:=b+1;
                a:=a+n mod 10;
                n:=n div 10;
           end;
     writeln(a:5,b:5);
     readln;
end.

