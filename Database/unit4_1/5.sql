-- Create a function to find average salary of an employee.
CREATE OR REPLACE FUNCTION avgsalary RETURN NUMBER IS
    avgsal number;
begin
    SELECT AVG(emp_salary) INTO avgsal FROM EMPLOYEE;

    return avgsal;
end;
/

begin
    dbms_output.put_line(avgsalary);
end;
/