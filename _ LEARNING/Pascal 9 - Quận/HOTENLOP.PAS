uses crt;
var
   n,i,j:integer;
   s: string;
   ten: array[1..100] of string;
   lop: array[1..100] of string[10];
begin
     clrscr;
     write('Nhap so h/s: '); readln(n);

     for i:=1 to n do
         begin
              readln(s);
              for j:=1 to length(s) do
                  if s[j] in ['1'..'9'] then
                  begin
                       ten[i]:=copy(s,1,j-1);
                       lop[i]:=copy(s,j,length(s)-j+1);
                       break
                  end;
         end;
     for i:=1 to n do
         begin
              writeln('Ho & Ten: ',ten[i]);
              writeln('Lop: ',lop[i]);
         end;
     readln;
end.
