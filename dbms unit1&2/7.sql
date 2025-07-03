-- 7.Write a program to find the sum of all odd numbers from 1 to 100

declare

i number := 1;
res number :=0;
begin
    while i< 100 loop
    res := res+i;
    i := i+2;
    end loop;
    dbms_output.put_line('The sum of all odd digits from 1-100 is:'||res);
end;
/