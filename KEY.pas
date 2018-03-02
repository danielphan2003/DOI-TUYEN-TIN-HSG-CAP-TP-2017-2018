var
    i, n : integer;
    s: string;
    fi, g : text;

procedure NhapFile;
begin
    assign(fi,'KEY.INP'); reset(fi);
    assign(g,'KEY.OUT'); rewrite(g);
    readln(fi,n);
    close(fi)
end;

function sumOf(a: integer): integer;
begin
    sumOf:=0;
    str(a,s);
    for i:=1 to length(s) do
      sumOf:=sumOf+ord(s[i])-48
end;

function f(x: integer): integer;
begin
    if x < 10 then f:=x
    else f:=f(sumOf(x))
end;

begin
    NhapFile;
    writeln(g,f(n));
    close(g)
end.
