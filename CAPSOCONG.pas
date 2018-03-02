const soLe: array[1..5] of integer = (1, 3, 5, 7, 9);
var 
    i, j : integer;
    g : text;

procedure XuLy;
begin
    for i:=1 to 5 do
      for j:=1 to 5 do
        writeln(g,105*soLe[i]+6*soLe[j])
end;

begin
    assign(g,'CAPSOCONG.OUT'); rewrite(g);
    XuLy;
    close(g)
end.