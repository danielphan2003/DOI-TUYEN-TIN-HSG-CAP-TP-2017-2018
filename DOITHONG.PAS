var
    a: array[0..1010,0..1010] of integer;
    i, j, M, N, tmp, dem : integer;
    s: ansistring;
    f, g : text;

procedure init;
begin
    assign(f,'DOITHONG.IN'); reset(f);
    assign(g,'DOITHONG.OUT'); rewrite(g);

    fillchar(a,sizeof(a),0);
    M:=0; N:=0;

    while not eof(f) do
        begin
            inc(M);
            readln(f,s);

            for i:=1 to length(s) do
                if s[i] = '@' then 
                    begin
                        a[M,i]:=1;
                        tmp:=i
                    end;
                    
            if N < tmp then N:=tmp
        end;
    close(f)
end;

procedure doithong(x,y : integer);
begin
    a[x,y]:=0;
    if a[x,y+1]=1 then doithong(x,y+1);
    if a[x+1,y]=1 then doithong(x+1,y);
    if a[x,y-1]=1 then doithong(x,y-1);
    if a[x-1,y]=1 then doithong(x-1,y);
end;

procedure XuLy;
begin
    dem:=0;
    for i:=1 to M do
        for j:=1 to N do 
            if a[i,j] = 1 then 
                begin
                    inc(dem);
                    doithong(i,j)
                end;
    writeln(g,dem)
end;

begin
    init;
    XuLy;
    close(g)
end.