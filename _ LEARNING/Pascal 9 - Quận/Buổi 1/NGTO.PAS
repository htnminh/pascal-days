uses crt;
var n,i,j:longint;
    kt:boolean;
function ngto(n:longint):boolean;
         var i,d:longint;
         begin d:=0;
               for i:=1 to n do if n mod i=0 then d:=d+1;
               if d=2 then ngto:=true else ngto:=false;
         end;
function dscs(n:longint):integer; (*dem so chu so*)
         var n1,d:longint;
         begin
              n1:=n; d:=0;
              while n1<>0 do
                    begin d:=d+1;
                          n1:=n1 div 10;
                    end;
              dscs:=d;
         end;
function mmu(n:integer):longint; (*lay luy thua cua 10*)
         var i,d:longint;
         begin
              d:=1;
              for i:=1 to n do d:=d*10;
              mmu:=d;
         end;
begin
     clrscr;
     repeat write('n='); readln(n)
     until n<>0;
     writeln('Dang giai xin doi...');
     for i:=1 to n do
         if ngto(i) then
            begin
                 kt:=true;
                 for j:=1 to dscs(i) do kt:=kt and ngto(i div mmu(j));
                 if kt=true then write(i:6);
            end;
     writeln;
     writeln('Da xong!');
     readln
end.


