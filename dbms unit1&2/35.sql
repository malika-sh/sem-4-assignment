declare
    n number := &n;
    fact number;
    res number;
    s number(10,2) :=0;
begin
    for i in 1..n loop
    fact := 1;
    for j in 1.. i loop
    fact := fact*j;
    end loop;
    res :=1/fact;
    s := s+res;
    end loop;
    dbms_output.put_line('the sum till '||n||'is'||s);
end;
/