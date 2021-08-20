uses crt;
var a,b,i:integer;
procedure Ve_Hcn(chdai,chrong:integer);
          var i,j:integer;
          begin
               for i:=1 to chdai do write('*');
               writeln;
               for j:=1 to chrong-2 do
                   begin
                        write('*');
                        for i:=1 to chdai-2 do write(' ');
                        writeln('*');
                   end;
               for i:=1 to chdai do write('*');
               writeln;
          end;
begin
     clrscr;
     Ve_Hcn(25,10);
     writeln; writeln;
     Ve_Hcn(5,10);
     readln;
     clrscr;
     a:=4; b:=2;
     for i:=1 to 4 do
         begin
              Ve_Hcn(a,b);
              readln;
              clrscr;
              a:=a*2; b:=b*2;
         end;
end.
end.