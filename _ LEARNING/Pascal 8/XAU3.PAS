program xau;
uses crt;
var i,d:integer; st:string;
begin
     clrscr;
     repeat
           write('Nhap ki tu: '); readln(st);
           if length(st)<>1 then writeln('   Chi nhap 1 ki tu');
     until length(st)=1;
     if st[1] in ['a'..'z'] then write('Ki tu la chu cai a-z')
                            else write('Ki tu khong phai la chu cai a-z');
     writeln;
     write('Nhap xau: '); readln(st);
     d:=0;
     for i:=1 to length(st) do
         if (st[i] in ['a'..'z']) or (st[i] in ['A'..'Z'])
            then d:=d+1;
     writeln('Co ',length(st)-d,' ki tu khong phai chu cai');
     readln;
end.
