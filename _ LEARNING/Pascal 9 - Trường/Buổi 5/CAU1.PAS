uses crt;
var n,m,i,x:integer;
function ngto(n:integer):boolean;
         var i,d:integer;
         begin
              d:=0;
              for i:=1 to n do if n mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
function ucln(x,y:integer):integer;
         begin
              while x<>y do
                    begin
                         if x>y then x:=x-y
                         else if y>x then y:=y-x;
                    end;
              ucln:=x;
         end;
begin
     clrscr;
     repeat write('n='); readln(n);
            write('m='); readln(m);
     until (1<=m) and (m<n) and (n<=10000);
     writeln(n,' ',m);
     x:=0;
     for i:=m to n do if ngto(i) then x:=x+1;
     writeln(x);
     writeln(ucln(n,m));

     readln;
end.
