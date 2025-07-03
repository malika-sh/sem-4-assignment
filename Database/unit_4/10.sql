-- Create a procedure to find a employee whose id is 1002.
CREATE OR REPLACE PROCEDURE find_employee_1002 AS
v_name employee.emp_name%TYPE;
v_salary employee.salary%TYPE;
BEGIN
    SELECT emp_name, salary INTO v_name, v_salary
    FROM employee
    WHERE emp_id=1002;

    DBMS_OUTPUT.PUT_LINE('employee id: 1002');
    DBMS_OUTPUT.PUT_LINE('name:'||v_name);
     DBMS_OUTPUT.PUT_LINE('Salary:'||v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO employee found with id 1002');
END find_employee_1002;
/
BEGIN
    find-find_employee_1002;
END;
/