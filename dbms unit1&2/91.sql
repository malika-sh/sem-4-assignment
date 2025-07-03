-- 91. Write a program to print the following series
--  1 2 3 4 5
--  1 2 3 4
--  1 2 3
--  1 2
--  1

begin 
    for i in reverse 1..5 loop
        for j in 1..i loop
        dbms_output.put(j||' ');
    end loop;
        dbms_output.new_line;
    end loop;
end;
