{ BÀI 2 }
var
    i, N, K, maxrange, dem, tmp1 : longint;
    j: integer;
    s: string;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'NEXTK.INP'); reset(f);
    assign(g,'NEXTK.OUT'); rewrite(g);

    readln(f,K);
    readln(f,N);

    close(f);
end;

{
procedure sorta(var a: string; l,r:longint);
var 
    pivot, i, j : longint;
    tmp: char;
begin
    pivot:=ord(a[(l+r) div 2]); 
    i:=l; j:=r;
    repeat
        while ord(a[i]) > ord(pivot) do inc(i);
        while ord(a[j]) < ord(pivot) do dec(j);
        if i <= j then 
            begin 
                tmp:=a[i];
                a[i]:=a[j];
                a[j]:=tmp;
                inc(i); dec(j);
            end;
    until i > j;
    if l < j then sorta(a,l,j);
    if r > i then sorta(a,i,r);
end;

procedure sortd(var a: string; l,r:longint);
var 
    pivot, i, j : longint;
    tmp: char;
begin
    pivot:=ord(a[(l+r) div 2]); 
    i:=l; j:=r;
    repeat
        while ord(a[i]) < ord(pivot) do inc(i);
        while ord(a[j]) > ord(pivot) do dec(j);
        if i <= j then 
            begin 
                tmp:=a[i];
                a[i]:=a[j];
                a[j]:=tmp;
                inc(i); dec(j);
            end;
    until i > j;
    if l < j then sortd(a,l,j);
    if r > i then sortd(a,i,r);
end;

procedure XuLy;
begin
    str(N,s);

    sortd(s,1,length(s));
    val(s,N,j);

    sorta(s,1,length(s));
    val(s,maxrange,j);

    dem:=-1;
    for i:=N to maxrange do
        begin
            str(i,s);
            sortd(s,1,length(s));
            val(s,tmp1,j);

            if tmp1 = N then inc(dem);
            if ((i = maxrange) and (dem <> k)) 
            or (dem = K) then 
                begin
                    writeln(g,i);
                    break
                end
        end

end;
}

procedure XuLy;
begin
    
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.