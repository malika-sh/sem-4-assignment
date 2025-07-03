-- 15. Write a program to aceept a number and check whether it is prime number or not

declare

    num number := &num;
    isprime boolean := true;
begin
    for i in 2.. trunc(num/2) loop
        if(mod(num,i)=0) then
        isprime := false;
        exit;
        end if;
    end loop;

    if(isprime) then
        dbms_output.put_line('The number :'||num||'is prime');
    else
        dbms_output.put_line('The numbe'||num||'is not prime');
    end if;
end;
/