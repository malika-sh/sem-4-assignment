CREATE TABLE product111 (
    prod_id VARCHAR(10) PRIMARY KEY,
    prod_name VARCHAR(20),
    prod_amt NUMBER(5,2),
    prod_comp VARCHAR(20),
    prod_mfgdate DATE,
    prod_expdate DATE
);

INSERT INTO product111 VALUES ('P101', 'Shampoo', 100, 'CompanyA', TO_DATE('2024-04-26', 'YYYY-MM-DD'), TO_DATE('2026-11-12', 'YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P102', 'Soap', 50, 'CompanyB', TO_DATE('2024-01-12', 'YYYY-MM-DD'), TO_DATE('2026-12-06', 'YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P103', 'Toothpaste', 70, 'CompanyC', TO_DATE('2024-10-21', 'YYYY-MM-DD'), TO_DATE('2026-01-05', 'YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P104', 'Lotion', 120, 'CompanyD', TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2026-07-09', 'YYYY-MM-DD'));
INSERT INTO product111 VALUES ('P105', 'Soap', 65, 'CompanyE', TO_DATE('2024-08-30', 'YYYY-MM-DD'), TO_DATE('2026-10-01', 'YYYY-MM-DD'));

SELECT * FROM PRODUCT111;

CREATE TABLE product_new (
    prod_id VARCHAR(10),
    prod_name VARCHAR(20),
    prod_amt NUMBER(5,2),
    prod_comp VARCHAR(20),
    prod_mfgdate DATE,
    prod_expdate DATE
);

CREATE OR REPLACE TRIGGER product_backup
AFTER DELETE ON product111
FOR EACH ROW
BEGIN

    INSERT INTO product_new (prod_id, prod_name, prod_amt, prod_comp, prod_mfgdate, prod_expdate)
    VALUES (:OLD.prod_id, :OLD.prod_name, :OLD.prod_amt, :OLD.prod_comp, :OLD.prod_mfgdate, :OLD.prod_expdate);

END;
/

---step 5: Test the trigger by deleting row where prod_name is soap
DELETE FROM product111 where prod_name = 'Soap';

----verify the remaining rows in product111
SELECT * FROM  product111;

---verify the deleted rows are backed up in product_new
SELECT * FROM product_new;