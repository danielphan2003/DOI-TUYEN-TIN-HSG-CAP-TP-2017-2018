var
        i, k : integer;
        A : array[1..1010] of integer;
        f, g : text;

procedure BaoLoi;
begin
        writeln(g,'Vuot pham vi khai bao!');
        close(g);
        halt
end;

procedure  NhapFile;
begin
        assign(f,'NGTOGHEP.INP'); reset(f);
        assign(g,'NGTOGHEP.OUT'); rewrite(g);

        readln(f,k);
        close(f);

        if k > 500 then BaoLoi
end;

function isPrime(b : integer): boolean;
var i : integer;
begin
        if (b = 0) or (b = 1) then exit(false);
        if b = 2 then exit(true);
        for i:=2 to trunc(sqrt(b)) do
                if b mod i = 0 then exit(false);
        exit(true)
end;

procedure XuLy;
begin
        i:=0;
        while i <= k*2 do
                begin
                        inc(i);
                        while not isPrime(A[i]) do inc(A[i]);
                        A[i+1]:=A[i]+1
                end;

        for i:=1 to k do writeln(g,A[i*2-1],A[i*2],' ')
end;

begin
        NhapFile;
        XuLy;
        close(g)
end.
