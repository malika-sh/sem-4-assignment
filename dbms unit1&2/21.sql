-- 21.Write a program to accept a number and print the multiplication tables upto soo (i think they meant num to num + 1)

-- ex user enter 5 tables from 5 to 10 printed

declare
num number := &num;
res number;
begin
    for i in num..num+5 loop
    for j in 1..10 loop
    res :=i*j;
    dbms_output.put_line(i||'x'||j||'='||res);
    end loop;

    dbms_output.put_line('---------------');
    end loop;
end;
/