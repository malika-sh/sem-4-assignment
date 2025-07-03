-- Create a procedure to Just print a message on prompt.
CREATE OR REPLACE PROCEDURE print AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('hello world');
END print;
/
BEGIN
    print;
END;
/