-- 14. Write a program to generate all prime numbers between 1 to 100

declare
    num number := 2;
    isprime boolean;
begin
    while num <= 100 loop
    isprime := true;
    for temp in 2 .. trunc(num/2)loop
        isprime := true;
        if(mod(num,temp)=0) then
        isprime:=false;
        exit;
        end if;
    end loop;
    if(isprime = true) then
    dbms_output.put_line(num);
    end if;
    num := num+1;
    end loop;
end;
/
