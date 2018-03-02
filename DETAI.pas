var
    i, j, N, dem : integer;
    A: array[1..1010] of integer;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'DETAI.INP'); reset(f);
    assign(g,'DETAI.OUT'); rewrite(g);

    readln(f,n);
    for i:=1 to n do read(f,A[i]);

    close(f);
end;

procedure XuLy;
begin
    for i:=1 to n-1 do
        for j:=i+1 to n do
            if A[i] = A[j] then A[j]:=0;

    dem:=0;
    for i:=1 to n do
        if A[i] <> 0 then inc(dem);

    writeln(g,dem)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.