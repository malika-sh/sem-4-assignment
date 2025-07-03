-- Create a function to find total no of employee available in records.
CREATE TABLE employee(
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_salary NUMBER(10,2)
);

INSERT INTO employee VALUES(101,'dinesh',50000);
INSERT INTO employee VALUES(102,'rajesh',45000);
INSERT INTO employee VALUES(103,'suresh',48000);


CREATE OR REPLACE FUNCTION employeecount RETURN NUMBER IS
    emp_count number;

begin
    SELECT COUNT(*) INTO emp_count FROM EMPLOYEE;
    return emp_count;
end employeecount;
/

begin
    dbms_output.put_line(employeecount);
end;
/