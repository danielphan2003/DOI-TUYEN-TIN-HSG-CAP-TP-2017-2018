procedure qs(l,r:integer);
var pivot,i,j,tmp:integer;
    begin
        pivot:=a[(l+r) div 2]; {lấy phần tử ở giữa mảng}
        i:=l; j:=r;
        repeat
            while a[i] < pivot do inc(i);{tìm phần tử đầu tiên nằm bên trái mảng lớn hơn phần tử ở giữa}
            while a[j] > pivot do dec(j);{tìm phần tử đầu tiên nằm bên phải mảng bé hơn phần tử ở giữa}
            if i <= j then {cái này thì không bít nói sao tự hiểu nha!!!}
                begin {tráo 2 phần vừa tìm được trên 2 cái while}
                    tmp:=a[i];
                    a[i]:=a[j];
                    a[j]:=tmp;
                    inc(i); dec(j);
                end;
        until i>j;
        if l < j then qs(l,j);{2 cái này dùng đệ quy sort tiếp}
        if r > i then qs(i,r);
    end;