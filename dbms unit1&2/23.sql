-- 23. Write a program to calculate the area of a triangle by accepting the 3 sides

-- HERE s IS SEMIPERIMETER
-- Area = √[s(s-a)(s-b)(s-c)]

declare 
    a number := &a;
    b number := &b;
    c number :=&c;
    s number :=(a+b+c)/2
    area number(7,2);
begin
    area := sqrt(s*(s-a)*(s-b)*(s-c));
    dbms_output.put_line('the area is :'||area);
end;
/