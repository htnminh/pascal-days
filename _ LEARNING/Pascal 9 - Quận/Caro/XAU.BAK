uses crt;
var s:string;
    max,i,j,d,k:integer;
begin
     clrscr;

     write('Nhap xau: '); readln(s);

     max:=1;
     for i:=1 to length(s) do
     begin
          j:=i+1;
          d:=1;
          while s[i]=s[j] do
          begin
               d:=d+1;
               j:=j+1;
          end;
          if d>max then max:=d;
     end;

     for i:=1 to length(s) do
     begin
          j:=i+1;
          d:=1;
          while s[i]=s[j] do
          begin
               d:=d+1;
               j:=j+1;
          end;
          if d=max then
          begin
               write('Do dai la ',d,': ');
               for k:=i to j-1 do write(s[k]);
               writeln
          end;
     end;
     readln
end.