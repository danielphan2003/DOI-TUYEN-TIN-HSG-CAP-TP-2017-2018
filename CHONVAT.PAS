var
    i, j, N, P, dem, sumP : integer;
    W, C, A : array[1..15] of integer;
    f: array[0..1000, 0..1000] of integer;
    fi, g : text;

procedure NhapFile;
begin
    assign(fi,'CHONVAT.INP'); reset(fi);
    assign(g,'CHONVAT.OUT'); rewrite(g);

    readln(fi,N,P);
    for i:=1 to N do read(fi,W[i]);
    readln(fi);
    for i:=1 to N do read(fi,C[i]);

    close(fi)
end;

procedure ToiUu; //Tính bảng phương án bằng công thức truy hồi
var i, j: Integer;
begin
    for i:=1 to N do
        for j:=0 to P do
            begin //Tính F[i, j]
                F[i,j]:=F[i-1,j]; //Giả sử không chọn gói thứ i thì F[i, j] = F[i - 1, j]

                //Sau đó đánh giá: nếu chọn gói thứ i sẽ được lợi hơn thì đặt lại F[i, j]
                if (j >= W[i]) and (F[i,j] < F[i-1,j-W[i]]+C[i])
                then F[i,j]:=F[i-1,j-W[i]]+C[i]
            end
end;

procedure XuLy;
begin
    ToiUu;
    i:=N; j:=P;
    sumP:=0; dem:=0;

    while i <> 0 do
        begin
            if f[i,j] <> f[i-1,j] then 
                begin
                    inc(dem);
                    a[dem]:=i;
                    sumP:=sumP+W[i];
                    j:=j-W[i]
                end;
            dec(i)
        end;

    writeln(g,sumP,' ',f[N,P]);
    for i:=dem downto 1 do write(g,a[i],' ')
end;

begin
    NhapFile;
    XuLy;
    close(g)  
end.