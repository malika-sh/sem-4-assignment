CREATE TABLE CUSTOMERS (
    Cust_id NUMBER PRIMARY KEY, 
    Cust_name VARCHAR2(20), 
    Contact NUMBER(10)
);

INSERT INTO CUSTOMERS VALUES (101, 'Malika', 789454);
INSERT INTO CUSTOMERS VALUES (103, 'Shreya', 123456);
INSERT INTO CUSTOMERS VALUES (102, 'Nancy', 456789);
INSERT INTO CUSTOMERS VALUES (104, 'Paprti', 852963);
INSERT INTO CUSTOMERS VALUES (105, 'Helly', 147258);
INSERT INTO CUSTOMERS VALUES (106, 'Yesha', 3265987);

COMMIT;

CREATE OR REPLACE FUNCTION find_customer
RETURN VARCHAR2
IS
    no_customer_found EXCEPTION;
    coustomer_name VARCHAR2(100);
BEGIN
    BEGIN 
        SELECT cust_name INTO coustomer_name
        FROM CUSTOMERS
        WHERE Cust_name = 'Rakesh';
    EXECPETION
        WHEN NO_DATA_FOUND THEN
            RAISE no_customer_found;
    END;

    RETURN ' customer rakesh found';
EXCEPTION
    WHEN no_customer_found THEN
        RETURN 'NO record found for customer rakesh';
END;
/

DECLARE
    result VARCHAR2(200);
    BEGIN
    result := find_customer;
    DBMS_OUTPUT.PUT_LINE(result);
END:
/
