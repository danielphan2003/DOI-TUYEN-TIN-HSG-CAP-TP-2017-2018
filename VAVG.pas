var
    i, N, s, time : longint;
    K, T : array[1..2010] of longint;
    tmp: char;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'VAVG.INP'); reset(f);
    assign(g,'VAVG.OUT'); rewrite(g);

    readln(f,N);
    for i:=1 to N do readln(f,tmp,K[i],T[i]);

    close(f);
end;

procedure XuLy;
begin
    for i:=1 to N do 
        begin
            s:=s+K[i];
            time:=time+T[i]
        end;
    writeln(g,s/time:0:2)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.