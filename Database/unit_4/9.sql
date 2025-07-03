-- Create a procedure to perform both operation IN aand OUT as a parameter.
CREATE OR REPLACE PROCEDURE sqrNum(
    num IN NUMBER,
    sqr OUT NUMBER
)AS
BEGIN
    sqr :=num*num;
END sqrNum;
/
DECLARE
    num NUMBER;
    res NUMBER;
BEGIN
    num := 10;
    sqrNum(num,res);
    DBMS_OUTPUT.PUT_LINE('square of num'||num||'is'||res);
END;
/