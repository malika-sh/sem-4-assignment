-- Create a procedure to delete a record of a product where product price is 200.
CREATE TABLE Product(
     prod_id NUMBER,
     prod_name VARCHAR(50),
     prod_price INT
 );

 INSERT INTO Product (prod_id, prod_name, prod_price) VALUES(101, 'BAKED PASTA', 150);
 INSERT INTO Product (prod_id, prod_name, prod_price) VALUES(102, ' PASTA', 200);

CREATE OR REPLACE PROCEDURE prod_price_change(
    u_prod_id IN NUMBER,
    u_price IN INT
)AS
BEGIN
    UPDATE product SET prod_price = u_price
    WHERE prod_id = u_prod_id;

    dbms_output.put_line('success');
END;
/
BEGIN
    prod_price_change(101,200);
END;
/