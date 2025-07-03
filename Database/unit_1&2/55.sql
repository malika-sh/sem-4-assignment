-- 55.Writ a program to generate the following series
-- 53 53 53 53 53
-- 43 43 43 43
-- 33 33 33
-- 23 23
-- 13
declare
str varchar2(20) :='';
begin
    for i in reverse 1..5 loop
        for j in 1..i loop
            str := str||(i|| 3 || '');
        end loop;
            dbms_output.put_line(str);
            str:='';
    end loop;
end;
/