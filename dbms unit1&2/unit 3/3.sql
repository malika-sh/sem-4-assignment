-- 3(A) Create a table Product with column name (Prod_id, Prod_name, Prod_amt, Prod_comp,
-- Prod_mfgdate, Prod_expdate). Insert at least 5 records.
-- 3(B) Create a trigger on product table for before insert and back up the old data in new table
-- Product_new.

Create table PRODUCT3(Prod_id VARCHAR(5) PRIMARY KEY, Prod_name VARCHAR(20), Prod_amt NUMBER(5,2), Prod_comp VARCHAR2(20), Prod_mfgdate DATE, Prod_expdate DATE);
INSERT INTO PRODUCT3 VALUES ('P101', 'Handwash', 50, 'Dettol', TO_DATE('2024-03-06', 'YYYY-MM-DD'), TO_DATE('2026-06-25', 'YYYY-MM-DD'));
INSERT INTO PRODUCT3 VALUES ('P102', 'Soap', 65, 'Godrej', TO_DATE('2024-12-29', 'YYYY-MM-DD'), TO_DATE('2026-11-10', 'YYYY-MM-DD'));
INSERT INTO PRODUCT3 VALUES ('P103', 'Lotion', 150, 'Nivea', TO_DATE('2023-05-16', 'YYYY-MM-DD'), TO_DATE('2026-02-13', 'YYYY-MM-DD'));
INSERT INTO PRODUCT3 VALUES ('P104', 'Candles', 230, 'BandB', TO_DATE('2012-10-26', 'YYYY-MM-DD'), TO_DATE('2027-03-18', 'YYYY-MM-DD'));
INSERT INTO PRODUCT3 VALUES ('P105', 'Shampoo', 120, 'Loreal', TO_DATE('2023-04-09', 'YYYY-MM-DD'), TO_DATE('2026-09-19', 'YYYY-MM-DD'));


SELECT * FROM PRODUCT3;
CREATE TABLE product_new3 (prod_id VARCHAR(5)  PRIMARY KEY, Prod_name VARCHAR(20), Prod_amt NUMBER(5,2), Prod_comp VARCHAR2(20), Prod_mfgdate DATE, Prod_expdate DATE);

CREATE OR REPLACE TRIGGER product_backup3
BEFORE INSERT ON PRODUCT3
FOR EACH ROW
BEGIN

    INSERT INTO product_new3(prod_id, prod_name, prod_amt, prod_comp, prod_mfgdate, prod_expdate)
    SELECT prod_id, prod_name, prod_amt, prod_comp, prod_mfgdate, prod_expdate
    FROM PRODUCT3;

END;
/
SELECT * FROM PRODUCT3;
SELECT *FROM product_new3;