var
    i, M, N : integer;
    minA, minB : longint;
    maxA, maxB :longint;
    PT: string[3];
    f, g : text;

procedure NhapFile;
begin
    assign(f,'CONGSO.INP'); reset(f);
    assign(g,'CONGSO.OUT'); rewrite(g);

    readln(f,M,N,PT);
    close(f)
end;

procedure XuLy;
begin
    maxA:=A[1];
    minA:=A[1];
    for i:=2 to M do
        begin
            if maxA < A[i] then maxA:=A[i];
            if minA > A[i] then minA:=A[i]
        end;
    
    maxB:=B[1];
    minB:=B[1];
    for i:=2 to N do
        begin
            if maxB < B[i] then maxB:=B[i];
            if minB > B[i] then minB:=B[i]
        end;

    case PT of
        'PT1': writeln(g,minA+minB);
        'PT2': writeln(g,maxA+maxB);
        'PT3': writeln(g,minA+maxB);
        'PT4': writeln(g,maxA+minB)
    end
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.