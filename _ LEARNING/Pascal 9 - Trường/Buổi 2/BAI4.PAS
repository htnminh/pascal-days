uses crt;
var n,i:integer;
    a:array[1..1000]of integer;
function tonguoc(x:integer):integer;
         var i,tonguoc1,x1:integer;
         begin
              tonguoc1:=0; x1:=x;
              for i:=1 to x do
                  if x mod i=0  then tonguoc1:=tonguoc1+i;
              tonguoc:=tonguoc1;
         end;
begin
     clrscr;
     repeat write('n='); readln(n); until (3<n) and (n<30);
     for i:=1 to n do
         begin
              repeat
                    write('a[',i,']=');
                    readln(a[i]);
              until (a[i]>0) and (a[i]<10000);
         end;
     for i:=1 to n do write(tonguoc(a[i]):4);

     readln;
end.