-- Create a Cursor and fetch employee details from an EMPLOYEES table and give a 10% 
-- raise to employees. 
DECLARE
    v_emp_id NUMBER;
    v_emp_name VARCHAR2(50);
    v_emp_sal NUMBER;

    CURSOR c IS SELECT emp_id, emp_name, emp_salary FROM employee;
begin
    OPEN c;
    LOOP
        FETCH c INTO v_emp_id, v_emp_name, v_emp_sal;
        EXIT WHEN c%NOTFOUND;
        UPDATE employee SET emp_salary= v_emp_sal+(v_emp_sal*0.10)
        WHERE emp_id= v_emp_id;

        dbms_output.put_line('updated'||v_emp_name||'salary'||v_emp_sal);
    END LOOP;

    CLOSE c;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('salary updated for all employees.');
END;
/