-- Write a program to accept a number and print it in reverse order
declare
n number :=&n;
reminder number :=0;
rev number :=0;
temp number := n;
begin 
    while temp != 0 loop
    reminder := mod(temp,10);
    rev := (rev*10)+ reminder;

    temp := trunc(temp/10);
    end loop;

    dbms_output.put_line('reverse of num '||n||'is'||rev);
end;
/