uses crt;
var m,n,d,i:integer;
function uscln(m,n:integer):integer;
         var r:integer;
         begin
              while n<>0 do
                    begin
                         r:=m mod n;
                         m:=n;
                         n:=r;
                    end;
              uscln:=m;
         end;
begin
     write('Nhap m,n: '); readln(m,n);
     d:=uscln(m,n);
     i:=2;
     while d<>1 do
           begin
                if d mod i=0 then
                   begin
                        while d mod i=0 do d:=d div i;
                        while m mod i=0 do m:=m div i;
                        while n mod i=0 do n:=n div i;
                   end;
                   inc(i);
           end;
     if m*n=1 then write('m va n ngto tg dg')
              else write('m va n khong ngto tg dg');
     readln;
end.