uses crt;
var n,k,l,i,n1,t,y:longint;
function tongbpcs(x:longint):longint;
         var tinh:longint;
         begin
              tinh:=0;
              while x<>0 do
                    begin
                         tinh:=tinh+sqr(x mod 10);
                         x:=x div 10;
                    end;
              tongbpcs:=tinh;
         end;
function ngto(x:longint):boolean;
         var i,d:longint;
         begin
              d:=0;
              for i:=1 to x do if x mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
function sochuso(x:longint):integer;
         var d:longint;
         begin
              d:=0;
              while x<>0 do
                    begin
                         d:=d+1;
                         x:=x div 10;
                    end;
              sochuso:=d;
         end;
function mu10(x:longint):longint;
         var i,mu:longint;
         begin
              mu:=1;
              for i:=1 to x do mu:=mu*10;
              mu10:=mu;
         end;
begin
     clrscr;
     repeat write('n='); readln(n);
     until (1<=n) and (n<=1000000000);
     repeat write('k='); readln(k);
     until (1<=k) and (k<10);

     writeln(n mod 10);

     l:=0; n1:=n;
     while n1<>0 do
           begin
                l:=l+n1 mod 10;
                n1:=n1 div 10;
           end;
     writeln(l);

     t:=n;
     repeat t:=t-1;
     until ngto(tongbpcs(t));
     writeln(t);

     if sochuso(n)<=k then writeln(0) else
        writeln(n mod (mu10(sochuso(n)-k)));
     readln;
end.