-- 90. Write a program to print the following series
-- 1
-- 2 1
-- 3 2 1
-- 4 3 2 1
-- 5 4 3 2 1
 begin
    for i in 1..5 loop
    for j in reverse 1..i loop
        dbms_output.put(j||' ');
    end loop;
        dbms_output.new_line;
    end loop;
end;
/