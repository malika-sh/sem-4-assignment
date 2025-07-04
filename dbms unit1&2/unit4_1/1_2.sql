CREATE OR REPLACE PROCEDURE find_maximum( num1 IN NUMBER, num2 IN NUMBER, num3 IN NUMBER)
IS
 max_num NUMBER := 0;
 BEGIN
    IF num1 > num2 AND num1 >num3 THEN
    max_num := num1;
    ELSIF num2>num1 AND num2>num3 THEN
    max_num := num2;
    ELSE max_num := num3;
    END IF;

    DBMS_OUTPUT.PUT_LINE('The maximum number ='||max_num);
    END;
    /

    DECLARE
    num1 NUMBER := &num1;
    num2 NUMBER := &num2;
    num3 NUMBER := &num3;
    BEGIN
    find_maximum(num1,num2,num3);
END;
/