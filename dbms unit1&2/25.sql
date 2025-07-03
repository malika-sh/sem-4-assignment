-- 25.Write a program to calculate the perimeter of a circle(perimeter=2*PI*r)

declare 
    rad number :=&rad;
    peri number(7,2);
begin
    peri := 2*(22/7)*rad;
    dbms_output.put_line('The perimeter is:'||peri);
end;
/