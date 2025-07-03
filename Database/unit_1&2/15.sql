-- Write a program to aceept a number and check whether it is prime number or not
declare
    num number := &num;
    isprime boolean := true;
begin
    for i in 2.. trunc(num/2) loop
        IF(mod(num,i)=0) THEN
        isprime := false;
        EXIT;
        END IF:
    END LOOP;

    if(isprime) THEN
        dbms_output.put_line('the numer'||num||'is a prime number');
    ELSE
        dbms_output.put_line('the number: '||num||'is not prime number');
    END IF:
END:
/
