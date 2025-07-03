-- Create a procedure to find maximum no from 3 no’s. Numbers should be entered by the 
-- user at run time.
CREATE OR REPLACE PROCEDURE FIND_MAX_NUM(
    num1 IN NUMBER,
    num2 IN NUMBER,
    num3 IN NUMBER
)AS
    max_num NUMBER;

BEGIN
    max_num := GREATEST(num1,num2,num3);
    DBMS_OUTPUT.PUT_LINE('THE MAXIMUM NUMBER IS:'||max_num);
END FIND_MAX_NUM;
/

DECLARE
    a number;
    b number;
    c number;
BEGIN
    a := &enter_first_number;
    b := &enter_second_number;
    c := &enter_Third_number;

    FIND_MAX_NUM(a,b,c);
END;
/