--  Write a porgram to generate all the Armstrong numbers from 1 to 1000
declare
    i number :=1;
    temp number :=i;
    reminder number :=0;
    res number :=0;
begin
    while i<=1000 loop
    temp :=i;
    res :=0;
    while temp !=0 loop
        reminder := mod(temp,10);
        res := res+(reminder*reminder*reminder);
        temp := trunc(temp/10);
    END loop;

    IF (i= res) THEN
        dbms_output.put_line(i);
    END IF;

    i := i+1;
    END LOOP;
END;
/