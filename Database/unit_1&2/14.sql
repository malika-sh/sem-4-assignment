--  Write a program to generate all prime numbers between 1 to 100
DECLARE
    num number :=2;
    isprime BOOLEAN;
begin
    while num <= 100 loop
    isprime := true;
        for temp in 2.. trunc(num/2) loop
            isprime := true;
            IF(mod(num,temp)=0) THEN
                isprime := false;
                EXIT;
            END IF;
    END LOOP;
    IF (isprime= true) THEN
        dbms_output.put_line(num);
    END IF;
    num := num+1;
    END LOOP;
END;
/