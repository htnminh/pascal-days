uses crt;
var a,b,x,abcd,x1,x2:longint;
    amn,abm,mcn,nda,maxamn,minamn:real;
    inp,out:text;
procedure tinhs;
          begin
               abm:=a*x/2;
               mcn:=(b-x)*x/2;
               nda:=(a-x)*b/2;
               abcd:=a*b;
               amn:=abcd-abm-mcn-nda;
          end;


begin
     assign(inp,'d:\Minh\CAU2.inp');
     assign(out,'d:\Minh\CAU2.out');
     reset(inp); rewrite(out);
     read(inp,a,b);
     maxamn:=0;

     x:=0;
     tinhs;
     minamn:=abcd-abm-mcn-nda;


     for x:=0 to b do
         begin
              tinhs;
              if amn>maxamn then begin maxamn:=amn;
                                       x1:=x;
                                 end;
              if amn<minamn then begin minamn:=amn;
                                       x2:=x;
                                 end;
         end;

     writeln(out,maxamn:5:1);
     writeln(out,x1);
     writeln(out,minamn:5:1);
     writeln(out,x2);
     close(inp); close(out);
     writeln('Da xong =))');
     readln;
end.