uses crt;
var
begin
     write('S='); readln(s);
     for i:=1 to length(s) do
         begin
              if s[i] in ['0'..'9'] do
                 begin
                      j:=0;
                      while s[j] in ['0'..'9'] do j:=j+1;
                 end;
         end;
