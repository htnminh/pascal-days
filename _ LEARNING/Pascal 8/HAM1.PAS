uses crt;
var st:string[50];
begin
     st:='Dang tai......  ';
     textmode(c40);
     textbackground(green);
     textcolor(red);
     clrscr;
     repeat
           gotoxy(10,15);
           write(st);
           delay(150);
           st:=st+st[1];
           delete(st,1,1);
     until keypressed;
     readln;
end.