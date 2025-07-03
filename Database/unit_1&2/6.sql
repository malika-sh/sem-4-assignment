-- Write a program to find the sum of numbers from 1 to 100
declare

i number :=1;
res number :=0;
BEGIN
    while i<100 loop
    res := res+i;
    i := i+1;
    end loop;
    dbms_ouypuy.put_line('the sum of 1-100 is:'||res);
end;
/