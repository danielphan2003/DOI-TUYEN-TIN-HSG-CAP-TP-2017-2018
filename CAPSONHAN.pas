const giatriD: array[1..9] of integer = (3,2,1,1,1,1,1,1,1);
var 
    i, j : integer;
    g: text;

procedure XuLy;
begin
    for i:=1 to 9 do
      for j:=1 to giatriD[i] do
        writeln(g,i*(100+10*j+j*j))
end;

begin
    assign(g,'CAPSONHAN.OUT'); rewrite(g);
    XuLy;
    close(g)
end.