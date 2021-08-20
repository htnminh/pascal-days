uses crt;
var n,min,max,i,d:longint;
    min1,max1:string;
    code:integer;
function ngto(a:longint):boolean;
var i,d:longint;
begin
     d:=0;
     for i:=1 to a do if a mod i=0 then d:=d+1;
     if d=2 then ngto:=true else ngto:=false;
end;

function sngto(a:longint):boolean;
var kt:boolean;
begin
     kt:=true;
     while (a>=1) and (kt=true) do
          if ngto(a) then a:=a div 10 else kt:=kt and false;
     sngto:=kt;
end;

BEGIN
     clrscr;
     write('N='); readln(n);
     min1:='1'; max1:='9';
     while n>1 do
     begin
          min1:=min1+'0';
          max1:=max1+'9';
          n:=n-1;
     end;
     writeln(min1:9,max1:9);
     val(min1,min,code);
     val(max1,max,code);

     d:=0;
     for i:=min to max do
         if sngto(i) then d:=d+1;
     writeln(d);

     i:=min;
     while not sngto(i) do i:=i+1;
     writeln(i);
     i:=max;
     while not sngto(i) do i:=i-1;
     writeln(i);

     readln
END.