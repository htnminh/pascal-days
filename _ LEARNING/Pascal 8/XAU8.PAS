uses crt;
var st:string; i,dx,dcong,dnhan,dtru:integer;
begin
     clrscr;
     write('Nhap xau: '); readln(st);
     dx:=0; dcong:=0; dnhan:=0; dtru:=0;
     for i:=1 to length(st) do
         begin
              if (st[i]='x') or (st[i]='X') then dx:=dx+1;
              if st[i]='+' then dcong:=dcong+1;
              if st[i]='*' then dnhan:=dnhan+1;
              if st[i]='-' then dtru:=dtru+1;
         end;
     writeln('Trong chuoi co:');
     writeln('      ',dx,' chu x hoac X');
     writeln('      ',dcong,' dau +');
     writeln('      ',dnhan,' dau *');
     writeln('      ',dtru,' dau -');
     readln;
end.

