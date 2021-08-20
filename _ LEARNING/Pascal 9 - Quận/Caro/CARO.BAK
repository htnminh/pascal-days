uses crt;
const n=10;
var a:array [1..n,1..n] of char; {X O .}
    i,j,d:integer;
    danh:char;
    kqx,kqo:boolean;

function kt(x,y:integer;c:char):integer;
var i,j,d,max,d1,d2:integer;
begin
     max:=1;

{kt hang ngang}
     i:=x; d1:=0;
     while a[i,j]<>c do  {dem ben trai}
     begin
          d1:=d1+1;
          i:=i-1;
     end;

     i:=x+1; d2:=0;
     while a[i,j]<>c do  {dem ben phai}
     begin
          d2:=d2+1;
          i:=i+1;
     end;

     d:=d1+d2;
     if d>max then max:=d;

{kt cot doc}
     j:=y; d1:=0;
     while a[i,j]<>c do  {dem ben tren}
     begin
          d1:=d1+1;
          j:=j-1;
     end;

     j:=y+1; d2:=0;
     while a[i,j]<>c do  {dem ben duoi}
     begin
          d2:=d2+1;
          j:=j+1;
     end;

     d:=d1+d2;
     if d>max then max:=d;

{kt hang cheo tu tren phai xuong duoi trai}
     i:=x; j:=y; d1:=0;
     while a[i,j]<>c do  {dem duoi trai}
     begin
          d1:=d1+1;
          i:=i-1;
          j:=j-1;
     end;

     i:=x+1; j:=y+1; d2:=0;
     while a[i,j]<>c do  {dem tren phai}
     begin
          d2:=d2+1;
          i:=i+1;
          j:=j+1;
     end;

     d:=d1+d2;
     if d>max then max:=d;

{kt hang cheo tu tren trai xuong duoi phai}
     i:=x; j:=y; d1:=0;
     while a[i,j]<>c do  {dem tren trai}
     begin
          d1:=d1+1;
          i:=i+1;
          j:=j-1;
     end;

     i:=x-1; j:=y+1; d2:=0;
     while a[i,j]<>c do  {dem duoi phai}
     begin
          d2:=d2+1;
          i:=i-1;
          j:=j+1;
     end;

     d:=d1+d2;
     if d>max then max:=d;




     kt:=max;

end;
begin
     clrscr; randomize;

     danh:='X';
     d:=0;

     {mang trong}
     for i:=1 to n do
         for j:=1 to n do
             a[i,j]:='.';


     {danh random}
     while d<>sqr(n) do
     begin
          i:=random(n)+1;
          j:=random(n)+1;
          if a[i,j]='.' then
          begin
               a[i,j]:=danh;
               d:=d+1;
               if danh='X' then danh:='O' else danh:='X';
          end;
     end;

     {in}
     for i:=1 to n do
     begin
          if i<>1 then writeln;
          for j:=1 to n do write(a[i,j]:2);
     end;

     kqx:=false; kqo:=false;
     {kt thang}
     for i:=1 to n do
         for j:=1 to n do
             if kt(i,j,a[i,j])=5 then
                case a[i,j] of
                     'X': kqx:=true;
                     'O': kqo:=true;
                end;

     writeln;
     if kqx then writeln('X thang') else writeln('X thua');
     if kqo then writeln('O thang') else writeln('O thua');

     readln
end.

