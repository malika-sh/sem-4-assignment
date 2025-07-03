-- Create a function to find maximum salary of an employee.
CREATE OR REPLACE FUNCTION maxsalary RETURN NUMBER IS
    maxsal number;
BEGIN
    SELECT MAX(emp_salary) INTO maxsal FROM EMPLOYEE;

    return maxsal;
end;
/
BEGIN
    DBMS_OUTPUT.PUT_LINE(maxsalary);
end;
/