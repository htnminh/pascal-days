uses crt;
var n,i,a,d,n1:longint;
function ngto(k:longint):boolean;
         var i,d:longint;
         begin
              d:=0;
              for i:=1 to n do if k mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     repeat
           write('n='); readln(n);
     until (1<=n) and (n<=1000000000);

     for i:=1 to n do a:=a+i;
     writeln(a);

     i:=n;
     while not(ngto(i)) do i:=i-1;
     writeln(i);

     n1:=n;
     if n1 in [0..9] then n1:=n1 else
        repeat n1:=n1 div 10
        until n1 in [0..9];
     writeln(n1);

     n1:=n; d:=0;
     repeat
           d:=d+n1 mod 10;
           n1:=n1 div 10;
     until n1=0;
     writeln(d);


     readln;
end.

