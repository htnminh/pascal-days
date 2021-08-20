uses crt;
var i,n:integer;
function ngto(n:integer):boolean;
         var i,d:integer;
         begin
              d:=0;
              for i:=1 to n do
                  if n mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     write('n='); readln(n);
     for i:=1 to n do
         if (ngto(i)) and (ngto(i+2)) then
            begin
                 writeln(i,' va ',i+2);
            end;
     readln;
end.