-- Create a function to find minimum salary of an employee.
CREATE OR REPLACE FUNCTION minsalary RETURN NUMBER IS
    minsal number;
begin
    SELECT MIN(emp_salary) INTO minsal FROM EMPLOYEE;

    return minsal;
end;
/

begin
    dbms_output.put_line(minsalary);
end;
/