var f:text; i:char;
begin
     assign(f,'d:\BCC.txt');
     rewrite(f);
     for i:='a' to 'z' do
         write(f,i:4);
     writeln(f);
     for i:='A' to 'Z' do
         write(f,i:4);
     close(f);
end.
