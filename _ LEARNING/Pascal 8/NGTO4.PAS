uses crt;
var x,y:integer;
function uscln(a,b:integer):integer;
         var i,n:integer;
         begin
              if a>b then n:=a else n:=b;
              for i:=1 to n do
                  if (a mod i=0) and (b mod i=0) then uscln:=i;
         end;
begin
     clrscr;
     write('x='); readln(x);
     write('y='); readln(y);
     write('USCLN=',uscln(x,y));
     writeln;
     if uscln(x,y)=1 then writeln('Ngto cung nhau')
                     else writeln('Khong ngto cung nhau');
     writeln('BSCNN=',round(x*y/uscln(x,y)));
     readln;
end.

