-- Create a procedure to display the users record. 
 CREATE TABLE users (
     user_id NUMBER PRIMARY KEY,
     u_name VARCHAR2(100),
     email VARCHAR2(100),
     age NUMBER
 );

INSERT INTO users (user_id, u_name, email, age) VALUES (1, 'VINAY', 'vinay@gmail', 19);

CREATE OR REPLACE PROCEDURE USER_DISPLAY(
    u_user_id IN NUMBER
)AS
n_name VARCHAR(100);
n_email VARCHAR(20);
n_age NUMBER;
BEGIN
    SELECT u_name, email, age
    INTO n_name, n_email, n_age;
    FROM users
    where user_id=u_user_id;

    DBMS_OUTPUT.PUT_LINE('user id: '||u_user_id);
    DBMS_OUTPUT.PUT_LINE('user name: '||n_name);
    DBMS_OUTPUT.PUT_LINE('user email: '||n_email);
    DBMS_OUTPUT.PUT_LINE('user age: '||n_age);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('KUCH NAI MILA');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('KUCH TO FATT GAYA');
END USER_DISPLAY;
/
DECLARE
    v_id number;
BEGIN
    v_id :=  1;
    USER_DISPLAY(v_id);
END;
/