var
        i, j, n, start, ends : integer;
        S, sum : real;
        A : array[1..20] of longint;
        f, g : text;

procedure NhapFile;
begin
        assign(f,'SUBARRAY.INP'); reset(f);
        assign(g,'SUBARRAY.OUT'); rewrite(g);

        readln(f,n,S);
        for i:=1 to n do read(f,A[i]);

        close(f)
end;

procedure XuLy;
begin
        start:=0;
        ends:=0;
        for i:=1 to n do
                begin
                        sum:=0;
                        for j:=i to n do
                                begin
                                        sum:=sum+A[j];
                                        if sum = S then
                                                begin
                                                        start:=i;
                                                        ends:=j;
                                                        break
                                                end
                                end
                end;
        if ((start = 0) and (ends = 0)) or (n = 1) then writeln(f,'$')
        else
                for i:=start to ends do write(g,A[i],' ')
end;

begin
        NhapFile;
        XuLy;
        close(g)
end.
