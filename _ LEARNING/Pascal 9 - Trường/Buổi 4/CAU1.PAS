uses crt;
var m,n,i,x,m1,n1:integer;
function ngto(a:integer):boolean;
         var i,d:integer;
         begin d:=0;
               for i:=1 to a do if a mod i=0 then d:=d+1;
               if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     repeat writeln('1<=m<n<=10000');
            write('n='); readln(n);
            write('m='); readln(m);
     until (1<=m) and (m<n) and (n<=10000);

     writeln(n:6,m:6);

     x:=0;
     for i:=m to n do if ngto(i) then x:=x+1;
     writeln(x);

     m1:=m; n1:=n;
     while m1<>n1 do if m1>n1 then m1:=m1-n1 else n1:=n1-m1;
     writeln(m1);


     readln
end.
