var 
    i, n, s, tmp : longint;
    res, minsum : ansistring;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'MINSUM.INP'); reset(f);
    assign(g,'MINSUM.OUT'); rewrite(g);
    
    readln(f,n,s);
    close(f)
end;

procedure XuLy;
begin
    minsum[1]:=1;
    for i:=N downto 1 do
        begin
            if s - 1 > 9 then 
                begin
                    minsum[i]:=9;
                    s:=s-1
                end
        end;

    writeln(g,res)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.