uses crt;
var i,n,m,x,y,z,t:longint;
function ucln(a,b:longint):longint;
         begin
              while a<>b do
                    if a>b then a:=a-b else b:=b-a;
              ucln:=a;
         end;
function ngto(a:longint):boolean;
         var i,d:longint;
         begin
              d:=0;
              for i:=1 to a do if a mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     repeat write('n='); readln(n);
     until n<=10000;
     repeat write('m='); readln(m);
     until 1<=m;

     writeln(n,' ',m);

     x:=m div ucln(n,m); y:=n div ucln(n,m);
     writeln(x,' ',y);

     z:=0;
     for i:=1 to n do z:=z+i;
     writeln(z);

     t:=n;
     while not(ngto(t)) do t:=t-1;
     writeln(t);


     readln;
end.

