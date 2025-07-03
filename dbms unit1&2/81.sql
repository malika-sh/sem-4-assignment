-- 81. Write a program to generate sequence of numbers horizontally from 1 to 25

declare
    i number := 1;
begin
    while i <= 25 loop
    dbms_output.put_line(i ||' ');
    i := i+1;
    end loop;
end;
/
