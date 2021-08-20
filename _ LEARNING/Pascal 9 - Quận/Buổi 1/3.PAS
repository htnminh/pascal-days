uses crt;
var n,i,d1,d3,a,b:longint;
function ngto(n:longint):boolean;
         var i,d:integer;
         begin d:=0;
               for i:=1 to n do if n mod i=0 then d:=d+1;
               if d=2 then ngto:=true else ngto:=false;
         end;
function cp(n:longint):boolean;
         begin
              if sqr(int(sqrt(n)))=n then cp:=true else cp:=false;
         end;
begin
     clrscr;
     repeat write('n='); readln(n);
     until (1<=n) and (n<=10000);

     d1:=0; a:=0; b:=0; d3:=0;
     for i:=1 to n do
         begin   if i mod 5=0 then d1:=d1+i;
                 if ngto(i) then
                    begin
                         a:=a+1;
                         b:=b+i;
                    end;
                 if (cp(i)) and (i mod 2=0) then d3:=d3+i;
         end;
     writeln(d1); writeln(b/a:5:2); writeln(d3);
     readln;
end.