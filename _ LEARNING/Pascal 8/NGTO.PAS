uses crt;
var n:integer;
function ngto (n:integer):boolean;
         var i,d:integer;
             begin
                  d:=0;
                  for i:=1 to n do
                      if n mod i=0 then d:=d+1;
                      if d=2 then ngto:=true
                             else ngto:=false;
             end;
begin
     clrscr;
     write('n='); readln(n);
     write('n la ');
     if ngto(n) then write('so nguyen to')
                else write('ko phai so nguyen to');
     readln;
end.
