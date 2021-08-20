uses crt;
var k,m,l,d,x,i,min,max:integer;
function ngto(a:integer):boolean;
         var i,d:integer;
         begin
              d:=0;
              for i:=1 to a do if a mod i=0 then d:=d+1;
              if d=2 then ngto:=true else ngto:=false;
         end;
function tongcs(a:integer):integer;
         var a1,tongcs1:integer;
         begin
              tongcs1:=0; a1:=a;
              while a1<>0 do
                    begin
                         tongcs1:=tongcs1+a1 mod 10;
                         a1:=a1 div 10;
                    end;
         tongcs:=tongcs1;
         end;
function tonguoc(a:integer):integer;
         var i,tonguoc1:integer;
         begin
              tonguoc1:=0;
              for i:=1 to a do
                  if i mod a=0 then tonguoc1:=tonguoc1+i;
              tonguoc:=tonguoc1;
         end;
begin
     clrscr;
     repeat
           write('m='); readln(m);
           write('k='); readln(k);
     until (1<=k) and (k<=4) and (1<=m) and (m<=10000);

     case k of
        1: begin min:=1;    max:=9;    end;
        2: begin min:=10;   max:=99;   end;
        3: begin min:=100;  max:=999;  end;
        4: begin min:=1000; max:=9999; end;
     end;
     writeln(min,' ',max);

     l:=0; d:=0;
     for i:=min to max do
         begin
              if ngto(tongcs(i)) then l:=l+1;
              if tonguoc(i)=m then d:=d+1;
         end;
     writeln(l); writeln(d);

     x:=0;
     for i:=m downto 1 do if tonguoc(i)>=x then x:=tonguoc(i);
     writeln(x);



     readln;
end.
