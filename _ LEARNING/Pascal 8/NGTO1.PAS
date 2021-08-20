uses crt;
var n,m,i,k:integer;
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
     repeat
           write('n='); readln(n);
           write('m='); readln(m);
     until n<m;
     k:=0;
     for i:=n to m do if ngto(i) then
         begin
              k:=k+1;
              write(i:4);
         end;
     writeln;
     write('So so ngto la: ',k);
     readln;
end.

