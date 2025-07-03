declare
    num number :=&num;
    res number;
begin
    for i in num .. num+5 loop
        for j in 1..10 loop
            res:= i*j;
            dbms_output.put_line(i||'x'||j||'='||res);
        END loop;
        dbms_output.put_line('------------------');
    END LOOP;
END;
/
