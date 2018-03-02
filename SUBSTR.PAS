var
    i, j, dem : longint;
    S, max, sub : string;
    a: array[1..255] of string;
    f, g : text;

function isSubStr(subStr: string): boolean;
var i: integer;
begin
    if length(subStr) = 1 then exit(false);
    for i:=1 to length(subStr)-1 do
        if ord(subStr[i+1]) < ord(subStr[i]) then exit(false);
    exit(true)
end;

procedure NhapFile;
begin
    assign(f,'SUBSTR.INP'); reset(f);
    assign(g,'SUBSTR.OUT'); rewrite(g);

    readln(f,S);
    close(f)
end;

procedure XuLy;
begin
    i:=0;
    dem:=0;
    while i <= length(S) do
        begin
            inc(i);
            sub:=s[i];
            for j:=i+1 to length(S) do
                if (s[i] <> s[j]) and (pos(s[j],sub) = 0) then sub:=sub+s[j]
                else 
                    begin
                        delete(sub,length(sub),1);
                        inc(dem);
                        i:=j-2;
                        a[dem]:=sub;
                        sub:='';
                        break
                    end;
        end;
    max:=a[1]; writeln(g,'a[1]=',a[1]);
    for i:=2 to dem do
    begin
    writeln(g,'a[',i,']=',a[i]);
        if length(max) < length(a[i]) then max:=a[i];
end;
    if dem = 0 then writeln(g,0,' ',0)
    else writeln(g,pos(max,S),' ',length(max));

end;

begin
   NhapFile;
   XuLy;
   close(g)
end.
