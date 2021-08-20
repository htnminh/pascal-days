uses crt;
type hocsinh = Record
             hoten:string[25];
             gioitinh:boolean;
             diem1,diem2,diem3:integer;
             diemtb:real;
     end;
var hs: array [1..100] of hocsinh;
    n,i:integer;
begin
     clrscr;
     write('n='); readln(n);
     for i:=1 to n do
         begin
              write('Ho ten: '); readln(hs[i].hoten);
              write('Diem 1: '); readln(hs[i].diem1);
              write('Diem 2: '); readln(hs[i].diem2);
              write('Diem 3: '); readln(hs[i].diem3);
              hs[i].diemtb:=(hs[i].diem1+hs[i].diem2+hs[i].diem3)/3;
         end;
     writeln('STT | Ho ten                 | Van | Toan | Anh | DTB');
     for i:=1 to n do
         with hs[i] do
              writeln(i:2,'  ',hoten:25,diem1:4,diem2:4,diem3:4,diemtb:5:1);
     readln;
end.
