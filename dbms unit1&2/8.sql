-- 8.Write a program to find the sum of all even numbers from 1 to 100
declare

i number := 2;
res number := 0;

begin
    while i<=100 loop
    res := res+i;
    i := i+2;
    end loop;
    dbms_output.put_line('The sum of all even digit from 1-100 is:'||res);
end;
/