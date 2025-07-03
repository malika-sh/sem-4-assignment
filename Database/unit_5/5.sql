--  Use a cursor to count the number of employees in each department and display results.
DECLARE
    v_dept_id EMPLOYEES.DEPT_ID%TYPE;
    v_emp_count NUMBER;

    CURSOR c IS SELECT DEPT_ID, COUNT(*) AS EMP_COUNT
    FROM EMPLOYEES2
    GROUP BY DEPT_ID;
begin
    OPEN c;
    LOOP
        FETCH c INTO v_dept_id, v_emp_count;

        EXIT WHEN c%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('department id: '||v_dept_id||'employee count:'||v_emp_count);
    END LOOP;
CLOSE c;
COMMIT;
EXCEPTION 
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR:'||SQLRERRM);
END;
/