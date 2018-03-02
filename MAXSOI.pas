var
    mid, maxsoi : longint;
    n, m : longint;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'MAXSOI.INP'); reset(f);
    assign(g,'MAXSOI.OUT'); rewrite(g);

    readln(f,N,M);
    close(f)
end;

procedure XuLy;
begin
    mid:=0;
    maxsoi:=0;
    while odd(N) and odd(M) do 
        begin
            n:=n div 2+1;
            m:=m div 2+1;
            inc(mid);
            inc(maxsoi,4)
        end;

    writeln(g,maxsoi+mid)

end;

begin
    NhapFile;
    XuLy;
    close(g)
end.