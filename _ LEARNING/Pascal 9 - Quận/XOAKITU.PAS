uses crt;
var n:string;
    k,so:longint;
    code:integer;
begin
     clrscr;
     write('N='); readln(n);
     write('K='); readln(k);

     if k>=length(n) then n:='0'
     else delete(n,1,k);

     val(n,so,code);
     writeln(so);

     readln
end.