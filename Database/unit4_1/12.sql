-- Create user defined an Exception and raise it: Calculate 5% increment in salary of an 
-- employee, if salary is greater than 25000, raise an exception “Salary is Out of the Limit”.
DECLARE
    v_salary number:= 27000;
    v_incremented_salary number;

    e_salary_out_of_limit EXCEPTION;
BEGIN
    IF v_salary > 25000 THEN
        RAISE e_salary_out_of_limit;
    ELSE
        v_incremented_salary := v_salary +(v_salary*0.05);
        DBMS_OUTPUT.PUT_LINE('New salary after %5 increment: '||v_incremented_salary);
    END IF;
EXCEPTION 
    WHEN e_salary_out_of_limit THEN
        DBMS_OUTPUT.PUT_LINE('SALARY IS OUT OF THE LIMIT');
END;
/