var
    i, n : longint;
    a: array[1..100010] of longint;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'MAX.INP'); reset(f);
    assign(g,'MAX.OUT'); rewrite(g);

    readln(f,n);
    for i:=1 to n do read(f,a[i]);

    close(f)
end;

procedure swap(var a, b : longint);
begin
    inc(a,b);
    b:=a-b;
    dec(a,b)
end;

procedure QuickSort(j, k : longint);
var 
    lows, high, start : longint;
    randPos, randVal : longint;
begin
    start:=1;
	lows:=j;
	high:=k;
	if j = k then exit;
	randPos:=(j+k) div 2 - 1;
	randVal:=a[randPos];
	while lows < high do 
		begin
			while (lows < high) and (a[lows] > randVal) do inc(lows);
			while (lows < high) and (a[high] < randVal) do dec(high);
			if lows < high then swap(a[lows],a[high])
		end;
	QuickSort(start,lows);
	if lows = start then QuickSort(lows+1,k);
	if lows <> start then QuickSort(lows,k)
end;

procedure XuLy;
begin
    QuickSort(1,n);
    writeln(g,a[1]*a[2]*a[3])
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.