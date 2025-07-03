-- Create a procedure to find the square and cube of a number. Only 1 input should be taken 
-- as IN and OUT.
CREATE OR REPLACE PROCEDURE FIND_SQR_CBU(
    num IN OUT NUMBER
)AS
original number := num;
BEGIN
    num := original * original;
    dbms_output.put_line('the square'||original||'is:'||num);

    num:= num*original;
    dbms_output.put_line('The cube is'||original||'is: '||num);
END FIND_SQR_CBU;
/

DECLARE
    n number;
BEGIN
    n number:= 10;
    FIND_SQR_CBU(n);
END;
/