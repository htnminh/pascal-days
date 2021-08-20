uses crt;
var n,i,dem:longint;
    d:real;
function socpchan(n:longint):boolean;
         begin
              if (sqr(round(sqrt(n)))=n) and (round(n) mod 2=0)
                 then socpchan:=true
              else socpchan:=false;
         end;
begin
     clrscr;
     write('n='); readln(n);
     i:=1; d:=0;
     while n>0 do
           begin
           if socpchan(i) then
                begin n:=n-1;
                      d:=d+i;
                end;
           i:=i+1;
           end;
     write(d:0:0);
     readln
end.