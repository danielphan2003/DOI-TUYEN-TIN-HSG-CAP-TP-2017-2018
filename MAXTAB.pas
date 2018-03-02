type arr = array[0..110, 0..110] of longint;
var
    c, s : arr;
    i, j, n : longint;
    L, x, res : longint;
    i1, j1 : longint;
    i2, j2 : longint;
    f, g : text;

function max(a,b : longint): longint; 
begin 
    if a > b then max:=a 
    else max:=b; 
end;

function sum(a: arr; i1,j1,i2,j2: longint): longint; 
begin 
    sum:=a[i2,j2]-a[i1-1,j2]-a[i2,j1-1]+a[i1-1,j1-1]; 
end;

procedure NhapFile;
begin
    assign(f,'MAXTAB.INP'); reset(f);
    assign(g,'MAXTAB.OUT'); rewrite(g);

    readln(f,N);
    for i:=1 to N do
        begin
            for j:=1 to N do 
                begin
                    read(f,x); 
                    s[i,j]:=s[i-1,j] + s[i,j-1] - s[i-1,j-1] + x; 
                    c[i,j]:=c[i-1,j] + c[i,j-1] - c[i-1,j-1]; 
                    if (x = 0) then inc(c[i,j]);
                end;
            readln(f)
        end;

    close(f);
end;

procedure XuLy;
begin
    res:=0; 
    for i1:=1 to n do 
        for j1:=1 to n do 
            begin 
                L:=0; 
                repeat 
                    i2:=i1+L; 
                    j2:=j1+L; 
                    if sum(c,i1,j1,i2,j2) = 0 then res:=max(res,sum(s,i1,j1,i2,j2)) 
                    else break; 
                    inc(L)
                until (i2 > n) or (j2 > n)
            end; 
            
    writeln(g,res);
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.