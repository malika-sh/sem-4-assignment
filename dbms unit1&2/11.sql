-- 11. Write a program to accept a number and print it in reverse order

-- write a simple logic of reversing a number 
-- keep in mind when using NUMBER data type we can't use % or /
-- we have to use TRUC for division (it removes the fractional part after .) and MOD for modulo

-- because we are using NUMBER not decimals

declare
    n number :=&n;
    reminder number := 0;
    rev number := 0;
    temp number := n;
begin
    while temp != 0 loop
    reminder := mod(temp,10);
    rev := (rev *10) + reminder;

    temp := trunc(temp/10);
    end loop;

    dbms_output.put_line('reverse of num'||n||'is'||rev);
end;
/