-- 92. Write a program to print the following series
--  1 1 1 1 1
--  2 2 2 2 2
--  3 3 3 3 3
--  4 4 4 4 4
--  5 5 5 5 5

begin

    for i in 1..5 loop
        for j in 1..5 loop;
            dbms_output.put(i||' ');
        end loop;
            dbms_output.new_line;
        end loop;
end;