uses crt;
var a:array['A'..'Z'] of integer;
    s:string;
    ch:char;
    i:integer;
begin
     clrscr;
     write('Nhap xau: '); readln(s);
     for ch:='A' to 'Z' do a[ch]:=0;
     for i:=1 to length(s) do
         begin
              if s[i] in ['a'..'z'] then
                 begin
                      s[i]:=upcase(s[i]);
                      a[s[i]]:=a[s[i]]+1;
                 end;
         end;
     for ch:='A' to 'Z' do
         if ch<>'' then
            begin
                 if a[ch]<>0 then
                    writeln('Co ',a[ch],' lan xuat hien cua ',ch,' trong xau');
            end;
     readln;
end.