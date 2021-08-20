uses crt;
var ip,op:text;
    s:string;
    i:integer;
begin
     clrscr;
     assign(ip,'d:\363\CAU3.inp'); reset(ip);
     assign(op,'d:\363\CAU3.out'); rewrite(op);

     readln(ip,s);
     while s[1]=' ' do delete(s,1,1);
     s[1]:=upcase(s[1]);

     while s[pos('  ',s)]=' ' do delete(s,pos('  ',s),1);

     for i:=1 to length(s) do if s[i]=' ' then s[i+1]:=upcase(s[i+1]);

     writeln(op,s);

     close(ip); close(op);
end.