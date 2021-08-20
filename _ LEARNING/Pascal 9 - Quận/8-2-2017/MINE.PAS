uses crt;
var a:array[1..9,1..9]of integer;
    b:array[1..9,1..9]of boolean;
    i,j,d:integer;
procedure tong(i,j:integer);
var m,n:integer;
begin
     for m:=i-1 to i+1 do
         for n:=j-1 to j+1 do
         begin
             if (m>=1) and (m<=9) and (n>=1) and (n<=9) and (b[i,j]=false)
             and (b[m,n]=true)
                then a[i,j]:=a[i,j]+a[m,n];
         end;
end;

begin
     clrscr; randomize;

     for i:=1 to 9 do     {toan so 0}
         for j:=1 to 9 do
             a[i,j]:=0;

     while d<10 do        {them 10 so 1 bat ki}
     begin
          i:=random(9);
          j:=random(9);
          if a[i,j]=0 then
          begin
               a[i,j]:=1;
               d:=d+1;
          end;
     end;

     for i:=1 to 9 do      {neu co bom, b=true}
         for j:=1 to 9 do
             if a[i,j]=1 then b[i,j]:=true;

     for i:=1 to 9 do      {tinh so bom xung quanh}
         for j:=1 to 9 do
             if b[i,j]=false then tong(i,j);

     for i:=1 to 9 do      {in}
     begin
          if i<>1 then writeln;
          for j:=1 to 9 do
              begin
                   if b[i,j]=true then textcolor(red) else textcolor(white);
                   write(a[i,j]:3);
              end;
     end;


     readln
end.
