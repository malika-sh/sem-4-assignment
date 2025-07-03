-- 2(B) Create a trigger on product table for before delete and back up the new data in new table
-- Product_new. Condition for deletion: Where Product Id=’P103’.
CREATE OR REPLACE TRIGGER product_backup_1
BEFORE DELETE ON product111
FOR EACH ROW
BEGIN

    INSERT INTO product_new (prod_id , prod_name, prod_amt, prod_comp, prod_mfgdate, prod_expdate)
    VALUES (:OLD.prod_id, :OLD.prod_name, :OLD.prod_amt, :OLD.prod_comp, :OLD.prod_mfgdate, :OLD.prod_expdate);
    
END;
/
DELETE from product111 where prod_id='P103';
SELECT * from product111;
SELECT *from product_new;
