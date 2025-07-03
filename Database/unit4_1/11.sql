-- Create user defined an Exception and raise it: Find maximum from 3 no.
DECLARE
num1 number :=10;
num2 number :=10;
num3 number :=10;
    maxi number;

    no_unique_max EXCEPTION;
BEGIN
    IF(num1 >num2 AND num1>num3) THEN
        maxi :=num1;
    ELSIF(num2 > num1 AND num2>num3) THEN
        maxi := num2;
    ELSIF(num3>num1 AND num3>num2) THEN
        maxi := num3;
    ELSE
        RAISE no_unique_max;
    END IF;
EXPECTION
    WHEN no_unique_max THEN
        DBMS_OUTPUT.PUT_LINE('kuch to same same tha');
END;
/


DECLARE
num1 number:=10;
num2 number :=10;
num3 number :=10;
maxi number;

no_unique_max EXCEPTION;
begin
    IF(num1>num2 AND num1>num3) THEN
    maxi :=num1;
    ELSIF(num2>num1 AND num2>num3) THEN
    maxi:=num2;
    ELSIF(num3>num1 AND num3>num2) THEN
    maxi := num3;
    ELSE
        RAISE no_unique_max;
    END IF;
EXCEPTION
    WHEN no_unique_max THEN
        dbms_output.put_line('kuch to same same tha');
END;
/