uses crt;
var ax,ay,bx,by,cx,cy:integer;
    ab,bc,ac:real;
    tg,can:boolean;

function ddcanh(mx,my,nx,ny:integer):real;
begin
     ddcanh:=SQRT(sqr(mx-nx) + sqr(my-ny)) ;
end;

function ktvuong(x,y,z:real):boolean;
begin
     if   (sqr(x)+sqr(y)=sqr(z))
       or (sqr(x)+sqr(z)=sqr(y))
       or (sqr(y)+sqr(z)=sqr(x))
     then ktvuong:=true else ktvuong:=false;
end;

begin
     clrscr;
     write('Nhap A: X='); readln(ax);
     write('Nhap A: Y='); readln(ay);
     write('Nhap B: X='); readln(bx);
     write('Nhap B: Y='); readln(by);
     write('Nhap C: X='); readln(cx);
     write('Nhap C: Y='); readln(cy);

     ab:=ddcanh(ax,ay,bx,by); writeln('AB=',ab:0:5);
     bc:=ddcanh(bx,by,cx,cy); writeln('BC=',bc:0:5);
     ac:=ddcanh(ax,ay,cx,cy); writeln('AC=',ac:0:5);


     if (ab<bc+ac) or (bc<ab+ac) or (ac<ab+bc) then tg:=true else tg:=false;
     {if ktvuong(ab,bc,ac) then vuong:=true else vuong:=false;}
     if (ab=bc) or (ab=ac) or (bc=ac) then can:=true;

     if not tg then writeln('3 diem A,B,C khong phai '#30)
        else
            begin
                 write('ABC la '#30);
                 if ktvuong(ab,bc,ac) then write(' vuong');
                 if can then write(' can');
            end;
     readln
end.
