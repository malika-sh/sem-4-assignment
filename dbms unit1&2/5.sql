-- 5. Write a program for multiplication table

declare

num number :=5;
i number :=1;
res number;
begin
    dbms_output.put_line('The table of 5 is:');
    while i<=10 loop;
    res := num*i;
    dbms_output.put_line(num || 'x' ||i||'='||res);
    i := i+1;
    end loop;
end;
/