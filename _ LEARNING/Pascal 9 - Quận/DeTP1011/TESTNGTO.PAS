uses crt;
var n:longint;

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
     while (a>=10) and (kt=true) do
          if ngto(a) then a:=a div 10 else kt:=false;
     sngto:=kt;
end;

begin
     write('n='); readln(n);
     if sngto(n) then writeln('Dung') else writeln('Sai');
     readln
end.