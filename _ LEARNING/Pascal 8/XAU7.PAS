uses crt;
var i,a,t,k:integer; n:array[1..100]of integer;
begin
     clrscr;
     write('a='); readln(a);
     for i:=1 to a do
         repeat
               write('n[',i,']='); readln(n[i]);
         until n[i]<30000;
     t:=0;
     for i:=1 to a do t:=t+n[i];
     writeln('Tong cac so: ',t);
     repeat
           write('k='); readln(k);
     until (k>0) and (k<10000) and (k<a);
     for i:=1 to k do writeln('n[',i,']=',n[i]);
     readln;
end.