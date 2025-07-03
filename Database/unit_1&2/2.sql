-- Write a program to print the numbers from 1 to 100.
declare

number :=1;
BEGIN
    while I<=100 loop
    dbms_output.put_line(I);
    I := I+1;
    end loop;
END;
/