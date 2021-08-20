uses crt;
var a:array[1..100]of integer; i,n,d:integer;
function ngto(n:integer):boolean;
         var i,d:integer;
         begin
              d:=0;
              for i:=1 to n do if n mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     write('n='); readln(n);
     for i:=1 to n do
         begin
              write('a[',i,']='); readln(a[i]);
         end;
     d:=0;
     for i:=1 to n do
         if ngto(a[i]) then
            begin
                 write(a[i]:5);
                 d:=d+1;
            end;
     writeln;
     writeln('So so ngto la: ',d);
     readln;
end.

