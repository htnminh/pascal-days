uses crt;
var n,i,l,m,k:integer;
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
     if ngto(n) then writeln('YES') else writeln('NO');

     l:=0; m:=0; k:=0;
     for i:=1 to n do
         begin
              if i mod 3=0 then l:=l+1;
              m:=m+i;
              if i mod 2=0 then k:=k+i;
         end;
     writeln(l); writeln(m); writeln(k);
     readln;
end.
