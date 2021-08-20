uses crt;
var n,i,d1,d2,n2,dem3:longint;
    d3,s:string;

function sht(a:longint):boolean;
var i,d:longint;
begin
     d:=0;
     for i:=1 to a-1 do if a mod i=0 then d:=d+i;
     if d=a then sht:=true else sht:=false;
end;

BEGIN
     clrscr;
     write('N='); readln(n);

     {d1}
     d1:=0;
     for i:=1 to n do if i mod 15=0 then d1:=d1+1;

     {d2}
     d2:=0; n2:=n;
     while n2<>0 do
     begin
          d2:=d2+n2 mod 10;
          n2:=n2 div 10;
     end;

     {d3}
     s:=''; d3:=''; dem3:=0;
     for i:=1 to n do
     begin
          str(i,s);
          d3:=d3+s;
     end;
     for i:=1 to length(d3) do if d3[i]='1' then dem3:=dem3+1;

     {d4+in}
     writeln(d1); writeln(d2); writeln(dem3);
     for i:=1 to n do if sht(i) then write(i:6);

     readln
END.