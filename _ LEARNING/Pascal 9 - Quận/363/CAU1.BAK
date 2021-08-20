uses crt;
var n,i,a,b,bdem,c:longint;

function ngto(n:longint):boolean;
var i,d:longint;
begin d:=0;
      for i:=1 to n do if n mod i=0 then d:=d+1;
      if d=2 then ngto:=true else ngto:=false;
end;

begin
     clrscr;

     write('N='); readln(n);
     a:=0; b:=0; bdem:=0; c:=0;

     for i:=1 to n do
     begin
          a:=a+i;
          if ngto(i) then
          begin
               b:=b+i;
               bdem:=bdem+1;
          end;
     end;

     writeln(a);

     if sqr(round(sqrt(n)))=n then writeln('YES')
                              else writeln('NO');
     writeln(b/bdem:0:2);

     while n<>0 do
     begin
          c:=c+(n mod 10);
          n:=n div 10;
     end;

     writeln(c);

     readln
end.