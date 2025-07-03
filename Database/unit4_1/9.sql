--  Create an Exception, if one numbe ris divide by zero
DECLARE
    num1 number;
    num2 number;
    res number;
begin
    num1 :=2;
    num2 :=0;
    res :=num1/num2;
    dbms_output.put_line(num1||'/'||num2||'='||res);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('TRIED TO DIVIDE BY ZERO');
END;
/