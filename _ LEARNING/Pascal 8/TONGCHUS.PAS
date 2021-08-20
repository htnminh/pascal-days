uses crt;
var n:longint;
function tongcs(n:longint):longint;
var s:integer;
    begin
         s:=0;
         while n<>0 do
               begin
                    s:=s+n mod 10;
                    n:=n div 10;
               end;
         tongcs:=s;
    end;
begin
     clrscr;
     write('n='); readln(n);
     write(tongcs(n));
     readln;
end.