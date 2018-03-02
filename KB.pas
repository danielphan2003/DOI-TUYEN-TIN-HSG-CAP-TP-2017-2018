var
    i, n, change : longint;
    S: string;
    c: char;
    dem: array['a'..'z'] of longint;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'KB.INP'); reset(f);
    assign(g,'KB.OUT'); rewrite(g);

    readln(f,n);
    readln(f,S);

    close(f);
end;

procedure XuLy;
begin
    if n > 26 then 
        begin
            writeln(g,-1);
            close(g);
            halt
        end;

    fillchar(dem,sizeof(dem),0);
    for i:=1 to n do inc(dem[S[i]]);

    change:=0;
    for c:='a' to 'z' do
        if dem[c] > 0 then
            while dem[c] <> 1 do
                begin
                    inc(change);
                    dec(dem[c])
                end;

    writeln(g,change)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.