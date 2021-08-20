uses crt;
var s:string; i,d:integer;
begin
     clrscr;
     write('S='); readln(s);
     d:=0;
     for i:=1 to length(s) do
         if s[i] in ['0'..'9'] then
            d:=d+(ord(s[i])-48);
     writeln(d);
     readln;
end.
