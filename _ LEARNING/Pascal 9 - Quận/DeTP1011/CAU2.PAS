uses crt;
var n,k,a,b,dem:longint;
    lain:boolean;
BEGIN
     clrscr;

     {nhap}
     write('N='); readln(N); {mua n duoc n+1}
     write('K='); readln(K); {mua k-1 duoc k}
     write('A='); readln(A); {tien}
     write('B='); readln(B); {gia 1 tap}

     {cau a}
     writeln(a div b);

     {cau b}
     lain:=false;
     if (n+1)/n > k/(k-1) then lain:=true;

     dem:=0;
     if lain then
     begin
        while a>=n*b do
        begin
              a:=a-n*b;
              dem:=dem+n+1;
        end;
        while a>=(k-1)*b do
        begin
              a:=a-(k-1)*b;
              dem:=dem+k;
        end;
        while a>=b do dem:=dem+1;
     end
     else
     begin
         while a>=(k-1)*b do
         begin
              a:=a-(k-1)*b;
              dem:=dem+k;
         end;
         while a>=n*b do
         begin
              a:=a-n*b;
              dem:=dem+n+1;
         end;
         while a>=b do
         begin
              dem:=dem+1;
              a:=a-b;
         end;
     end;
     writeln(dem);
     readln
END.