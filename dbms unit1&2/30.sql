declare
    p number(10,2) := &p;
    n number := &n;
    roi number(10,2) := &roi;
    t number :=&t;
    
    ci number(10,2);
begin
    ci := (p * power((1+roi/n), (n*t))) -p;
    dbms_output.put_line('compund interest is:'|| to_char(ci,'999999.99'));
end;
/