uses crt;
var s:string;
    d,i,d1,j,code:integer;
begin
     clrscr;
     write('S='); readln(s);
     d:=0;
     for i:=1 to length(s) do
         if s[i] in ['0'..'9'] then
            begin
                 j:=1;
                 while s[i+j] in ['0'..'9'] do j:=j+1;
                 val(copy(s,i,j),d1,code);
                 d:=d+d1;
            end;
     writeln(d);
     readln
end.
