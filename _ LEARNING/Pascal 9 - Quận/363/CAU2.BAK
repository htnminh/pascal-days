uses crt;
var ip,op:text;
    n,code:integer;
    i,b,so:longint;
    a:boolean;
    b1,i1:string;

function ngto(n:longint):boolean;
var i,d:longint;
begin d:=0;
      for i:=1 to n do if n mod i=0 then d:=d+1;
      if d=2 then ngto:=true else ngto:=false;
end;

begin
     clrscr;
     assign(ip,'d:\363\CAU2.INP'); reset(ip);
     assign(op,'d:\363\CAU2.OUT'); rewrite(op);

     readln(ip,n);

     i:=2; a:=true;
     while n<>0 do
     begin
          if ngto(i) then
          begin
               if a=true then b:=i else
               begin
                    str(b,b1); str(i,i1);
                    val(b1+i1,so,code);
                    if ngto(so) then n:=n-1;
               end;
               if a=true then a:=false else a:=true;
          end;
          i:=i+1;
     end;

     writeln(op,so);
     close(ip); close(op);
end.