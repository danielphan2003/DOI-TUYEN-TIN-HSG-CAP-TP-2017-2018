var
    i, N, dem : longint;
    F: array[0..1000] of longint;
    s, tmp : string;
    fi, g : text;

procedure NhapFile;
begin
    assign(fi,'FIBO.INP'); reset(fi);
    assign(g,'FIBO.OUT'); rewrite(g);

    readln(fi,N);
    close(fi)
end;

procedure XuLy;
begin
    F[0]:=1;
    F[1]:=1;
    dem:=1;
    while F[dem] < N do
        begin
            inc(dem);
            F[dem]:=F[dem-1]+F[dem-2]
        end;

    while F[dem] > n do dec(dem);
    dec(dem);
    dec(n,F[dem]); 
    
    while n > 0 do
        begin
            dec(dem);
            if n >= F[dem] then
                begin
                    dec(n,F[dem]);
                    str(F[dem],tmp);
                    s:=s+tmp
                end
        end;
    
    writeln(g,s)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.