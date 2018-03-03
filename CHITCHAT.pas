var
    chitchat: string;
    S: ansistring;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'CHITCHAT.INP'); reset(f);
    assign(g,'CHITCHAT.OUT'); rewrite(g);
    
    readln(f,S);
    close(f)
end;

procedure XuLy;
begin
    chitchat:='NO';

    if (pos('h',S) < pos('e',S))
    and (pos('e',S) < pos('l',S))
    then
        begin
            delete(S,pos('l',S),1);
            if (pos('l',S) <> 0) and (pos('l',S) < pos('o',S))
            then chitchat:='YES'
        end;

    writeln(g,chitchat)
end;

begin
   NhapFile;
   XuLy;
   close(g) 
end.