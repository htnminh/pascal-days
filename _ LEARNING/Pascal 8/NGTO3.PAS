uses crt;
var n,i,t,k:integer;
function ngto(n:integer):boolean;
         var d,i:integer;
         begin
              d:=0;
              for i:=1 to n do
                  if n mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     write('n='); readln(n);
     k:=0; t:=0;
     for i:=1 to n do
         if (n mod i=0) and (ngto(i)) then
            begin
                 write(i:4);
                 k:=k+1;
                 t:=t+i;
            end;
     writeln;
     writeln('So cac uoc ngto tren la: ',k);
     writeln('Tong cac uoc ngto tren la: ',t);
     readln;
end.


