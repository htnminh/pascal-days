uses crt;
var n,i:longint;
begin
     write('N='); readln(n);
     i:=2;

     while n<>1 do
     begin
          if n mod i=0 then
          begin
               writeln(i);
               n:=n div i;
          end
          else i:=i+1;
     end;
     readln
end.
