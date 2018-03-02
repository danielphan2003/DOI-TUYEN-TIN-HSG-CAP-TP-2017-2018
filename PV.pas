var
    i, j, M, N, dem, S : integer;
    A: array[0..101, 0..101] of integer;
    B: array[1..101] of integer;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'PV.INP'); reset(f);
    assign(g,'PV.OUT'); rewrite(g);

    readln(f,M,N);

    fillchar(A,sizeOf(A),0);
    for i:=1 to M do
        begin
            for j:=1 to N do read(f,A[i,j]);
            readln(f)
        end;

    close(f);
end;

procedure qs(l, r : integer);
var pivot, i, j, tmp : integer;
begin
    pivot:=B[(l+r) div 2]; 
    i:=l; j:=r;
    repeat
        while B[i] < pivot do inc(i);
        while B[j] > pivot do dec(j);
        if i <= j then 
            begin
                tmp:=B[i];
                B[i]:=B[j];
                B[j]:=tmp;
                inc(i); dec(j)
            end
    until i > j;
    if l < j then qs(l,j);
    if r > i then qs(i,r)
end;

procedure connect(row, col : integer);
begin
    A[row,col]:=0;
    inc(S);
    if A[row+1,col] = 1 then connect(row+1,col);
    if A[row-1,col] = 1 then connect(row-1,col);
    if A[row,col+1] = 1 then connect(row,col+1);
    if A[row,col-1] = 1 then connect(row,col-1)
end;

procedure XuLy;
begin
    dem:=0;
    for i:=0 to M+1 do
        for j:=0 to N+1 do
            if A[i,j] <> 0 then 
                begin
                    inc(dem);
                    S:=0;
                    connect(i,j);
                    B[dem]:=S
                end;

    if dem = 0 then writeln(g,0)
    else
        begin
            qs(1,dem);
            for i:=1 to dem do
                writeln(g,B[i])
        end
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.