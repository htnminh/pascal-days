uses crt;
var x,y:integer;
function ucln(x,y:integer):integer;
         begin
              if x=y then ucln:=x;
              if x>y then ucln:=ucln(x-y,y);
              if x<y then ucln:=ucln(x,y-x);
         end;
begin
     clrscr;
     write('Nhap x,y: '); readln(x,y);
     write(ucln(x,y));
     readln;
end.