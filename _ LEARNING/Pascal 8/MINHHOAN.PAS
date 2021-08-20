uses crt;
var a,b:integer;
procedure Hoan_doi (var x,y:integer);
          var TG:integer;
          begin
               TG:=x;
               x:=y;
               y:=TG;
          end;
begin
     clrscr;
     a:=5; b:=10;
     writeln(a:6,b:6);
     Hoan_doi(a,b);
     writeln(a:6,b:6);
     readln;
end.
