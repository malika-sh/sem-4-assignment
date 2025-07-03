-- 24. Write a program to calculate the area of a circle by accepting the radius and unit of measure 

declare
    rad number := &rad;
    area number(7,2);
begin
    area := (22/7)*rad*rad;
    dbms_output.put_line('the perimeter is: '||area);
end;
/