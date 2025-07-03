-- 12.Write a program to accept a no and check whether it is Armstrong number or not

declare
   num number := &num;
   reminder number := 0;
   res number := 0;
   temp number := num;
begin
    while temp != 0 loop
    reminder := mod(temp,10);
    res := res+(reminder*reminder*reminder);
    temp := trunc(temp/10);
    end loop;
    
    if num = res then
        dbms_output.put_line('the number'||num||'is armstrong');
        else
        dbms_output.put_line('the number'||num||'is not armstrong');
    end if;
end;
/