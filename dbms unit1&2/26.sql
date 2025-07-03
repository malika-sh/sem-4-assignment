-- 26.Write a program to accept the 3 sides of the triangle and display the type of triangle

declare
    a number(4,2):=&a;
    b number(4,2) :=&b;
    c number(4,2) :=&c;

begin
    if (a=b and b=c and c=a) then
        dbms_output.put_line('Equilateral triangle');
    elsif (a=b or a=c or c=b) then
        dbms_output.put_line('Isosceles triangle');
    else
        dbms_output.put_line('scalen triangle');
    end if;
end;
/
