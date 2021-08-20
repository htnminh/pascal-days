uses crt;
var n,x,i,d1,y,min,j,maxuoc,m:longint;
    a:array[1..100]of integer;
function d(k:longint):integer;
         var i,d1:longint;
         begin
              d1:=0;
              for i:=1 to k do if k mod i=0 then d1:=d1+1;
              d:=d1;
         end;
begin
     clrscr;
     write('n='); readln(n);
     write('x='); readln(x);
     for i:=1 to n do
         begin
              write('a[',i,']='); readln(a[i]);
         end;
     min:=a[1];
     for i:=1 to n do
         begin
              if i mod 2=0 then d1:=d1+a[i];
              if a[i]=x then y:=y+1;
              if a[i]<min then min:=a[i];
         end;
     maxuoc:=(a[1]);
     for i:=1 to n do
         if d(a[i])>maxuoc then begin maxuoc:=d(a[i]); m:=i; end;
     writeln(d1);
     writeln(y);
     writeln(min);
     writeln(m);
     readln;
end.