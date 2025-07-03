SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE display_names
IS
    CURSOR emp_cursor IS
        SELECT Emp_name, Emp_sal FROM EMPLOYEES45;
        v_emp_name EMPLOYESS45.Emp_name%TYPE;
        v_emp_sal EMPLOYEES45.Emp_sal%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_name, v_emp_sal;
        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Employee name= '||v_emp_name||', employee salary='||v_emp_sal);
        END LOOP;
    END;
    /
    BEGIN
        display_names;
    END;
    /