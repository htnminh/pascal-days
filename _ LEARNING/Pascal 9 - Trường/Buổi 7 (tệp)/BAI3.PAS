var n,i:longint;
    a:array [1..100] of integer;
    f:text;
begin
     write('N='); readln(n);
     for i:=1 to n do
         begin write('a[',i,']='); readln(a[i]);
         end;
     assign(f,'d:\bai3tep.txt');
     rewrite(f);
     writeln(f,n);
     writeln(f);
     for i:=1 to n do write(f,a[i]:4);
     close(f);
end.