uses crt;
var i:integer; a:string;
begin
     a:='Chao mung hoi thi tin hoc tre';
     textcolor(14);
     for i:=1 to 80 do a:=' '+a;
     a:=a+a;
     clrscr;
     repeat
           inc(i);
           gotoxy(1,12);
           write(copy(a,i,80));
           delay(150);
           if i=120 then
              begin
                   i:=0;
                   clrscr;
              end;
              until keypressed;
end.