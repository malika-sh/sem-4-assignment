-- Create a function to find a factorial of a number.
CREATE OR REPLACE FUNCTION factorial(n NUMBER) RETURN NUMBER IS
    res number :=1;
BEGIN
    IF n=0 OR n=1 THEN
        RETURN 1;
    ELSE
        FOR i IN 2..n loop
            res := res*i;
        END LOOP;
    RETURN res;
    END factorial;
    /
BEGIN
    DBMS_OUTPUT.PUT_LINE('factorial of 5:'||factorial(5));
END;
/