var

procedure NhapFile;
begin
    assign(f,'TABLEMAX.INP'); reset(f);
    assign(g,'TABLEMAX.OUT'); rewrite(g);
    
    readln(f,M,N);
    for i:=1 to M do
        begin
            for j:=1 to N do read(f,A[i,j]);
            readln(f)
        end;
    
    close(f)
end;

procedure XuLy;
begin
    for k:=1 to M do
        begin
            i:=1;
            j:=1;
            repeat
                inc(i);
                if A[i,j] <> 0 then tablemax:=tablemax+A[i,j];
                if (i = M) and (j <> N) then
            until (i = M-k+1) and  (j = N) 
        end;
end;