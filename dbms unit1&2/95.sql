-- 95. Write a program to print the following series
--  5 5 5 5 5
--  4 4 4 4
--  3 3 3
--  2 2
--  1

begin 
    for i in reverse 1..5 loop
        for j in reverse 1..i loop
            dbms_output.put(i||' ');
        end loop;
        dbms_output.new_line;
    end loop;
end;
/