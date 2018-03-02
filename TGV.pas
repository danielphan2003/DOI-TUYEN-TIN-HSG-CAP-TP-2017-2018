var

procedure NhapFile;
begin
    assign(f,'TGV.INP'); reset(f);
    assign(g,'TGV.OUT'); rewrite(g);

    readln(f,n);
    for i:=1 to n do read(f,a[i]);
    readln(f);
    for i:=1 to n do read(f,b[i]);
    readln(f);
    for i:=1 to n do read(f,c[i]);

    close(f);
end;

procedure XuLy;
begin
    for i:=1 to n do
        for j:=1 to n do
            for k:=1 to n do
                if sin
end;