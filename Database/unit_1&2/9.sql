-- Write a program to accept a number and find how many digits it contain
declare
    n number(5) :=&n;
    counter number :=0;
    reminder number(2) :=0;
begin
    while n !=0 loop
    reminder := mod(n,10);
    counter := counter+1;
    n := n/10;
    end loop;
    dbms_output.put_line('number of digits given is'||counter);
end;
/

