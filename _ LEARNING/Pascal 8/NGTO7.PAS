uses crt;
var n,i:integer;
function ngto(n:integer):boolean;
         var i,d:integer;
         begin
              d:=0;
              for i:=1 to n do if n mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
begin
     clrscr;
     repeat
           write('n='); readln(n);
     until n>0;
     i:=n;
     repeat
           i:=i+1;
     until ngto(i) and (i>n);
     write('So ngto nho nhat lon hon n la: ',i);
     readln;
end.



