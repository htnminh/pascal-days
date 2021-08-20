{DE QUY QSORT}
uses crt;

var a:array[1..1000] of longint;
		i,n:integer;

function check_trung:boolean;
	var i,j:longint; c:boolean;
	begin
		c:=false;
		writeln('Dang check cac so trung nhau...');
		for i:=1 to n-1 do
			for j:=i+1 to n do
				if a[i]=a[j] then c:=true;
		if c=true then begin writeln('Co it nhat 2 so trung nhau!'); writeln; end
			else writeln('Thuat toan QSort duoc the hien o duoi:');
		
		check_trung:=c;
	end;

procedure print;
	var i:longint;
	begin
				for i:=1 to n do write(a[i],' ');
				writeln;
	end;

procedure special_print({index} qsort_dau,qsort_cuoi,pivot_index,swap_index_1,swap_index_2:integer);
	var i:longint;
	begin
		for i:=1 to n do
			begin
				textcolor(white);
				if (qsort_dau<=i) and (i<=qsort_cuoi) then textbackground(yellow)
					else textbackground(black);
				if (i=swap_index_1) or (i=swap_index_2) then textcolor(magenta);
				if i=pivot_index then textcolor(red);
				write(a[i],' ');
			end;
		textbackground(black);
		writeln;
	end;


procedure swap({var_value} var x,y:integer);
	var tg:longint;
	begin tg:=x; x:=y; y:=tg
	end;

procedure qsort({index} i,j:integer);
	var {index} left,right,pivot_index:integer;
			{value} pivot:longint;
	begin
		left:=i; right:=j;
		pivot_index:=(i+j) div 2; pivot:=a[pivot_index]; {pivot o giua}
		while left<right do
			begin
				while a[left]<pivot do inc(left);
				while a[right]>pivot do dec(right);
				if left<right then
					begin special_print(i,j,pivot_index,left,right);
								if left=pivot_index then pivot_index:=right
										else if right=pivot_index then pivot_index:=left;
								swap(a[left],a[right]);
								//left:=i; right:=j;
								//delay(200);
								//print;
					end;
			end;
				if i<pivot_index-1 then qsort(i,pivot_index-1);
				if pivot_index+1<j then qsort(pivot_index+1,j);

	end;

begin
	write('n='); readln(n);
	writeln;
	writeln('Che do nhap bang tay: bam 1, Che do random [-100,100]: bam phim khac');
	writeln;
	if readkey='1' then
		repeat
			writeln('Vui long nhap cac phan tu.');
			for i:=1 to n do begin write('Phan tu ',i,': '); readln(a[i]); end;
			writeln;
		until not check_trung
	else
		begin
			randomize;
			repeat  writeln('Dang random cac so...');
							for i:=1 to n do a[i]:=random(101)-random(101);
			until not check_trung;
		end;
	writeln;
	print;
	qsort(1,n);
	print;
	readln
end.