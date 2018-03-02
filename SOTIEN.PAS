var
    i, A, B, D : integer;
    tmp: longint;
    yeucau: boolean;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'SOTIEN.INP'); reset(f);
    assign(g,'SOTIEN.OUT'); rewrite(g);

    readln(f,A,B,D);
    close(f)
end;

function isSoTien(soTien: longint): boolean;
var
    i: integer;
    s: string;
begin
    s:='';
    str(soTien,s);
    for i:=1 to length(s)-1 do
        if ord(s[i+1]) - ord(s[i]) < D then exit(false);
    exit(true)
end;

function Dec2Oct(so: longint): longint;
var
    k: byte;
    s: string[6];
begin
    s:='';
    repeat
        s:=chr((so mod 8)+48)+s;
        so:=so div 8
    until so = 0;
    val(s,Dec2Oct,k)
end;

procedure XuLy;
begin
    yeucau:=false;
    for i:=A to B do
        begin
            tmp:=Dec2Oct(i);
            if (isSoTien(i)) and (not isSoTien(tmp)) then
                begin
                    yeucau:=true;
                    writeln(g,i,' ',tmp)
                end
        end;
    if not yeucau then writeln(g,0,' ',0)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.
