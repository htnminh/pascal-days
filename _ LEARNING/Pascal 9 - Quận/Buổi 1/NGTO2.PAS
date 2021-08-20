uses crt;
var n,d,i:longint;
    a:array [1..100] of integer;
    kt:char;
begin
     clrscr;
     repeat write('N='); readln(n);
     until n<>0;
     write('So nhi phan la: ');
     d:=0;
     writeln;
     while n<>0 do
           begin
                d:=d+1;
                a[d]:=n mod 2;
                n:=n div 2;
           end;
     for i:=d downto 1 do write(a[i]);
     writeln;



     readln;
end.




