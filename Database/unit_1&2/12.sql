-- Write a program to accept a no and check whether it is Armstrong number or not
DECLARE 
num NUMBER := &num;
reminder NUMBER :=0;
res NUMBER :=0;
temp NUMBER := num;
begin
    while temp !=0 loop
    reminder := mod(temp,10);
    res := res+ (reminder*reminder*reminder);
    temp := trunc(temp/10);
    END loop;
    IF num=res THEN
        dbms_output.put_line('the number'||num||'is armstrong');
    ELSE
        dbms_output.put_line('the number'||num||'is not armstrong');
        END IF;
END;
/