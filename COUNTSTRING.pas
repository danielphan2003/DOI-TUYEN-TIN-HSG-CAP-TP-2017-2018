var
    countstring: longint;
    S: ansistring;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'COUNTSTRING.INP'); reset(f);
    assign(g,'COUNTSTRING.OUT'); rewrite(g);

    readln(f,S);
    close(f)
end;

procedure XuLy;
begin
    S:=S+#32;
    while pos(#32#32,S) <> 0 do delete(S,pos(#32#32,S),1);
    delete(S,1,1);

    countstring:=0;
    while pos(#32,S) <> 0 do
        begin
            inc(countstring);
            delete(S,pos(#32,S),1)
        end;

    writeln(g,countstring)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.