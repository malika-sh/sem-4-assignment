-- 16. Write a program to display the fibonacci series from 1 to 10

declare
   num1 number :=0;
   num2 number :=1;
   nextnum number;
begin
    for i in 0..10 loop
        dbms_output.put_line(num1);
        nextnum := num1+num2;
        num1 :=num2;
        num2 := nextnum;
    end loop;
    
end;
/