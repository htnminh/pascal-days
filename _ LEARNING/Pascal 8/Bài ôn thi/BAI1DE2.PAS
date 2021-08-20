uses crt;
var n,a,b,c,i,x:longint;
function ngto(x:longint):boolean;
         var i,d:longint;
         begin
              d:=0;
              for i:=1 to x do if x mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     repeat write('n='); readln(n);
     until (n mod 2=0) and (4<=n) and (n<=10000);

     a:=0;
     for i:=1 to n do a:=a+i;
     writeln(a);

     for i:=1 to n do if (n mod i=0) and (i mod 2=0) then b:=b+1;
     writeln(b);

     c:=n;
     while not(ngto(c)) do c:=c-1;
     writeln(c);

     x:=1;
     repeat
           x:=x+1;
     until ngto(x) and ngto(n-x);
     writeln(x:5,n-x:5);

     readln;
end.
