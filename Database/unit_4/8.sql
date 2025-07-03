-- Create a procedure to insert a new row in Customer table.
CREATE TABLE customer(
    id NUMBER,
    cus_name VARCHAR2(50),
    bill_id NUMBER
);
CRAETE OR REPLACE PROCEDURE customer_add(
    u_cus_id IN NUMBER,
    u_cus_name IN VARCHAR2(50),
    u_bil_id IN NUMBER
)AS
BEGIN
    INSERT INTO customer(id, cus_name, bill_id)
    VALUES (u_cus_id, u_cus_name, u_bill_id);

    DBMS_OUTPUT.PUT_LINE(u_cus_name|| ' successfully added');
END customer_add;
/
BEGIN
    customer_add(101,'vinay',10001);
END;
/
