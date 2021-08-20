uses crt;
var n,m,r,i,j,dem:integer;
    tram:array[1..1000]of integer;
    diem:array[1..10000]of boolean;
    ip,op:text;
begin
     clrscr;
     assign(ip,'d:\363\CAU4.inp'); reset(ip);
     assign(op,'d:\363\CAU4.out'); rewrite(op);

     readln(ip,n); readln(ip,m,r);
     for i:=1 to m do read(ip,tram[i]);

     for i:=1 to n do diem[i]:=false;

     for i:=1 to m do
         for j:=tram[i]-r to tram[i]+r-1 do diem[j]:=true;

     dem:=0;
     for i:=1 to n do
         if diem[i]=false then
         begin
              for j:=i to i+(r*2)-1 do {begin write(j:3);} diem[j]:=true;
                                    { end; }
              dem:=dem+1; {writeln('  dem=',dem);}
         end;

     write(op,dem);
     {readln;}
     close(ip); close(op);
end.