var 

procedure NhapFile;
begin
    assign(f,'MAXSUMCR.INP'); reset(f);
    assign(g,'MAXSUMCR.OUT'); rewrite(g);
    
    readln(f,N,M);
    for i:=1 to N do
        begin
           for j:=1 to M do read(f,A[i,j]);
           readln(f)
        end;

    close(f)
end;

procedure XuLy;
begin
    maxcol:=0;
    maxrow:=0;
    for i:=1 to N do
        begin
            maxcol:=max
        end;
end;