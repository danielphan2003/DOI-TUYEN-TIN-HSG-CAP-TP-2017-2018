var
    i, j, n, soLuong : longint;
    x, y : array[1..500010] of longint;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'DAYSO.INP'); reset(f);
    assign(g,'DAYSO.OUT'); rewrite(g);

    readln(f,n);
    for i:=1 to n do read(f,x[i]);
    readln(f);
    for i:=1 to n do read(f,y[i]);

    close(f)
end;

procedure XuLy;
begin
    soLuong:=0;
    for i:=1 to n do
         for j:=1 to n do
            if x[i] = y[j] then inc(soLuong);
    writeln(g,soLuong)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.