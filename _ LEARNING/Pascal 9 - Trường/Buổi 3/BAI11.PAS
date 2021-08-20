uses crt;
var n,a,b,a1,b1:longint;
function tonguts(a:longint):longint;
         var tonguts1,i:longint;
         begin
              tonguts1:=0;
              for i:=1 to (a-1) do
                  if a mod i=0 then tonguts1:=tonguts1+i;
              tonguts:=tonguts1;
         end;
begin
     clrscr;
     write('n='); readln(n);
     writeln('Tim cap so ban be nho hon ',n);
     for a:=1 to n do
         for b:=1 to n do
             if (tonguts(a)=b) and (tonguts(b)=a) and (a<>b) then
                writeln(a,' va ',b,' ,dang tinh toan tiep, khong tat chuong trinh...')
             else if (a=n) and (b=n) then writeln('Da xong, an enter de tat chuong trinh.');
     readln;
end.