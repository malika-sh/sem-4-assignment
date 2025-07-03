-- 4. Write a program to print the odd numbers from 1 to 100

declare

I number := 1;
BEGIN
    while i <= 100 loop
    dbms_output.put_line(i);
    i := i+2;
    end loop;
end;
/