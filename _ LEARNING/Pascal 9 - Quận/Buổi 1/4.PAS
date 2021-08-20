uses crt;
var s:string; n,i:integer;
begin
     write('S='); readln(s);
     write('n='); readln(n);
     for i:=1 to length(s) do
         if ord(s[i])+n>ord('z') then s[i]:=chr(ord(s[i])+n-24)
         else s[i]:=chr(ord(s[i])+n);
     writeln(s);
     readln;
end.
