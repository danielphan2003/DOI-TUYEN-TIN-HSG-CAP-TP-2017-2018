var
    i, n, k : integer;
    l: array[1..10010] of longint;
    s, doDai: longint; 
    tmp: integer;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'WIRES.INP'); reset(f);
    assign(g,'WIRES.OUT'); rewrite(g);

    readln(f,n,k);
    for i:=1 to n do readln(f,l[i]);

    close(f)
end;

procedure XuLy;
begin
    s:=0;
    for i:=1 to n do inc(s,l[i]);
    doDai:=trunc(s/k);
    repeat
        tmp:=0;
        for i:=1 to n do inc(tmp,trunc(l[i]/doDai));
        if tmp <> k then dec(doDai)
    until tmp = k;
    writeln(g,doDai)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.