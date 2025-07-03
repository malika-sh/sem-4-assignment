-- Create a procedure to update the salary of an employee whose name is ‘Dinesh’. 
CREATE TABLE employee(
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_salary NUMBER(10,2)
);

INSERT INTO employee VALUES(101,'dinesh',50000);
INSERT INTO employee VALUES(102,'rajesh',45000);
INSERT INTO employee VALUES(103,'suresh',48000);
COMMIT;

CREATE OR REPLACE PROCEDURE Dineshsystem AS
BEGIN
    UPDATE employee SET emp_salary=700000 WHERE emp_name='Dinesh';

    DBMS_OUTPUT.PUT_LINE('DONE');
END Dineshsystem;
/
BEGIN
    Dineshsystem;
END;
/