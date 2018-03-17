var
    i, j, k : integer;
    x1, x2, y1, y2 : integer;
    m, n, dem, max, S, Schung : integer;
    hcn: array[0..100, 0..100] of integer;
    f, g : text;

procedure switch(var a, b : integer);
var tmp: integer;
begin 
    tmp:=a;
    a:=b;
    b:=tmp
end;

procedure init;
begin
    assign(f,'HCN.INP'); reset(f);
    assign(g,'HCN.OUT'); rewrite(g);
    
    readln(f,m,n);
    fillchar(hcn,sizeof(hcn),0);

    readln(f,dem);
    max:=0;
    for i:=1 to dem do
        begin
            readln(f,x1,y1,x2,y2);
            if x1 > x2 then 
                begin
                    switch(x1,x2);
                    if y1 > y2 then switch(y1,y2)
                end;

            for j:=x1 to x2 do
                for k:=y1 to y2 do
                    if hcn[j,k] >= 1 then
                        begin
                            inc(hcn[j,k]);
                            if max < hcn[j,k] then max:=hcn[j,k]
                        end
                    else hcn[j,k]:=1
        end;
    close(f)
end;

procedure XuLy;
begin
    S:=0;
    Schung:=0;
    for i:=0 to m do
        for j:=0 to n do
            begin
                if hcn[i,j] >= 1 then inc(S);
                if hcn[i,j] = max then inc(Schung)
            end;
    writeln(g,S,' ',Schung)
end;

begin
    init;
    XuLy;
    close(g)
end.