CREATE TABLE EMPLOYEES4(Emp_id VARCHAR2(5), Emp_name VARCHAR2(20), Department VARCHAR2(20), Emp_sal NUMBER(10, 2));

INSERT INTO EMPLOYEES4 VALUES ('E101', 'Aaryan', 'Finance', 20000.50);
INSERT INTO EMPLOYEES4 VALUES ('E102', 'Dhruv', 'IT', 30000);
INSERT INTO EMPLOYEES4 VALUES ('E103', 'Shreya', 'Accounting', 25000);
INSERT INTO EMPLOYEES4 VALUES ('E104', 'Riya', 'Socials', 15000.50);
INSERT INTO EMPLOYEES4 VALUES ('E105', 'Simran', 'HR', 75000.50);

COMMIT;

CREATE OR REPLACE FUNCTION min_sal
RETURN NUMBER
IS
    min_sal NUMBER;
    BEGIN
        SELECT MIN(Emp_sal) INTO min_sal FROM EMPLOYEES4;
        RETURN min_sal;
    END;
    /

    DECLARE
    lowest NUMBER;
    BEGIN
    lowest := min_sal;
    DBMS_OUTPUT.PUT_LINE('The minimum salary is'||lowest);
    END;
    /