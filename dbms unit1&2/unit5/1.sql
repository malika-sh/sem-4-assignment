CREATE OR REPLACE PROCEDURE update__emp_salary
IS 
    CURSOR emp_cursor IS
        SELECT Emp_id, Emp_name, Department, Emp_sal FROM EMPLOYEES45;
    v_emp_id EMPLOYEES45.Emp_id%TYPE;
    v_emp_name EMPLOYEES45.Emp_name%TYPE;
    v_department EMPLOYEES45.Department%TYPE;
    v_emp_sal EMPLOYEES45.Emp_sal%TYPE;

    BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_Department, v_emp_sal;

        EXIT WHEN emp_cursor%NOTFOUND;

        v_emp_sal := (v_emp_sal * 0.10)+ v_emp_sal;

        UPDATE EMPLOYEES45
        SET Emp_sal = v_emp_sal
        WHERE Emp_id = v_emp_id;

        DBMS_OUTPUT.PUT_LINE('Update salary for'||v_emp_name);
        END LOOP;
        CLOSE emp_cursor;
        COMMIT;
    END;
    /
    BEGIN
    update_emp_salary;
    END;
    /

    SELECT *FROM EMPLOYEES45;
