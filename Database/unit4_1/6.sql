-- Create a function to find total salary of all employee.
CREATE OR REPLACE FUNCTION totalsalary RETURN NUMBER IS
    totalsal number;
begin
    SELECT SUM(emp_salary) INTO totalsal FROM EMPLOYEE;

    return totalsal;
end;
/
begin
    dbms_output.put_line(totalsalary);
end;
/