uses crt;
var n,m,i,s,b,e,b1,e1:longint;
function ucln(m,n:longint):longint;
         var m1,n1:longint;
         begin
              m1:=m; n1:=n;
              while m1<>n1 do
                    if m1<n1 then n1:=n1-m else m1:=m1-n;
              ucln:=m1;
         end;
function ngto(n:longint):boolean;
         var i,d:longint;
         begin d:=0;
               for i:=1 to n do if n mod i=0 then d:=d+1;
               if d=2 then ngto:=true else ngto:=false;
         end;
function tong(a,b:longint):longint;
         var i,d:longint;
         begin
              d:=0;
              for i:=a to b do d:=d+i;
              tong:=d;
         end;
begin
     clrscr;
     repeat write('N='); readln(n);
            write('M='); readln(m);
     until (1<=n) and (m<=10000);

     s:=0;
     for i:=1 to n do s:=s+i;
     writeln(s); writeln(ucln(n,m));

     if ngto(n) then writeln('YES') else writeln('NO');

     e:=0; b1:=0; e1:=0;
     repeat
           for b:=1 to e do if tong(b,e)=m then
               begin b1:=b; e1:=e;
               end;
           e:=e+1;
     until tong(b1,e1)=m;

     writeln(b1,e1:7);
     readln;
end.