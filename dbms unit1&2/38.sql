-- 38. Write a program to display the months between two dates of a year

declare
    d date:='&d';
    d1 date := '&d1';
begin
    while d < d1 loop
        dbms_output.put_line(to_char(d,"month"));
        d := add_months(d,1);
    end loop;
end;
/