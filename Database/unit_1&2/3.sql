--  Write a program to print the even numbers from 1 to 100.

declare

number :=2;

BEGIN
    while I<=100 loop
    dbms_output.put_line(I);
    I := I+2;
    end loop;
END;
/