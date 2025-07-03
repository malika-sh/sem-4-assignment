-- 93. Write a program to print the following series
--  1 2 3 4 5
--  1 2 3 4 5
--  1 2 3 4 5
--  1 2 3 4 5
--  1 2 3 4 5

begin
    for i in 1..5 loop
        for j in 1..5 loop
            dbms_output.put(j||' ');
        end loop;
        dbms_output.new_line;
    end loop;
end;
/