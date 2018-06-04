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
var i, count, tmp : integer;
begin
    if ((a[x,y] = 1) and (a[x+1,y] = 1))
    and ((a[x+1,y-1] = 0) and (a[x+1,y+1] = 0))
    then
        begin
            inc(dem);
            exit
        end;
    
    tmp:=y;
    count:=1;
    while (a[x+1,tmp] = 1)
    and ((a[x+1,tmp-1] <> 0) and (a[x+1,tmp+1] <> 0))
    do
        begin
            inc(x); dec(y);
            inc(count);
            for i:=y to y+count do begin
                if a[x,i] <> 1 then exit
                else a[x,i]:=0; write(g,a[x,i],' ') end;
            writeln(g)
        end;
    inc(dem)
end;

procedure XuLy;
begin
    dem:=0;
    for i:=1 to M do
        for j:=1 to N do 
            if a[i,j] = 1 then doithong(i,j);
    writeln(g,dem)
end;

begin
    init;
    XuLy;
    close(g)
end.