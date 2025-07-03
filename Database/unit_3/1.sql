-- 1(A) Create a table Product with column name (Prod_id, Prod_name, Prod_amt, Prod_comp, 
-- Prod_mfgdate, Prod_expdate). Insert at least 5 records.
-- 1(B) Create a trigger on product table for after delete and back up the old data in new table 
-- Product_new. Condition for deletion: Where Product name=’Soap’

CREATE TABLE product111 (
    prod_id VARCHAR2(10) PRIMARY KEY,
    prod_name VARCHAR2(20),
    prod_amt NUMBER(5,2),
    prod_comp VARCHAR2(20),
    prod_mfgdate DATE,
    prod_expdate DATE
);

INSERT INTO product111 VALUES ('P101', 'shampoo',100,'companyA',TO_DATE('2024-04-26','YYYY-MM-DD'),TO_DATE('2026-11-12','YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P102', 'soap',50,'companyB',TO_DATE('2024-01-12','YYYY-MM-DD'),TO_DATE('2026-12-06','YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P103', 'tootpaste',70,'companyC',TO_DATE('2024-10-21','YYYY-MM-DD'),TO_DATE('2026-01-05','YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P104', 'lotion',120,'companyD',TO_DATE('2024-05-15','YYYY-MM-DD'),TO_DATE('2026-07-09','YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P105', 'soap',65,'companyE',TO_DATE('2024-08-30','YYYY-MM-DD'),TO_DATE('2026-10-01','YYYY-MM-DD'));

SELECT * FROM product111;

CREATE TABLE product_new(
    prod_id VARCHAR(10),
    prod_name VARCHAR(20),
    prod_amt NUMBER(5,2),
    prod_comp VARCHAR2(20),
    prod_mfgdate DATE,
    prod_expdate DATE
);

CREATE OR REPLACE TRIGGER product_backup
AFTER DELETE ON product111
FOR EACH ROW
BEGIN
    INSERT INTO product_new(prod_id,prod_name,prod_amt,prod_comp,prod_mfgdate,prod_expdate)
    VALUES (:OLD.prod_id, :OLD.prod_name, :OLD.prod_amt, :OLD.prod_comp, :OLD.prod_mfgdate, :OLD.prod_expdate);
END;
/

DELETE FROM product111 where prod_name='soap';

SELECT *FROM product111;

SELECT *FROM product_new; 