var

procedure NhapFile;
begin
    assign(f,'WEIGHTS.INP'); reset(f);
    assign(g,'WEIGHTS.OUT'); rewrite(g);

    readln(f,n);
    close(f)
end;

function hammu(a, x : longint): longint;
begin
    hammu:=a;
    for i:=2 to x do
        hammu:=hammu*a
end;

procedure XuLy(a: longint);
begin
    i:=0;
    repeat
        i:=i+1;
        three:=hammu(3,i);
        a:=a-three
    until abs(a) <> a;
    if abs(a) = three then 
        begin
            right:=i-1;
            exit
        end
    else XuLy(a+three)
end;