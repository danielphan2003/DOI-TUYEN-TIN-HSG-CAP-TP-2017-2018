var
    i, N: integer;
    s, b1, b2, res: string;
    f, g : text;

procedure split;
begin
    readln(f,s);
    b1:=copy(s,1,pos(#32,s)-1);

    delete(s,1,pos(#32,s));
    delete(s,length(s),1);
    b2:=s;
    write(g,b1,'+',b2,'=')
end;

procedure cnp(a, b : string);
var 
    i: integer;
    s1, s2, sum, carry : boolean;
begin
    while length(a) < length(b) do a:='0'+a;
    while length(b) < length(a) do b:='0'+b;

    res:='';
    carry:=false;
    for i:=length(a) downto 1 do
        begin
            if (a[i] = '1') and (b[i] = '1') then
                begin
                    if carry = '1' then sum:='1'
                    else 
                        begin
                            sum:='0';
                            carry:='1'
                        end
                end
            else 
                if (not (a[i] = '0')) or (not (b[i] = '0')) then
                    begin
                        if carry = '1' then
                            begin
                                sum:='0';
                                carry:='1'
                            end
                        else sum:='0'
                    end;
        end;
    if carry then res:='1'+res
end;

procedure NhapFile;
begin
    assign(f,'CNP.INP'); reset(f);
    assign(g,'CNP.OUT'); rewrite(g);

    readln(f,N);
    for i:=1 to N do
        begin
            split;
            cnp(b1,b2);
            writeln(g,res)
        end;
    close(f);
end;

begin
    NhapFile;
    close(g)
end.