uses crt;
var n:integer;
function gt(n:integer):longint;
         begin
              if n=1 then gt:=1
              else gt:=n*gt(n-1);
         end;
begin
     clrscr;
     write('n='); readln(n);
     writeln(n,'!=',gt(n));
     readln
end.