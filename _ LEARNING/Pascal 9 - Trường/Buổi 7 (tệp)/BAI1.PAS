var t1:text;
begin
     assign (t1,'d:\Dulieu.dat');
            rewrite(t1);
            writeln(t1,'Tep van ban');
            write(t1,123);
            write(t1,' ',123.45);
            writeln(t1);
            close(t1);
            readln;
end.
