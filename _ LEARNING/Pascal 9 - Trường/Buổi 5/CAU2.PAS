uses crt;
var n,m,i,b1,b:integer;
    a:array[1..20]of longint;
function ucln(x,y:integer):integer;
         begin
              while x<>y do
                    begin
                         if x>y then x:=x-y
                         else if y>x then y:=y-x;
                    end;
              ucln:=x;
         end;
begin
     clrscr;
     repeat write('n='); readln(n);
            write('m='); readln(m);
     until (2<=m) and (m<=n) and (n<=20);
     for i:=1 to n do
         begin write('a[',i,']='); readln(a[i]);
         end;

     writeln(n,' ',m);

     for i:=m to n do a[i]:=a[i+1];
     for i:=1 to n-1 do write(a[i],' ');

     b1:=1;
     for i:=1 to n do b1:=b1*a[i];

     readln;
end.