uses crt;
var a: array [1..100] of integer;
    i,n,duong,am,max,min,x,tong,tongchan,tongle,j,tg:integer;
begin
     clrscr;
     write('n='); readln(n);
     tong:=0; tongchan:=0; tongle:=0;
     for i:=1 to n do
         begin
              write('a[',i,']='); readln(a[i]);
         end;
     for i:=1 to n do
         begin
              write(a[i]:4);
              tong:=tong+a[i];
         end;
     writeln;
     for i:=1 to n do
         if a[i] mod 2=0 then
            begin write(a[i]:4); tongchan:=tongchan+a[i]; end;
     writeln;
     for i:=1 to n do
         if a[i] mod 2=1 then
            begin write(a[i]:4); tongle:=tongle+a[i]; end;
     writeln;
     for i:=1 to n do if (a[i] mod 2=1) and (i mod 2=0) then write(a[i]:4);
     writeln; duong:=0; am:=0;
     for i:=1 to n do
         if a[i]>0 then duong:=duong+1 else if a[i]<>0 then am:=am+1;
     write('So so duong = ',duong,', so so am = ',am);
     writeln; max:=a[1]; min:=a[1];
     for i:=2 to n do
         begin
              if a[i]>max then max:=a[i];
              if a[i]<min then min:=a[i];
         end;
     write('Max=',max,', min=',min);
     writeln;
     write('x='); readln(x);
     for i:=1 to n do
         if x=a[i] then writeln('a[',i,']=x');
     writeln('Tong=',tong);
     writeln('Tong cac so chan = ',tongchan);
     writeln('Tong cac so le = ',tongle);
     for i:=1 to n-1 do
         for j:=i+1 to n do
             begin
                  if a[i]>a[j] then
                     begin
                          tg:=a[i];
                          a[i]:=a[j];
                          a[j]:=tg;
                     end;
                  end;
     for i:=1 to n do write(a[i]:4);
     readln;
end.
