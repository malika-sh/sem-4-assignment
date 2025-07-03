INSERT INTO CUSTOMERS VALUES(107,'rakesh,9129129');

CREATE OF REPLACE FUNCTION find_customer
RETURN VARCHAR2
IS
    many_rows EXCEPTION;
    customer_name VARCHAR2(100);
    row_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO row_count
    FROM CUSTOMERS;

    IF row_count > 10 THEN
        RAISE many_rows;
    END IF;

    RETURN 'Limited rows found';

    EXCEPTION
        WHERE many_rows THEN
            RETURN 'many rows found';
    END;
    /

    DECLARE
        answer VARCHAR2(100);
        BEGIN
        answer := find_customer;
        DBMS_OUTPUT.PUT_LINE(answer);
    END;
    /