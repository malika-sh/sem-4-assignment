-- 18. Write a program to accept a number and find the factorial of the number

declare
    num number := &num;
    fact number := 1;
begin
    for i in 1 .. num loop
    fact := fact*i;
    end loop;
    dbms_output.put_line('th factorial of'||num||'is:'||fact);
end;
/