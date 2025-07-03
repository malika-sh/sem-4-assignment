-- 19.Find the factorials of numbers from 1 to 10

declare
   fact number :=1;
begin
    for i in 1..10 loop
    fact :=1;
    for j in 1..i loop
    fact :=fact*j;
    end loop;
    dbms_output.put_line('the factorial of'||i||'is: '||fact);
    end loop;
end;
/
