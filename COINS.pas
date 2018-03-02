var
    n, m, prev, i : integer;
    a, b : array[1..1010] of integer;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'COINS.INP'); reset(f);
    assign(g,'COINS.OUT'); rewrite(g);

    readln(f,n,m);
    for i:=1 to n do read(f,a[i]);
    readln(f);
    for i:=1 to n do read(f,b[i]);

    close(f)
end;

procedure XuLy;
begin
    prev:=m;
    for i:=1 to n do
        if a[i]+prev >= b[i] then prev:=a[i]+prev;
    writeln(g,prev)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.