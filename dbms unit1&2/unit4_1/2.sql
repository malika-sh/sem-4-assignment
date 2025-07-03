Create TABLE EMPLOYEES(Emp_id VARCHAR2(5), Emp_name VARCHAR2(20), Department VARCHAR2(20));

INSERT INTO EMPLOYEES VALUES('E101', 'Alice', 'HR');
INSERT INTO EMPLOYEES VALUES('E102', 'Bob', 'IT');
INSERT INTO EMPLOYEES VALUES('E103', 'Charles', 'FInance');

COMMIT;

CREATE OR REPLACE FUNCTION total_employees
RETURN NUMBER
IS
    emp_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO emp_count FROM EMPLOYEES;
        RETURN emp_count;
    END:
    /
    DECLARE
        total NUMBER;
    BEGIN
        total := total_employees;
        DBMS_OUTPUT.PUT_LINE("The total number of empoyees ="||total);
    END;
    /
DELETE EMPLOYEES;