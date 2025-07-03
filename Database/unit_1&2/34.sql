--34
-- declare
-- n number :=&n;
-- fact number;
-- sum_fact number :=0;
-- begin
--     for i in 1..n loop
--         fact:=1;
--             for j in 1..i loop
--                 fact := fact*j;
--             END LOOP;
--         sum_fact := sum_fact +fact;
--     END LOOP;

--     dbms_output.put_line('sum of fatorial from 1! to'||n||'!is:'||sum_fact);
-- END:
-- /

--35
declare
    n number:= 5;
    res number;
    s number(10,2):=0;
begin
    for i in 1..n loop
    res := 1/i;
    s= s+res;
    END LOOP;

    dbms_output.put_line('the sum till'||n||'is'||s);
END;
/
