-- Create a trigger on product table for after insert and back up the new data in new table 
-- Product_new. 
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

create table product_new(
    prod_id VARCHAR(6),
    prod_name VARCHAR(20),
    prod_amt INT,
    prod_comp VARCHAR(20),
    prod_mfgdate DATE,
    prod_expdate DATE
);

CREATE OR REPLACE TRIGGER after_new_insert
AFTER INSERT ON product
FOR EACH ROW
BEGIN

    INSERT INTO product_new(prod_id, prod_name, prod_amt, prod_comp, prod_mfgdate, prod_expdate)
    VALUES (:NEW.prod_id, :NEW.prod_name, :NEW.prod_amt, :NEW.prod_comp, :NEW.prod_mfgdate, :NEW.prod_expdate);
END:
/
select * from product;
select * from product_new;