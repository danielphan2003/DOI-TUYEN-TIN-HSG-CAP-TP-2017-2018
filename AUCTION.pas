var
    i, A, B, dem : longint;
    f, g : text;

procedure NhapFile;
begin
    assign(f,'AUCTION.INP'); reset(f);
    assign(g,'AUCTION.OUT'); rewrite(g);
    
    readln(f,A,B);

    close(f)
end;
{
procedure initPalind;
begin
    str(A,S1);
    str(B,S2);

    tam:=copy(S2,1,length(S2) div 2);
    val(tam,cuoi,k);

    for i:=
end;
}

procedure initPrime;
var i,j:longint;
begin
    fillchar(P,sizeof(P),true);
    P[1]:=false;
    i:=2;
    while i<=trunc(sqrt(B)) do
            begin
                while P[i]=false do
                    inc(i);
                for j:=2 to B div i do
                    P[i*j]:=false;
                inc(i)
            end
end;

function binFind()

function isPalindPrime(a: longint): boolean;
var
    i: longint;
    s1, s2 : string;
begin
    isPalindPrime:=true;

    //Palindrome check
    str(a,s1);
    s2:='';
    for i:=length(s1) downto 1 do
        s2:=s2+s1[i];
    if s1 = s2 then
        begin
            //Prime check
            if (a = 0) or (a = 1) then exit(false);
            if (a = 2) then exit(true);
            for i:=2 to trunc(sqrt(a)) do
                if a mod i = 0 then exit(false);
        end
end;

procedure XuLy;
begin
    dem:=0;
    for i:=A to B do
        if isPalindPrime(i) then inc(dem);
    
    writeln(g,dem)
end;

begin
    NhapFile;
    XuLy;
    close(g)
end.