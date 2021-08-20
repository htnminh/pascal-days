uses crt;
var n,i,a,b,c,k1:integer;
function ngto(n:integer):boolean;
         var i,d:integer;
         begin
              d:=0;
              for i:=1 to n do if n mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     repeat write('N='); readln(n);
     until (1<=n) and (n<=10000);

     a:=0; b:=0;
     for i:=1 to n do
         begin
              a:=a+i;
              if ngto(i) then b:=b+1;
         end;
     writeln(a); writeln(b);

     while

     readln
end.




