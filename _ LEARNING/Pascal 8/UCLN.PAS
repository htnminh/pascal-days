uses crt;
var a:array[1..100] of longint; n,i,ucln:longint;
function h_ucln(x,y:integer):longint;
         begin
              while x<>y do
                    if x>y then x:=x-y else y:=y-x;
                    h_ucln:=x;
         end;
begin
     clrscr;
     write('n='); readln(n);
     for i:=1 to n do
         begin
              write('a[',i,']='); readln(a[i]);
         end;
     ucln:=h_ucln(a[1],a[2]);
     for i:=3 to n do
         ucln:=h_ucln(ucln,a[i]);
     writeln('UCLN=',ucln);
     readln;
end.




