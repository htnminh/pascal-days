uses crt;
var n,b,i,s,k,m:integer; a:array[1..100]of integer;
begin
     clrscr;
     repeat
           write('n='); readln(n);
           write('b='); readln(b);
     until (1<=n) and (n<=100) and (-10000<b) and (b<10000);
     for i:=1 to n do
         begin
              repeat
                    write('a[',i,']='); readln(a[i]);
              until (-10000<a[i]) and (a[i]<10000);
         end;

     s:=0; k:=0; m:=a[1];
     for i:=1 to n do
         begin
              write(a[i]:5);
              s:=s+a[i];
              if a[i]=b then k:=k+1;
              if a[i]>m then m:=a[i];
         end;
     writeln; writeln(s); writeln(k); writeln(m);

     readln;
end.