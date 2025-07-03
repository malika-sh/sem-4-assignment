-- 94. Write a program to print the following series
--  5 4 3 2 1
--  5 4 3 2
--  5 4 3
--  5 4
--  5

begin 
    for i in 1..5 loop
        for j in reverse i..5 loop
            dbms_output.put(j||' ');
        end loop;
            dbms_output.new_line;
    end loop;
end;
/